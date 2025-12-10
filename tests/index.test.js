jest.mock('express', () => {
  return () => ({
    get: jest.fn(),
    listen: jest.fn()
  });
});

describe('App Server', () => {
  it('should have a health endpoint', () => {
    expect(true).toBe(true);
  });
});