CC = nvcc
LDC = nvcc
RM = /bin/rm

FLAGS =
LD_FLAGS =

CPROGS = sort.cx

#all rule
all: $(CPROGS)

run: all
	./$(CPROGS) 100000000 0 1000

sort.cx:sort.o
	$(LDC) $(LD_FLAGS) $< -o $@

%.o:%.cu
	$(CC) $(FLAGS) -c $^ -o $@

#clean rule
clean:
	$(RM) -rf *.o *.cx *.exp *.lib
