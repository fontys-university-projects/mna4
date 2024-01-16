<template>
  <!-- Blog Article -->
  <div v-if="loaded"
       class="max-w-[85rem] px-4 sm:px-6 lg:px-8 mx-auto">
    <div class="grid lg:grid-cols-3 gap-y-8 lg:gap-y-0 lg:gap-x-12">
      <!-- Content -->
      <div class="lg:col-span-2">
        <div class="py-8 lg:pe-8">
          <div class="space-y-5 lg:space-y-8 max-w-[75ch] m-auto">
            <router-link class="inline-flex items-center gap-x-1.5 text-sm text-gray-600 decoration-2 hover:underline dark:text-blue-400 dark:focus:outline-none dark:focus:ring-1 dark:focus:ring-gray-600"
               to="/projects">
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
                <path d="m15 18-6-6 6-6" />
              </svg>
              Back to Projects
            </router-link>

            <h2 class="text-3xl font-bold lg:text-5xl dark:text-white">{{ video.title }}
            </h2>

            <div class="flex items-center gap-x-5">
              <p class="text-xs text-gray-800 sm:text-sm dark:text-gray-200"> {{ new Intl.DateTimeFormat('en-GB', {
                day:
                  'numeric', month: 'short', year: 'numeric'
              }).format(new Date(video.date_updated)) }}</p>
            </div>

            <video-player class="max-w-sm sm:max-w-full"
                          :src="'https://videolab-api.fhict-dev.com/assets/' + video.video + '.mp4'"
                          :poster="'https://videolab-api.fhict-dev.com/assets/' + video.thumbnail"
                          controls
                          :loop="false"
                          :volume="0.2"
                          :playback-rates="[0.7, 1.0, 1.5, 2.0]" />

            <p class="markdown-body text-lg text-gray-800 dark:text-gray-200"
               v-html="markdown(video.about_project)">
            </p>
          </div>
        </div>
      </div>
      <!-- End Content -->

      <!-- Sidebar -->
      <div
           class="lg:col-span-1 lg:w-full lg:h-full lg:bg-gradient-to-r lg:from-gray-50 lg:via-transparent lg:to-transparent lg:dark:from-slate-800">
        <div class="sticky top-0 py-8 start-0 lg:ps-8">
          <!-- Avatar Media -->
          <h1 class="pb-0 text-sm font-base italic text-gray-900 dark:text-gray-100">Creator:</h1>
          <div class="flex items-center pb-2 b-2">
            <router-link class="flex-shrink-0 block"
               to="">
              <img v-if="video.user_created.avatar"
                   class="w-10 h-10 rounded-full"
                   :src="video.user_created.avatar"
                   alt="Image Description">
            </router-link>

            <router-link class="block group grow"
               to="">
              <h5
                  class="text-sm font-semibold text-gray-800 group-hover:text-gray-600 dark:group-hover:text-gray-400 dark:text-gray-200">
                {{ video.user_created.first_name }} {{ video.user_created.last_name }}
              </h5>
              <p class="text-sm text-gray-500">
                {{ video.user_created.description }}
              </p>
            </router-link>
          </div>
          <!-- End Avatar Media -->

          <div class="space-y-6 pt-2 t-2 border-t border-gray-200 group gap-x-3 dark:border-gray-700 no-print" v-if="otherProjects.length > 0">
            <h1 class="pb-4 text-sm font-base italic text-gray-900 dark:text-gray-100">Other projects by {{ video.user_created.first_name }} {{ video.user_created.last_name }}:</h1>
            <!-- Media -->
            <router-link v-for="project in otherProjects" class="flex items-center group gap-x-6"
              :key="project.id"
              :to="'/project/' + project.id"
              @click="otherProject(project.id)">
              <div class="grow">
                <span
                      class="text-sm font-bold text-gray-800 group-hover:text-blue-600 dark:text-gray-200 dark:group-hover:text-blue-500">
                 {{ project.title }}
                </span>
              </div>

              <div class="relative flex-shrink-0 w-20 h-20 overflow-hidden rounded-lg">
                <img class="absolute top-0 object-cover w-full h-full rounded-lg start-0"
                     :src="'https://videolab-api.fhict-dev.com/assets/' + project.thumbnail"
                     alt="Image Description">
              </div>
            </router-link>
          </div>

          <!-- Avatar Media -->
          <div class="pt-2 mt-2 border-t border-gray-200 group gap-x-3 dark:border-gray-700" v-if="video.group_members.length !== 0">
            <h1 class="pb-4 text-sm font-base italic text-gray-900 dark:text-gray-100">{{ video.title }} is a group
              project associated with:</h1>
            <div class="space-y-4">
              <div v-for="member in video.group_members" 
                :key="member.directus_users_id.id"
              class="flex items-center">
                <router-link class="flex-shrink-0 block"
                   to="">
                  <img v-if="video.user_created.avatar"
                       class="w-10 h-10 rounded-full"
                       :src="video.user_created.avatar"
                       alt="Avatar">
                </router-link >
                <router-link class="block group grow"
                   to="">
                  <h5
                      class="text-sm font-semibold text-gray-800 hover:text-gray-600 dark:hover:text-gray-400 dark:text-gray-200">
                    {{ member.directus_users_id.first_name }} {{ member.directus_users_id.last_name }}
                  </h5>
                  <p class="text-sm text-gray-500">
                    {{ member.directus_users_id.description }}
                  </p>
                </router-link>
              </div>
            </div>
          </div>
          <!-- End Avatar Media -->
        </div>
      </div>
      <!-- End Sidebar -->
    </div>
  </div>
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
  <!-- End Blog Article -->
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

