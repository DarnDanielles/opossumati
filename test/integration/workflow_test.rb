require 'test_helper'

class WorkflowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "author workflow" do
    #Login works
    get root_path
    assert_redirected_to login_path
    follow_redirect!
    assert_template "new"
    assert_select "#notice", 1
    assert_select "input[type=email]", 1
    assert_select "input[type=password]", 1
    post login_path email: "dame@gmail.com", password: "password"
    assert_redirected_to root_path
    follow_redirect!

    #Make sure that I see surveys
    assert_select "tbody tr", Survey.count

    #Create survey
    get new_survey_path
    post surveys_path survey: {title: "", description: "",
      Question.new {question_type: "Yes/No", question_order: "1",
        question_text: "Do you have regrets?", description: "Select yes or no",
        required: true }
      }

    #Ensure that I see one more survey
    get root_path
    assert_select "tbody tr", Survey.count

    #Log out
    delete logout_path

    #Make sure I go to the login page
    assert_redirected_to login_path
    follow_redirect!
  end

  test "taker workflow" do
    #Takers can't log in
    get root_path
    assert_redirected_to login_path
    follow_redirect!

    #Takers can get to survey URL
    get new_answers_path
    assert_select ... something ¯\_(ツ)_/¯
    no damn clue anymore . . .
  end



  end
end
