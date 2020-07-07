<template>
<body id="gallery">
    <div v-for='photo in photos' :key='photo.title' id="photo-card">
        <img id= "photo-image" v-bind:src="require(`../assets/images/${photo.title}.jpg`)">
        <p id="location">{{photo.location}}</p>
        <p  id="photoDesc">{{photo.description}}</p>
    </div>
</body>
    
</template>

<script>
export default {
    data() { 
        return { 
            photos: []
        }
    },
    methods: {
        getAllPhotos(){
            fetch(`http://localhost:8080/WeddingSite/wedding/gallery`, {
            method: 'GET',
            headers: {
            Accept: "application/json",
            "Content-Type": "application/json"
          }
        })
            .then (
            (response) => {
            return response.json();
            })
            .then (
            (photos) => {
            this.photos = photos;
            }
            )
            .catch (
            (err) => {
            console.error(err);
            })
          },
       
    },
  created() {
    this.getAllPhotos();
  }
}
</script>

<style scoped>
#gallery {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  background-color: rgb(7, 7, 7);
  margin: 0;
}
#photo-card {
  box-shadow: 8px 8px 20px rgb(146, 17, 17);
  border-color: rgb(146, 17, 17);
  border-radius: 10px;
  margin: 15px 25px 15px 25px;
  width: 220px;
  display: flex;
  flex-direction: column;
  align-items: center;
  border-style: solid;
  border-width: 4px;
  background-color: rgb(172, 168, 168);
  background-color: rgb(146, 17, 17);
  transition: all 0.4s ease 0s;
}
#photo-card:hover {
  transform: scale(1.4);
}
#photo-image {
  width: 220px;
  height: auto;
  border-radius: 4px;
  
}
#location {
  font-size: 20px;
  font-weight: bold;
  margin: 10px 0 5px 0;
  color: white;
}
#photoDesc {
  font-size: 20px;
  width: 160px;
  margin: 5px 0 10px 0;
  color: white;
}


</style>