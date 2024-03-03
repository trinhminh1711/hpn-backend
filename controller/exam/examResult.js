const sql = require("../../db");
exports.addData = async (req, res) => {
  await sql.query(
    `INSERT INTO User(FullName, WorkPlace, NumberCorrect, CompletionTime) VALUES ("${req.body.params.userResults.FullName}","${req.body.params.userResults.WorkPlace}","${req.body.params.userResults.NumberCorrect}","${req.body.params.userResults.Completion}")`,
    function (error, results, fields) {
      if (error)
      {
        console.log(error);
        res.send({
          message: error,
        });
      }
    }
  );
};
exports.getAllUsers = async (req, res) => {
  await sql.query(`SELECT * FROM User;`, function (error, results, fields) {
    if (error)
      res.send({
        check: false,
        message: error,
      });
    else {
      res.send(results);
    }
  });
};
