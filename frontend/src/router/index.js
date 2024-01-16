import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import ProjectsView from '../views/ProjectsView.vue'
import ProjectView from '../views/ProjectView.vue'
import NotFoundView from '../views/NotFoundView.vue'
import DocumentationView from '../views/DocumentationView.vue'
const router = createRouter({
  mode: 'history',
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/projects',
      name: 'projects',
      component: ProjectsView
    },
    {
      path: '/project/:id',
      name: 'project',
      component: ProjectView
    },
    {
      path:'/documentation',
      name: 'documentation-main',
      component: DocumentationView
    },
    {
      path:'/documentation/:id',
      name: 'documentation',
      component: DocumentationView
    },
    {
      path: '/:pathMatch(.*)*',
      name: 'not-found',
      component: NotFoundView
    },
  ],
  scrollBehavior() {
    return { x: 0, y: 0 };
  }
})

export default router
