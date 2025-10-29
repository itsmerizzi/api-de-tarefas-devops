const express = require('express');
const app = express();

app.use(express.json());

let tarefas = [];

app.post('/tarefas', (req, res) => {
  const tarefa = req.body;
  tarefas.push(tarefa);
  res.status(201).send(tarefa);
});

app.get('/tarefas', (req, res) => {
  res.status(200).send(tarefas);
});

module.exports = app;
