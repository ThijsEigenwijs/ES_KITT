#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Assignment1_5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Assignment1_5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=nbproject/source/assignment1_5.c nbproject/source/myFunctions.c nbproject/source/lcd.c nbproject/source/mf_lcd.c nbproject/source/mf_timer.c nbproject/source/KITT_Messages.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/nbproject/source/assignment1_5.o ${OBJECTDIR}/nbproject/source/myFunctions.o ${OBJECTDIR}/nbproject/source/lcd.o ${OBJECTDIR}/nbproject/source/mf_lcd.o ${OBJECTDIR}/nbproject/source/mf_timer.o ${OBJECTDIR}/nbproject/source/KITT_Messages.o
POSSIBLE_DEPFILES=${OBJECTDIR}/nbproject/source/assignment1_5.o.d ${OBJECTDIR}/nbproject/source/myFunctions.o.d ${OBJECTDIR}/nbproject/source/lcd.o.d ${OBJECTDIR}/nbproject/source/mf_lcd.o.d ${OBJECTDIR}/nbproject/source/mf_timer.o.d ${OBJECTDIR}/nbproject/source/KITT_Messages.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/nbproject/source/assignment1_5.o ${OBJECTDIR}/nbproject/source/myFunctions.o ${OBJECTDIR}/nbproject/source/lcd.o ${OBJECTDIR}/nbproject/source/mf_lcd.o ${OBJECTDIR}/nbproject/source/mf_timer.o ${OBJECTDIR}/nbproject/source/KITT_Messages.o

