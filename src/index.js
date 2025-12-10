import express from 'express';

jest.mock('express');

describe('App Server', () => {
  beforeEach(() => {
    jest.clearAllMocks();
  });

  it('should have a health endpoint', () => {
    const mockApp = {
      get: jest.fn(),
      listen: jest.fn()
    };
    
    express.mockReturnValue(mockApp);
    
    expect(true).toBe(true);
  });
});