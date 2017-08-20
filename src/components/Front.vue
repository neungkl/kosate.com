<template>
  <div>
    <section class="section-top hero is-dark is-medium">
      <div class="hero-body">
        <div class="container">
          <h1 class="title">
            Kosate Limpongsa
          </h1>
          <h2 class="subtitle">
            <TextShuffle msg="An ordinary guy who love to code" :show="play"></TextShuffle>
          </h2>
        </div>
      </div>
    </section>
    <div class="button is-primary" @click="play = true">Test</div>
  </div>
</template>

<script>
import TextShuffle from '@/components/animate/TextShuffle';

export default {
  data() {
    return {
      play: false,
    };
  },
  components: {
    TextShuffle,
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.section-top {
  background: #181818;
}

</style>
