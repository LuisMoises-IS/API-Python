from fastapi import FastAPI, HTTPException
from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, Session

# Configuración de la base de datos
DATABASE_URL = "mysql://root:root@db:3310/my_movies_db"  # Cambia username y password según tu configuración

engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()

class Movie(Base):
    __tablename__ = "my_movies"
    id = Column(Integer, primary_key=True, index=True)
    title = Column(String(255))
    director = Column(String(255))

Base.metadata.create_all(bind=engine)

app = FastAPI()

@app.get("/movies/{movie_id}")
def read_movie(movie_id: int):
    with SessionLocal() as session:
        movie = session.query(Movie).filter(Movie.id == movie_id).first()
        if movie is None:
            raise HTTPException(status_code=404, detail="Movie not found")
        return movie

@app.post("/movies/")
def create_movie(movie: Movie):
    with SessionLocal() as session:
        session.add(movie)
        session.commit()
        session.refresh(movie)
        return movie

@app.put("/movies/{movie_id}")
def update_movie(movie_id: int, movie: Movie):
    with SessionLocal() as session:
        db_movie = session.query(Movie).filter(Movie.id == movie_id).first()
        if db_movie is None:
            raise HTTPException(status_code=404, detail="Movie not found")
        db_movie.title = movie.title
        db_movie.director = movie.director
        session.commit()
        return db_movie

@app.delete("/movies/{movie_id}")
def delete_movie(movie_id: int):
    with SessionLocal() as session:
        db_movie = session.query(Movie).filter(Movie.id == movie_id).first()
        if db_movie is None:
            raise HTTPException(status_code=404, detail="Movie not found")
        session.delete(db_movie)
        session.commit()
        return {"detail": "Movie deleted"}
