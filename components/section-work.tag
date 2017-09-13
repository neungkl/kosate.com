<section-work>
  <section class="section">
    <div class="container">
      <h1 class="title font-light">
        <text-switching message={[
            'Work'
          ]} time={ 2000 }></text-switching>
      </h1>
      <div class="subtitle">
        List of sample of my works
      </div>
      <div each={ itemGroup in items } class="columns">
        <div each={ item in itemGroup } class="column is-half ">
          <work-card
            img={ item.img }
            title={ item.title }
            description={ item.description }
            links={ item.links }></work-card>
        </div>
      </div>
    </div>
  </section>

  <style scoped>
    .subtitle {
      padding-top: 0.25em;
      font-size: 1.1em;
      color: #484848;
    }
  </style>

  <script>
    this.items = [
      {
        img: 'run-together.png',
        title: 'Run Together',
        description: 'Side scrolling game that you must control two characters at the same time to avoid the obstacles.',
        links: {
          'android': 'https://play.google.com/store/apps/details?id=com.huskybear.runtogether'
        }
      }
    ];

    this.on('before-mount', function() {
      var items = [];
      var perGroup = 2;
      for(var i = 0; i < this.items.length; i += perGroup) {
        var group = [];
        for(var j=0; j<perGroup; j++) {
          if (i + j < this.items.length) {
            group.push(this.items[i + j]);
          }
        }
        items.push(group);
      }
      this.items = items;
    });
  </script>
</section-work>