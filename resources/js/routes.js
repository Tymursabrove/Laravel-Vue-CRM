import UsersList from './pages/UserList.vue';
import AdminPage from './pages/AdminPage.vue';
import UserPage from './pages/UserPage.vue';

const routes = [
    {path: '/users', component: UsersList},
    {path: '/users/:name', component: UserPage},
    {path: '/admin',component: AdminPage},
];

export default routes;


