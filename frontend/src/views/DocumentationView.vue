<template>
<SideBar class="no-print"/>
  <div v-if="isLoaded" class="max-w-[calc(100vw-0.5rem)] pl-2 lg:pl-72 min-h-[calc(100vh-(94px+380px))]">
    <h2 class="text-3xl font-bold lg:text-5xl dark:text-white pb-2">{{ documentationArticle.title }}
            </h2>
    <p class="markdown-body text-lg text-gray-800 dark:text-gray-200"
               v-html="markdown(documentationArticle.body)">
            </p>
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
import SideBar from '../components/SideBar.vue';
import MarkdownIt from 'markdown-it'
import MarkdownItAnchor from 'markdown-it-anchor'
import MarkdownItContainer from 'markdown-it-container'
import MarkdownItTableOfContents from 'markdown-it-table-of-contents'
import hljs from 'highlight.js'
import axios from 'axios'

export default {
  name: 'DocumentationView',
components: {
        SideBar
    },
  data() {
    return {
        documentationArticle: null,
        articles: [],
        isLoaded: false,

      //
    }
  },
  async mounted() {
    if(this.$route.params.id == null || this.$route.params.id == undefined)
    {
      await axios.get('https://videolab-api.fhict-dev.com/items/documentation?limit=1&fields=id,title,body')
      .then(response => (
        this.documentationArticle = response.data.data[0],
        this.isLoaded = true
      ))
      .catch(error => 
      {
        if(error.response.status == 404 || error.response.status == 403)
        {
          this.$router.push('/404')
        }
      });
    }
    else
    {
      await axios.get('https://videolab-api.fhict-dev.com/items/documentation/' + this.$route.params.id + '?fields=id,title,body')
      .then(response => (
        this.documentationArticle = response.data.data,
        this.isLoaded = true
      ))
      .catch(error => 
      {
        if(error.response.status == 404 || error.response.status == 403)
        {
          this.$router.push('/404')
        }
      });
    }
  },
  watch: {
    '$route.params.id':async  function (newVal, oldVal) {
        if(newVal == null || newVal == undefined)
        {
            await axios.get('https://videolab-api.fhict-dev.com/items/documentation?limit=1&fields=id,title,body')
            .then(response => (
                this.documentationArticle = response.data.data[0],
                this.isLoaded = true
            ))
            .catch(error => 
            {
                if(error.response.status == 404 || error.response.status == 403)
                {
                this.$router.push('/404')
                }
            });
            }
            else
            {
            await axios.get('https://videolab-api.fhict-dev.com/items/documentation/' + this.$route.params.id + '?fields=id,title,body')
            .then(response => (
                this.documentationArticle = response.data.data,
                this.isLoaded = true
            ))
            .catch(error => 
            {
                if(error.response.status == 404 || error.response.status == 403)
                {
                this.$router.push('/404')
                }
            });
        }
      await axios.get('https://videolab-api.fhict-dev.com/items/documentation/' + this.$route.params.id + '?fields=id,title,body')
      .then(response => (
        this.documentationArticle = response.data.data,
        this.isLoaded = true
      ))
    }
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
  }
}
</script>