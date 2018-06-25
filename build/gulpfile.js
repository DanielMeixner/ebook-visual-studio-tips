var gulp = require('gulp');
var toc = require('gulp-markdown-toc');

gulp.task('toc', function () {
  return gulp.src('*.md')
    .pipe(toc(
      {
        index: function (file) {
          file.basename = '00_Index/index.md'; return 'done';
        }
      }
    ))
    .pipe(gulp.dest('.'));
});