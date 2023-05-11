; ------------------------------------------------
; OCL_asmafa19d47b3517d1c_beforeUnification.ll
; ------------------------------------------------
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

; Function Attrs: nounwind
define spir_kernel void @_ZTSZZ4mainENKUlRT_E_clIN4sycl3_V17handlerEEEDaS0_EUlNS4_7nd_itemILi3EEEE_(float addrspace(3)* %0, float addrspace(1)* %1, float addrspace(1)* %2) #0 {
  call spir_func void @__itt_offload_wi_start_wrapper() #1
  %4 = call spir_func <3 x i64> @__builtin_spirv_BuiltInLocalInvocationId() #5
  %5 = extractelement <3 x i64> %4, i32 0
  %6 = icmp ult i64 %5, 2147483648
  %i1promo = zext i1 %6 to i8
  %7 = trunc i8 %i1promo to i1
  call void @llvm.assume(i1 %7)
  %8 = shl nuw nsw i64 %5, 1
  %9 = and i64 %8, 510
  %10 = getelementptr inbounds float, float addrspace(1)* %1, i64 %9
  %11 = addrspacecast float addrspace(1)* %10 to float addrspace(4)*
  %12 = load float, float addrspace(4)* %11, align 4
  %13 = getelementptr inbounds float, float addrspace(3)* %0, i64 %9
  %14 = addrspacecast float addrspace(3)* %13 to float addrspace(4)*
  store float %12, float addrspace(4)* %14, align 4
  call spir_func void @__itt_offload_wg_barrier_wrapper() #1
  call spir_func void @__builtin_spirv_OpControlBarrier_i32_i32_i32(i32 2, i32 2, i32 272) #0
  call spir_func void @__itt_offload_wi_resume_wrapper() #1
  %15 = icmp ult i64 %5, 64
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load float, float addrspace(4)* %14, align 4
  %18 = getelementptr inbounds float, float addrspace(1)* %2, i64 %9
  %19 = addrspacecast float addrspace(1)* %18 to float addrspace(4)*
  store float %17, float addrspace(4)* %19, align 4
  br label %20

20:                                               ; preds = %16, %3
  call spir_func void @__itt_offload_wi_finish_wrapper() #1
  ret void
}

; Function Attrs: alwaysinline nounwind
define spir_func void @__itt_offload_wi_start_wrapper() #1 {
  %1 = alloca [3 x i64], align 8
  %2 = icmp eq i8 0, 0
  br i1 %2, label %25, label %3

3:                                                ; preds = %0
  %4 = bitcast [3 x i64]* %1 to i8*
  %5 = bitcast i8* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %5)
  %6 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 0
  %7 = addrspacecast i64* %6 to i64 addrspace(4)*
  %8 = call spir_func <3 x i64> @__builtin_spirv_BuiltInWorkgroupId() #5
  %9 = extractelement <3 x i64> %8, i32 0
  store i64 %9, i64 addrspace(4)* %7, align 8
  %10 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 1
  %11 = addrspacecast i64* %10 to i64 addrspace(4)*
  %12 = extractelement <3 x i64> %8, i32 1
  store i64 %12, i64 addrspace(4)* %11, align 8
  %13 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 2
  %14 = addrspacecast i64* %13 to i64 addrspace(4)*
  %15 = extractelement <3 x i64> %8, i32 2
  store i64 %15, i64 addrspace(4)* %14, align 8
  %16 = call spir_func i64 @__builtin_spirv_BuiltInGlobalLinearId() #5
  %17 = call spir_func <3 x i64> @__builtin_spirv_BuiltInWorkgroupSize() #5
  %18 = extractelement <3 x i64> %17, i32 0
  %19 = extractelement <3 x i64> %17, i32 1
  %20 = mul i64 %18, %19
  %21 = extractelement <3 x i64> %17, i32 2
  %22 = mul i64 %20, %21
  %23 = trunc i64 %22 to i32
  call spir_func void @__itt_offload_wi_start_stub(i64 addrspace(4)* %7, i64 %16, i32 %23) #3
  %24 = bitcast i8* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %24)
  br label %25

25:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind optnone
define spir_func void @__itt_offload_wi_start_stub(i64 addrspace(4)* %0, i64 %1, i32 %2) #3 {
  %4 = alloca i64 addrspace(4)*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = addrspacecast i64 addrspace(4)** %4 to i64 addrspace(4)* addrspace(4)*
  %8 = addrspacecast i64* %5 to i64 addrspace(4)*
  %9 = addrspacecast i32* %6 to i32 addrspace(4)*
  store i64 addrspace(4)* %0, i64 addrspace(4)* addrspace(4)* %7, align 8
  store i64 %1, i64 addrspace(4)* %8, align 8
  store i32 %2, i32 addrspace(4)* %9, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: alwaysinline nounwind
define spir_func void @__itt_offload_wg_barrier_wrapper() #1 {
  %1 = icmp eq i8 0, 0
  br i1 %1, label %3, label %2

2:                                                ; preds = %0
  call spir_func void @__itt_offload_wg_barrier_stub(i64 0) #3
  br label %3

3:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: noinline nounwind optnone
define spir_func void @__itt_offload_wg_barrier_stub(i64 %0) #3 {
  %2 = alloca i64, align 8
  %3 = addrspacecast i64* %2 to i64 addrspace(4)*
  store i64 %0, i64 addrspace(4)* %3, align 8
  ret void
}

; Function Attrs: nounwind
declare spir_func void @__builtin_spirv_OpControlBarrier_i32_i32_i32(i32, i32, i32) #0

; Function Attrs: alwaysinline nounwind
define spir_func void @__itt_offload_wi_resume_wrapper() #1 {
  %1 = alloca [3 x i64], align 8
  %2 = icmp eq i8 0, 0
  br i1 %2, label %18, label %3

3:                                                ; preds = %0
  %4 = bitcast [3 x i64]* %1 to i8*
  %5 = bitcast i8* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %5)
  %6 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 0
  %7 = addrspacecast i64* %6 to i64 addrspace(4)*
  %8 = call spir_func <3 x i64> @__builtin_spirv_BuiltInWorkgroupId() #5
  %9 = extractelement <3 x i64> %8, i32 0
  store i64 %9, i64 addrspace(4)* %7, align 8
  %10 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 1
  %11 = addrspacecast i64* %10 to i64 addrspace(4)*
  %12 = extractelement <3 x i64> %8, i32 1
  store i64 %12, i64 addrspace(4)* %11, align 8
  %13 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 2
  %14 = addrspacecast i64* %13 to i64 addrspace(4)*
  %15 = extractelement <3 x i64> %8, i32 2
  store i64 %15, i64 addrspace(4)* %14, align 8
  %16 = call spir_func i64 @__builtin_spirv_BuiltInGlobalLinearId() #5
  call spir_func void @__itt_offload_wi_resume_stub(i64 addrspace(4)* %7, i64 %16) #3
  %17 = bitcast i8* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %17)
  br label %18

18:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optnone
define spir_func void @__itt_offload_wi_resume_stub(i64 addrspace(4)* %0, i64 %1) #3 {
  %3 = alloca i64 addrspace(4)*, align 8
  %4 = alloca i64, align 8
  %5 = addrspacecast i64 addrspace(4)** %3 to i64 addrspace(4)* addrspace(4)*
  %6 = addrspacecast i64* %4 to i64 addrspace(4)*
  store i64 addrspace(4)* %0, i64 addrspace(4)* addrspace(4)* %5, align 8
  store i64 %1, i64 addrspace(4)* %6, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind
define spir_func void @__itt_offload_wi_finish_wrapper() #1 {
  %1 = alloca [3 x i64], align 8
  %2 = icmp eq i8 0, 0
  br i1 %2, label %18, label %3

