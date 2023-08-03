<template>
<div>
    <h1>User name: {{user.name}}</h1>
    <h1>User name: {{user.email}}</h1>
</div>
</template>



<script>
export default {
    name: "UserPage",
    data() {
        return {
            user: {},
        };
    },

    mounted() {
       axios.get('/users/' + this.$route.params.id).then(result => {
          this.user = result.data;
       });
    },
}

</script>


<style scoped>

</style>
