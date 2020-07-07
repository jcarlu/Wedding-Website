import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Gallery from './views/Gallery.vue'
import VenueInfo from './views/VenueInfo.vue'
import RSVP from './views/RSVP.vue'
import WeddingParty from './views/WeddingParty.vue'
import ThingsToDo from './views/ThingsToDo.vue'

Vue.use(Router)

/**
 * The Vue Router is used to "direct" the browser to render a specific view component
 * inside of App.vue depending on the URL.
 *
 * It also is used to detect whether or not a route requires the user to have first authenticated.
 * If the user has not yet authenticated (and needs to) they are redirected to /login
 * If they have (or don't need to) they're allowed to go about their way.
 */

const router = new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/gallery",
      name: "gallery",
      component: Gallery,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/venue",
      name: "venue",
      component: VenueInfo,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/rsvp",
      name: "rsvp",
      component: RSVP,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/weddingParty",
      name: "weddingParty",
      component: WeddingParty,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/thingsToDo",
      name: "thingsToDo",
      component: ThingsToDo,
      meta: {
        requiresAuth: false
      }
    },
  ]
})

// router.beforeEach((to, from, next) => {
//   // Determine if the route requires Authentication
//   const requiresAuth = to.matched.some(x => x.meta.requiresAuth);
//   const user = auth.getUser();

//   // If it does and they are not logged in, send the user to "/login"
//   if (requiresAuth && !user) {
//     next("/login");
//   } else {
//     // Else let them go to their next destination
//     next();
//   }
// });

export default router;
