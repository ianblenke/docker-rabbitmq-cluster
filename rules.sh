#!/bin/bash
env >> ~/.profile
exec /usr/local/bin/supervisord
