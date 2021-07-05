; ModuleID = '/home/caohy168/Work/apsk_mdem/apskdemod/apskdemod/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly noinline
define void @apatb_apskdemod_ir(i32* %demod_datout, float* %demodi, float* %demodq) local_unnamed_addr #0 {
entry:
  %demod_datout_copy = alloca [340 x i32], align 512
  %demodi_copy = alloca [340 x float], align 512
  %demodq_copy = alloca [340 x float], align 512
  %0 = bitcast i32* %demod_datout to [340 x i32]*
  %1 = bitcast float* %demodi to [340 x float]*
  %2 = bitcast float* %demodq to [340 x float]*
  call fastcc void @copy_in([340 x i32]* %0, [340 x i32]* nonnull align 512 %demod_datout_copy, [340 x float]* %1, [340 x float]* nonnull align 512 %demodi_copy, [340 x float]* %2, [340 x float]* nonnull align 512 %demodq_copy)
  %3 = getelementptr inbounds [340 x i32], [340 x i32]* %demod_datout_copy, i32 0, i32 0
  %4 = getelementptr inbounds [340 x float], [340 x float]* %demodi_copy, i32 0, i32 0
  %5 = getelementptr inbounds [340 x float], [340 x float]* %demodq_copy, i32 0, i32 0
  call void @apatb_apskdemod_hw(i32* %3, float* %4, float* %5)
  call fastcc void @copy_out([340 x i32]* %0, [340 x i32]* nonnull align 512 %demod_datout_copy, [340 x float]* %1, [340 x float]* nonnull align 512 %demodi_copy, [340 x float]* %2, [340 x float]* nonnull align 512 %demodq_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([340 x i32]* readonly, [340 x i32]* noalias align 512, [340 x float]* readonly, [340 x float]* noalias align 512, [340 x float]* readonly, [340 x float]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a340i32([340 x i32]* align 512 %1, [340 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a340f32([340 x float]* align 512 %3, [340 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a340f32([340 x float]* align 512 %5, [340 x float]* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a340i32([340 x i32]* noalias align 512, [340 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [340 x i32]* %0, null
  %3 = icmp eq [340 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [340 x i32], [340 x i32]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i32* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [340 x i32], [340 x i32]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i32* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 340
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a340f32([340 x float]* noalias align 512, [340 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [340 x float]* %0, null
  %3 = icmp eq [340 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [340 x float], [340 x float]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast float* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [340 x float], [340 x float]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast float* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 340
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([340 x i32]*, [340 x i32]* noalias readonly align 512, [340 x float]*, [340 x float]* noalias readonly align 512, [340 x float]*, [340 x float]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a340i32([340 x i32]* %0, [340 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a340f32([340 x float]* %2, [340 x float]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a340f32([340 x float]* %4, [340 x float]* align 512 %5)
  ret void
}

declare void @apatb_apskdemod_hw(i32*, float*, float*)

define void @apskdemod_hw_stub_wrapper(i32*, float*, float*) #5 {
entry:
  %3 = bitcast i32* %0 to [340 x i32]*
  %4 = bitcast float* %1 to [340 x float]*
  %5 = bitcast float* %2 to [340 x float]*
  call void @copy_out([340 x i32]* null, [340 x i32]* %3, [340 x float]* null, [340 x float]* %4, [340 x float]* null, [340 x float]* %5)
  %6 = bitcast [340 x i32]* %3 to i32*
  %7 = bitcast [340 x float]* %4 to float*
  %8 = bitcast [340 x float]* %5 to float*
  call void @apskdemod_hw_stub(i32* %6, float* %7, float* %8)
  call void @copy_in([340 x i32]* null, [340 x i32]* %3, [340 x float]* null, [340 x float]* %4, [340 x float]* null, [340 x float]* %5)
  ret void
}

declare void @apskdemod_hw_stub(i32*, float*, float*)

attributes #0 = { argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
