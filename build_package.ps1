#build an sdist (source distribution) package for unimacro
#no wheel is built, one less thing to worry about
#use the no-setup option, which requires a 
py -m flit build --format sdist  --no-setup-py