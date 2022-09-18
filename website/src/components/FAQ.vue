<template>
    <div id="FAQ">
        <div class="titleContainer"> 
            <h1>Frequently Asked <span>Questions</span></h1>
        </div>
        <div class="questionsContainer">
            <!-- Reminder: questions should not have a leading capital letter! -->
            <Question
                question = "What is a hackathon?"
                answer = "A hackathon is an invention marathon where students build software around a central theme. At Hack WashU, you can look forward to amazing prizes, engaging speakers, and tons of skilled mentors!"
            />
            <Question
                FAQQuestion = "When is Hack WashU?"
                answer = "Hack WashU will start on the evening of October 14, 2022 and end on the morning of the 16th"
            />
            <FAQQuestion
                FAQQuestion = "Who can attend Hack WashU?"
                answer = "Any college student in the continental United States can attend Hack WashU!"
            />
            <FAQQuestion
                FAQQuestion = "Is Hack WashU in-person?"
                answer = "Hack WashU will primarily be virtual, but there will be an in-person component for WashU students"
            />
            <FAQQuestion
                FAQQuestion = "Is Hack WashU free?"
                answer = "YES!!!"
            />
            <FAQQuestion
                FAQQuestion = "If I can't code, should I still come?"
                answer = "YES!!! Hack WashU will be an inclusive event for all"
            />
            <FAQQuestion
                FAQQuestion = "Will there be swag?"
                answer = "YES!!!"
            />
            <FAQQuestion
                FAQQuestion = "I have more FAQQuestions!!"
                answer = "Feel free to reach out to us at organizer@hackwashu.io!"
            />
        </div>
    </div>
    </template>
    
    
    <script>
    import FAQQuestion from './FAQQuestion.vue'
    
    export default {
      name: 'FAQ',
      components: {
          FAQQuestion,
      }
    }
    </script>
    
    <!-- Add "scoped" attribute to limit CSS to this component only -->
    <style scoped>
    #FAQ {
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
        margin-bottom: 10vh;
        margin-top: 10vh;
    }
    
    .questionsContainer {
        width: 700px;
    }
    .titleContainer {
        width: 200px;
        align-self:flex-start;
    }
    
    h1 {
        color: white;
        text-align: left;
        margin-bottom: 1vh;
        margin-left: 20px;
    }
    
    @media only screen and (max-width: 900px) {
        .questionsContainer {
            width: 80%;
        }
        #FAQ {
            min-height: 50vh;
        }
        h2 {
            width: 80%;
            text-align: center;
            font-size: 2em;
            margin-bottom: 3vh;
        }
    }
    
    </style>