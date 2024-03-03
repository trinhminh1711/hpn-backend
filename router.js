module.exports = (app) => {
    const examApi = require("./controller/exam/exam");  
    const userExamApi = require("./controller/exam/examResult");  
    const feedbackApi = require("./controller/exam/feedback");  
    app.get("/exam-question",  examApi.getAllQuestion);
    app.get("/users-result" , userExamApi.getAllUsers);
    app.get("/user-feedback" , feedbackApi.getAllFeedback);
    app.post("/exam-user",  examApi.postExamUser);
    app.post("/user-results",  userExamApi.addData);
    app.post("/post-feedback" ,  feedbackApi.inserFeedbackData)
  };