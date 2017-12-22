<section-work>
  <section class="section">
    <div class="container">
      <h2 class="title font-light">
        <i class="fa fa-cubes"></i>
        <text-switching message={[
            'Another Works'
          ]} time={ 2000 }></text-switching>
      </h2>
      <div class="subtitle pb-3">
        Sample side project of my personal works.
      </div>
      <div each={ itemGroup in items } class="row">
        <div each={ item in itemGroup } class="col-12 col-lg-6 mb-4">
          <work-card
            img={ item.img }
            title={ item.title }
            description={ item.description }
            note={ item.note }
            links={ item.links }></work-card>
        </div>
      </div>
    </div>
  </section>

  <style scoped>
    .subtitle {
      color: #484848;
    }
    .title .fa {
      font-size: 0.95em;
    }
  </style>

  <script>
    this.items = [
      {
        img: 'fb-analysis.jpg',
        title: 'Facebook Active Time Analysis',
        description: 'Bot crawler with Facebook API to collect post/comment timestamp of Thailand users on various popular pages, and visualize it to a graph.',
        links: {
          'github': 'https://github.com/neungkl/fb-active-time-analysis'
        }
      },
      {
        img: 'instant-grader.jpg',
        title: 'Instant Grader CLI',
        description: 'An automatic tools for test automation, helpful in competitive competition, it can split test-case data that embedded along with your code without extend another test files.',
        links: {
          'github': 'https://github.com/neungkl/instant-grader-cli'
        }
      },
      {
        img: 'codecheer.jpg',
        title: 'Codecheer',
        note: 'User: test – Password: test',
        description: 'Codecheer project is a web-application for solving the problem when dealing with card stunts in sport day event in my school.',
        links: {
          'desktop': 'http://kosate.com/codecheer/'
        }
      }
    ];

    this.on('before-mount', function() {
      var items = [];
      var perGroup = 3;
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