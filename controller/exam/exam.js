const sql = require("../../db");
exports.getAllQuestion = async (req, res) => {
  await sql.query(`SELECT * FROM question;`, function (error, results, fields) {
    if (error)
      res.send({
        check: false,
        message: error,
      });
    else {
      const questionData = [];
      results.forEach(function (question) {
        let temp = {};
        temp.ID = question.ID;
        temp.content = question.Content;
        temp.answer1 = question.Answer1;
        temp.answer2 = question.Answer2;
        temp.answer3 = question.Answer3;
        temp.answer4 = question.Answer4;
        questionData.push(temp);
      });
      res.send(questionData);
    }
  });
};

exports.postExamUser = async (req, res) => {
  await sql.query(`SELECT * FROM question;`, function (error, results, fields) {
    if (error)
      res.send({
        check: false,
        message: error,
      });
    else {
      let point = 0;
      results.forEach(function (aswerUser, i) {
        for (let index = 0; index < req.body.params.exam.length; index++) {
          if (aswerUser.ID == req.body.params.exam[index].ID && aswerUser.CorrectAnswer == req.body.params.exam[index].userSelected) {
            {
              point = point + 1;
            }
          }
        }
      });
      res.send({ equal: point });
    }
  });
};
