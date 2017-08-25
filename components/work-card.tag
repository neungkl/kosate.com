<work-card>
  <div class="work-card">
    <div class="columns is-gapless">
      <div class="column is-one-third">
        <div class="image-wrapper" style={ "background-image: url(../images/playground/" + img + ")" }></div>
      </div>
      <div class="column">
        <div class="content">
          <div class="wc-title">{ title }</div>
          <div class="description font-light">{ description }</div>
        </div>
      </div>
    </div>
  </div>

  <style scoped>
    .work-card {
      color: #333;
      border-radius: 5px;
      background: #fff;
      transition: all 0.5s;
      box-shadow: 0px 0px 5px 5px rgba(0,0,0,0.01);
    }
    .work-card:hover {
      box-shadow: 0px 0px 10px 10px rgba(0,0,0,0.03);
    }

    .content {
      padding: 1em 1.5em;
    }
    .content .wc-title {
      color: #484848;
      font-size: 1.25em;
    }

    .image-wrapper {
      border-radius: 5px 0px 0px 5px;
      width: 100%;
      height: 100%;
      min-height: 160px;
      background-color: #181818;

      background-size: cover;
      background-position: center center;
    }
  </style>

  <script>
    this.img = opts.img;
    this.title = opts.title;
    this.description = opts.description;
  </script>
</work-card>