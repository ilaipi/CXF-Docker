# CXF Docker

```
git clone https://github.com/ilaipi/CXF-Docker.git

cd CXF-Docker
docker build -t cxf:3.4.1 .

# @see https://cxf.apache.org/docs/wsdl-to-java.html
docker run -name cxf cxf:3.4.1 -all [your wsdlurl]
```
