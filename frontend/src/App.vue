<template>
  <NavBar class="no-print" v-if="!this.$route.path.startsWith('/documentation')" />
  <RouterView />
  <FooterBar class="no-print" />
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