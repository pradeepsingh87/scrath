FROM tomcat:8.0-jre8

COPY target/myapp.jar /usr/local/tomcat/webapps/myapp.jar

CMD ["catalina.sh", "run"]


-------- 


import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/helloworld")
public class HelloResource {

  @GET
  @Produces(MediaType.TEXT_PLAIN)
  public String hello() {
    return "Hello Pradeep"; 
  }

}


----------- 

mvn clean package  # Builds myapp.jar
docker build -t myapp . 
docker run -p 8080:8080 myapp
