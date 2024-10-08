module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    sass: {
      dist: {
          options:{
              style: 'compressed'
          },
          files: {
            'wp-content/themes/Northbanks/assets/css/style.css' : ['wp-content/themes/Northbanks/assets/sass/style.scss']
          }
      }
  },

    uglify: {
      options: {
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("dd-mm-yyyy") %> */\n'
      },
      dist: {
        files: {
          'wp-content/themes/Northbanks/assets/js/main.js' : ['wp-content/themes/Northbanks/assets/js/libraries/*.js']
        }
      }
    },
    watch: {
      css : {
        files: [
          'wp-content/themes/Northbanks/assets/css/style.css' , 'wp-content/themes/Northbanks/assets/sass/**/*.scss'],
          // tasks: ['newer:sass']
          tasks: ['sass']
        },

      js : {
        files: 'wp-content/themes/Northbanks/assets/js/libraries/*.js',
        tasks: ['uglify']
      },
      options: {
        livereload: true,
      },
    },
  });

  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-newer'); // turned off, causes issues for reasons i don't understand
  grunt.registerTask('default',['watch']);
};