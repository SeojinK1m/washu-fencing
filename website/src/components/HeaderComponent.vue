<template>
    <div id="header">
        <h1>
            WASHU FENCING CLUB
        </h1>
        <div id="navbar" :class="{'displayNone' : displayNone}">
            <a href="#FAQ">FAQ</a>
            <a href="#exec">Officers</a>
            <a href="#about-fencing">About Fencing</a>
        </div>
    </div>
</template>
  
<script>
export default {
    name: 'HeaderComponent',
    data() {
        return {
            displayNone: false,
        }
    },
    methods: {
        handleResize() {
            console.log(window.innerWidth)
            window.innerWidth <= 900 ? this.displayNone = true : this.displayNone = false
        }
    },
    mounted() {
        window.addEventListener('resize', this.handleResize)
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

    .displayNone {
        display: none !important;
    }

    @media only screen and (max-width: 900px) {
        #header {
            width: 80%;
        }
    }
</style>