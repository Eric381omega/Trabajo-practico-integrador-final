var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

require('dotenv').config();
var session = require('express-session');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var loginRouter = require('./routes/admin/login');
var adminRouter = require('./routes/admin/novedades');

var app = express();

/*

const { title } = require('process');

app.get('/ejemplo', function(req, res) {
 if (req.session.nombre) {
  res.send('Hola' + req.session.nombre);
 } else {
  res.send('Hola usuario desconocido.');
 }
});

app.get('/', function(req, res) {
  var conocido = Boolean(req.session.nombre);

  res.render('index', {
   title: 'Sesiones en Express.js',
   conocido: conocido,
   nombre: req.session.nombre
  });
});

app.post('/ingresar', function(req, res) {
 if (req.body.nombre) {
  req.session.nombre = req.body.nombre
 }
 res.redirect('/')
});

app.get('/salir', function (req, res) {
 req.session.destroy();
 res.redirect('/');
});

//M3U4^^^ */

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use(session({
  secret: '12w45qe4qleq54eq5',
  resave: false,
  saveUninitialized: true
 }));

 secured = async (req, res, next) => {
  try {
    console.log('ruta segura');
    console.log(req.session.id_usuario);
    if (req.session.id_usuario != undefined) {
      console.log('usuario loggeado');
      next();
    } else {
      console.log('sesion vacia, volviendo al Login');
      res.redirect('/admin/login')
    }
  } catch (error) {
     console.log(error);
  }
 }

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/admin/login', loginRouter);
app.use('/admin/novedades', secured, adminRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;