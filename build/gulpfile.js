var gulp = require('gulp');
var toc = require('gulp-markdown-toc');
var path = require("path");

gulp.task('toc', function () {
  return gulp.src('../content/**/*.md')
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
        },
        headingName: function(name) {
          name = path.basename(name.history[0],'.md');
          return name;
        }
        ,
        headingLink: function(name) {
          name = path.basename(name.history[0],'.md');
          return name;
        }
      }
    ))
   
    .pipe(gulp.dest('../content/'));
});