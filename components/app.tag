<app>
  <section id="section-title" class="is-medium is-dark">
    <div class="container">
      <h1 class="title font-light">
        Kosate Limpongsa
      </h1>
      <div class="subtitle font-light">
        <text-switching message={[
          'Coding Lover',
          'Full-stack Web Developer',
          'Android Developer',
          'Deep Learning Lover'
        ]}></text-switching>
      </div>
      <div class="font-light">I'm just ordinary guy who love to code.</div>
      <div class="external-ref">
        <a href="https://github.com/neungkl/" target="_blank"><i class="fa fa-github"></i></a>
        <a href="https://www.linkedin.com/in/kosate" target="_blank"><i class="fa fa-linkedin"></i></a>
        <a href="https://medium.com/kosate" target="_blank"><i class="fa fa-medium"></i></a>
      </div>
    </div>
  </section>
  <section-playground></section-playground>
  <section-work></section-work>

  <style scoped>
    #section-title {
      background-color: #181818;
      color: #e8e8e8;
    }
    #section-title .container {
      padding-top: 5em;
      padding-bottom: 5em;
    }
    #section-title .subtitle {
      font-size: 1.25em;
    }
    #section-title .external-ref {
      margin-top: 1em;
    }
    #section-title .external-ref i {
      font-size: 2.5em;
      margin-right: 0.5em;
    }
    #section-title .external-ref a {
      color: inherit;
    }
  </style>
</app>