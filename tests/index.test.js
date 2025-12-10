const request = require('supertest');

describe('App Server', () => {
  let app;

  beforeEach(() => {
    // Clear the module cache to get a fresh instance
    jest.resetModules();
    app = require('../src/index');
  });

  it('should return healthy status on /health endpoint', async () => {
    const response = await request(app).get('/health');
    
    expect(response.status).toBe(200);
    expect(response.body).toEqual({ status: 'healthy' });
  });

  it('should have status property in health response', async () => {
    const response = await request(app).get('/health');
    
    expect(response.body).toHaveProperty('status');
  });
});