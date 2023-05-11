; ------------------------------------------------
; OCL_asmafa19d47b3517d1c_optimized.ll
; ------------------------------------------------
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "spir64-unknown-unknown"

@__OptDisable = local_unnamed_addr addrspace(2) constant i32 0, align 4
@_ZTSZZ4mainENKUlRT_E_clIN4sycl3_V17handlerEEEDaS0_EUlNS4_7nd_itemILi3EEEE_-ExtSLM = external addrspace(3) global [0 x i8]
@llvm.used = appending global [1 x i8*] [i8* addrspacecast (i8 addrspace(3)* getelementptr inbounds ([0 x i8], [0 x i8] addrspace(3)* @_ZTSZZ4mainENKUlRT_E_clIN4sycl3_V17handlerEEEDaS0_EUlNS4_7nd_itemILi3EEEE_-ExtSLM, i32 0, i32 0) to i8*)], section "llvm.metadata"

; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZ4mainENKUlRT_E_clIN4sycl3_V17handlerEEEDaS0_EUlNS4_7nd_itemILi3EEEE_(float addrspace(3)* nocapture readnone %0, float addrspace(1)* nocapture readonly %1, float addrspace(1)* nocapture %2, <8 x i32> %r0, <8 x i32> %payloadHeader, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i32 %bufferOffset, i32 %bufferOffset1) #0 {
  %conv.i.i = zext i16 %localIdX to i64
  %4 = shl nuw nsw i64 %conv.i.i, 1
  %5 = and i64 %4, 510
  %6 = getelementptr inbounds float, float addrspace(1)* %1, i64 %5
  %7 = bitcast float addrspace(1)* %6 to i32 addrspace(1)*
  %8 = load i32, i32 addrspace(1)* %7, align 4
  %9 = getelementptr inbounds float, float addrspace(3)* bitcast ([0 x i8] addrspace(3)* @_ZTSZZ4mainENKUlRT_E_clIN4sycl3_V17handlerEEEDaS0_EUlNS4_7nd_itemILi3EEEE_-ExtSLM to float addrspace(3)*), i64 %5
  %10 = bitcast float addrspace(3)* %9 to i32 addrspace(3)*
  store i32 %8, i32 addrspace(3)* %10, align 4
  call void @llvm.genx.GenISA.memoryfence(i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false)
  call void @llvm.genx.GenISA.threadgroupbarrier()
  %11 = icmp ult i16 %localIdX, 64
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32 addrspace(3)* %10, align 4
  %14 = getelementptr inbounds float, float addrspace(1)* %2, i64 %5
  %15 = bitcast float addrspace(1)* %14 to i32 addrspace(1)*
  store i32 %13, i32 addrspace(1)* %15, align 4
  br label %16

16:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #1

; Function Attrs: convergent
declare spir_func void @__builtin_IB_memfence(i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext) local_unnamed_addr #2

; Function Attrs: convergent
declare spir_func void @__builtin_IB_thread_group_barrier() local_unnamed_addr #2

; Function Attrs: convergent nounwind readnone
declare spir_func i32 @__builtin_IB_get_local_id_x() local_unnamed_addr #3

; Function Attrs: convergent nounwind readnone
declare spir_func i32 @__builtin_IB_get_local_id_y() local_unnamed_addr #3

; Function Attrs: convergent nounwind readnone
declare spir_func i32 @__builtin_IB_get_local_id_z() local_unnamed_addr #3

; Function Desc: 
; Output: 
; Arg 0: Commit Enable
; Arg 1: L3_Flush_RW_Data
; Arg 2: L3_Flush_Constant_Data
; Arg 3: L3_Flush_Texture_Data
; Arg 4: L3_Flush_Instructions
; Arg 5: Fence has global effect
; Arg 6: L1 Invalidate
; Arg 7: Force Thread LSC scope
; Function Attrs: convergent nounwind
declare void @llvm.genx.GenISA.memoryfence(i1, i1, i1, i1, i1, i1, i1, i1) #4

