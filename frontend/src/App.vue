<template>
  <NavBar />
  <RouterView />
  <FooterBar />
</template>

<script>
import NavBar from './components/NavBar.vue';
import FooterBar from './components/FooterBar.vue';
export default {
  components: {
    NavBar,
    FooterBar
  }
}
</script>