3:                                                ; preds = %0
  %4 = bitcast [3 x i64]* %1 to i8*
  %5 = bitcast i8* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %5)
  %6 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 0
  %7 = addrspacecast i64* %6 to i64 addrspace(4)*
  %8 = call spir_func <3 x i64> @__builtin_spirv_BuiltInWorkgroupId() #5
  %9 = extractelement <3 x i64> %8, i32 0
  store i64 %9, i64 addrspace(4)* %7, align 8
  %10 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 1
  %11 = addrspacecast i64* %10 to i64 addrspace(4)*
  %12 = extractelement <3 x i64> %8, i32 1
  store i64 %12, i64 addrspace(4)* %11, align 8
  %13 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 2
  %14 = addrspacecast i64* %13 to i64 addrspace(4)*
  %15 = extractelement <3 x i64> %8, i32 2
  store i64 %15, i64 addrspace(4)* %14, align 8
  %16 = call spir_func i64 @__builtin_spirv_BuiltInGlobalLinearId() #5
  call spir_func void @__itt_offload_wi_finish_stub(i64 addrspace(4)* %7, i64 %16) #3
  %17 = bitcast i8* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %17)
  br label %18

18:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optnone
define spir_func void @__itt_offload_wi_finish_stub(i64 addrspace(4)* %0, i64 %1) #3 {
  %3 = alloca i64 addrspace(4)*, align 8
  %4 = alloca i64, align 8
  %5 = addrspacecast i64 addrspace(4)** %3 to i64 addrspace(4)* addrspace(4)*
  %6 = addrspacecast i64* %4 to i64 addrspace(4)*
  store i64 addrspace(4)* %0, i64 addrspace(4)* addrspace(4)* %5, align 8
  store i64 %1, i64 addrspace(4)* %6, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare spir_func <3 x i64> @__builtin_spirv_BuiltInLocalInvocationId() #5

; Function Attrs: nounwind readnone
declare spir_func <3 x i64> @__builtin_spirv_BuiltInWorkgroupId() #5

; Function Attrs: nounwind readnone
declare spir_func i64 @__builtin_spirv_BuiltInGlobalLinearId() #5

; Function Attrs: nounwind readnone
declare spir_func <3 x i64> @__builtin_spirv_BuiltInWorkgroupSize() #5

attributes #0 = { nounwind }
attributes #1 = { alwaysinline nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noinline nounwind optnone }
attributes #4 = { nounwind willreturn }
attributes #5 = { nounwind readnone }

!opencl.kernels = !{!0}
!IGCMetadata = !{!7}
!opencl.enable.FP_CONTRACT = !{}
!opencl.spir.version = !{!248}
!opencl.ocl.version = !{!248}
!opencl.used.extensions = !{!249}
!opencl.used.optional.core.features = !{!249}
!opencl.compiler.options = !{!249}
!igc.functions = !{}

