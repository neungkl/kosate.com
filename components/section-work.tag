<section-work>
  <section class="section">
    <div class="container">
      <h1 class="title font-light">
        <text-switching message={[
            'Work'
          ]} time={ 2000 }></text-switching>
      </h1>
      <div class="subtitle">
        Sample side project of my personal works
      </div>
      <div each={ itemGroup in items } class="columns">
        <div each={ item in itemGroup } class="column is-one-third">
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
        img: 'fb-analysis.png',
        title: 'Facebook Active Time Analysis',
        description: 'Bot crawler with Facebook API to collect post/comment timestamp of Thailand users on various popular pages, and visualize it to a graph.',
        links: {
          'github': 'https://github.com/neungkl/fb-active-time-analysis'
        }
      },
      {
        img: 'instant-grader.png',
        title: 'Instant Grader CLI',
        description: 'An automatic tools, helpful in competitive competition, it can split test-case data that embedded along with your code without extend another test files.',
        links: {
          'github': 'https://github.com/neungkl/instant-grader-cli'
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