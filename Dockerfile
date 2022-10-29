FROM python

# ENV PYTHONUNBUFFERED 1

COPY . .

RUN pip install -r requirements.txt