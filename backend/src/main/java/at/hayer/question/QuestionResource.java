package at.hayer.question;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

import java.util.List;

@Path( "/questions")
@Produces(MediaType.APPLICATION_JSON)
public class QuestionResource {
    @GET
    @Path("{id:[0-9]+}")
    public Response getQuestions(@PathParam("id") Long id) {
        Response response = Response.status(Response.Status.NOT_FOUND).build();

        if (id == null || id == 0) {
            List<Question> questions = Question.listAll();
            response = Response.ok(questions.stream().map(QuestionDTO::fromEntity).toList()).build();
        } else {
            Question question = Question.findById(id);

            if (question != null) {
                response = Response.ok(QuestionDTO.fromEntity(question)).build();
            }
        }
        return response;
    }

    @GET
    @Path("summaries/{id:[0-9]+}")
    public Response getQuestionSummaries(@PathParam("id") Long id) {
        Response response = Response.status(Response.Status.NOT_FOUND).build();

        if (id == null || id == 0) {
            List<Question> questions = Question.listAll();
            response = Response.ok(questions.stream().map(QuestionSummaryDTO::fromEntity).toList()).build();
        } else {
            Question question = Question.findById(id);

            if (question != null) {
                response = Response.ok(QuestionSummaryDTO.fromEntity(question)).build();
            }
        }
        return response;
    }

    @GET
    @Path("summaries/random")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getRandomQuestionSummary() {
        Question question = Question.find("order by RAND()").firstResult();

        return Response.ok(QuestionSummaryDTO.fromEntity(question)).build();
    }
}
