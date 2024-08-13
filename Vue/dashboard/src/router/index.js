import { createRouter, createWebHistory } from 'vue-router'
// import HomeView from '../views/HomeView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/admin',
      name: 'admin',
      component: () =>import('../views/AdminView/DashboardAdminview.vue')
    },
    {
      path: '/admin/dashboard',
      name: 'Dashboard',
      component: () =>('../views/AdminView/DashboardAdminview.vue')
    },
    {
      path: '/admin/managestudent',
      name: 'ManageStudent',
      component: () =>('../views/AdminView/ManageSrudentAdminview.vue')
    }
  ]
})

export default router
