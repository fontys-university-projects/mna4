<template>
  <div v-if="loaded">
    <main class="h-[calc(100vh-94px)]">
      <!-- Hero -->
      <div
           class="relative flex justify-center items-center h-full overflow-hidden before:absolute before:top-0 before:start-1/2 before:bg-[url('https://preline.co/assets/svg/component/squared-bg-element.svg')] before:bg-no-repeat before:bg-top before:w-full before:h-full before:-z-[1] before:transform before:-translate-x-1/2 dark:before:bg-[url('https://preline.co/assets/svg/component/squared-bg-element-dark.svg')]">
        <div class="max-w-[85rem] mx-auto px-4 sm:px-6 lg:px-8 pt-24 pb-10">
          <!-- Announcement Banner -->
          <div class="flex justify-center">
            <a class="inline-flex items-center p-2 px-3 text-xs text-gray-600 transition bg-white border border-gray-200 rounded-full gap-x-2 hover:border-gray-300 dark:bg-gray-800 dark:border-gray-700 dark:hover:border-gray-600 dark:text-gray-400"
               target="_blank"
               href="https://videolab-api.fhict-dev.com/admin/login">
              Want to be part of the content creators?
              <span class="flex items-center gap-x-1">
                <span class="text-blue-600 border-gray-200 border-s ps-2 dark:text-blue-500">Register here</span>
                <svg class="flex-shrink-0 w-4 h-4 text-blue-600"
                     xmlns="http://www.w3.org/2000/svg"
                     width="24"
                     height="24"
                     viewBox="0 0 24 24"
                     fill="none"
                     stroke="currentColor"
                     stroke-width="2"
                     stroke-linecap="round"
                     stroke-linejoin="round">
                  <path d="m9 18 6-6-6-6" />
                </svg>
              </span>
            </a>
          </div>
          <!-- End Announcement Banner -->

          <!-- Title -->
          <div class="max-w-xl mx-auto mt-5 text-center">
            <h1 class="block text-4xl font-bold text-gray-800 md:text-5xl lg:text-6xl dark:text-gray-200">
              Pixel Playground
            </h1>
          </div>
          <!-- End Title -->

          <div class="max-w-3xl mx-auto mt-5 text-center">
            <p class="text-lg text-gray-600 dark:text-gray-400">Welcome to the Pixel Playground, glad to have you here
              please feel
              free to explore the awesome content by the R10 Students!</p>
          </div>
          <div class="text-center">
            <div class="flex justify-center gap-3 mt-2">
              <router-link class="inline-flex items-center justify-center px-4 py-3 text-sm font-medium text-center text-white border border-transparent rounded-full gap-x-3 bg-gradient-to-tl from-blue-600 to-violet-600 hover:from-violet-600 hover:to-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-600 focus:ring-offset-2 focus:ring-offset-white dark:focus:ring-offset-gray-800"
                           to="/projects">
                Checkout projects
              </router-link>
            </div>
          </div>
        </div>
      </div>
    </main>

    <!-- Card Blog -->
    <div class="relative max-w-[85rem] px-4 py-10 sm:px-6 lg:px-8 lg:py-14 mx-auto">
      <!-- Title -->
      <div class="max-w-2xl mx-auto mb-10 text-center lg:mb-14">
        <h2 class="text-2xl font-bold md:text-4xl md:leading-tight dark:text-white">Recommended projects</h2>
        <p class="mt-1 text-gray-600 dark:text-gray-400">Checkout these awesome projects made by our colleagues!</p>
      </div>
      <!-- End Title -->

      <!-- Grid -->
      <div class="grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
        <!-- Card -->
        <div v-for="article in projects"
             :key="article.title">
          <router-link class="overflow-hidden group rounded-xl "
          :to="'/project/' + article.id">
            <div class="relative pt-[50%] sm:pt-[70%] rounded-xl overflow-hidden">
              <img class="absolute top-0 object-cover w-full h-full transition-transform duration-500 ease-in-out start-0 group-hover:scale-105 rounded-xl"
                   :src="'https://videolab-api.fhict-dev.com/assets/' + article.thumbnail"
                   alt="Image Description">
            </div>

            <div class="ml-1 mt-7">
              <h3
                  class="text-xl font-semibold text-gray-800 group-hover:text-gray-600 dark:group-hover:text-gray-300 dark:text-gray-200">
                {{ article.title }}
              </h3>
              <p class="mt-3 text-gray-800 dark:text-gray-200 flex-wrap line-clamp-3 h-[4.5rem]">
                {{ article.about_project }}
              </p>
              <p
                 class="inline-flex items-center mt-5 font-medium text-blue-600 gap-x-1 decoration-2 group-hover:underline">
                Read more
                <svg class="flex-shrink-0 w-4 h-4"
                     xmlns="http://www.w3.org/2000/svg"
                     width="24"
                     height="24"
                     viewBox="0 0 24 24"
                     fill="none"
                     stroke="currentColor"
                     stroke-width="2"
                     stroke-linecap="round"
                     stroke-linejoin="round">
                  <path d="m9 18 6-6-6-6" />
                </svg>
              </p>
            </div>
          </router-link>
        </div>
        <!-- End Card -->

        <!-- Card -->
        <router-link class="group relative flex flex-col w-full min-h-[15rem] bg-center bg-cover rounded-xl hover:shadow-lg transition bg-[url('https://images.unsplash.com/photo-1634017839464-5c339ebe3cb4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3000&q=80')] "
                     to="/projects">
          <div class="absolute inset-0 bg-black opacity-50 rounded-xl"></div>
          <div class="relative flex-auto p- md:p-6">
            <h3 class="text-xl text-white/[.9] group-hover:text-white"><span class="font-bold">Want to be one of
                them?</span>
              <br>
              Everyone is free to submit their work to the platform! Try out your luck and showoff your skills!
            </h3>
          </div>
          <div class="relative p-4 pt-0 rounded-b-xl md:p-6">
            <div class="inline-flex items-center gap-2 text-sm font-medium text-white group-hover:text-white/[.8]">
              Register now
              <svg class="flex-shrink-0 w-4 h-4"
                   xmlns="http://www.w3.org/2000/svg"
                   width="24"
                   height="24"
                   viewBox="0 0 24 24"
                   fill="none"
                   stroke="currentColor"
                   stroke-width="2"
                   stroke-linecap="round"
                   stroke-linejoin="round">
                <path d="m9 18 6-6-6-6" />
              </svg>
            </div>
          </div>
        </router-link>
        <!-- End Card -->
      </div>
      <!-- End Grid -->
    </div>
    <!-- End Card Blog -->
    <!-- FAQ -->
    <div class="max-w-[85rem] px-4 py-10 sm:px-6 lg:px-8 lg:py-14 mx-auto">
      <!-- Grid -->
      <div class="grid gap-10 md:grid-cols-5">
        <div class="md:col-span-2">
          <div class="max-w-xs">
            <h2 class="text-2xl font-bold md:text-4xl md:leading-tight dark:text-white">Frequently<br>asked questions</h2>
            <p class="hidden mt-1 text-gray-600 md:block dark:text-gray-400">Answers to the most frequently asked
              questions.
            </p>
          </div>
        </div>
        <!-- End Col -->

        <div class="md:col-span-3">
          <!-- Accordion -->
          <div class="divide-y divide-gray-200 hs-accordion-group dark:divide-gray-700">

            <div v-for="question in FAQ"
                 :key="question.name"
                 class="pt-6 pb-3 hs-accordion"
                 id="hs-basic-with-title-and-arrow-stretched-heading-two">
              <button class="inline-flex items-center justify-between w-full pb-3 font-semibold text-gray-800 transition rounded-lg hs-accordion-toggle group gap-x-3 md:text-lg text-start hover:text-gray-500 dark:text-gray-200 dark:hover:text-gray-400 "
                      aria-controls="hs-basic-with-title-and-arrow-stretched-collapse-two">
                {{ question.name }}
                <svg class="flex-shrink-0 block w-5 h-5 text-gray-600 hs-accordion-active:hidden group-hover:text-gray-500 dark:text-gray-400"
                     xmlns="http://www.w3.org/2000/svg"
                     width="24"
                     height="24"
                     viewBox="0 0 24 24"
                     fill="none"
                     stroke="currentColor"
                     stroke-width="2"
                     stroke-linecap="round"
                     stroke-linejoin="round">
                  <path d="m6 9 6 6 6-6" />
                </svg>
                <svg class="flex-shrink-0 hidden w-5 h-5 text-gray-600 hs-accordion-active:block group-hover:text-gray-500 dark:text-gray-400"
                     xmlns="http://www.w3.org/2000/svg"
                     width="24"
                     height="24"
                     viewBox="0 0 24 24"
                     fill="none"
                     stroke="currentColor"
                     stroke-width="2"
                     stroke-linecap="round"
                     stroke-linejoin="round">
                  <path d="m18 15-6-6-6 6" />
                </svg>
              </button>
              <div id="hs-basic-with-title-and-arrow-stretched-collapse-two"
                   class="hs-accordion-content hidden w-full overflow-hidden transition-[height] duration-300"
                   aria-labelledby="hs-basic-with-title-and-arrow-stretched-heading-two">
                <p class="text-gray-600 dark:text-gray-400">
                  {{ question.description }}
                </p>
              </div>
            </div>
          </div>
          <!-- End Accordion -->
        </div>
        <!-- End Col -->
      </div>
      <!-- End Grid -->
    </div>
  </div>
  <!-- End FAQ -->
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

    const FAQ = [
      {
        name: 'Why is my project not showing up?',
        description: 'Every project that is submitted to the platform must be approved by a teacher before it is published. This is to ensure that the project is of high quality and is not offensive to anyone.'
      },
      {
        name: 'How can I submit my project?',
        description: 'You can submit your project by going to our backend! You can find the link in the footer of the website as well as the navigation bar it is called "Pixel Playground Portal".'
      },
      {
        name: 'Why can I not update my project?',
        description: 'You can only update your project if it is not published yet. Once it is published you need to ask for permission by your teacher or the administrators!'
      },
      {
        name: 'How can I delete my project?',
        description: 'You can delete your project only if it is in the draft phase! If you want to delete your project after it being published, you need to ask a teacher or administrator to do that!'
      },
      {
        name: 'How can I contact the administrators?',
        description: 'You can contact the administrators by going to our backend! You can find the link in the footer of the website as well as the navigation bar it is called "Pixel Playground Portal".'
      }
    ]

    const featured = [
      {
        thumbnail: 'https://images.unsplash.com/photo-1586232702178-f044c5f4d4b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80',
        title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.',
        link: '#'
      },
      {
        thumbnail: 'https://images.unsplash.com/photo-1542125387-c71274d94f0a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
        title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.',
        link: '#'
      }
    ]
    return {
      FAQ,
      featured,
      projects: null,
      loaded: false
    }
  },
  async mounted() {
    await axios.get('https://videolab-api.fhict-dev.com/items/videos?fields=id,thumbnail,title,about_project,user_created.*&limit=2')
      .then(response => (
        this.projects = response.data.data,
        this.loaded = true
      ))
      .catch(error => console.log(error));
  }
}
</script>