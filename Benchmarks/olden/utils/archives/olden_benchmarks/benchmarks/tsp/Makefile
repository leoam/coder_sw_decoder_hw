# /* For copyright information, see olden_v1.0/COPYRIGHT */
.KEEP_STATE:

OLDENDIR = ~/olden_v1.0
RCC = $(OLDENDIR)/mcc/sparc/backend/mcc
SRCS		= tsp.c build.c main.c
LIBOBJS		= call-stub.o future.o init.o migrate.o msg.o debug.o msg2.o msg3.o cache.o mem.o
RLIBOBJS		= call-stub.o future.o init.o migrate.o msg.o debug.o msg2.o msg3.o cache.o plain-mem.o
SIMLIBOBJS		= call-stub.o future.o init_sim.o migrate.o msg.o debug.o msg2.o msg3.o cache.o mem.o cache_sim.o
OBJS		= $(SRCS:%.c=%.o)  args.o
ROBJS		= $(SRCS:%.c=%.r.o) args.o
SIMOBJS      = $(SRCS:%.c=%.sim.o)  args.o 
LIBLINK		= $(LIBOBJS:%=$(OLDENDIR)/runtime/%)
RLIBLINK		= $(RLIBOBJS:%=$(OLDENDIR)/runtime/%)
SIMLIBLINK		= $(SIMLIBOBJS:%=$(OLDENDIR)/runtime/%)
INCDIRS		= /usr/include $(OLDENDIR)/runtime
NODELIBS	= 
LIBDIRS		= 
CPPFLAGS	= 

CC		= cc

CFLAGS		= 

tsp:	$(OBJS) target
	/usr/bin/cmmd-ld -g  \
	-comp $(CC) $(OBJS) $(LIBLINK) -v -o tsp   \
	 $(LIBDIRS:%=-L%) $(NODELIBS:%=-l%)

tspsim:	$(SIMOBJS) target
	/usr/bin/cmmd-ld -g  \
	-comp $(CC) $(SIMOBJS) $(SIMLIBLINK) -v -o tspsim   \
	 $(LIBDIRS:%=-L%) $(NODELIBS:%=-l%)

plain:	$(ROBJS) target
	/usr/bin/cmmd-ld \
	-comp $(CC) $(ROBJS) $(RLIBLINK) -v -o plaintsp   \
	$(LIBDIRS:%=-L%) $(NODELIBS:%=-l%)

args.s: args.c
	/lib/cpp $(CPPFLAGS) $(INCDIRS:%=-I%) args.c | $(RCC) -f > args.s

%.s:    %.c
	/lib/cpp -DFUTURES $(CPPFLAGS) $(INCDIRS:%=-I%) $< | $(RCC) -n -m -k > $*.s

%.sim.s:    %.c
	/lib/cpp -DFUTURES -DCACHESIM $(CPPFLAGS) $(INCDIRS:%=-I%) $< | $(RCC) -cs4 -n -m -k > $*.sim.s

%.p.s:    %.c
	/lib/cpp -DPLAIN $(CPPFLAGS) $(INCDIRS:%=-I%) $< | $(RCC) -f > $*.p.s

%.o:	%.s
	$(CC) $(CFLAGS) -c $<

%.sim.o:	%.sim.s
	$(CC) $(CFLAGS) -c $< -o $*.sim.o
 
%.r.o:	%.p.s
	$(CC) $(CFLAGS) -c $< -o $*.r.o
 
target: 
	cd $(OLDENDIR)/runtime; make

clean:
	rm -f $(TARGET) $(OBJS) *~ .make.state .nse_depinfo

