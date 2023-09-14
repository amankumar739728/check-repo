# create virtual env inside folder and install all the project dependencies stored in requirements.txt
       step1:open terminal by moving to project folder.
              # myenv2 is my env_var name.you can replace it with your's.
              D:\fastapi-project>py -m venv myenv2
              D:\fastapi-project>.\myenv2\Scripts\activate
        
        step2:install the dependencies stored in requirements.txt file which is present in root directory(folder)
              (myenv2) D:\fastapi-project>pip install -r requirements.txt
              #after installation update requirements.txt file with specified version of library.
              (myenv2) D:\fastapi-project>pip freeze > requirements.txt    

# command to push data to github
step1: goto Github and create a new repository
step2: open your project folder in vs code---->open terminal in vs code

step3:Ignore the venv folder and your .env file using .gitignore to avoid pushing them to your repository. To do that, create a .gitignore file in your project root folder and enter the folders and files you want to ignore.
                
step4:write below commands in order to push data from local to github
      (myenv2) D:\fastapi-project>git init
      (myenv2) D:\fastapi-project>git add .
      (myenv2) D:\fastapi-project>git commit -m "first commit"
      (myenv2) D:\fastapi-project>git branch -M main
      (myenv2) D:\fastapi-project>git remote add origin https://github.com/amankumar739728/check-repo.git
      (myenv2) D:\fastapi-project>git push -u origin main

# why we create Docker file:
   -->We create a Dockerfile to define the steps necessary to build a Docker image. A Docker image is a lightweight, standalone, executable package of software that includes everything needed to run an application: code, runtime, system tools, system libraries and settings.

   -->Dockerfiles are used to create consistent and reproducible builds, regardless of the environment. This makes it easy to deploy applications to different environments, such as development, staging, and production.

# Dockerize the App
-->Next, create a Dockerfile in your project root folder. You can do this by creating a new file in VS Code and      naming it Dockerfile.
-->Once created, type the following commands to build a Docker image(inside docker file):
          
          FROM python:3.9-slim
          WORKDIR /app
          COPY requirements.txt .
          RUN pip install --no-cache-dir -r requirements.txt
          COPY . .
          EXPOSE 8000
          CMD ["uvicorn", "router.main:app", "--host", "0.0.0.0", "--port", "8000"]






      
