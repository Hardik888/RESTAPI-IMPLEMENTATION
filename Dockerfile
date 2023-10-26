FROM python:3.9-slim
EXPOSE 5000
COPY . . 
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /venv
ENV FLASK_APP=application.py
ENV FLASK_ENV=development
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
##CMD ["tail","-f","/dev/null"]
