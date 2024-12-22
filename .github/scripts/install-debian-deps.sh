sudo apt install -y \
    build-essential \
    generate-ninja \
    libasound2-dev \
    libdbus-1-dev \
    libglib2.0-dev \
    libgtk2.0-dev \
    libnss3-dev \
    libpci-dev \
    libpulse-dev \
    libxtst-dev \
    libxss-dev \
    libudev-dev
# libwebrtc says the following two are required,
# but they aren't found in the package index.
# libgconf2-dev libgnome-keyring-dev
