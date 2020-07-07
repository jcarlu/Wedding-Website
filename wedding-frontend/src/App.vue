<template>
  <div id="app">
    <header>
      <ul class="nav">
        <li id="date">May 15, 2021</li>
        <li id="headTitle">Natalie & James</li>
        <li id="location"><p>Waterview Loft</p><p> Detroit, MI</p></li>
      </ul>
      <ul class="lowerNav">
        <li id="lowerNavLink"><router-link :to="{ name: 'home' }">Home</router-link></li>
        <li id="lowerNavLink"><router-link :to="{ name: 'weddingParty' }">Wedding Party</router-link></li>
        <li id="lowerNavLink"><router-link :to="{ name: 'venue' }">Venue Info</router-link></li>
        <li id="lowerNavLink"><router-link :to="{ name: 'thingsToDo' }">Things To Do</router-link></li>
        <li id="lowerNavLink"><router-link :to="{ name: 'gallery' }">Photos</router-link></li>
        <li id="lowerNavLink"><router-link :to="{ name: 'rsvp' }">RSVP</router-link></li>
      </ul>
    </header>
    <router-view/>
    <footer>
      <p>A gift for Natalie ~ An OJC Production</p>
    </footer>
  </div>
</template>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Cookie&display=swap');
header {
  height: 110px;
  display: flex;
  flex-direction: column;
  background-color: black;
  margin: 0;

}
.nav {
  margin:0;
  width: cover;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  list-style-type: none;
  font-family: 'Cookie', cursive;
  vertical-align: middle;
  height: 70px;
  color: white;
}
#date {
  font-size: 20px;
  vertical-align: middle;
  margin: 12px 0 0 -30px;
}
#location {
  font-size: 20px;
  vertical-align: middle;
  margin: 2px 0 0 0;
}
#location>p {
  margin: 0 10px 0 10px;
  vertical-align: middle;
}
#headTitle {
  font-size: 50px;
  vertical-align: middle;
  margin: 6px 0 0 0;
}
.lowerNav {
  width: 100%;
  height: 50px;
  padding: 0;
  margin: 0;
  display: flex;
  flex-direction: row;
  justify-content: center;
  list-style-type: none;
  font-family: 'Cookie', cursive;
  vertical-align: middle;
  background-color: black;
  color: white;
}
#lowerNavLink {
  font-size: 24px;
  margin: 10px 80px 0 0;
}
#lowerNavLink>a {
    text-decoration: none;
    color: white;
}
footer {
  height:60px;
  background-color: black;
  margin: 0;
  display: flex;
  justify-content: center;
  align-items: center;
}
footer>p {
  color: white;
  font-family: 'Cookie', cursive;
  font-size: 32px;
  margin: 0;
}
@media (max-width: 900px) {
  .nav {
    margin:0;
    width: cover;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    list-style-type: none;
    font-family: 'Cookie', cursive;
    vertical-align: middle;
    height: 70px;
    color: white;
}
  #date {
    font-size: 20px;
    vertical-align: middle;
    margin: 12px 0 0 -30px;
  }
  #location {
    font-size: 20px;
    vertical-align: middle;
    margin: 2px 0 0 0;
  }
  #location>p {
    margin: 0 10px 0 10px;
    vertical-align: middle;
  }
  #headTitle {
    font-size: 30px;
    vertical-align: middle;
    margin: 6px 0 0 0;
    color: rgb(146, 17, 17);
  }
  .lowerNav {
    width: 100%;
    height: 70px;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: row;
    list-style-type: none;
    font-family: 'Cookie', cursive;
    vertical-align: middle;
    background-color: black;
    color: white;
    align-items: center;
  }
  #lowerNavLink {
    font-size: 20px;
    margin: 2px;
    text-align: center;
    border-style: solid;
    border: rgb(146, 17, 17);
    border-width: 1px;
  }
  #lowerNavLink>a {
    text-decoration: none;
    color: white;
}
  footer>p {
    font-size: 28px;
  }
}
</style>
