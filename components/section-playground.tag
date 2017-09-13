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
        <div each={ item in itemGroup } class="column is-half ">
          <playground-card
            img={ item.img }
            title={ item.title }
            description={ item.description }
            links={ item.links }></playground-card>
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
      },
      {
        img: 'multitask.jpg',
        title: 'How Great Multitask Are You?',
        description: 'Multitasking game that you must play Pong and Tetris at the same time. Do you able to archieve this?',
        links: {
          'desktop': 'http://kosate.com/project/multitask/',
          'github': 'https://github.com/neungkl/multitask-game'
        }
      },
      {
        img: 'quickdraw-10-classification.png',
        title: 'Quickdraw 10 classification',
        description: 'Quickdraw 10 classes classification with machine learning.',
        links: {
          'desktop': 'https://quickdraw-10-classification.herokuapp.com/',
          'github': 'https://github.com/neungkl/quickdraw-10-cnn-classifier'
        }
      },
      {
        img: 'fire-simulator.png',
        title: 'Fire Simulator',
        description: 'WebGL fire simulator using THREE.js library, with customized shader on volumetric object.',
        links: {
          'desktop': 'https://neungkl.github.io/fire-simulation/',
          'github': 'https://github.com/neungkl/fire-simulation'
        }
      },
      {
        img: 'unpredictable.png',
        title: 'Unpredictable',
        description: 'A maze game that random every 15 seconds which can makes you confuse.',
        links: {
          'desktop': 'http://kosate.com/project/unpredictable/',
          'github': 'https://github.com/neungkl/unpredictable'
        }
      },
      {
        img: 'loy-krathong.png',
        title: 'Loy Krathong',
        description: 'Multi-player web application game for Loy Krathong festival in Thailand. Spawn the Krathong and protect it from being attacking by another player.',
        links: {
          'desktop': 'https://loykrathong.herokuapp.com/',
          'github': 'https://github.com/neungkl/loykrathong-online'
        }
      },
      {
        img: 'kku-score.png',
        title: 'KKU Score',
        description: 'Calculator for Khon Kaen University admission scoring.',
        links: {
          'desktop': 'http://kosate.com/project/kku-score/',
          'github': 'https://github.com/neungkl/kku-score'
        }
      },
      {
        img: 'matches-equation.png',
        title: 'Matches Equation',
        description: 'Solving tool for fancy task like "how do you move one match to make equation reasonably"',
        links: {
          'desktop': 'http://kosate.com/project/matches-equation/',
          'github': 'https://github.com/neungkl/matches-equation'
        }
      },
      {
        img: 'hidden.png',
        title: 'Hidden',
        description: '25 levels puzzle with minimal hint.',
        links: {
          'desktop': 'http://kosate.com/project/hidden/',
          'github': 'https://github.com/neungkl/hidden'
        }
      },
      {
        img: 'clickhere.jpg',
        title: 'Click Here',
        description: 'Simply game that you must click "Click Here" button to solve the task.',
        links: {
          'flash': 'http://kosate.com/old-site/blog/?id=3'
        }
      },
      {
        img: 'clickhere2.jpg',
        title: 'Click Here 2',
        description: 'Simply game that you must DOUBLE click "Click Here" button to solve the task.',
        links: {
          'flash': 'http://kosate.com/old-site/blog/?id=4'
        }
      },
      {
        img: 'substring-clock.png',
        title: 'Substring Clock',
        description: 'Graphical clock that appear only characters that matchs current time.',
        links: {
          'desktop': 'http://kosate.com/project/clock/',
          'github': 'https://github.com/neungkl/substring-clock'
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
</section-playground>