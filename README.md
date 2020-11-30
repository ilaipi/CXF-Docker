# CXF Docker

```
git clone https://github.com/ilaipi/CXF-Docker.git

cd CXF-Docker
docker build -t cxf:3.4.1 .

# @see https://cxf.apache.org/docs/wsdl-to-java.html
# put wsdl file to current directory
docker run -v $PWD:/usr/src -name cxf cxf:3.4.1 -all -p [your package name, e.g. com.billy.yang] [your wsdl filename]
```
