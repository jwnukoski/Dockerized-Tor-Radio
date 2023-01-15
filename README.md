# Icecast Tor Playlist
Dockerized Icecast Tor service for audio files.  

By default you can copy mp3 files into a directory to have them automatically converted to ogg, normalized, and added to a looping shuffle playlist.  

## Warnings
- Music files with the same name will cause issues, even if they're in different directories.  
This is planned to be fixed in the future.

- This project is for research, and is provided as-is.

## Setup
By default you shouldn't need to make many changes to the default config files - besides passwords and usernames.  
If you need more changes, then please refer to the respective docs.

1. Copy the `icecast/config/default.icecast.xml` to a `icecast/config/icecast.xml` file  
2. Modify the passwords in `icecast.xml`, and all other changes you want
3. Copy the `ices/config/example.ices.xml` to `ices/config/ices.xml`
4. Modify the passwords in `ices.xml` to the same ones used in the `icecast.xml`
5. Copy  all your music into `./music/dump`
6. Run `docker compose up -d` from this directory
7. The ices container will automatically convert your files to .ogg and normalize the audio. After they're converted, then you may want to remove the `music/dump` files to prevent reprocessing these files at restart again.  
If you wish to modify any of these processes, then see the scripts located in `ices/scipts`.  
You can re-run these scripts by restarting the ices container, or by manually running them in the container located at `/usr/share/ices/scripts`.
8. A playlist will automatically be generated. By default it will shuffle and loop. You can change this in your `ices/config/ices.xml` file.
9. Copy the `./tor/nginx/example.default.conf` to `./tor/nginx/default.conf`. Make any adjustments as needed.

If you change any of these configs after building the image, then you'll need to rebuild the images as these files are not mapped to a volume - but rather copied at build.

## TODO:
https://www.privex.io/articles/setup-tor-hidden-service-website/