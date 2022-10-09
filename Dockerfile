FROM python:3.9

ENV HOME /app
WORKDIR $HOME

ENV FLASK_APP=run.py
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "run.py"]