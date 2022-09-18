<template>
    <div class="weapon" @click="expanded = !expanded">
        <h1>{{weaponName}}</h1>
        <div class="expanded" v-show="expanded" >
            <p class="weapon-description">
                The épée is a thrusting weapon like the foil, but heavier. In épée, the entire body is a valid target. Like foil, all hits must be with the tip and not the sides of the blade. As the entire body is legal target, there is no concept of an off-target touch, except if the fencer accidentally strikes the floor. Unlike foil and sabre, épée does not use "right of way", simultaneous touches to both fencers, known as “double touches.” However, if the score is tied in a match at the last point and a double touch is scored, the point is null and void.
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
                imagePath: "../"
            }
        },
        props: ['weaponName']
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

    @media only screen and (max-width: 900px) {
        .weapon {
            margin: 15px 0px;
        }
        .weapon-description {
            width: 80%;
        }
    }
  </style>
  