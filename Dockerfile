FROM vagrantlibvirt/vagrant-libvirt:latest

ENV PATH=$PATH:/root/.local/bin

RUN apt update && apt install -y python3 && rm -rf /var/lib/apt/lists

COPY requirements-*.txt .

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py --user && python3 -m pip install -r requirements-*.txt
