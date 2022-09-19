<template>
    <div class="weapon" @click="expanded = !expanded">
        <div class="init">
            <h1>{{weaponName}}</h1>
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" :class="{'dontShow':expanded}">
                <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" :class="{'dontShow':!expanded}">
                <path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
            </svg>
        </div>
        <div class="expanded" v-show="expanded" >
            <p class="weapon-description">
                {{weaponDesc}}
            </p>
            <img class="weapon-target" :src="require(`../assets/${weaponName.toLowerCase()}Body.png`)" />
        </div>
    </div>
</template>
  
  <script>
    export default {
        data() {
            return {
                expanded: false,
            }
        },
        props: ['weaponName', 'weaponDesc']
    }
  </script>
  
  <!-- Add "scoped" attribute to limit CSS to this component only -->
  <style scoped>
    .weapon {
        min-height: 80px;
        border-radius: 10px;
        margin: 20px;
        background-color: var(--washu-beige);
        padding: 15px 0px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    h1 {
        color: var(--washu-green);
    }

    .expanded {
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
    }

    .weapon-description {
        width: 50%;
        text-align: left;
        color: rgb(0, 54, 45);
    }

    .weapon-target {
        width: 200px;
        height: 200px;
    }

    .init {
        justify-content: space-between;
        flex-direction: row;
        display: inline-flex;
        align-items: center;
        width: 91%;
    }

    .dontShow {
        display: none;
    }

    svg {
        fill: var(--washu-green);
        width: 20px;
        height: 20px;
    }

    path {
        stroke-width: 1px;
        stroke: var(--washu-green);
    }

    @media only screen and (max-width: 900px) {
        .weapon {
            margin: 15px 0px;
        }
        .weapon-description {
            width: 91%;
        }
    }
  </style>
  