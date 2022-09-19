<template>
    <div id="FAQ">
        <div class="titleContainer"> 
            <h1>Frequently Asked <span>Questions</span></h1>
        </div>
        <div class="questionsContainer">
            <!-- Reminder: questions should not have a leading capital letter! -->
            <FAQQuestion
                question = "When are fencing practices?"
                answer = "We meet every Monday and Wednesday from 6-8pm at the South Campus Gym for practices. If you would like the latest updates on fencing practices, please message us through email, Instagram, or the Contact page and we will get back to you as soon as possible."
            />
            <FAQQuestion
                question = "Can I be part of the Exec Board?"
                answer = "Elections for positions on the team are done every year. If you are a regular member and would like to contribute, don't hesitate to join the race!"
            />
            <FAQQuestion
                question = "I've never fenced before. Are there other fencers like me?"
                answer = "Absolutely! Our team skill level ranges from beginners to rated, and we will be sure to match you with someone with similar experience. We also have rated fencers who will provide complimentary lessons for those who are interested in improving."
            />
            <FAQQuestion
                question = "Is there a chat I can join to get updates?"
                answer = "We have a groupme (subject to change) where we discuss upcoming events, socials, and practice schedule changes. Please email or dm us on instagram about your interest in joining the group and we will happily add you."
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
    }
    
    @media only screen and (max-width: 900px) {
        .questionsContainer {
            width: 80%;
        }
        .titleContainer {
            width: 80%;
            align-self:flex-start;
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