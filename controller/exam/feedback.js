const sql = require("../../db");
exports.getAllFeedback = async (req, res) => {
  await sql.query(`SELECT * FROM Feedback;`, function (error, results, fields) {
    if (error)
      res.send({
        check: false,
        message: error,
      });
    else {
      const feedbackData = [];
      results.forEach(function (feedback) {
        let temp = {};
        temp.ID = feedback.ID;
        temp.PhoneNumber = feedback.PhoneNumber;
        temp.FeedbackContent = feedback.FeedbackContent;
        temp.LinkImage = feedback.LinkImage;
        temp.UserName = feedback.UserName;
        feedbackData.push(temp);
      });
      res.send(feedbackData);
    }
  });
};

exports.inserFeedbackData = async (req, res) => {
    await sql.query(
      `INSERT INTO Feedback (PhoneNumber, FeedbackContent, LinkImage, UserName) VALUES ("${req.body.params.feedback.PhoneNumber}",'${req.body.params.feedback.FeedbackContent}',"${req.body.params.feedback.LinkImage}","${req.body.params.feedback.UserName}")`,
      function (error, results, fields) {
        if (error)
        {
          console.log(error);
          res.send({
            message: error,
          });
        }
        else
        {
            console.log("oke");
        }
      }
    );
  };
