# Commands to template it

pdm add strawberry-graphql fastapi uvicorn sqlalchemy strawberry-sqlalchemy-mapper alembic psycopg2-binary ruff python-dotenv

alembic init alembic

docker-compose run app alembic revision --autogenerate -m "New Migration" docker-compose run app alembic upgrade head

mutation CreateNewPost{ createNewPost(title:"new title1", content:"new content") { ok } }

query{ allPosts{ title } }

query{ postById(postId:2){ id title content } }