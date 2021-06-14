TARGET		:= trunk_tests

SOURCES		:= trunk_tests.c

TGT_LDLIBS	:= $(LIBS) $(GPERFTOOLS_LIBS)
TGT_LDFLAGS	:= $(LDFLAGS) $(GPERFTOOLS_LDFLAGS)

ifneq ($(OPENSSL_LIBS),)
TGT_PREREQS	:= libfreeradius-tls.a
endif

TGT_PREREQS	+= libfreeradius-unlang.a
SRC_CFLAGS	+= -DTESTING_TRUNK
