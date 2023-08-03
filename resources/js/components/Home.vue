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
import User from "./users/User.vue";

export default {
    name: "Home",
    components: {
        'user-card': User,
    },

    data() {
        return {
            title: 'CRM Helpdesc',
            users: [
                {
                    name: 'Rinat',
                    last_name: 'Sarmuldin',
                    role: 'admin'
                },
                {
                    name: 'Alina',
                    last_name: 'Firsova',
                    role: 'manager'
                },
                {
                    name: 'Tima',
                    last_name: 'Folts',
                    role: 'client'
                },
                {
                    name: 'Fedor',
                    last_name: 'Bolotov',
                    role: 'client'
                },
                {
                    name: 'Misha',
                    last_name: 'Dedyrenko',
                    role: 'manager'
                },
            ],
            name: null,
        }
    },
    methods: {
        addUser() {
            this.users.push(this.name);
            this.clearName();
        },
        clearName() {
            this.name = null;
        },
    },
}

</script>


<style scoped>

</style>
