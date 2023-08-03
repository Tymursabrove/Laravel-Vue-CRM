<template>
    <div>
        <h1>
            {{ title }}
        </h1>
        <User v-for="(user, index) in users" :user="user" text="some text........."
        v-bind:key="index"></User>
    </div>
</template>


<script>
import User from "./users/User.vue";

export default {
    name: "Home",
    components: {
        User
    },

    data() {
        return {
            title: 'CRM Helpdesc',
            users: [
                {
                    name: 'Alex',
                    last_name: 'Davydov'
                },
                {
                    name: 'Alina',
                    last_name: 'Firsova'
                },
                {
                    name: 'Tima',
                    last_name: 'Folts'
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
