<template>
    <div class="container" :class="{'active_container':showAnswer}">
        <button @click="showAnswer=!showAnswer" :class="{'active_button':showAnswer, 'initial_button':!showAnswer}">
            <h2>{{question}}</h2>
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" :class="{'dontShow':showAnswer}">
                <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" :class="{'dontShow':!showAnswer}">
                <path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
            </svg>
        </button>
        <div class="ans" v-show="showAnswer"><p>{{answer}}</p></div>
    </div>
    </template>
    
    <script>
    export default {
      name: 'FAQQuestion',
      props: ['question', 'answer'],
      data() {
          return {
              showAnswer: false,
          }
      },
    }
    </script>
    
    <!-- Add "scoped" attribute to limit CSS to this component only -->
    <style scoped>
    button {
        display: flex;
        justify-content: space-between;
        width: 100%;
        border: none;
        padding: 20px;
        border-radius: 10px;
        align-items: center;
    }
    
    .initial_button {
        background: var(--washu-beige);
    }
    
    .active_button{
        background: var(--washu-beige);
    }
    
    h2 {
        text-align: left;
    }
     p {
         text-align: left;
         margin-top: 10px;
         margin-left: 0px;
         font-size: 1em;
         line-height: 1.3;
         padding: 0px 20px 20px 20px;
         color: rgb(0, 54, 45);
     }
    
     .container {
         border-radius: 15px;
         background: var(--washu-beige);
         margin-bottom: 20px;
     }
    
    .active_container {
        background: var(--washu-beige);
    }

    svg {
        fill: var(--washu-green);
        width: 20px;
        height: 20px;
        margin-left: 10px;
    }

    path {
        stroke-width: 1px;
        stroke: var(--washu-green);
    }

    .dontShow {
        display: none;
    }
    
    </style>