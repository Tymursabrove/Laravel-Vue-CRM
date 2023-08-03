<template>
    <div>
        <h1>
            {{ title }}
        </h1>
        <user-card v-for="(user, index) in users" :user="user" text="some text........."
                   v-bind:key="index"></user-card>
    </div>
</template>


<script>
import User from "../components/users/User.vue";

export default {
    name: "UserList",
    components: {
        'user-card': User,
    },

    data() {
        return {
            title: 'CRM Helpdesc',
            users: [],
        }
    },
    mounted() {
        axios.get('/users').then(result => {
            this.users = result.data;
        });
    },
}
</script>

<style scoped>

</style>
