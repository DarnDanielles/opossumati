# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Author.create(email: "dame@mail.com", password: "password", name: "Dame")
Author.create(email: "geoff@mail.com", password: "password", name: "Geoff")

Survey.create(author_id: "1", title: "Test Required Questions", description: "This survey will have required questions to see what happens when you don't answer them all.")
Survey.create(author_id: "1", title: "Test Edit Survey", description: "See if you can add questions to this survey through the edit page.")
Survey.create(author_id: "1", title: "Test See Answers 1", description: "Make sure that you can see these answers only by the second author and without the answers from test 2.")
Survey.create(author_id: "1", title: "Test See Answers 2", description: "Make sure that you can see these answers only by the second author and without the answers from test 1.")
Survey.create(author_id: "2", title: "Test Segregate Surveys", description: "Make sure that this survey only appears under the survey list for the second authror.")
Survey.create(author_id: "2", title: "Test See Answers 1", description: "Make sure that you can see these answers only by the second author and without the answers from test 2.")
Survey.create(author_id: "2", title: "Test See Answers 2", description: "Make sure that you can see these answers only by the second author and without the answers from test 1.")

Question.create(survey_id: "1", question_type: "Yes/No", description: "Answer this one.", required: "true", question_text: "What do you see when you answer this one?", question_order: "1")
Question.create(survey_id: "1", question_type: "Short Answer", description: "Answer this one.", required: "false", question_text: "What do you see when you answer this one?", question_order: "2")
Question.create(survey_id: "1", question_type: "Long Answer", description: "Don't answer this question.", required: "true", question_text: "What do you see when you don't answer this one?", question_order: "3")
Question.create(survey_id: "2", question_type: "Yes/No", description: "See if you can add a second question", required: "true", question_text: "Can you add a second question?", question_order: "1")
Question.create(survey_id: "3", question_type: "Short Answer", description: "Make sure the answer is only seen when clicked on survey 3", required: "true", question_text: "Is the answer on survey 3?", question_order: "1")
Question.create(survey_id: "3", question_type: "Yes/No", description: "Make sure the answer is only seen when clicked on survey 3", required: "false", question_text: "Is this one also on survey 3?", question_order: "2")
Question.create(survey_id: "4", question_type: "Long Answer", description: "Make sure the answer is only seen when clicked on survey 4", required: "true", question_text: "Is the answer on survey 4?", question_order: "1")
Question.create(survey_id: "4", question_type: "Short Answer", description: "Make sure the answer is only seen when clicked on survey 4", required: "false", question_text: "Is this one also on survey 4?", question_order: "2")
Question.create(survey_id: "5", question_type: "Long Answer", required: "true", question_text: "Can Dame see this survey or just Geoff?", question_order: "1")
Question.create(survey_id: "6", question_type: "Yes/No", description: "Author 2, survey 2", required: "false", question_text: "Is this answer visible?", question_order: "1")
Question.create(survey_id: "6", question_type: "Short Answer", description: "Author 2, survey 2", required: "true", question_text: "Is this answer also visible?", question_order: "2")
Question.create(survey_id: "7", question_type: "Long Answer", description: "Author 2, survey 3", required: "false", question_text: "Is this answer visible?", question_order: "1")
Question.create(survey_id: "7", question_type: "Yes/No", description: "Author 2, survey 3", required: "true", question_text: "Is this answer also visible?", question_order: "2")
