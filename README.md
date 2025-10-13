# nvim configuration
## Summary
Neovim configuration for C# and dotnet development with minimal setup and only a couple of must-have
plug-ins. Setup is meant to be done on Debian 12 (Bookworm) with the latest Neovim version (at the
time of posting 0.11.3)

1. Prerequisites
    1.1. Neovim app image is needed since installation through apt on bookworm will default to a 
    version 0.7* which does not support some lua script features. Find the latest stable release
    from the official [release page](https://github.com/neovim/neovim/releases) for nvim .
    1.2. After download give the nvim.appimage file executable permissions with:
    <code>chmod u+x <path to downloaded file> </code> 
    1.3. Move the nvim.appimage file to PATH :
    <code>mv <path to downloaded file> /usr/local/bin/nvim</code>
    1.4. Install the .NET sdk and runtime (for Debian 12 must be .9 or above). Follow instructions 
    from the Debian [installation page](https://learn.microsoft.com/en-us/dotnet/core/install/linux-debian?tabs=dotnet9)
    or run the following commands:
    download the deb package and depackage it
    <code>
    curl https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
    sudo dpkg -i packages-microsoft-prod.deb
    rm packages-microsoft-prod.deb
    </code>

    install the sdk
    <code>
    sudo apt-get update && \
    sudo apt-get install -y dotnet-sdk-9.0
    </code>

    install the runtime
    <code>
    sudo apt-get install -y dotnet-runtime-9.0
    </code>
    1.5. Install ripgrep to be able to use telescope's fuzzy finder.
    <code>
    curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.1/ripgrep_14.1.1-1_amd64.deb
    $ sudo dpkg -i ripgrep_14.1.1-1_amd64.deb
    </code>
2. Clone the repo into your <code>.config</code> folder so that it is in the follwoing path:
    ~/.config/nvim
4. Open up nvim and run :PackerSync to install all plug-ins
5. Check to see if you have roslyn installed. If not you should install it manually with
<code>:MasonInstall roslyn</code>. The additonal registries are already added to the mason config
so it should work out of the box.

