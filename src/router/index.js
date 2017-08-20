import Vue from 'vue';
import Router from 'vue-router';
import Front from '@/components/Front';

Vue.use(Router);

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'front',
      component: Front,
    },
  ],
});
