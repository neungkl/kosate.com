<template>
  <span v-html="displayMsg" />
</template>

<script>
export default {
  props: {
    msg: String,
    duration: {
      default: 3000,
      type: Number,
    },
    show: {
      default: false,
      type: Boolean,
    },
  },
  data() {
    return {
      everShow: false,
      displayMsg: '&nbsp;',
    };
  },
  mounted() {
    this.run();
  },
  watch: {
    show() {
      this.run();
    },
  },
  methods: {
    run() {
      if (!this.show) return;
      if (this.everShow) return;
      this.everShow = true;

      const startTime = Date.now();

      function animate() {
        const cur = Date.now();
        if (cur - startTime > this.duration) {
          this.displayMsg = this.msg;
          return;
        }

        let animatePercent = (cur - startTime) / this.duration;
        animatePercent = 1 - ((1 - animatePercent) ** 3);

        const visibleLen = Math.round(animatePercent * this.msg.length);
        let displayMsg = '';
        displayMsg += this.msg.substr(0, visibleLen);

        if (displayMsg.length === 0) displayMsg = '&nbsp;';
        this.displayMsg = displayMsg;

        requestAnimationFrame(animate.bind(this));
      }

      animate.bind(this).call();
    },
  },
};
</script>
