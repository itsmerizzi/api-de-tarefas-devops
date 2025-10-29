const request = require('supertest');
const app = require('../app');

let server;

beforeAll(() => {
  server = app.listen(4000);
});

afterAll((done) => {
  server.close(done);
});

describe('API de Tarefas', () => {
  test('deve criar uma nova tarefa', async () => {
    const response = await request(server)
      .post('/tarefas')
      .send({ titulo: 'Estudar DevOps', concluida: false });
    expect(response.statusCode).toBe(201);
  });

  test('deve listar as tarefas', async () => {
    const response = await request(server).get('/tarefas');
    expect(response.statusCode).toBe(200);
  });
});
