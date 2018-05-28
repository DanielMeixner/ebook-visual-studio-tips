var gulp = require('gulp');
var toc = require('gulp-markdown-toc');
 
gulp.task('toc', function() {
  return gulp.src('*.md')
    .pipe(toc())
    .pipe(gulp.dest('.'));
});