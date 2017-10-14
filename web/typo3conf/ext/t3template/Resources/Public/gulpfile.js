// ************************************************************************** //
//  _____ _________ ___ __  __ ___ _      _ _____ ___
// |_   _|__ /_   _| __|  \/  | _ \ |    /_\_   _| __|
//   | |  |_ \ | | | _|| |\/| |  _/ |__ / _ \| | | _|
//   |_| |___/ |_| |___|_|  |_|_| |____/_/ \_\_| |___|
//
//
// EXT: T3Template (t3template)
// VER: 0.0.1
//
// LIC: MIT License
// AUT: Jan Fässler / jan@faessler.be
//
// ************************************************************************** //


// ************************************ //
// INCLUDES & VARIABLES
// ************************************ //
// Include dependencies
var gulp         = require('gulp');
    autoprefixer = require('autoprefixer'),
    cleanCSS     = require('gulp-clean-css'),
    imagemin     = require('gulp-imagemin'),
    postcss      = require('gulp-postcss'),
    sass         = require('gulp-sass'),
    sourcemaps   = require('gulp-sourcemaps'),
    gulpWebpack  = require('gulp-webpack'),
    webpack      = require('webpack');

// Define variables
var dest = './',
    src  = './Source';



// ************************************ //
// TASKS
// ************************************ //
// SCSS
// Create default project css
gulp.task('css:app', function() {
    return gulp.src(src+'/scss/app.scss')
    .pipe(sourcemaps.init())
    .pipe(sass({
        includePaths: [
            'node_modules/foundation-sites/scss'
        ]
    }).on('error', sass.logError))
    .pipe(postcss([ autoprefixer() ]))
    .pipe(cleanCSS())
    .pipe(sourcemaps.write('.'))
    .pipe(gulp.dest(dest+'/Css'))
});

// Copy and optimize css files
gulp.task('css:dist', function() {
    return gulp.src([src+'/dist/css/**/*.css', '!'+src+'/dist/css/app.css'])
    .pipe(sourcemaps.init())
    .pipe(postcss([ autoprefixer() ]))
    .pipe(cleanCSS())
    .pipe(sourcemaps.write('.'))
    .pipe(gulp.dest(dest+'/Css'))
});

// Define css task
gulp.task('css', gulp.parallel('css:app', 'css:dist'));


// JAVASCRIPT
// Create default project js
gulp.task('js:app', function() {
    return gulp.src(src+'/js/app.js')
    .pipe(gulpWebpack({
        entry: [
            src+'/js/app.js'
        ],
        output: {
            filename: 'app.js'
        },
        devtool: 'source-map',
        plugins: [
            // new webpack.optimize.UglifyJsPlugin({
            //     sourceMap: true
            // })
        ]
    }, webpack))
    .pipe(gulp.dest(dest+'/JavaScript'))
});

// Copy and optimize js files
gulp.task('js:dist', function() {
    return gulp.src([src+'/dist/js/**/*.js', '!'+src+'/dist/js/app.js'])
    .pipe(gulp.dest(dest+'/JavaScript'))
});

// Define js task
gulp.task('js', gulp.parallel('js:app', 'js:dist'));


// IMAGES
// Automatically optimize the images
gulp.task('img:images', function () {
    return gulp.src([
        src+'/img/images/**/*.jpg',
        src+'/img/images/**/*.jpeg',
        src+'/img/images/**/*.png',
        src+'/img/images/**/*.gif',
        src+'/img/images/**/*.svg'
    ])
    .pipe(imagemin([
        imagemin.gifsicle({interlaced: true}),
        imagemin.jpegtran({progressive: true}),
        imagemin.optipng({optimizationLevel: 5}),
        imagemin.svgo({plugins: [{removeViewBox: true}]})
    ]))
    .pipe(gulp.dest(dest + '/Images'));
});

// Automatically optimize the icons
gulp.task('img:icons', function () {
    return gulp.src([
        src+'/img/icons/**/*.jpg',
        src+'/img/icons/**/*.jpeg',
        src+'/img/icons/**/*.png',
        src+'/img/icons/**/*.gif',
        src+'/img/icons/**/*.svg'
    ])
    .pipe(imagemin([
        imagemin.gifsicle({interlaced: true}),
        imagemin.jpegtran({progressive: true}),
        imagemin.optipng({optimizationLevel: 5}),
        imagemin.svgo({plugins: [{removeViewBox: true}]})
    ]))
    .pipe(gulp.dest(dest + '/Icons'));
});

// Define img task
gulp.task('img', gulp.parallel('img:images', 'img:icons'));



// ************************************ //
// WATCHER
// ************************************ //
gulp.task('watch', function(done){
    gulp.watch(src+'/scss/**/*.scss').on('change', gulp.parallel('css'));

    gulp.watch(src+'/js/**/*.js').on('change', gulp.parallel('js'));

    gulp.watch([
        src+'/img/images/**/*.jpg',
        src+'/img/images/**/*.jpeg',
        src+'/img/images/**/*.png',
        src+'/img/images/**/*.gif',
        src+'/img/images/**/*.svg'
    ]).on('added', gulp.parallel('img:images'));
    gulp.watch([
        src+'/img/images/**/*.jpg',
        src+'/img/images/**/*.jpeg',
        src+'/img/images/**/*.png',
        src+'/img/images/**/*.gif',
        src+'/img/images/**/*.svg'
    ]).on('deleted', gulp.parallel('img:images'));
    gulp.watch([
        src+'/img/icons/**/*.jpg',
        src+'/img/icons/**/*.jpeg',
        src+'/img/icons/**/*.png',
        src+'/img/icons/**/*.gif',
        src+'/img/icons/**/*.svg'
    ]).on('added', gulp.parallel('img:icons'));
    gulp.watch([
        src+'/img/icons/**/*.jpg',
        src+'/img/icons/**/*.jpeg',
        src+'/img/icons/**/*.png',
        src+'/img/icons/**/*.gif',
        src+'/img/icons/**/*.svg'
    ]).on('deleted', gulp.parallel('img:icons'));
    done();
});



// ************************************ //
// DEFAULT TASK
// ************************************ //
gulp.task('default', gulp.series(gulp.parallel('css', 'js', 'img'), 'watch'));
