<template>
  <!-- Card Blog -->
  <div class="max-w-[85rem] px-4 py-10 sm:px-6 lg:px-8 lg:py-14 mx-auto">
    <!-- Title -->
    <div class="max-w-2xl mx-auto mb-10 text-center lg:mb-14">
      <h2 class="text-2xl font-bold md:text-4xl md:leading-tight dark:text-white">The Blog</h2>
      <p class="mt-1 text-gray-600 dark:text-gray-400">See how game-changing companies are making the most of every
        engagement with Preline.</p>
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
               :src="project.thumbnail"
               alt="Image Description">
        </div>
        <div class="my-6">
          <h3 class="text-xl font-semibold text-gray-800 dark:text-gray-300 dark:group-hover:text-white">
            {{ project.title  }}
          </h3>
          <p class="mt-5 text-gray-600 dark:text-gray-400">
            {{ project.description }}
          </p>
        </div>
        <div class="flex items-center mt-auto gap-x-3">
          <img class="w-8 h-8 rounded-full"
               :src="project.authorImage"
               alt="Image Description">
          <div>
            <h5 class="text-sm text-gray-800 dark:text-gray-200">By {{ project.author }}</h5>
          </div>
        </div>
      </router-link>
      <!-- End Card -->

    </div>
  <!-- End Grid -->

</div>
<!-- End Card Blog -->
</template>

<script>

export default {
  data() {
    const projects = [
      {
        id: 1,
        thumbnail: 'https://images.unsplash.com/photo-1586232702178-f044c5f4d4b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80',
        title: 'Project 1',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed neque elit',
        author: 'Lauren Waller',
        authorImage: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=facearea&facepad=2&w=320&h=320&q=80',

      },
      {
        id: 2,
        thumbnail: 'https://images.unsplash.com/photo-1586232702178-f044c5f4d4b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80',
        title: 'Project 2',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed neque elit',
        author: 'Lauren Waller',
        authorImage: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=facearea&facepad=2&w=320&h=320&q=80',

      },
      {
        id: 3,
        thumbnail: 'https://images.unsplash.com/photo-1586232702178-f044c5f4d4b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80',
        title: 'Project 3',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed neque elit',
        author: 'Lauren Waller',
        authorImage: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=facearea&facepad=2&w=320&h=320&q=80',

      },
    ]
    return {
      projects
    }
  }
}
</script>