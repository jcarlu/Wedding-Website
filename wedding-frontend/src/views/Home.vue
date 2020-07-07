<template>
  <div id="home">
    <div id="gettingMarried">
      <div id="container1">
        <img src="../assets/images/flower3.jpg" />
        <p>We're Getting Married!</p>
      </div>
        <div id="circleAnnouncement">
          <div id="circleAnnouncement2">
            <div id="names">
            <p id="name">Natalie Bolyea</p>
            <p id="and">and</p>
            <p id="name">James Carlu</p>
            <div id="dateLocation">
            <p id="date2">May 15, 2021</p><p id="location2">Detroit, MI</p>
            </div>
            <p id="location3">Waterview Loft</p>
            </div>
          </div>
        </div>
    </div> 
  </div>
</template>

<script>
export default {
  name: 'home'
}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Cookie&display=swap');
#home {
  display: flex;
  flex-direction: column;
  min-height: 800px;
  background-image: url("../assets/images/flower4.jpg");
}
#container1 {
  display:flex;
  margin: 0;
  color: white;
  height: 300px;
  align-items: center;
}
#container1>p {
  vertical-align: middle;
  text-align: center;
  color: white;
  width: fill;
  margin-left: -325px;
  font-size: 120px;
  border: black;
  font-family: 'Cookie', cursive;
}
#container1>img {
height: 300px;
width: auto;
}
#circleAnnouncement {
  
  background-size: cover;
  height: 500px;
  justify-content: center;
  margin:0;
  display: flex;
  justify-content: center;
  vertical-align: middle;
}
#circleAnnouncement2 {
  color:white;
  background-color:black;
  border-radius: 50%;
  height: 380px;
  width: 380px;
  text-align: center;
  font-size: 36px;
  border: rgb(146, 17, 17);
  border-style: double;
  border-width: 12px;
  vertical-align: middle;
  margin: -40px 0 0 0;
}
#circleAnnouncement2>p {
 vertical-align: middle;
}
#and {
  font-size: 24px;
}
#name {
  margin: 5px 0 5px 0;
  font-size: 40px;
}
#names {
  margin-top: 66px;
}
#dateLocation {
  display: inline-block;
}
#date2 {
  margin: 22px 100px 0 0;
  color:white;
  font-size: 20px;
  display: inline-block;
}
#location2 {
  margin: 26px 0 0 0;
  color:white;
  font-size: 20px;
  display: inline-block;
}
#location3 {
  margin: 14px 0 0 0;
  color:white;
  font-size: 20px;
  display: inline-block;
}
@media (max-width: 900px) {
  #container1 {
    display:none;
    margin: 0;
    color: white;
    height: 300px;
    align-items: center;
}
#circleAnnouncement2 {
  color:white;
  background-color:black;
  border-radius: 50%;
  height: 380px;
  width: 380px;
  text-align: center;
  font-size: 36px;
  border: rgb(146, 17, 17);
  border-style: double;
  border-width: 12px;
  vertical-align: middle;
  margin: 15px 0 0 0;
}
}

</style>
