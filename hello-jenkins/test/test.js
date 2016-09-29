var request = require('supertest');
var app = require('../app.js');
 
describe('GET /', function() {
  it('respond with hello iAnabel7', function(done) {
    request(app).get('/').expect('hello iAnabel7', done);
  });
});
