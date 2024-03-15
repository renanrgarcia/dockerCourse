# Images
- Archive dockerfile
- Search for official images on dockerhub
  - Ex: docker run -d -p 80:80 --name my_apache httpd 
    - It runs the official Apache image
- To execute an image:
  - docker build <image_directory>
  - docker run -d -p <host>:<container> --name <container_name> <image:id>
- docker image ls (Lists every installed images)