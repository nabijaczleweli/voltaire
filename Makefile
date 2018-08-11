# The MIT License (MIT)

# Copyright (c) 2018 nabijaczleweli

# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
# the Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


include configMakefile


VERAR := $(foreach l,VOLTAIRE,-D$(l)_VERSION='$($(l)_VERSION)')
INCAR := $(foreach l,$(foreach l,$(foreach l, ,$(l)/include),ext/$(l)) $(foreach l, ,$(BLDDIR)$(l)/include),-isystem$(l))
SOURCES_C := $(sort $(wildcard src/*.c src/**/*.c src/**/**/*.c src/**/**/**/*.c))
SOURCES_ASM := $(sort $(wildcard src/*.asm src/**/*.asm src/**/**/*.asm src/**/**/**/*.asm))

.PHONY : all clean binary images upload

all : binary images

clean :
	rm -rf $(OUTDIR)

upload : images
	$(AVRDUDE) $(AVRDUDEAR) -Uflash:w:$(OUTDIR)voltaire$(FSH):i
	# -Ueeprom:w:$(OUTDIR)voltaire$(EEP):i

binary : $(BLDDIR)voltaire$(ELF)

images : $(OUTDIR)voltaire$(EEP) $(OUTDIR)voltaire$(FSH)


$(BLDDIR)voltaire$(ELF) : $(subst $(SRCDIR),$(OBJDIR),$(subst .asm,$(OBJ),$(SOURCES_ASM)) $(subst .c,$(OBJ),$(SOURCES_C)))
	@mkdir -p $(dir $@)
	$(AVR_CC) $(AVR_CCAR) -o$@ $^ $(LDAR)

$(OUTDIR)voltaire$(EEP) : $(BLDDIR)voltaire$(ELF)
	@mkdir -p $(dir $@)
	$(AVR_OBJCOPY) $(AVR_OBJCOPYAR) -j .eeprom $^ $@

$(OUTDIR)voltaire$(FSH) : $(BLDDIR)voltaire$(ELF)
	@mkdir -p $(dir $@)
	$(AVR_OBJCOPY) $(AVR_OBJCOPYAR) -R .eeprom $^ $@


$(OBJDIR)%$(OBJ) : $(SRCDIR)%.c
	@mkdir -p $(dir $@)
	$(AVR_CC) $(AVR_CCAR) $(INCAR) $(VERAR) -c -o$@ $^

$(OBJDIR)%$(OBJ) : $(SRCDIR)%.asm
	@mkdir -p $(dir $@)
	$(AVR_CC) $(AVR_CCAR) $(AVR_CC_ASMAR) $(INCAR) $(VERAR) -c -o$@ $^
