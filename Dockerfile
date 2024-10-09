FROM python:3.8
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /my_code_club
COPY requirements.txt /my_code_club/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /my_code_club/
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]