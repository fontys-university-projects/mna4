<template>
    <!-- ========== HEADER ========== -->
    <header class="z-50 flex flex-wrap w-full text-sm md:justify-start md:flex-nowrap">
        <nav class="mt-6 relative max-w-[85rem] w-full bg-white border border-gray-200 rounded-[10px] mx-2 py-3 px-4 md:flex md:items-center md:justify-between md:py-0 md:px-6 lg:px-8 xl:mx-auto dark:bg-gray-800 dark:border-gray-700"
             aria-label="Global">
            <div class="flex items-center justify-between">
                <router-link class="flex-none text-xl font-semibold dark:text-white"
                   to="/"
                   aria-label="Pixel Playground">{{ name }}</router-link>
                <div class="md:hidden">
                    <button type="button"
                            class="flex items-center justify-center w-8 h-8 text-sm font-semibold text-gray-800 border border-gray-200 rounded-lg hs-collapse-toggle hover:bg-gray-100 disabled:opacity-50 disabled:pointer-events-none dark:text-white dark:border-gray-700 dark:hover:bg-gray-700 dark:focus:outline-none dark:focus:ring-1 dark:focus:ring-gray-600"
                            data-hs-collapse="#navbar-collapse-with-animation"
                            aria-controls="navbar-collapse-with-animation"
                            aria-label="Toggle navigation">
                        <svg class="flex-shrink-0 w-4 h-4 hs-collapse-open:hidden"
                             xmlns="http://www.w3.org/2000/svg"
                             width="24"
                             height="24"
                             viewBox="0 0 24 24"
                             fill="none"
                             stroke="currentColor"
                             stroke-width="2"
                             stroke-linecap="round"
                             stroke-linejoin="round">
                            <line x1="3"
                                  x2="21"
                                  y1="6"
                                  y2="6" />
                            <line x1="3"
                                  x2="21"
                                  y1="12"
                                  y2="12" />
                            <line x1="3"
                                  x2="21"
                                  y1="18"
                                  y2="18" />
                        </svg>
                        <svg class="flex-shrink-0 hidden w-4 h-4 hs-collapse-open:block"
                             xmlns="http://www.w3.org/2000/svg"
                             width="24"
                             height="24"
                             viewBox="0 0 24 24"
                             fill="none"
                             stroke="currentColor"
                             stroke-width="2"
                             stroke-linecap="round"
                             stroke-linejoin="round">
                            <path d="M18 6 6 18" />
                            <path d="m6 6 12 12" />
                        </svg>
                    </button>
                </div>
            </div>
            <div id="navbar-collapse-with-animation"
                 class="hidden overflow-hidden transition-all duration-300 hs-collapse basis-full grow md:block">
                <div
                     class="flex flex-col mt-5 navbar gap-y-4 gap-x-0 md:flex-row md:items-center md:justify-end md:gap-y-0 md:gap-x-7 md:mt-0 md:ps-7">
                    <router-link v-for="link in links"
                                 :key="link.name"
                                 :to="link.url"
                                 class="font-medium text-gray-500 hover:text-gray-400 md:py-6 dark:text-gray-400 dark:hover:text-gray-500">
                        {{ link.name }}
                    </router-link>

                    <a class="flex items-center font-medium text-gray-500 gap-x-2 hover:text-blue-600 md:border-s md:border-gray-300 md:my-6 md:ps-6 dark:border-gray-700 dark:text-gray-400 dark:hover:text-blue-500"
                    target="_blank"   
                    :href="portal.url">
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
                            <path d="M19 21v-2a4 4 0 0 0-4-4H9a4 4 0 0 0-4 4v2" />
                            <circle cx="12"
                                    cy="7"
                                    r="4" />
                        </svg>
                        {{ portal.name}}
                    </a >
                </div>
            </div>
        </nav>
    </header>
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