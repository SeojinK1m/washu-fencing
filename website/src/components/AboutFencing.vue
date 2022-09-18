<template>
    <div id="about-fencing">
        <div id="fencing-info-text">
            <h1>ABOUT FENCING</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
        <div id="fencing-info">
            <FencingWeapon 
                weaponName = "Foil"
            />
            <FencingWeapon 
                weaponName = "Epee"
            />
            <FencingWeapon 
                weaponName = "Sabre"
            />
        </div>
    </div>
</template>
  
  <script>
import FencingWeapon from "./FencingWeapon.vue";
  export default {
    components: { FencingWeapon }
}
  </script>
  
  <!-- Add "scoped" attribute to limit CSS to this component only -->
  <style scoped>
    #about-fencing {
        max-width: 900px;
        display: flex;
        flex-direction: row;
        margin-left: auto;
        margin-right: auto;
        align-items: center;
        justify-content: center;
        flex-wrap: wrap;
        min-height: 50vh;
    }
    #fencing-info-text {
        max-width: 350px;
        text-align: left;
        margin-right: 10px;
        line-height: 2;
    }
    #fencing-info {
        width: 530px;
        margin-left: 10px;
    }
    @media only screen and (max-width: 900px) {
        #about-fencing {
            width: 80%;
            justify-content: center;
            align-items: center;
        }
        #fencing-info-text {
            max-width: 80vw;
            margin-right: none;
        }
        #fencing-info {
            width: 80vw;
            max-width: none;
            margin-left: 0px;
        }
    }
  </style>
  