; Function Desc: 
; Output: 
; Arg 0: none
; Function Attrs: convergent nounwind
declare void @llvm.genx.GenISA.threadgroupbarrier() #4

attributes #0 = { convergent nounwind "less-precise-fpmad"="true" }
attributes #1 = { nounwind willreturn }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent nounwind }

!IGCMetadata = !{!0}
!igc.functions = !{!275}
!opencl.ocl.version = !{!289, !289, !289, !289, !289}
!opencl.spir.version = !{!289, !289, !289, !289, !289}
!llvm.ident = !{!290, !290, !290, !290, !290}
!llvm.module.flags = !{!291}

!0 = !{!"ModuleMD", !1, !2, !60, !152, !182, !198, !211, !221, !223, !224, !235, !236, !237, !238, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !256, !260, !261, !262, !263, !264, !265, !266, !123, !267, !268, !270, !273, !274}
!1 = !{!"isPrecise", i1 false}
!2 = !{!"compOpt", !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!3 = !{!"DenormsAreZero", i1 false}
!4 = !{!"CorrectlyRoundedDivSqrt", i1 false}
!5 = !{!"OptDisable", i1 false}
!6 = !{!"MadEnable", i1 true}
!7 = !{!"NoSignedZeros", i1 false}
!8 = !{!"NoNaNs", i1 false}
!9 = !{!"FloatRoundingMode", i32 0}
!10 = !{!"FloatCvtIntRoundingMode", i32 3}
!11 = !{!"VISAPreSchedRPThreshold", i32 0}
!12 = !{!"SetLoopUnrollThreshold", i32 0}
!13 = !{!"UnsafeMathOptimizations", i1 false}
!14 = !{!"FiniteMathOnly", i1 false}
!15 = !{!"FastRelaxedMath", i1 false}
!16 = !{!"DashGSpecified", i1 false}
!17 = !{!"FastCompilation", i1 false}
!18 = !{!"UseScratchSpacePrivateMemory", i1 true}
!19 = !{!"RelaxedBuiltins", i1 false}
!20 = !{!"SubgroupIndependentForwardProgressRequired", i1 true}
!21 = !{!"GreaterThan2GBBufferRequired", i1 true}
!22 = !{!"GreaterThan4GBBufferRequired", i1 false}
!23 = !{!"DisableA64WA", i1 false}
!24 = !{!"ForceEnableA64WA", i1 false}
!25 = !{!"PushConstantsEnable", i1 true}
!26 = !{!"HasPositivePointerOffset", i1 false}
!27 = !{!"HasBufferOffsetArg", i1 true}
!28 = !{!"BufferOffsetArgOptional", i1 true}
!29 = !{!"HasSubDWAlignedPtrArg", i1 false}
!30 = !{!"replaceGlobalOffsetsByZero", i1 false}
!31 = !{!"forcePixelShaderSIMDMode", i32 0}
!32 = !{!"pixelShaderDoNotAbortOnSpill", i1 false}
!33 = !{!"UniformWGS", i1 false}
!34 = !{!"disableVertexComponentPacking", i1 false}
!35 = !{!"disablePartialVertexComponentPacking", i1 false}
!36 = !{!"PreferBindlessImages", i1 false}
!37 = !{!"UseBindlessMode", i1 false}
!38 = !{!"UseLegacyBindlessMode", i1 true}
!39 = !{!"disableMathRefactoring", i1 false}
!40 = !{!"atomicBranch", i1 false}
!41 = !{!"ForceInt32DivRemEmu", i1 false}
!42 = !{!"ForceInt32DivRemEmuSP", i1 false}
!43 = !{!"ForceMinSimdSizeForFastestCS", i1 false}
!44 = !{!"EnableFastestLinearScan", i1 false}
!45 = !{!"UseStatelessforPrivateMemory", i1 false}
!46 = !{!"EnableTakeGlobalAddress", i1 false}
!47 = !{!"IsLibraryCompilation", i1 false}
!48 = !{!"FastVISACompile", i1 false}
!49 = !{!"MatchSinCosPi", i1 false}
!50 = !{!"ExcludeIRFromZEBinary", i1 false}
!51 = !{!"EmitZeBinVISASections", i1 false}
!52 = !{!"allowDisableRematforCS", i1 false}
!53 = !{!"DisableIncSpillCostAllAddrTaken", i1 false}
!54 = !{!"DisableCPSOmaskWA", i1 false}
!55 = !{!"DisableFastestGopt", i1 false}
!56 = !{!"WaForceHalfPromotion", i1 false}
!57 = !{!"DisableConstantCoalescing", i1 false}
!58 = !{!"EnableUndefAlphaOutputAsRed", i1 true}
!59 = !{!"WaEnableALTModeVisaWA", i1 false}
!60 = !{!"FuncMD", !61, !62}
!61 = !{!"FuncMDMap[0]", void (float addrspace(3)*, float addrspace(1)*, float addrspace(1)*, <8 x i32>, <8 x i32>, i16, i16, i16, i32, i32)* @_ZTSZZ4mainENKUlRT_E_clIN4sycl3_V17handlerEEEDaS0_EUlNS4_7nd_itemILi3EEEE_}
!62 = !{!"FuncMDValue[0]", !63, !67, !71, !72, !73, !93, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !134, !138, !142, !146, !150, !151}
!63 = !{!"localOffsets", !64}
!64 = !{!"localOffsetsVec[0]", !65, !66}
!65 = !{!"m_Offset", i32 0}
!66 = !{!"m_Var", [0 x i8] addrspace(3)* @_ZTSZZ4mainENKUlRT_E_clIN4sycl3_V17handlerEEEDaS0_EUlNS4_7nd_itemILi3EEEE_-ExtSLM}
!67 = !{!"workGroupWalkOrder", !68, !69, !70}
!68 = !{!"dim0", i32 0}
!69 = !{!"dim1", i32 0}
!70 = !{!"dim2", i32 0}
!71 = !{!"funcArgs"}
!72 = !{!"functionType", !"KernelFunction"}
!73 = !{!"rtInfo", !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !92}
!74 = !{!"callableShaderType", !"NumberOfCallableShaderTypes"}
!75 = !{!"isContinuation", i1 false}
!76 = !{!"hasTraceRayPayload", i1 false}
!77 = !{!"hasHitAttributes", i1 false}
!78 = !{!"hasCallableData", i1 false}
!79 = !{!"ShaderStackSize", i32 0}
!80 = !{!"ShaderHash", i64 0}
!81 = !{!"ShaderName", !""}
!82 = !{!"ParentName", !""}
!83 = !{!"SlotNum", i1* null}
!84 = !{!"NOSSize", i32 0}
!85 = !{!"Entries"}
!86 = !{!"SpillUnions"}
!87 = !{!"CustomHitAttrSizeInBytes", i32 0}
!88 = !{!"Types", !89, !90, !91}
!89 = !{!"FrameStartTys"}
!90 = !{!"ArgumentTys"}
!91 = !{!"FullFrameTys"}
!92 = !{!"Aliases"}
!93 = !{!"resAllocMD", !94, !95, !96, !97, !114}
!94 = !{!"uavsNumType", i32 2}
!95 = !{!"srvsNumType", i32 0}
!96 = !{!"samplersNumType", i32 0}
!97 = !{!"argAllocMDList", !98, !102, !105, !107, !108, !109, !110, !111, !112, !113}
!98 = !{!"argAllocMDListVec[0]", !99, !100, !101}
!99 = !{!"type", i32 0}
!100 = !{!"extensionType", i32 -1}
!101 = !{!"indexType", i32 -1}
!102 = !{!"argAllocMDListVec[1]", !103, !100, !104}
!103 = !{!"type", i32 1}
!104 = !{!"indexType", i32 0}
!105 = !{!"argAllocMDListVec[2]", !103, !100, !106}
!106 = !{!"indexType", i32 1}
!107 = !{!"argAllocMDListVec[3]", !99, !100, !101}
!108 = !{!"argAllocMDListVec[4]", !99, !100, !101}
!109 = !{!"argAllocMDListVec[5]", !99, !100, !101}
!110 = !{!"argAllocMDListVec[6]", !99, !100, !101}
!111 = !{!"argAllocMDListVec[7]", !99, !100, !101}
!112 = !{!"argAllocMDListVec[8]", !99, !100, !101}
!113 = !{!"argAllocMDListVec[9]", !99, !100, !101}
!114 = !{!"inlineSamplersMD"}
!115 = !{!"maxByteOffsets"}
!116 = !{!"IsInitializer", i1 false}
!117 = !{!"IsFinalizer", i1 false}
!118 = !{!"CompiledSubGroupsNumber", i32 0}
!119 = !{!"hasInlineVmeSamplers", i1 false}
!120 = !{!"localSize", i32 0}
!121 = !{!"localIDPresent", i1 false}
!122 = !{!"groupIDPresent", i1 false}
!123 = !{!"privateMemoryPerWI", i32 0}
!124 = !{!"globalIDPresent", i1 false}
!125 = !{!"hasSyncRTCalls", i1 false}
!126 = !{!"hasNonKernelArgLoad", i1 false}
!127 = !{!"hasNonKernelArgStore", i1 false}
!128 = !{!"hasNonKernelArgAtomic", i1 false}
!129 = !{!"UserAnnotations"}
!130 = !{!"m_OpenCLArgAddressSpaces", !131, !132, !133}
!131 = !{!"m_OpenCLArgAddressSpacesVec[0]", i32 3}
!132 = !{!"m_OpenCLArgAddressSpacesVec[1]", i32 1}
!133 = !{!"m_OpenCLArgAddressSpacesVec[2]", i32 1}
!134 = !{!"m_OpenCLArgAccessQualifiers", !135, !136, !137}
!135 = !{!"m_OpenCLArgAccessQualifiersVec[0]", !"none"}
!136 = !{!"m_OpenCLArgAccessQualifiersVec[1]", !"none"}
!137 = !{!"m_OpenCLArgAccessQualifiersVec[2]", !"none"}
!138 = !{!"m_OpenCLArgTypes", !139, !140, !141}
!139 = !{!"m_OpenCLArgTypesVec[0]", !"float*"}
!140 = !{!"m_OpenCLArgTypesVec[1]", !"float*"}
!141 = !{!"m_OpenCLArgTypesVec[2]", !"float*"}
!142 = !{!"m_OpenCLArgBaseTypes", !143, !144, !145}
!143 = !{!"m_OpenCLArgBaseTypesVec[0]", !"float*"}
!144 = !{!"m_OpenCLArgBaseTypesVec[1]", !"float*"}
!145 = !{!"m_OpenCLArgBaseTypesVec[2]", !"float*"}
!146 = !{!"m_OpenCLArgTypeQualifiers", !147, !148, !149}
!147 = !{!"m_OpenCLArgTypeQualifiersVec[0]", !""}
!148 = !{!"m_OpenCLArgTypeQualifiersVec[1]", !""}
!149 = !{!"m_OpenCLArgTypeQualifiersVec[2]", !""}
!150 = !{!"m_OpenCLArgNames"}
!151 = !{!"m_OpenCLArgScalarAsPointers"}
!152 = !{!"pushInfo", !153, !154, !155, !158, !159, !160, !161, !162, !163, !164, !165, !178, !179, !180, !181}
!153 = !{!"pushableAddresses"}
!154 = !{!"bindlessPushInfo"}
!155 = !{!"dynamicBufferInfo", !156, !157}
!156 = !{!"firstIndex", i32 0}
!157 = !{!"numOffsets", i32 0}
!158 = !{!"MaxNumberOfPushedBuffers", i32 0}
!159 = !{!"inlineConstantBufferSlot", i32 -1}
!160 = !{!"inlineConstantBufferOffset", i32 -1}
!161 = !{!"inlineConstantBufferGRFOffset", i32 -1}
!162 = !{!"constants"}
!163 = !{!"inputs"}
!164 = !{!"constantReg"}
!165 = !{!"simplePushInfoArr", !166, !175, !176, !177}
!166 = !{!"simplePushInfoArrVec[0]", !167, !168, !169, !170, !171, !172, !173, !174}
!167 = !{!"cbIdx", i32 0}
!168 = !{!"pushableAddressGrfOffset", i32 -1}
!169 = !{!"pushableOffsetGrfOffset", i32 -1}
!170 = !{!"offset", i32 0}
!171 = !{!"size", i32 0}
!172 = !{!"isStateless", i1 false}
!173 = !{!"isBindless", i1 false}
!174 = !{!"simplePushLoads"}
!175 = !{!"simplePushInfoArrVec[1]", !167, !168, !169, !170, !171, !172, !173, !174}
!176 = !{!"simplePushInfoArrVec[2]", !167, !168, !169, !170, !171, !172, !173, !174}
!177 = !{!"simplePushInfoArrVec[3]", !167, !168, !169, !170, !171, !172, !173, !174}
!178 = !{!"simplePushBufferUsed", i32 0}
!179 = !{!"pushAnalysisWIInfos"}
!180 = !{!"inlineRTGlobalPtrOffset", i32 0}
!181 = !{!"rtSyncSurfPtrOffset", i32 0}
!182 = !{!"psInfo", !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!183 = !{!"BlendStateDisabledMask", i8 0}
!184 = !{!"SkipSrc0Alpha", i1 false}
!185 = !{!"DualSourceBlendingDisabled", i1 false}
!186 = !{!"ForceEnableSimd32", i1 false}
!187 = !{!"outputDepth", i1 false}
!188 = !{!"outputStencil", i1 false}
!189 = !{!"outputMask", i1 false}
!190 = !{!"blendToFillEnabled", i1 false}
!191 = !{!"forceEarlyZ", i1 false}
!192 = !{!"hasVersionedLoop", i1 false}
!193 = !{!"forceSingleSourceRTWAfterDualSourceRTW", i1 false}
!194 = !{!"NumSamples", i8 0}
!195 = !{!"blendOptimizationMode"}
!196 = !{!"colorOutputMask"}
!197 = !{!"WaDisableVRS", i1 false}
!198 = !{!"csInfo", !199, !200, !201, !202, !203, !11, !12, !204, !205, !206, !207, !208, !209, !40, !210}
!199 = !{!"maxWorkGroupSize", i32 0}
!200 = !{!"waveSize", i32 0}
!201 = !{!"ComputeShaderSecondCompile"}
!202 = !{!"forcedSIMDSize", i8 0}
!203 = !{!"forceTotalGRFNum", i32 0}
!204 = !{!"allowLowerSimd", i1 false}
!205 = !{!"forcedVISAPreRAScheduler", i1 false}
!206 = !{!"disableLocalIdOrderOptimizations", i1 false}
!207 = !{!"disableDispatchAlongY", i1 false}
!208 = !{!"neededThreadIdLayout", i1* null}
!209 = !{!"forceTileYWalk", i1 false}
!210 = !{!"ResForHfPacking"}
!211 = !{!"msInfo", !212, !213, !214, !215, !216, !217, !218, !219, !220}
!212 = !{!"PrimitiveTopology", i32 3}
!213 = !{!"MaxNumOfPrimitives", i32 0}
!214 = !{!"MaxNumOfVertices", i32 0}
!215 = !{!"MaxNumOfPerPrimitiveOutputs", i32 0}
!216 = !{!"MaxNumOfPerVertexOutputs", i32 0}
!217 = !{!"WorkGroupSize", i32 0}
!218 = !{!"WorkGroupMemorySizeInBytes", i32 0}
!219 = !{!"IndexFormat", i32 6}
!220 = !{!"SubgroupSize", i32 0}
!221 = !{!"taskInfo", !222, !217, !218, !220}
!222 = !{!"MaxNumOfOutputs", i32 0}
!223 = !{!"NBarrierCnt", i32 0}
!224 = !{!"rtInfo", !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!225 = !{!"RayQueryAllocSizeInBytes", i32 0}
!226 = !{!"NumContinuations", i32 0}
!227 = !{!"RTAsyncStackAddrspace", i32 -1}
!228 = !{!"RTAsyncStackSurfaceStateOffset", i1* null}
!229 = !{!"SWHotZoneAddrspace", i32 -1}
!230 = !{!"SWHotZoneSurfaceStateOffset", i1* null}
!231 = !{!"SWStackAddrspace", i32 -1}
!232 = !{!"SWStackSurfaceStateOffset", i1* null}
!233 = !{!"RTSyncStackAddrspace", i32 -1}
!234 = !{!"RTSyncStackSurfaceStateOffset", i1* null}
!235 = !{!"CurUniqueIndirectIdx", i32 0}
!236 = !{!"inlineDynTextures"}
!237 = !{!"inlineResInfoData"}
!238 = !{!"immConstant", !239, !240, !241}
!239 = !{!"data"}
!240 = !{!"sizes"}
!241 = !{!"zeroIdxs"}
!242 = !{!"stringConstants"}
!243 = !{!"inlineConstantBuffers"}
!244 = !{!"inlineGlobalBuffers"}
!245 = !{!"GlobalPointerProgramBinaryInfos"}
!246 = !{!"ConstantPointerProgramBinaryInfos"}
!247 = !{!"GlobalBufferAddressRelocInfo"}
!248 = !{!"ConstantBufferAddressRelocInfo"}
!249 = !{!"forceLscCacheList"}
!250 = !{!"SrvMap"}
!251 = !{!"RasterizerOrderedByteAddressBuffer"}
!252 = !{!"MinNOSPushConstantSize", i32 0}
!253 = !{!"inlineProgramScopeOffsets"}
!254 = !{!"shaderData", !255}
!255 = !{!"numReplicas", i32 0}
!256 = !{!"URBInfo", !257, !258, !259}
!257 = !{!"has64BVertexHeaderInput", i1 false}
!258 = !{!"has64BVertexHeaderOutput", i1 false}
!259 = !{!"hasVertexHeader", i1 true}
!260 = !{!"UseBindlessImage", i1 false}
!261 = !{!"enableRangeReduce", i1 false}
!262 = !{!"allowMatchMadOptimizationforVS", i1 false}
!263 = !{!"disableMemOptforNegativeOffsetLoads", i1 false}
!264 = !{!"enableThreeWayLoadSpiltOpt", i1 false}
!265 = !{!"statefulResourcesNotAliased", i1 false}
!266 = !{!"disableMixMode", i1 false}
!267 = !{!"PrivateMemoryPerFG"}
!268 = !{!"capabilities", !269}
!269 = !{!"globalVariableDecorationsINTEL", i1 false}
!270 = !{!"m_ShaderResourceViewMcsMask", !271, !272}
!271 = !{!"m_ShaderResourceViewMcsMaskVec[0]", i64 0}
!272 = !{!"m_ShaderResourceViewMcsMaskVec[1]", i64 0}
!273 = !{!"computedDepthMode", i32 0}
!274 = !{!"isHDCFastClearShader", i1 false}
!275 = !{void (float addrspace(3)*, float addrspace(1)*, float addrspace(1)*, <8 x i32>, <8 x i32>, i16, i16, i16, i32, i32)* @_ZTSZZ4mainENKUlRT_E_clIN4sycl3_V17handlerEEEDaS0_EUlNS4_7nd_itemILi3EEEE_, !276}
!276 = !{!277, !278, !288}
!277 = !{!"function_type", i32 0}
!278 = !{!"implicit_arg_desc", !279, !280, !281, !282, !283, !284, !286}
!279 = !{i32 0}
!280 = !{i32 1}
!281 = !{i32 7}
!282 = !{i32 8}
!283 = !{i32 9}
!284 = !{i32 14, !285}
!285 = !{!"explicit_arg_num", i32 1}
!286 = !{i32 14, !287}
!287 = !{!"explicit_arg_num", i32 2}
!288 = !{!"sub_group_size", i32 32}
!289 = !{i32 2, i32 0}
!290 = !{!"clang version 11.1.0"}
!291 = !{i32 1, !"wchar_size", i32 4}
