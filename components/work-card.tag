<work-card>
  <div class="work-card">
    <div class="columns is-gapless">
      <div class="column is-one-third">
        <div class="image-wrapper" style={ "background-image: url(../images/playground/" + img + ")" }></div>
      </div>
      <div class="column">
        <div class="content">
          <div class="wc-title">{ title }</div>
          <div class="description">{ description }</div>
          <div class="external-link" if={ links }>
            <div class="external-title">External Link</div>
            <div class="external-each" each={ link,name in links }>
              <a href={ link } target="_blank"><i class={ "fa fa-" + name } /></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <style scoped>
    .work-card {
      border-radius: 5px;
      overflow: hidden;
      color: #333;
      background: #fff;
      transition: all 0.5s;
      box-shadow: 0px 0px 5px 5px rgba(0,0,0,0.01);
    }
    .work-card:hover {
      box-shadow: 0px 0px 10px 10px rgba(0,0,0,0.03);
    }

    a {
      color: inherit;
    }

    .content {
      padding: 1em 1.5em;
    }
    .content > div {
      margin-bottom: 0.5em;
    }
    .content .wc-title {
      color: #484848;
      font-size: 1.25em;
    }
    .description {
      color: #565656;
      line-height: 1.4em;
    }
    .external-link {
      margin-top: 1em;
      color: #484848;
    }
    .external-link .external-title {
      font-size: 0.75em;
      margin-bottom: 0.5em;
      color: #686868;
    }
    .external-link .external-each {
      display: inline-block;
      margin-right: 0.5em;
    }
    .external-link .fa {
      font-size: 1.5em;
    }

    .image-wrapper {
      width: 100%;
      height: 100%;
      min-height: 200px;
      background-color: #181818;

      background-size: cover;
      background-position: center center;
    }
  </style>

  <script>
    this.img = opts.img;
    this.title = opts.title;
    this.description = opts.description;
    this.links = opts.links;
  </script>
</work-card>