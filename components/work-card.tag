<work-card>
  <div class="work-card">
    <div class="row">
      <div class="col-12 col-md-6 col-lg-12 pr-md-0">
        <div class="image-wrapper" style={ "background-image: url(../images/work/" + img + ")" }></div>
      </div>
      <div class="col pl-md-0 pl-lg-3">
        <div class="content px-4 py-3">
          <div class="wc-title mb-2"><a href={ headLink } target="_blank">{ title }</a></div>
          <div class="description">{ description }</div>
          <div class="note mt-2" if={ note }><i>{ note }</i></div>
          <div class="external-link mt-2" if={ links }>
            <div class="external-title mt-2 mb-1">External Link</div>
            <div class="external-each mr-1" each={ link,name in links }>
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
    .note {
      color: #aaa;
      font-size: 0.8em;
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
      min-height: 250px;
      background-color: #181818;

      background-size: cover;
      background-position: center center;
    }

    @media (max-width: 768px) {
      .image-wrapper {
        min-height: 250px;
      }
    }
}
  </style>

  <script>
    this.img = opts.img;
    this.title = opts.title;
    this.description = opts.description;
    this.links = opts.links;
    this.note = opts.note;
    this.headLink = Object.values(opts.links)[0] || null;
  </script>
</work-card>