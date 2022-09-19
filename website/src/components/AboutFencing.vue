<template>
    <div id="about-fencing">
        <div id="fencing-info-text">
            <h1>ABOUT FENCING</h1>
            <p>
                Fencing is a group of three related combat sports. The three disciplines in modern fencing are the foil, the épée, and the sabre (also saber); winning points are made through the weapon's contact with an opponent. 
                There are three forms of modern fencing, each of which uses a different kind of weapon and has different rules; thus the sport itself is divided into three competitive scenes: foil, épée, and sabre. Most competitive fencers choose to specialize in one weapon only.
            </p>
        </div>
        <div id="fencing-info">
            <FencingWeapon 
                weaponName = "Foil"
                weaponDesc = "The foil is a light thrusting weapon with a maximum weight of 500 grams. The foil targets the torso, but not the arms or legs. Touches are scored only with the tip; hits with the side of the blade do not register. Touches that land outside the target area stop the action, but are not scored. Only a single touch can be awarded to either fencer at the end of a phrase. If both fencers land touches within a close enough interval of milliseconds to register two lights on the machine, the referee uses the rules of 'right of way' to determine which fencer is awarded the touch. If the referee is unable to determine which fencer has right of way, no touch is awarded."
            />
            <FencingWeapon 
                weaponName = "Epee"
                weaponDesc = "The épée is a thrusting weapon like the foil, but heavier. In épée, the entire body is a valid target. Like foil, all hits must be with the tip and not the sides of the blade. As the entire body is legal target, there is no concept of an off-target touch, except if the fencer accidentally strikes the floor. Unlike foil and sabre, épée does not use 'right of way', simultaneous touches to both fencers, known as “double touches.” However, if the score is tied in a match at the last point and a double touch is scored, the point is null and void."
            />
            <FencingWeapon 
                weaponName = "Sabre"
                weaponDesc = "The sabre is a light cutting and thrusting weapon that targets the entire body above the waist, except the weapon hand. The hand guard on the sabre extends from hilt to the point at which the blade connects to the pommel. This guard is generally turned outwards during sport to protect the sword arm from touches. Hits with the entire blade or point are valid. As in foil, touches that land outside the target area are not scored. In the case of both fencers landing a scoring touch, the referee determines which fencer receives the point for the action, again through the use of 'right of way'."
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
        justify-content: space-between;
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
  