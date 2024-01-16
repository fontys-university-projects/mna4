<template>
  <!-- Card Blog -->
  <div v-if="loaded" class="max-w-[85rem] px-4 py-10 sm:px-6 lg:px-8 lg:py-14 mx-auto">
    <!-- Title -->
    <div class="max-w-2xl mx-auto mb-10 text-center lg:mb-14">
      <h2 class="text-2xl font-bold md:text-4xl md:leading-tight dark:text-white">Projects</h2>
      <p class="mt-1 text-gray-600 dark:text-gray-400">Take a look at the amazing projects the FHICT students have made at R10!</p>
    </div>
    <!-- End Title -->

    <!-- Grid -->
    <div class="grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
      <!-- Card -->
      <router-link v-for="project in projects" 
          :key="project.id"
      class="group flex flex-col h-full border border-gray-200 hover:border-transparent hover:shadow-lg transition-all duration-300 rounded-xl p-5 dark:border-gray-700 dark:hover:border-transparent dark:hover:shadow-black/[.4] dark:focus:outline-none dark:focus:ring-1 dark:focus:ring-gray-600"
         :to="'/project/' + project.id">
        <div class="aspect-w-16 aspect-h-11">
          <img class="object-cover w-full h-60 rounded-xl"
               :src="'https://videolab-api.fhict-dev.com/assets/' + project.thumbnail"
               alt="Image Description">
        </div>
        <div class="my-6">
          <h3 class="text-xl font-semibold text-gray-800 dark:text-gray-300 dark:group-hover:text-white">
            {{ project.title  }}
          </h3>
          <p class="mt-5 text-gray-600 dark:text-gray-400 flex-wrap line-clamp-3 h-[4.5rem]">
            {{ project.about_project }}
          </p>
        </div>
        <div class="flex items-center mt-auto gap-x-3">
          <img v-if="project.user_created.avatar" class="w-8 h-8 rounded-full"
               :src="project.user_created.avatar"
               alt="Image Description">
          <div>
            <h5 class="text-sm text-gray-800 dark:text-gray-200">By {{ project.user_created.first_name }} {{ project.user_created.last_name }}</h5>
          </div>
        </div>
      </router-link>
      <!-- End Card -->

    </div>
  <!-- End Grid -->

</div>
<!-- End Card Blog -->

<div v-else>
    <div class="flex justify-center items-center h-screen">
      <div class="">
        <!-- Your spinner SVG or other markup goes here -->
        <p class="text-lg text-gray-800 dark:text-gray-200">Scouting the universe please wait!</p>
        <div class="flex justify-center items-center space-x-2 pt-4">
          <div class="dot h-2 w-2 bg-gray-800 dark:bg-gray-200 rounded-full"></div>
          <div class="dot h-2 w-2 bg-gray-800 dark:bg-gray-200 rounded-full"></div>
          <div class="dot h-2 w-2 bg-gray-800 dark:bg-gray-200 rounded-full"></div>
        </div>
      </div>
    </div>
  </div>
</template>
<style scoped>
@keyframes bounce {

  0%,
  80%,
  100% {
    transform: scale(0);
    opacity: 0;
  }

  40% {
    transform: scale(1);
    opacity: 1;
  }
}

.dot {
  animation: bounce 3s infinite;
}

.dot:nth-child(2) {
  animation-delay: 0.5s;
}

.dot:nth-child(3) {
  animation-delay: 0.8s;
}
</style>
<script>
import axios from 'axios'
export default {
  data() {
    return {
      projects: null,
      loaded: false
    }
  },

  async mounted() {
    await axios.get('https://videolab-api.fhict-dev.com/items/videos?fields=id,thumbnail,title,about_project,user_created.*')
      .then(response => (
        this.projects = response.data.data,
        this.loaded = true
      ))
      .catch(error => console.log(error));
  }
}
</script>