# Source Files
SOURCEFILES=nbproject/source/assignment1_5.c nbproject/source/myFunctions.c nbproject/source/lcd.c nbproject/source/mf_lcd.c nbproject/source/mf_timer.c nbproject/source/KITT_Messages.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Assignment1_5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX370F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/nbproject/source/assignment1_5.o: nbproject/source/assignment1_5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/nbproject/source" 
	@${RM} ${OBJECTDIR}/nbproject/source/assignment1_5.o.d 
	@${RM} ${OBJECTDIR}/nbproject/source/assignment1_5.o 
	@${FIXDEPS} "${OBJECTDIR}/nbproject/source/assignment1_5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"nbproject/source" -MMD -MF "${OBJECTDIR}/nbproject/source/assignment1_5.o.d" -o ${OBJECTDIR}/nbproject/source/assignment1_5.o nbproject/source/assignment1_5.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/nbproject/source/myFunctions.o: nbproject/source/myFunctions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/nbproject/source" 
	@${RM} ${OBJECTDIR}/nbproject/source/myFunctions.o.d 
	@${RM} ${OBJECTDIR}/nbproject/source/myFunctions.o 
	@${FIXDEPS} "${OBJECTDIR}/nbproject/source/myFunctions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"nbproject/source" -MMD -MF "${OBJECTDIR}/nbproject/source/myFunctions.o.d" -o ${OBJECTDIR}/nbproject/source/myFunctions.o nbproject/source/myFunctions.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/nbproject/source/lcd.o: nbproject/source/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/nbproject/source" 
	@${RM} ${OBJECTDIR}/nbproject/source/lcd.o.d 
	@${RM} ${OBJECTDIR}/nbproject/source/lcd.o 
	@${FIXDEPS} "${OBJECTDIR}/nbproject/source/lcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"nbproject/source" -MMD -MF "${OBJECTDIR}/nbproject/source/lcd.o.d" -o ${OBJECTDIR}/nbproject/source/lcd.o nbproject/source/lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/nbproject/source/mf_lcd.o: nbproject/source/mf_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/nbproject/source" 
	@${RM} ${OBJECTDIR}/nbproject/source/mf_lcd.o.d 
	@${RM} ${OBJECTDIR}/nbproject/source/mf_lcd.o 
	@${FIXDEPS} "${OBJECTDIR}/nbproject/source/mf_lcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"nbproject/source" -MMD -MF "${OBJECTDIR}/nbproject/source/mf_lcd.o.d" -o ${OBJECTDIR}/nbproject/source/mf_lcd.o nbproject/source/mf_lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/nbproject/source/mf_timer.o: nbproject/source/mf_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/nbproject/source" 
	@${RM} ${OBJECTDIR}/nbproject/source/mf_timer.o.d 
	@${RM} ${OBJECTDIR}/nbproject/source/mf_timer.o 
	@${FIXDEPS} "${OBJECTDIR}/nbproject/source/mf_timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"nbproject/source" -MMD -MF "${OBJECTDIR}/nbproject/source/mf_timer.o.d" -o ${OBJECTDIR}/nbproject/source/mf_timer.o nbproject/source/mf_timer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/nbproject/source/KITT_Messages.o: nbproject/source/KITT_Messages.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/nbproject/source" 
	@${RM} ${OBJECTDIR}/nbproject/source/KITT_Messages.o.d 
	@${RM} ${OBJECTDIR}/nbproject/source/KITT_Messages.o 
	@${FIXDEPS} "${OBJECTDIR}/nbproject/source/KITT_Messages.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"nbproject/source" -MMD -MF "${OBJECTDIR}/nbproject/source/KITT_Messages.o.d" -o ${OBJECTDIR}/nbproject/source/KITT_Messages.o nbproject/source/KITT_Messages.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/nbproject/source/assignment1_5.o: nbproject/source/assignment1_5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/nbproject/source" 
	@${RM} ${OBJECTDIR}/nbproject/source/assignment1_5.o.d 
	@${RM} ${OBJECTDIR}/nbproject/source/assignment1_5.o 
	@${FIXDEPS} "${OBJECTDIR}/nbproject/source/assignment1_5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"nbproject/source" -MMD -MF "${OBJECTDIR}/nbproject/source/assignment1_5.o.d" -o ${OBJECTDIR}/nbproject/source/assignment1_5.o nbproject/source/assignment1_5.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/nbproject/source/myFunctions.o: nbproject/source/myFunctions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/nbproject/source" 
	@${RM} ${OBJECTDIR}/nbproject/source/myFunctions.o.d 
	@${RM} ${OBJECTDIR}/nbproject/source/myFunctions.o 
	@${FIXDEPS} "${OBJECTDIR}/nbproject/source/myFunctions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"nbproject/source" -MMD -MF "${OBJECTDIR}/nbproject/source/myFunctions.o.d" -o ${OBJECTDIR}/nbproject/source/myFunctions.o nbproject/source/myFunctions.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/nbproject/source/lcd.o: nbproject/source/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/nbproject/source" 
	@${RM} ${OBJECTDIR}/nbproject/source/lcd.o.d 
	@${RM} ${OBJECTDIR}/nbproject/source/lcd.o 
	@${FIXDEPS} "${OBJECTDIR}/nbproject/source/lcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"nbproject/source" -MMD -MF "${OBJECTDIR}/nbproject/source/lcd.o.d" -o ${OBJECTDIR}/nbproject/source/lcd.o nbproject/source/lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/nbproject/source/mf_lcd.o: nbproject/source/mf_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/nbproject/source" 
	@${RM} ${OBJECTDIR}/nbproject/source/mf_lcd.o.d 
	@${RM} ${OBJECTDIR}/nbproject/source/mf_lcd.o 
	@${FIXDEPS} "${OBJECTDIR}/nbproject/source/mf_lcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"nbproject/source" -MMD -MF "${OBJECTDIR}/nbproject/source/mf_lcd.o.d" -o ${OBJECTDIR}/nbproject/source/mf_lcd.o nbproject/source/mf_lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/nbproject/source/mf_timer.o: nbproject/source/mf_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/nbproject/source" 
	@${RM} ${OBJECTDIR}/nbproject/source/mf_timer.o.d 
	@${RM} ${OBJECTDIR}/nbproject/source/mf_timer.o 
	@${FIXDEPS} "${OBJECTDIR}/nbproject/source/mf_timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"nbproject/source" -MMD -MF "${OBJECTDIR}/nbproject/source/mf_timer.o.d" -o ${OBJECTDIR}/nbproject/source/mf_timer.o nbproject/source/mf_timer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/nbproject/source/KITT_Messages.o: nbproject/source/KITT_Messages.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/nbproject/source" 
	@${RM} ${OBJECTDIR}/nbproject/source/KITT_Messages.o.d 
	@${RM} ${OBJECTDIR}/nbproject/source/KITT_Messages.o 
	@${FIXDEPS} "${OBJECTDIR}/nbproject/source/KITT_Messages.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"nbproject/source" -MMD -MF "${OBJECTDIR}/nbproject/source/KITT_Messages.o.d" -o ${OBJECTDIR}/nbproject/source/KITT_Messages.o nbproject/source/KITT_Messages.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Assignment1_5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -DICD3PlatformTool=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Assignment1_5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=ICD3PlatformTool=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Assignment1_5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Assignment1_5.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Assignment1_5.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
