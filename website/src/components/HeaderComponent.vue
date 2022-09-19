<template>
    <div id="header">
        <h1>
            WASHU FENCING CLUB
        </h1>
        <div id="navbar" :class="{'dontShow': notDesktop}">
            <a href="#FAQ">FAQ</a>
            <a href="#exec">Officers</a>
            <a href="#about-fencing">About Fencing</a>
        </div>
    </div>
</template>
  
<script>
export default {
    name: 'HeaderComponent',
    computed: {
        notDesktop() {
            //return this.$(window).width() <= 900
            return window.innerWidth <= 900
        }
    }
}
</script>

<style scoped>
    #header {
        max-width: 900px;
        min-height: 10vh;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        margin-right: auto;
        margin-left: auto;
        padding: 20px;
    }

    #navbar {
        display: flex;
        flex-direction: row-reverse;
        flex-wrap: wrap;
    }

    h1 {
        text-align: left;
    }

    a {
        margin: 20px;
        color: white;
        text-decoration: none;
    }

    .notDesktop {
        display: none;
    }
</style>