.markdown-body {
  :deep() {
    :first-child {
      margin-top: 0;
    }

    :last-child {
      margin-bottom: 0;
    }

    h1 {
      margin-top: 1em;
      margin-bottom: 0;
      @apply dark:text-white text-lg;

    }

    h2 {
      margin-top: 1.25em;
      margin-bottom: 0;
      @apply dark:text-white text-lg;
    }

    h3 {
      margin-top: 1.25em;
      margin-bottom: 0;
      @apply dark:text-white text-lg;
    }

    h4 {
      margin-top: 1.5em;
      margin-bottom: 0;
      @apply dark:text-white text-lg;
    }

    h5 {
      margin-top: 2em;
      margin-bottom: 0;
      @apply dark:text-white text-lg;
    }

    h6 {
      margin-top: 2em;
      margin-bottom: 0;
      @apply dark:text-white text-lg;
    }

    p {
      margin: 1.5em 0;
      @apply dark:text-white text-lg;
    }

    a {
      @apply dark:text-white;
      text-decoration: none;
    }

    ul,
    ol {
      margin: 1.5em 0;
      font-weight: 500;
      font-size: 15px;
      line-height: 24px;
    }

    ul ul,
    ol ol,
    ul ol,
    ol ul {
      margin: 0;
    }

    b,
    strong {
      font-weight: 700;
    }

    code {
      padding: 2px 4px;
      font-weight: 500;
      font-size: 15px;
      font-family: var(--theme--fonts--monospace--font-family), monospace;
      line-height: 24px;
      overflow-wrap: break-word;
      @apply dark:bg-gray-800 bg-gray-200;
      @apply rounded-md;
    }

    pre {
      padding: 1em;
      overflow: auto;
      font-weight: 500;
      font-size: 15px;
      line-height: 24px;
      @apply dark:bg-gray-800 bg-gray-200;
      @apply rounded-md;
    }

    blockquote {
      margin-left: 0px;
      padding-left: 1em;
      font-weight: 500;
      font-size: 15px;
      line-height: 24px;
      border-left: 2px solid var(--theme--form--field--input--border-color);
    }

    blockquote blockquote {
      margin-left: 10px;
    }

    video,
    iframe,
    img {
      max-width: 100%;
      height: auto;
      border-radius: var(--theme--border-radius);
    }

    hr {
      height: 1px;
      margin-top: 2em;
      margin-bottom: 2em;
      background-color: var(--theme--form--field--input--border-color);
      border: none;
    }

    table {
      font-weight: 500;
      font-size: 15px;
      line-height: 24px;
      border-collapse: collapse;
    }

    table th,
    table td {
      padding: 0.4rem;
      @apply border-solid border-gray-800 dark:border-gray-200;
    }

    figure {
      display: table;
      margin: 1rem auto;
    }

    figure figcaption {
      display: block;
      margin-top: 0.25rem;
      color: #999;
      text-align: center;
    }
  }
}
</style>
<script>
import { VideoPlayer } from '@videojs-player/vue'
import 'video.js/dist/video-js.css'
import MarkdownIt from 'markdown-it'
import MarkdownItAnchor from 'markdown-it-anchor'
import MarkdownItContainer from 'markdown-it-container'
import MarkdownItTableOfContents from 'markdown-it-table-of-contents'
import hljs from 'highlight.js'

import axios from 'axios'

export default {
  name: 'ProjectView',
  components: {
    VideoPlayer
  },
  data() {
    return {
      video: null,
      otherProjects: null,
      loaded: false,
    }
  },
  async mounted() {
    let user = null
    await axios.get('https://videolab-api.fhict-dev.com/items/videos/' + this.$route.params.id + '?fields=user_created.*,id,video,date_updated,thumbnail,title,about_project,camera_name,camera_lens,camera_settings,is_group_project,group_members.directus_users_id.*')
      .then(response => (
        this.video = response.data.data,
        user = response.data.data.user_created.id,
        this.loaded = true
      ))
      .catch(error => 
      {
        if(error.response.status == 404 || error.response.status == 403)
        {
          this.$router.push('/404')
        }
      });

    await axios.get('https://videolab-api.fhict-dev.com/items/videos?fields=id,thumbnail,title&filter={"user_created":"' + user + '","id":{"_neq":"' + this.$route.params.id + '"}}')
      .then(response => (
        this.otherProjects = response.data.data
      ))
      .catch(error => console.log(error));
  },
  methods: {
    markdown(source) {
      const md = new MarkdownIt({
        html: true,
        linkify: true,
        xhtmlOut: true,
        typographer: true,
        highlight: (str, lang) => {
          if (lang && hljs.getLanguage(lang)) {
            try {
              return hljs.highlight(lang, str).value;
            } catch (__) { }
          }
          return ''; // use external default escaping
        },
      })
        .use(MarkdownItAnchor)
        .use(MarkdownItContainer)
        .use(MarkdownItTableOfContents);


      return md.render(source);
    },
    async otherProject(id) {
      let user = null
    await axios.get('https://videolab-api.fhict-dev.com/items/videos/' + id + '?fields=user_created.*,id,video,date_updated,thumbnail,title,about_project,camera_name,camera_lens,camera_settings,is_group_project,group_members.directus_users_id.*')
      .then(response => (
        this.video = response.data.data,
        user = response.data.data.user_created.id,
        this.loaded = true
      ))
      .catch(error => 
      {
        if(error.response.status == 404 || error.response.status == 403)
        {
          this.$router.push('/404')
        }
      });

    await axios.get('https://videolab-api.fhict-dev.com/items/videos?fields=id,thumbnail,title&filter={"user_created":"' + user + '","id":{"_neq":"' + id + '"}}')
      .then(response => (
        this.otherProjects = response.data.data
      ))
      .catch(error => console.log(error));
    }
  }
}
</script>