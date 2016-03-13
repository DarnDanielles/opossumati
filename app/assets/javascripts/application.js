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


//


  var userController = {
      id: 2,
      addUsersForm: function () {
          var newdiv = document.createElement('div');

          var divIdName = 'presUser_' + this.id;

          newdiv.setAttribute('id', divIdName);
          newdiv.className = "divtr";

          newdiv.innerHTML ='<div class="short-answer">'+
                              '<div class="short-answer-one">'+
                                '1'+
                              '</div><!--'+

                            '--><div class="short-answer-two">'+
                                  '<span>'+
                                    '<h3>Short Answer Question</h3>'+
                                    '<div class="short_answer_display-edit display-none">'+
                                      'edit'+
                                      '<i class="fa fa-pencil-square-o"></i>'+
                                    '</div>'+
                                    '<h2 class="short_answer_display">'+
                                    '</h2>'+

                                    '<input class="short_answer_input" type="text" name="lastname">'+
                                '</span>'+
                                '</div>'+
                                '<button class="delete" title="Delete this" onClick="userController.removeUsersForm(' + "'" + divIdName + "'" + ');">'+
                                    '<i class="fa fa-times fa-lg"></i>'+
                                '</button>'+

                              '</div>';

          document.getElementById("main-section-container").appendChild(newdiv);

          this.id = this.id + 1;
          console.log(this.id);
          $('.short_answer_display').hide();

          // $(".short_answer_display-edit").hide();// hide the edit button

          // $(".short_answer_display-edit").hide();

      },
      removeUsersForm: function (id) {
          document.getElementById(id).remove();
      }
  }


  $(function () {
    'use strict';


  // userController.addUsersForm();

  // $("#short-answer").on('click', userController.addUsersForm());
  // $( "#short-answer" ).click(userController.addUsersForm());

  // console.log("begin");
  // $(".short_answer_display-edit").hide();//hide the question edit button
  //
  // $('#short-answer').on('click', function () {//append the short answer html
  //   console.log("end");
  //   // $('#main-section-container').append('<div class="short-answer">' +
  //   //
  //   //                                       '<div class="short-answer-one">'+
  //   //                                         '1'+
  //   //                                       '</div><!--'+
  //   //
  //   //                                     '--><div class="short-answer-two">'+
  //   //                                           '<h3>Short Answer Question</h3>'+
  //   //                                           '<span>'+
  //   //                                             '<h2 class="short_answer_display">'+
  //   //                                             '</h2>'+
  //   //                                             '<i class="fa fa-pencil-square-o short_answer_display-edit"></i>'+
  //   //                                             '<input class="short_answer_input" type="text" name="lastname">'+
  //   //                                           '</span>'+
  //   //                                         '</div>'+
  //   //                                         '<button class="delete">'+
  //   //                                           '<i class="fa fa-times fa-lg"></i>'+
  //   //                                         '</button>'+
  //   //                                       '</div>');
  //
  // });
  //
  //
  // $(".short_answer_display-edit").on('click', function () {// onclick for the edit question button
  //   console.log("haha");
  // });
  //
  // // $('#long-answer').on('click', function () {
  // //   // $(this).text('Hi');
  // //   console.log("end2");
  // //   $('#main-section-container').append('<div class="short-answer long-answer"><div class="short-answer-one">1</div><div class="short-answer-two"><h3>Short Answer Question</h3><span><h2></h2><input type="text" name="lastname"></span></div><button class="edit"><div class="edit-text">edit</div><i class="fa fa-pencil-square-o fa-lg"></i></button></div>' );
  // // });
  //
  //
  // $(".short_answer_display-edit").hide();// hide the edit button


  $('.short_answer_display').hide();

/////////////////////////////////////////////////////////---------SHORT-ANSWER
  $("body").on("keypress", "input", function(){
    if(event.keyCode == 13){
      var content = $(this).val();
      console.log(content);

      $(this).hide();
      // $(this).toggleClass('display-none');
      $(this).siblings('.short_answer_display').show();
      $(this).siblings('.short_answer_display').html(content);
      $(this).siblings(".short_answer_display-edit").toggleClass('display-none');
      // $(".short_answer_display").html(content);
    }
      });

      $("body").on("click", ".short_answer_display-edit", function(){
        console.log("work");
        // $(this).next().html('<input class="short_answer_input" type="text">');
        // $(this).nextAll('input').show();
        // $(this).nextAll('h2').hide();
        $(this).toggleClass('display-none');
        $(this).siblings('.short_answer_input').show();
        $(this).siblings('.short_answer_display').hide();
      });

      $("body").on("click", ".short_answer_display", function(){
        console.log("work");
        // $(this).next().html('<input class="short_answer_input" type="text">');
        // $(this).nextAll('input').show();
        // $(this).nextAll('h2').hide();
        $(this).hide();
        $(this).siblings('.short_answer_input').show();
        $(this).siblings(".short_answer_display-edit").toggleClass('display-none');
      });

/////////////////////////////////////////////////////////---------LONG-ANSWER





      // $("button").click(function(){
      //     $("<p>This is a new paragraph.</p>").insertAfter("button");
      // });


  // $(".short_answer_input").keydown(function() {// if user pressed enter in the input execute the following
  // if (event.keyCode == 13)
  // {

    // console.log("enter");
    // var shortAnswerInput = $(".short_answer_input").val();// get the contents of the input box
    // console.log(shortAnswerInput);
    //
    // $('.short_answer_input').hide();// hide the input box
    // $(".short_answer_display").html(shortAnswerInput);//display the input content in the h2 element
    // $(".short_answer_display-edit").show();//show the edit question button
    // }
  // });

});
