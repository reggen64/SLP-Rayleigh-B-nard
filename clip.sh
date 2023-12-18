#!/usr/bin/bash
mpiexec -n 4 python3 plot_snapshots.py snapshots/*.h5
ffmpeg -framerate 30 -i ./frames/write_%06d.png -c:v libx264 -profile:v high -crf 20 -pix_fmt yuv420p op.mp4
