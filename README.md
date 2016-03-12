# opossumati



Heroku URL: https://shrouded-hollows-35760.herokuapp.com/


#Normal Mode

###Signup

- [X] New authors can sign up
- [X] Survey Creation

- [X] Authors have a "my surveys" screen that lists all the surveys they have created
- [X] Authors can create a new survey
- [X] Authors can mark questions as required
- [X] Authors can edit their own surveys
- [X] Authors can delete a survey (that they authored)
- [X] Surveys must have (at least):
- [X] Title (required)
- [X] Description (optional)
- [X] A set of questions
- [X] Every question has (at least):
- [X] Question text (required)
- [X] Question description (optional)
There are three types of questions that should be supported:
- [X] Yes/no
  The yes and no labels should be editable in the survey designer
  This displays as either two radio buttons or a toggle checkbox
- [X] Short answer
  This displays as a textbox
- [X] Long answer
  This displays as an auto-expanding textarea
- [ ] Questions can be reordered
  This does not have to be a drag/drop implementation; it can be more naive (e.g. a move up / move down button on each question)

###Publishing a survey works as follows:

- [X] By default, surveys are not published. The author must choose to publish a survey
- [X] The survey must have at least one question before it can be published
- [X] When published, the author is immediately presented a link that they can send to people to take the survey

###Taking a Survey

#If a taker has a link to a survey:
- [X] The taker can follow the link directly to the survey
- [X] The taker can complete the survey in a browser
- [X] Takers cannot change their answers once they have submitted a survey
- [X] Takers can take the survey as many times as they want
- [X] Takers cannot submit a survey until the required fields have been filled in
- [X] Authors cannot edit a survey after one or more submissions have been made for the survey

###Viewing Results

- [X] Authors can view all of the answers for any survey they have created
- [X] In this view, answers are grouped by question

#Hard Mode

- [X] Authors can create a fourth question type: dropdown.

- [X] Authors can choose to make any question a dropdown question
- [X] Dropdown questions will still have text and description fields
- [X] When creating a dropdown question, the author will have to enter a list of all possible answers
- [X] The author must give at least two possible answers for each dropdown question before the survey can be saved
- [X] Takers will see a select field (dropdown) for each dropdown-type question, and the default value shown to takers will be blank
- [X] If a dropdown question is required, takers cannot leave the dropdown on the blank option when submitting their answers

#Nightmare Mode

###Survey Creation

- [ ] Authors can drag-and-drop questions
- [ ] Authors can add "Other" as an option to single-select multiple choice questions
- [ ] At design time, there should be a checkbox "allow other." If selected, those surveyed can enter their own text as an answer
- [ ] When the survey is being filled out, if the "allow other" option was specified at design-time, the user can check the option: "other", and a textbox will appear
- [ ] Authors can create multi-select multiple choice questions
- [ ] This is very similar to the Dropdown question type, except when taking the survey, takers can select any number of answers, not just one

###Viewing Results

- [X] Authors can export the results of their survey (in CSV)
- [ ] When an author views survey results, he/she should be given the option to view an aggregate report
- [ ] For yes/no questions and single-choice questions, show each possible answer along with the percentage of people who chose that answer
- [ ] For textual questions, show the answers in a list

#Apocalypse Mode

###Survey Creation

- [ ] Authors can add questions which only appear to takers if the taker selected a particular answer to an earlier question. In other words, perhaps question 3 only appears if the answer to question 1 was "Donkey." Note that this answer-checking could be done on Yes/No answers, multiple choice answers, or textual answers.

###Viewing Results

- [ ] Graph the answers. That's the only description you get. Make it work, make it awesome, and definitely use JavaScript for the graphs.
