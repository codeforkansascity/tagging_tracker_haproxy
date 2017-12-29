# Tagging Tracker HAProxy

Settings for initializing the Load Balancer for the [Tagging Tracker Services](https://github.com/codeforkansascity/tagging_tracker_backend).

## Getting Started

1. Generate self certificates like you would for the [backend services](https://github.com/codeforkansascity/tagging_tracker_backend).

1. Shell into the ~/.ssh/tagging_tracker directory, and run the following command to create a combined certificate/key file. * Note: * The file name MUST MATCH haproxy.pem.

   ```
   cat fullchain.pem privkey.pem > haproxy.pem
   ```

1. Run `docker build .`, and take note of the generate image id.

1. Run `docker run -it -p 443:443 -v ~/.ssh/tagging_tracker/:/etc/ssl/haproxy/ <image id>`

