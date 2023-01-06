FROM estebanmatias92/gccplus:latest as coding

LABEL description="=== Code Ready Image ==="

# Get packages for editors and CVS
RUN apt-get update && apt-get install -y \
        cppcheck \
        flawfinder \
        git \
        gdb \
    && apt-get clean