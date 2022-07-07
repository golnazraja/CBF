#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/golnaz/test/icra22_competition_ws/src/agile_flight/dodgedrone_simulation/dodgeros/dodgeros_gui"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/golnaz/test/icra22_competition_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/golnaz/test/icra22_competition_ws/install/lib/python3/dist-packages:/home/golnaz/test/icra22_competition_ws/build/dodgeros_gui/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/golnaz/test/icra22_competition_ws/build/dodgeros_gui" \
    "/usr/bin/python3" \
    "/home/golnaz/test/icra22_competition_ws/src/agile_flight/dodgedrone_simulation/dodgeros/dodgeros_gui/setup.py" \
     \
    build --build-base "/home/golnaz/test/icra22_competition_ws/build/dodgeros_gui" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/golnaz/test/icra22_competition_ws/install" --install-scripts="/home/golnaz/test/icra22_competition_ws/install/bin"
