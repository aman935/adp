// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .



//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree 
//= require jquery.turbolinks


      function updateSource(e) { 

        
        var x = e.getAttribute("data-value");

        // var x = document.getElementById("a1").getAttribute("data-value");

        var audio = document.getElementById('audio-player');
        var source = document.getElementById('oggSource');
        source.src = x;
        audio.load(); //call this to just preload the audio without playing
        audio.play(); //call this to play the song right away
    }
