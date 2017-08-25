<section-playground>
  <section class="section">
    <div class="container">
      <h1 class="title font-light">
        <text-switching message={[
            'Playground'
          ]} time={ 2000 }></text-switching>
      </h1>
      <div class="subtitle">
        My mini interactive stuffs
      </div>
      <div each={ itemGroup in items } class="columns">
        <div each={ item in itemGroup } class="column is-half">
          <work-card img={ item.img } title={ item.title } description={ item.description }></work-card>
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
        description: 'asdkaosdkaosd'
      },
      {
        img: 'multitask.jpg',
        title: 'How Great Multitask Are You?',
        description: 'asdkaosdkaosd'
      },
      {
        img: 'unpredictable.png',
        title: 'Unpredictable',
        description: 'asdkaosdkaosd'
      },
      {
        img: 'kku-score.png',
        title: 'KKU Score',
        description: 'asdkaosdkaosd'
      },
      {
        img: 'matches-equation.png',
        title: 'Matches Equation',
        description: 'asdkaosdkaosd'
      },
      {
        img: 'hidden.png',
        title: 'Hidden',
        description: 'asdkaosdkaosd'
      },
      {
        img: 'clickhere.jpg',
        title: 'Click Here',
        description: 'asdkaosdkaosd'
      },
      {
        img: 'clickhere2.jpg',
        title: 'Click Here 2',
        description: 'asdkaosdkaosd'
      },
      {
        img: 'substring-clock.png',
        title: 'Substring Clock',
        description: 'asdkaosdkaosd'
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
      console.log(this.items);
    });
  </script>
</section-playground>