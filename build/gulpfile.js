var gulp = require('gulp');
var toc = require('gulp-markdown-toc');

gulp.task('toc', function () {
  return gulp.src('../content/')
    .pipe(toc(
      {
        filter: function (file) {
          return file.relative == '*.md'
        },
        sort: function (fileA, fileB) {
          return fileA.relative < fileB.relative;
        },
        index: function (file) {
          file.basename = 'index.md'; return '00_Index';
        }
      }
    ))
    .pipe(gulp.dest('../content/'));
});