!0 = !{void (float addrspace(3)*, float addrspace(1)*, float addrspace(1)*)* @_ZTSZZ4mainENKUlRT_E_clIN4sycl3_V17handlerEEEDaS0_EUlNS4_7nd_itemILi3EEEE_, !1, !2, !3, !4, !5, !6}
!1 = !{!"kernel_arg_addr_space", i32 3, i32 1, i32 1}
!2 = !{!"kernel_arg_access_qual", !"none", !"none", !"none"}
!3 = !{!"kernel_arg_type", !"float*", !"float*", !"float*"}
!4 = !{!"kernel_arg_type_qual", !"", !"", !""}
!5 = !{!"kernel_arg_base_type", !"float*", !"float*", !"float*"}
!6 = !{!"intel_reqd_sub_group_size", i32 32}
!7 = !{!"ModuleMD", !8, !9, !67, !125, !155, !171, !184, !194, !196, !197, !208, !209, !210, !211, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !229, !233, !234, !235, !236, !237, !238, !239, !111, !240, !241, !243, !246, !247}
!8 = !{!"isPrecise", i1 false}
!9 = !{!"compOpt", !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!10 = !{!"DenormsAreZero", i1 false}
!11 = !{!"CorrectlyRoundedDivSqrt", i1 false}
!12 = !{!"OptDisable", i1 false}
!13 = !{!"MadEnable", i1 false}
!14 = !{!"NoSignedZeros", i1 false}
!15 = !{!"NoNaNs", i1 false}
!16 = !{!"FloatRoundingMode", i32 0}
!17 = !{!"FloatCvtIntRoundingMode", i32 3}
!18 = !{!"VISAPreSchedRPThreshold", i32 0}
!19 = !{!"SetLoopUnrollThreshold", i32 0}
!20 = !{!"UnsafeMathOptimizations", i1 false}
!21 = !{!"FiniteMathOnly", i1 false}
!22 = !{!"FastRelaxedMath", i1 false}
!23 = !{!"DashGSpecified", i1 false}
!24 = !{!"FastCompilation", i1 false}
!25 = !{!"UseScratchSpacePrivateMemory", i1 true}
!26 = !{!"RelaxedBuiltins", i1 false}
!27 = !{!"SubgroupIndependentForwardProgressRequired", i1 true}
!28 = !{!"GreaterThan2GBBufferRequired", i1 true}
!29 = !{!"GreaterThan4GBBufferRequired", i1 true}
!30 = !{!"DisableA64WA", i1 false}
!31 = !{!"ForceEnableA64WA", i1 false}
!32 = !{!"PushConstantsEnable", i1 true}
!33 = !{!"HasPositivePointerOffset", i1 false}
!34 = !{!"HasBufferOffsetArg", i1 false}
!35 = !{!"BufferOffsetArgOptional", i1 true}
!36 = !{!"HasSubDWAlignedPtrArg", i1 false}
!37 = !{!"replaceGlobalOffsetsByZero", i1 false}
!38 = !{!"forcePixelShaderSIMDMode", i32 0}
!39 = !{!"pixelShaderDoNotAbortOnSpill", i1 false}
!40 = !{!"UniformWGS", i1 false}
!41 = !{!"disableVertexComponentPacking", i1 false}
!42 = !{!"disablePartialVertexComponentPacking", i1 false}
!43 = !{!"PreferBindlessImages", i1 false}
!44 = !{!"UseBindlessMode", i1 false}
!45 = !{!"UseLegacyBindlessMode", i1 true}
!46 = !{!"disableMathRefactoring", i1 false}
!47 = !{!"atomicBranch", i1 false}
!48 = !{!"ForceInt32DivRemEmu", i1 false}
!49 = !{!"ForceInt32DivRemEmuSP", i1 false}
!50 = !{!"ForceMinSimdSizeForFastestCS", i1 false}
!51 = !{!"EnableFastestLinearScan", i1 false}
!52 = !{!"UseStatelessforPrivateMemory", i1 false}
!53 = !{!"EnableTakeGlobalAddress", i1 false}
!54 = !{!"IsLibraryCompilation", i1 false}
!55 = !{!"FastVISACompile", i1 false}
!56 = !{!"MatchSinCosPi", i1 false}
!57 = !{!"ExcludeIRFromZEBinary", i1 false}
!58 = !{!"EmitZeBinVISASections", i1 false}
!59 = !{!"allowDisableRematforCS", i1 false}
!60 = !{!"DisableIncSpillCostAllAddrTaken", i1 false}
!61 = !{!"DisableCPSOmaskWA", i1 false}
!62 = !{!"DisableFastestGopt", i1 false}
!63 = !{!"WaForceHalfPromotion", i1 false}
!64 = !{!"DisableConstantCoalescing", i1 false}
!65 = !{!"EnableUndefAlphaOutputAsRed", i1 true}
!66 = !{!"WaEnableALTModeVisaWA", i1 false}
!67 = !{!"FuncMD", !68, !69}
!68 = !{!"FuncMDMap[0]", void (float addrspace(3)*, float addrspace(1)*, float addrspace(1)*)* @_ZTSZZ4mainENKUlRT_E_clIN4sycl3_V17handlerEEEDaS0_EUlNS4_7nd_itemILi3EEEE_}
!69 = !{!"FuncMDValue[0]", !70, !71, !75, !76, !77, !97, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!70 = !{!"localOffsets"}
!71 = !{!"workGroupWalkOrder", !72, !73, !74}
!72 = !{!"dim0", i32 0}
!73 = !{!"dim1", i32 0}
!74 = !{!"dim2", i32 0}
!75 = !{!"funcArgs"}
!76 = !{!"functionType", !"KernelFunction"}
!77 = !{!"rtInfo", !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !96}
!78 = !{!"callableShaderType", !"NumberOfCallableShaderTypes"}
!79 = !{!"isContinuation", i1 false}
!80 = !{!"hasTraceRayPayload", i1 false}
!81 = !{!"hasHitAttributes", i1 false}
!82 = !{!"hasCallableData", i1 false}
!83 = !{!"ShaderStackSize", i32 0}
!84 = !{!"ShaderHash", i64 0}
!85 = !{!"ShaderName", !""}
!86 = !{!"ParentName", !""}
!87 = !{!"SlotNum", i1* null}
!88 = !{!"NOSSize", i32 0}
!89 = !{!"Entries"}
!90 = !{!"SpillUnions"}
!91 = !{!"CustomHitAttrSizeInBytes", i32 0}
!92 = !{!"Types", !93, !94, !95}
!93 = !{!"FrameStartTys"}
!94 = !{!"ArgumentTys"}
!95 = !{!"FullFrameTys"}
!96 = !{!"Aliases"}
!97 = !{!"resAllocMD", !98, !99, !100, !101, !102}
!98 = !{!"uavsNumType", i32 0}
!99 = !{!"srvsNumType", i32 0}
!100 = !{!"samplersNumType", i32 0}
!101 = !{!"argAllocMDList"}
!102 = !{!"inlineSamplersMD"}
!103 = !{!"maxByteOffsets"}
!104 = !{!"IsInitializer", i1 false}
!105 = !{!"IsFinalizer", i1 false}
!106 = !{!"CompiledSubGroupsNumber", i32 0}
!107 = !{!"hasInlineVmeSamplers", i1 false}
!108 = !{!"localSize", i32 0}
!109 = !{!"localIDPresent", i1 false}
!110 = !{!"groupIDPresent", i1 false}
!111 = !{!"privateMemoryPerWI", i32 0}
!112 = !{!"globalIDPresent", i1 false}
!113 = !{!"hasSyncRTCalls", i1 false}
!114 = !{!"hasNonKernelArgLoad", i1 false}
!115 = !{!"hasNonKernelArgStore", i1 false}
!116 = !{!"hasNonKernelArgAtomic", i1 false}
!117 = !{!"UserAnnotations"}
!118 = !{!"m_OpenCLArgAddressSpaces"}
!119 = !{!"m_OpenCLArgAccessQualifiers"}
!120 = !{!"m_OpenCLArgTypes"}
!121 = !{!"m_OpenCLArgBaseTypes"}
!122 = !{!"m_OpenCLArgTypeQualifiers"}
!123 = !{!"m_OpenCLArgNames"}
!124 = !{!"m_OpenCLArgScalarAsPointers"}
!125 = !{!"pushInfo", !126, !127, !128, !131, !132, !133, !134, !135, !136, !137, !138, !151, !152, !153, !154}
!126 = !{!"pushableAddresses"}
!127 = !{!"bindlessPushInfo"}
!128 = !{!"dynamicBufferInfo", !129, !130}
!129 = !{!"firstIndex", i32 0}
!130 = !{!"numOffsets", i32 0}
!131 = !{!"MaxNumberOfPushedBuffers", i32 0}
!132 = !{!"inlineConstantBufferSlot", i32 -1}
!133 = !{!"inlineConstantBufferOffset", i32 -1}
!134 = !{!"inlineConstantBufferGRFOffset", i32 -1}
!135 = !{!"constants"}
!136 = !{!"inputs"}
!137 = !{!"constantReg"}
!138 = !{!"simplePushInfoArr", !139, !148, !149, !150}
!139 = !{!"simplePushInfoArrVec[0]", !140, !141, !142, !143, !144, !145, !146, !147}
!140 = !{!"cbIdx", i32 0}
!141 = !{!"pushableAddressGrfOffset", i32 -1}
!142 = !{!"pushableOffsetGrfOffset", i32 -1}
!143 = !{!"offset", i32 0}
!144 = !{!"size", i32 0}
!145 = !{!"isStateless", i1 false}
!146 = !{!"isBindless", i1 false}
!147 = !{!"simplePushLoads"}
!148 = !{!"simplePushInfoArrVec[1]", !140, !141, !142, !143, !144, !145, !146, !147}
!149 = !{!"simplePushInfoArrVec[2]", !140, !141, !142, !143, !144, !145, !146, !147}
!150 = !{!"simplePushInfoArrVec[3]", !140, !141, !142, !143, !144, !145, !146, !147}
!151 = !{!"simplePushBufferUsed", i32 0}
!152 = !{!"pushAnalysisWIInfos"}
!153 = !{!"inlineRTGlobalPtrOffset", i32 0}
!154 = !{!"rtSyncSurfPtrOffset", i32 0}
!155 = !{!"psInfo", !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!156 = !{!"BlendStateDisabledMask", i8 0}
!157 = !{!"SkipSrc0Alpha", i1 false}
!158 = !{!"DualSourceBlendingDisabled", i1 false}
!159 = !{!"ForceEnableSimd32", i1 false}
!160 = !{!"outputDepth", i1 false}
!161 = !{!"outputStencil", i1 false}
!162 = !{!"outputMask", i1 false}
!163 = !{!"blendToFillEnabled", i1 false}
!164 = !{!"forceEarlyZ", i1 false}
!165 = !{!"hasVersionedLoop", i1 false}
!166 = !{!"forceSingleSourceRTWAfterDualSourceRTW", i1 false}
!167 = !{!"NumSamples", i8 0}
!168 = !{!"blendOptimizationMode"}
!169 = !{!"colorOutputMask"}
!170 = !{!"WaDisableVRS", i1 false}
!171 = !{!"csInfo", !172, !173, !174, !175, !176, !18, !19, !177, !178, !179, !180, !181, !182, !47, !183}
!172 = !{!"maxWorkGroupSize", i32 0}
!173 = !{!"waveSize", i32 0}
!174 = !{!"ComputeShaderSecondCompile"}
!175 = !{!"forcedSIMDSize", i8 0}
!176 = !{!"forceTotalGRFNum", i32 0}
!177 = !{!"allowLowerSimd", i1 false}
!178 = !{!"forcedVISAPreRAScheduler", i1 false}
!179 = !{!"disableLocalIdOrderOptimizations", i1 false}
!180 = !{!"disableDispatchAlongY", i1 false}
!181 = !{!"neededThreadIdLayout", i1* null}
!182 = !{!"forceTileYWalk", i1 false}
!183 = !{!"ResForHfPacking"}
!184 = !{!"msInfo", !185, !186, !187, !188, !189, !190, !191, !192, !193}
!185 = !{!"PrimitiveTopology", i32 3}
!186 = !{!"MaxNumOfPrimitives", i32 0}
!187 = !{!"MaxNumOfVertices", i32 0}
!188 = !{!"MaxNumOfPerPrimitiveOutputs", i32 0}
!189 = !{!"MaxNumOfPerVertexOutputs", i32 0}
!190 = !{!"WorkGroupSize", i32 0}
!191 = !{!"WorkGroupMemorySizeInBytes", i32 0}
!192 = !{!"IndexFormat", i32 6}
!193 = !{!"SubgroupSize", i32 0}
!194 = !{!"taskInfo", !195, !190, !191, !193}
!195 = !{!"MaxNumOfOutputs", i32 0}
!196 = !{!"NBarrierCnt", i32 0}
!197 = !{!"rtInfo", !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!198 = !{!"RayQueryAllocSizeInBytes", i32 0}
!199 = !{!"NumContinuations", i32 0}
!200 = !{!"RTAsyncStackAddrspace", i32 -1}
!201 = !{!"RTAsyncStackSurfaceStateOffset", i1* null}
!202 = !{!"SWHotZoneAddrspace", i32 -1}
!203 = !{!"SWHotZoneSurfaceStateOffset", i1* null}
!204 = !{!"SWStackAddrspace", i32 -1}
!205 = !{!"SWStackSurfaceStateOffset", i1* null}
!206 = !{!"RTSyncStackAddrspace", i32 -1}
!207 = !{!"RTSyncStackSurfaceStateOffset", i1* null}
!208 = !{!"CurUniqueIndirectIdx", i32 0}
!209 = !{!"inlineDynTextures"}
!210 = !{!"inlineResInfoData"}
!211 = !{!"immConstant", !212, !213, !214}
!212 = !{!"data"}
!213 = !{!"sizes"}
!214 = !{!"zeroIdxs"}
!215 = !{!"stringConstants"}
!216 = !{!"inlineConstantBuffers"}
!217 = !{!"inlineGlobalBuffers"}
!218 = !{!"GlobalPointerProgramBinaryInfos"}
!219 = !{!"ConstantPointerProgramBinaryInfos"}
!220 = !{!"GlobalBufferAddressRelocInfo"}
!221 = !{!"ConstantBufferAddressRelocInfo"}
!222 = !{!"forceLscCacheList"}
!223 = !{!"SrvMap"}
!224 = !{!"RasterizerOrderedByteAddressBuffer"}
!225 = !{!"MinNOSPushConstantSize", i32 0}
!226 = !{!"inlineProgramScopeOffsets"}
!227 = !{!"shaderData", !228}
!228 = !{!"numReplicas", i32 0}
!229 = !{!"URBInfo", !230, !231, !232}
!230 = !{!"has64BVertexHeaderInput", i1 false}
!231 = !{!"has64BVertexHeaderOutput", i1 false}
!232 = !{!"hasVertexHeader", i1 true}
!233 = !{!"UseBindlessImage", i1 false}
!234 = !{!"enableRangeReduce", i1 false}
!235 = !{!"allowMatchMadOptimizationforVS", i1 false}
!236 = !{!"disableMemOptforNegativeOffsetLoads", i1 false}
!237 = !{!"enableThreeWayLoadSpiltOpt", i1 false}
!238 = !{!"statefulResourcesNotAliased", i1 false}
!239 = !{!"disableMixMode", i1 false}
!240 = !{!"PrivateMemoryPerFG"}
!241 = !{!"capabilities", !242}
!242 = !{!"globalVariableDecorationsINTEL", i1 false}
!243 = !{!"m_ShaderResourceViewMcsMask", !244, !245}
!244 = !{!"m_ShaderResourceViewMcsMaskVec[0]", i64 0}
!245 = !{!"m_ShaderResourceViewMcsMaskVec[1]", i64 0}
!246 = !{!"computedDepthMode", i32 0}
!247 = !{!"isHDCFastClearShader", i1 false}
!248 = !{i32 1, i32 0}
!249 = !{}
