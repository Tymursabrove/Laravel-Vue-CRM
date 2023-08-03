import UsersList from './pages/UserList.vue';
import AdminPage from './pages/AdminPage.vue';

const routes = [
    {path: '/users', component: UsersList},
    {path: '/admin',component: AdminPage},
];

export default routes;


