<template>
    <div class="execMember">
        <img :src="require(`../assets/${name.toLowerCase()}.png`)" class="execPhoto"/>
        <div class="execDesc">
            <h1>{{name}}</h1>
            <p>{{description}}</p>
        </div>
    </div>
</template>
  
  <script>
    export default {
        data() {
            return {

            }
        },
        props: ['name', 'description']
    }
  </script>
  
  <!-- Add "scoped" attribute to limit CSS to this component only -->
  <style scoped>
    .execMember {
        width: 100%;
        min-height: 150px;
        display: flex;
        flex-direction: row;
        margin-top: 20px;
    }

    .execPhoto {
        width: 200px;
        height: 200px;
        border-radius: 15px;
        object-fit: cover;
    }

    .execDesc {
        width: 650px;
        height: 200px;
        margin-left: 50px;
        text-align: left;
    }

    @media only screen and (max-width: 900px) {
        .execPhoto {
            width: 150px;
            height: 150px;
        }
        .execDesc {
            width: calc(80vw - 150px);
            margin-left: 20px;
        }
    }
  </style>
  