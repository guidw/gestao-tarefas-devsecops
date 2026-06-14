FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /app/todo_project
ENV FLASK_APP=run.py
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
