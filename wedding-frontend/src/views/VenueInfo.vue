<template>
  <body id="venue">
      <h1><img id= "wvlogo" v-bind:src="require(`../assets/images/whiteLogo.png`)"></h1>
      <div><img id= "waterviewNight" v-bind:src="require(`../assets/images/waterviewNight.jpg`)"></div>
      <div id="mapLink" @click="waterviewLink">Click here to view the Waterview Loft website</div>
      <div id="mapLink" @click="googleLink">Click here for directions to Waterview Loft</div>

  </body>
</template>

<script>
export default {
    methods: {
      googleLink () {   
          window.open(`https://www.google.com/maps/dir/?api=1&destination=Waterview+Loft+Detroit+MI`);    
      },
      waterviewLink () {   
          window.open(`http://www.waterviewloft.com/`);    
      }
    }
};
</script>

<style>
#venue {
    background-color: black;
    margin: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    min-height: 800px;
}
#wvlogo {
    height: 150px;
    width: auto;
    padding: 20px 0 0 0;
}
#waterviewNight {
    height: 450px;
    width: auto;
}
h1 {
    margin: 0;
}
#mapLink {
    margin: 15px 0 0 0;
    color: white;
    font-family: 'Cookie', cursive;
    font-size: 30px;
    font-weight: 400;
}
#mapLink:hover {
cursor: pointer;
}

@media (max-width: 400px) {
#venue {
    min-height: 620px;
}
#wvlogo {
    height: auto;
    width: 350px;
}
#waterviewNight {
    height: auto;
    width: 350px;
}
#mapLink {
    margin: 15px 0 0 0;
    color: white;
    font-family: 'Cookie', cursive;
    font-size: 26px;
    font-weight: 400;
}
}
</style>