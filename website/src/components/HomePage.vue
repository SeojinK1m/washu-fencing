<template>
  <div id="about">
    <img src="../assets/fencingAbout.jpg" />
    <div id="about-us-text">
      <h1>ABOUT US</h1>
      <p>
        Champion athletes aren’t just born - they’re trained, molded, and tested. We sharpen raw talent to maturity with quality teammates, substantive workouts and a true love of the sport. Teamwork, perseverance, sportsmanship - those are the hallmarks of WashU Fencing. Whether you're a competitor or looking for fun, this team fosters a relaxed environment full of weekly fencing, outings, and socials that suit your needs. If you're looking for a place to exercise and socialize, look no further.
      </p>
      <a href="https://wustl.presence.io/organization/sports-club-fencing">
        <button id="join-button">
          JOIN US
        </button>
      </a>
    </div>
  </div>
<!--
<div id="carouselContainer">
    <carousel :items-to-show="{numberToShow}" :wrap-around="true">
      <slide v-for="slide in 10" :key="slide">
        <img src="../assets/fencingAbout.jpg" />
      </slide>

      <template #addons>
        <navigation />
        <pagination />
      </template>
  </carousel>
  </div>
-->

  <AboutFencing />

  <div id="calContainer">
    <iframe src="https://calendar.google.com/calendar/embed?src=d94228a5d992c436b5bbf4410b36fb2d61665390cc114719556137447300b24f%40group.calendar.google.com&ctz=America%2FChicago" style="border: 0" frameborder="0" scrolling="no"></iframe>
  </div>

  <div id="exec">
    <h1>MEET OUR TEAM</h1>
    <ExecMember
      name="Simon" 
      description="Simon is the president of the Fencing club"
    />
    <ExecMember 
      name="Jeremy" 
      description="Jeremy is the vice-president of the Fencing club"
    />
    <ExecMember 
      name="Raghed" 
      description="Raghed is the treasurer of the Fencing club"
    />
    <ExecMember 
      name="Sam" 
      description="Sam is the secretary of the Fencing club"
    />
  </div>

  <FAQ />

  <div id="footer">
    <p>Built with love by Sam</p>
    <div id="footerText">
      <p>You can contribute </p><a href="https://github.com/SeojinK1m/washu-fencing">here</a>
    </div>
  </div>
</template>

<script>
var script = document.createElement('script')
script.src = "//www.instagram.com/embed.js"
document.head.appendChild(script);

import AboutFencing from "./AboutFencing.vue"
import ExecMember from "./ExecMember.vue";
import FAQ from "./FAQ.vue";

import 'vue3-carousel/dist/carousel.css';
//  import { Carousel, Slide, Pagination, Navigation } from 'vue3-carousel';

export default {
  components: {
      AboutFencing,
      ExecMember,
      FAQ,
      //  Carousel,
      //  Slide,
      //  Pagination,
      //  Navigation,
  },
  data() {
    return {
      numberToShow: 2.5
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  img {
    width: 330px;
    height: 440px;
    border-radius: 10px;
  }

  #about {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    margin-left: auto;
    margin-right: auto;
    text-align: left;
    padding: 20px;
    justify-content: space-between;
    align-items: center;
    min-height: 60vh;
    max-width: 900px;
  }

  #about-us-text {
    max-width: 500px;
    margin: 30px;
    display: flex;
    flex-direction: column;
    line-height: 2;
  }

  #join-button {
    border: none;
    padding: 10px;
    width: 200px;
    margin-top: 10px;
    border-radius: 5px;
    color: orange;
    border: 2px orange solid;
    background-color: var(--washu-green);
    transition-duration: .2s;
  }
  #join-button:hover {
    background-color: orange;
    color: white;
    cursor: pointer;
  }

  iframe {
    width: 900px;
    height: 600px;
    border-radius: 10px;
  }

  #calContainer {
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  #exec {
    margin-left: auto;
    margin-right: auto;
    width: 900px;
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
  }

  #faqSection {
    margin-left: auto;
    margin-right: auto;
    width: 900px;
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    text-align: left;
    justify-content: space-between;
  }
  #faqSection h1 {
    width: 200px;
  }

  #footer {
    min-height: 10vh;
    width: 100%;
    background: var(--washu-beige);
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }

  #footer-text {
    display: flex;
    flex-direction: row;
  }

  .carousel__item {
    min-height: 100px;
    width: 100%;
    background-color: var(--washu-beige);
    color:  var(--vc-clr-white);
    font-size: 20px;
    border-radius: 8px;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .carousel__slide {
    padding: 10px;
  }

  .carousel__prev,x
  .carousel__next {
    box-sizing: content-box;
    border: 5px solid white;
  }

  #carouselContainer {
    width: 900px;
    margin-left: auto;
    margin-right: auto;
  }

  @media only screen and (max-width: 900px) {
    iframe {
      width: 80%;
      height: 100vw;
    }
    #exec {
      width: 80%;
    }
    #faqSection {
      width: 80%;
    }
    #calContent {
      min-height: 40vh;
    }
    #carouselContainer {
      width: 80%;
    }
    #about {
      justify-content: center;
    }
  }
</style>
