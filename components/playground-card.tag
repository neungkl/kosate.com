<playground-card>
  <div class="playground-card">
    <div class="row">
      <div class="col-12 col-lg-5 pr-lg-0">
        <div class="image-wrapper" style={ "background-image: url(../images/playground/" + img + ")" }></div>
      </div>
      <div class="col pl-lg-0">
        <div class="content px-4 py-3">
          <div class="wc-title"><a href={ headLink } target="_blank">{ title }</a></div>
          <div class="description mt-1">{ description }</div>
          <div class="external-link mt-3" if={ links }>
            <div class="external-title mb-2">External Link</div>
            <div class="external-each mr-2" each={ link,name in links }>
              <a href={ link } target="_blank"><i class={ "fa fa-" + name } /></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <style scoped>
    .playground-card {
      border-radius: 5px;
      overflow: hidden;
      color: #333;
      background: #fff;
      transition: all 0.5s;
      box-shadow: 0px 0px 5px 5px rgba(0,0,0,0.01);
    }
    .playground-card:hover {
      box-shadow: 0px 0px 10px 10px rgba(0,0,0,0.03);
    }

    a {
      color: inherit;
      cursor: pointer;
    }
    a:hover {
      color: #1c97bc;
      text-decoration: none;
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
      color: #484848;
    }
    .external-link .external-title {
      font-size: 0.75em;
      color: #686868;
    }
    .external-link .external-each {
      display: inline-block;
    }
    .external-link .fa {
      font-size: 1.5em;
    }

    .image-wrapper {
      width: 100%;
      height: 100%;
      min-height: 210px;
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
    this.headLink = Object.values(opts.links)[0] || null;
  </script>
</playground-card>