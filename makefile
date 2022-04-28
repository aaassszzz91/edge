CXX?=g++
PROG=edge1.4

SOURCES=boundary.cpp

LIBS= -ltensorflow-lite -lrt -ldl -lopencv_objdetect -lopencv_highgui -lopencv_imgproc -lopencv_core -lopencv_videoio -lopencv_imgcodecs -lopencv_dnn -lopencv_dnn_objdetect -lzmq
INC=-I $(SDKTARGETSYSROOT)/usr/include/tensorflow/lite/tools/make/downloads/flatbuffers/include/ 

all: $(PROG)
	
$(PROG): $(SOURCES)
	$(CXX) -o $@ $(INC) $(DEP_LIBS) $^ $(LIBS)

clean:
	rm -f $(PROG)
