docker build -t mdrawbot . && \
docker run -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd)/mDrawGui:/app \
    --device=/dev/ttyUSB0 \
    -v /dev/:/dev/ \
    -e DISPLAY=$DISPLAY \
    -e QT_DEBUG_PLUGINS=1 \
    -e QT_SCALE_FACTOR=1.5 \
    -u mdrawbotuser \
    --privileged \
    mdrawbot bash -c "python3 /app/mDraw.py"

    # -e QT_QPA_PLATFORM=minimal \
