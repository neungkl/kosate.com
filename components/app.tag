<app>
  <section id="section-title" class="hero is-medium is-dark">
    <div class="hero-body">
      <div class="container">
        <h1 class="title font-light">
          Kosate Limpongsa
        </h1>
        <h2 class="subtitle">
          <text-switching message={[
            'Coding Lover',
            'Full-stack Web Developer',
            'Android Developer',
            'Deep Learning Lover'
          ]}></text-switching>
        </h2>
        <div>I'm just ordinary guy who love to code.</div>
        <div class="external-ref">
          <a href="https://github.com/neungkl/" target="_blank"><i class="fa fa-github"></i></a>
          <a href="https://www.linkedin.com/in/kosate" target="_blank"><i class="fa fa-linkedin"></i></a>
          <i class="fa fa-medium"></i>
        </div>
      </div>
    </div>
  </section>
  <section-playground></section-playground>

  <style scoped>
    #section-title {
      background-color: #181818;
    }
    #section-title .external-ref {
      margin-top: 1em;
    }
    #section-title .external-ref i {
      font-size: 2.5rem;
      margin-right: 0.5em;
    }
  </style>
</app>