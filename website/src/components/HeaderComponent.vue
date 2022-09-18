<template>
    <div id="header">
        <h1>
            WASHU FENCING CLUB
        </h1>
        <div id="navbar">
            <a href="">About Fencing</a>
            <a href="">Officers</a>
            <a href="">Gallery</a>
        </div>
    </div>
</template>
  
<script>
export default {
    name: 'HeaderComponent'
}
</script>

<style scoped>
    #header {
        max-width: 1000px;
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
</style>