; ------------------------------------------------
; OCL_asmafa19d47b3517d1c_simd32_entry_0001.visa.ll
; ------------------------------------------------
; Function Attrs: convergent nounwind
define spir_kernel void @_ZTSZZ4mainENKUlRT_E_clIN4sycl3_V17handlerEEEDaS0_EUlNS4_7nd_itemILi3EEEE_(float addrspace(3)* nocapture readnone %0, float addrspace(1)* nocapture readonly %1, float addrspace(1)* nocapture %2, <8 x i32> %r0, <8 x i32> %payloadHeader, i16 %localIdX, i16 %localIdY, i16 %localIdZ, i32 %bufferOffset, i32 %bufferOffset1) #0 {
; BB0 :
  %4 = zext i16 %localIdX to i32		; visa id: 2
  %5 = shl i32 %4, 1		; visa id: 4
  %6 = and i32 %5, 510		; visa id: 6
  %7 = shl nuw nsw i32 %6, 2		; visa id: 8
  %8 = inttoptr i32 %7 to i32 addrspace(131072)*		; visa id: 10
  %9 = load i32, i32 addrspace(131072)* %8, align 8		; visa id: 10
  %conv.i.i.tr = zext i16 %localIdX to i32		; visa id: 14
  %10 = shl nuw nsw i32 %conv.i.i.tr, 3		; visa id: 16
  %11 = and i32 %10, 2040		; visa id: 18
  %12 = inttoptr i32 %11 to i32 addrspace(3)*		; visa id: 20
  store i32 %9, i32 addrspace(3)* %12, align 8		; visa id: 20
  call void @llvm.genx.GenISA.memoryfence(i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false)		; visa id: 22
  call void @llvm.genx.GenISA.threadgroupbarrier()		; visa id: 23
  %13 = icmp ult i16 %localIdX, 64		; visa id: 24
  br i1 %13, label %14, label %._crit_edge		; visa id: 26

14:                                               ; preds = %3
; BB1 :
  %15 = load i32, i32 addrspace(3)* %12, align 8		; visa id: 28
  %16 = inttoptr i32 %7 to i32 addrspace(131073)*		; visa id: 30
  store i32 %15, i32 addrspace(131073)* %16, align 8		; visa id: 30
  br label %17		; visa id: 34

._crit_edge:                                      ; preds = %3
; BB:
  br label %17

17:                                               ; preds = %._crit_edge, %14
; BB3 :
  ret void		; visa id: 35
}
