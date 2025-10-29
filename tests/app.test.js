const request = require('supertest');
const app = require('../server');

describe('API de Tarefas', () => {
  it('deve criar uma nova tarefa', async () => {
    const res = await request(app).post('/tasks').send({ title: 'Nova tarefa' });
    expect(res.statusCode).toEqual(201);
    expect(res.body).toHaveProperty('id');
  });

  it('deve listar as tarefas', async () => {
    const res = await request(app).get('/tasks');
    expect(res.statusCode).toEqual(200);
    expect(Array.isArray(res.body)).toBe(true);
  });
});
