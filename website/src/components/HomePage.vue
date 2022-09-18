<template>
  <div id="about">
    <img src="../assets/fencingAbout.jpg" />
    <div id="about-us-text">
      <h1>ABOUT US</h1>
      <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
      </p>
      <button id="join-button">
        JOIN US
      </button>
    </div>
  </div>

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

export default {
  components: {
    AboutFencing,
    ExecMember,
    FAQ,
}
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  img {
    width: 300px;
    height: 400px;
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
    justify-content: center;
    align-items: center;
    min-height: 60vh;
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
  }
</style>
