This was a small project I did in half of a day. The intent was to get a demo setup for a screencast with https://github.com/equalsraf/neovim-qt to show off how it can be a fully featured terminal emulator. To run the demo:
```
make container_clean container container_run
```

Then you can connect with:
```
nvim-qt --server 127.0.0.1:10101
```

To stop the container:
```
make container_stop
```

