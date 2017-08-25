<text-switching>
  <virtual>{ message } &nbsp;</virtual>

  <script>
    this.message = opts.message[0];

    var startTime = Date.now();
    var timer = null;
    var countMesssage = 0;
    var timeToSwitch = opts.time || 1500;

    tick() {
      var curTime = Date.now();
      if (curTime - startTime > timeToSwitch) {
        startTime = curTime;
        
        var msg = opts.message;
        countMesssage = (countMesssage + 1) % msg.length;
      } else {
        var msg = opts.message[countMesssage];
        msg = msg.substr(0, Math.round(
          Math.min((curTime - startTime) / (timeToSwitch * 0.6), 1) * msg.length
        ));
        this.update({
          message: msg + '_'
        })
      }

      requestAnimationFrame(this.tick);
    }

    requestAnimationFrame(this.tick);

    this.on('unmount', function() {
      clearTimeout(timer)
    });
  </script>
</text-switching>