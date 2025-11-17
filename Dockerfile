FROM wodby/openjdk:17-alpine
EXPOSE 8082
#ajouter le livrable .jar  dans l image
ADD http://localhost:8081/repository/maven-releases/tn/m104/rh/school/1.0.0/school-1.0.0.jar .
#commande d execution de l application spring boot
ENTRYPOINT ["java","-jar","/school-1.0.0.jar"]