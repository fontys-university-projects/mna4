<template>
    <footer class="w-full bg-gray-900">
  <div class="w-full max-w-[85rem] py-10 px-4 sm:px-6 lg:px-8 lg:pt-20 mx-auto">
    <!-- Grid -->
    <div class="grid grid-cols-2 gap-6 md:grid-cols-4 lg:grid-cols-5">
      <div class="col-span-full lg:col-span-1">
        <router-link class="flex-none text-xl font-semibold text-white dark:focus:outline-none dark:focus:ring-1 dark:focus:ring-gray-600" to="/" aria-label="Pixel Playground">{{ name }}</router-link>
      </div>
      <!-- End Col -->

      <div class="col-span-1">

        <div class="grid mt-3 space-y-3">
          <p v-for="link in links" :key="link.name"><router-link class="inline-flex text-gray-400 gap-x-2 hover:text-gray-200 dark:focus:outline-none dark:focus:ring-1 dark:focus:ring-gray-600" :to="link.url">{{ link.name }}</router-link></p>
        </div>
        <div class="grid mt-3 space-y-3">
          <p><a target="_blank"  class="inline-flex text-gray-400 gap-x-2 hover:text-gray-200 dark:focus:outline-none dark:focus:ring-1 dark:focus:ring-gray-600" :href="portal.url">{{ portal.name }}</a></p>
        </div>
      </div>
      <!-- End Col -->
    </div>
    <!-- End Grid -->

    <div class="grid mt-5 sm:mt-12 gap-y-2 sm:gap-y-0 sm:flex sm:justify-between sm:items-center">
      <div class="flex items-center justify-between">
        <p class="text-sm text-gray-400">Hosted by Little Adventure Network build with Vue, Preline and Tailwind CSS</p>
      </div>
      <!-- End Col -->
    </div>
  </div>
</footer>
</template>

<script>

export default {
    data() {
      const name = import.meta.env.VITE_APP_NAME
        const links = [
            {
                name: 'Home',
                url: '/',
            },
            {
                name: 'Projects',
                url: '/projects',
            },
            {
                name: 'Documentation',
                url: '/documentation',
            }
        ];
        const portal = {
            name: name + ' Portal',
            url: import.meta.env.VITE_PORTAL_URL,
        };
        return {
            links,
            portal,
            name
        }
    },
}

</script>