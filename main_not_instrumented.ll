; ModuleID = 'main.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"struct.std::chrono::duration" = type { i64 }
%"struct.std::chrono::duration.0" = type { i64 }
%struct.timespec = type { i64, i64 }
%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%"class.std::allocator" = type { i8 }
%"class.std::thread" = type { %"class.std::thread::id" }
%"class.std::thread::id" = type { i64 }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { %"struct.std::thread::_Impl_base"*, %"class.std::__shared_count" }
%"struct.std::thread::_Impl_base" = type { i32 (...)**, %"class.std::shared_ptr" }
%"class.std::__shared_count" = type { %"class.std::_Sp_counted_base"* }
%"class.std::_Sp_counted_base" = type { i32 (...)**, i32, i32 }
%"class.std::shared_ptr.1" = type { %"class.std::__shared_ptr.2" }
%"class.std::__shared_ptr.2" = type { %"struct.std::thread::_Impl"*, %"class.std::__shared_count" }
%"struct.std::thread::_Impl" = type { %"struct.std::thread::_Impl_base", %"struct.std::_Bind_simple" }
%"struct.std::_Bind_simple" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { void ()* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%"class.std::allocator.4" = type { i8 }
%"struct.std::_Sp_make_shared_tag" = type { i8 }
%"class.__gnu_cxx::new_allocator.5" = type { i8 }
%"class.std::type_info" = type { i32 (...)**, i8* }
%"class.std::allocator.7" = type { i8 }
%"class.std::_Sp_counted_ptr_inplace" = type { %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl" }
%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl" = type { %"struct.__gnu_cxx::__aligned_buffer" }
%"struct.__gnu_cxx::__aligned_buffer" = type { %"union.std::aligned_storage<32, 8>::type" }
%"union.std::aligned_storage<32, 8>::type" = type { [32 x i8] }
%"class.__gnu_cxx::new_allocator.8" = type { i8 }
%"class.std::_Mutex_base" = type { i8 }
%"struct.std::_Sp_ebo_helper" = type { i8 }
%"struct.std::_Tuple_impl.3" = type { i8 }
%"struct.std::_Index_tuple" = type { i8 }

$_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_ = comdat any

$_ZSt4stoiRKSsPmi = comdat any

$_ZNSt6threadC2IRFvvEJEEEOT_DpOT0_ = comdat any

$_ZNSt6threadD2Ev = comdat any

$_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_ = comdat any

$_ZNKSt6thread8joinableEv = comdat any

$_ZSteqNSt6thread2idES0_ = comdat any

$_ZNSt6thread2idC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE = comdat any

$_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE = comdat any

$_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_ = comdat any

$_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv = comdat any

$_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv = comdat any

$_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_ = comdat any

$_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_ = comdat any

$_ZNSt6thread15_M_make_routineISt12_Bind_simpleIFPFvvEvEEEESt10shared_ptrINS_5_ImplIT_EEEOS8_ = comdat any

$_ZSt13__bind_simpleIRFvvEJEENSt19_Bind_simple_helperIT_JDpT0_EE6__typeEOS3_DpOS4_ = comdat any

$_ZSt7forwardIRFvvEEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2INS0_5_ImplISt12_Bind_simpleIFPFvvEvEEEEvEEOS_IT_E = comdat any

$_ZNSt10shared_ptrINSt6thread10_Impl_baseEED2Ev = comdat any

$_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev = comdat any

$_ZSt11make_sharedINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEJS6_EESt10shared_ptrIT_EDpOT0_ = comdat any

$_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE = comdat any

$_ZSt15allocate_sharedINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_EJS6_EESt10shared_ptrIT_ERKT0_DpOT1_ = comdat any

$_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2Ev = comdat any

$_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev = comdat any

$_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2ISaIS7_EJS6_EEESt19_Sp_make_shared_tagRKT_DpOT0_ = comdat any

$_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS7_EJS6_EEESt19_Sp_make_shared_tagRKT_DpOT0_ = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaISB_EJSA_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_ = comdat any

$_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZSt32__enable_shared_from_this_helperILN9__gnu_cxx12_Lock_policyE2EEvRKSt14__shared_countIXT_EEz = comdat any

$_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS7_EERKSaIT_E = comdat any

$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSD_m = comdat any

$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE9constructISC_JKS9_S7_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERSD_PT_DpOSH_ = comdat any

$_ZSt4moveIRKSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEEONSt16remove_referenceIT_E4typeEOSC_ = comdat any

$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERSD_PSC_m = comdat any

$_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE8max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE12_S_constructISC_JKS9_S7_EEENSt9enable_ifIXsr6__and_INSE_18__construct_helperIT_JDpT0_EE4typeEEE5valueEvE4typeERSD_PSJ_DpOSK_ = comdat any

$_ZSt7forwardIKSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEEOT_RNSt16remove_referenceISA_E4typeE = comdat any

$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE9constructISC_JKSA_S8_EEEvPT_DpOT0_ = comdat any

$_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2ERKS7_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS6_EEES8_DpOT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2ERKS9_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES8_ = comdat any

$_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEE9constructIS7_JS6_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS8_PT_DpOSB_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEELb1EEC2ERKS8_ = comdat any

$_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEE12_S_constructIS7_JS6_EEENSt9enable_ifIXsr6__and_INS9_18__construct_helperIT_JDpT0_EE4typeEEE5valueEvE4typeERS8_PSD_DpOSE_ = comdat any

$_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEE9constructIS8_JS7_EEEvPT_DpOT0_ = comdat any

$_ZNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEC2EOS5_ = comdat any

$_ZNSt6thread10_Impl_baseC2Ev = comdat any

$_ZNSt12_Bind_simpleIFPFvvEvEEC2EOS3_ = comdat any

$_ZNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEED2Ev = comdat any

$_ZNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEED0Ev = comdat any

$_ZNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEE6_M_runEv = comdat any

$_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2Ev = comdat any

$_ZNSt6thread10_Impl_baseD2Ev = comdat any

$_ZNSt6thread10_Impl_baseD0Ev = comdat any

$_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2Ev = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev = comdat any

$_ZNSt5tupleIJPFvvEEEC2EOS2_ = comdat any

$_ZNSt11_Tuple_implILm0EJPFvvEEEC2EOS2_ = comdat any

$_ZSt4moveIRSt11_Tuple_implILm1EJEEEONSt16remove_referenceIT_E4typeEOS4_ = comdat any

$_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_tailERS2_ = comdat any

$_ZSt7forwardIPFvvEEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_headERS2_ = comdat any

$_ZNSt10_Head_baseILm0EPFvvELb0EEC2IS1_vEEOT_ = comdat any

$_ZNSt10_Head_baseILm0EPFvvELb0EE7_M_headERS2_ = comdat any

$_ZNSt12_Bind_simpleIFPFvvEvEEclEv = comdat any

$_ZNSt12_Bind_simpleIFPFvvEvEE9_M_invokeIJEEEvSt12_Index_tupleIJXspT_EEE = comdat any

$_ZSt3getILm0EJPFvvEEENSt9__add_refINSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEE4typeERS7_ = comdat any

$_ZSt12__get_helperILm0EPFvvEJEENSt9__add_refIT0_E4typeERSt11_Tuple_implIXT_EJS3_DpT1_EE = comdat any

$_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEE7_M_addrEv = comdat any

$_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEELb1EED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEE7destroyIS7_EEvRS8_PT_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv = comdat any

$_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEE10_S_destroyIS7_EENSt9enable_ifIXsr6__and_INS9_16__destroy_helperIT_E4typeEEE5valueEvE4typeERS8_PSD_ = comdat any

$_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEE7destroyIS8_EEvPT_ = comdat any

$_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEELb1EE6_S_getERS9_ = comdat any

$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE7destroyISC_EEvRSD_PT_ = comdat any

$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE10_S_destroyISC_EENSt9enable_ifIXsr6__and_INSE_16__destroy_helperIT_E4typeEEE5valueEvE4typeERSD_PSI_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE7destroyISC_EEvPT_ = comdat any

$_ZNKSt9type_infoeqERKS_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE10deallocateEPSC_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2Ev = comdat any

$_ZNSt26_Maybe_wrap_member_pointerIPFvvEE9__do_wrapEOS1_ = comdat any

$_ZNSt12_Bind_simpleIFPFvvEvEEC2IJEvEEOS1_DpOT_ = comdat any

$_ZSt4moveIRPFvvEEONSt16remove_referenceIT_E4typeEOS4_ = comdat any

$_ZNSt5tupleIJPFvvEEEC2IJS1_EvEEDpOT_ = comdat any

$_ZNSt11_Tuple_implILm0EJPFvvEEEC2IS1_JEvEEOT_DpOT0_ = comdat any

$_ZSt4moveIRSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEEONSt16remove_referenceIT_E4typeEOSC_ = comdat any

$_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2INS0_5_ImplISt12_Bind_simpleIFPFvvEvEEEEvEEOS_IT_LS3_2EE = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_ = comdat any

$_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv = comdat any

$_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZTISt19_Sp_make_shared_tag = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEE = comdat any

$_ZTSNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEE = comdat any

$_ZTSNSt6thread10_Impl_baseE = comdat any

$_ZTINSt6thread10_Impl_baseE = comdat any

$_ZTINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEE = comdat any

$_ZTVNSt6thread10_Impl_baseE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [8 x i8] c"abcdefg\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"stoi\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat
@_ZTISt19_Sp_make_shared_tag = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @_ZTSSt19_Sp_make_shared_tag, i32 0, i32 0) }, comdat
@_ZTVSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace"*)* @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EED2Ev to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace"*)* @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EED0Ev to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace"*)* @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace"*)* @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv to i8*), i8* bitcast (i8* (%"class.std::_Sp_counted_ptr_inplace"*, %"class.std::type_info"*)* @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info to i8*)], comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTSSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [111 x i8] c"St23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE\00", comdat
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0) }, comdat
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE to i8*) }, comdat
@_ZTISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @_ZTSSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE to i8*) }, comdat
@_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE to i8*), i8* bitcast (void (%"class.std::_Sp_counted_base"*)* @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev to i8*), i8* bitcast (void (%"class.std::_Sp_counted_base"*)* @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%"class.std::_Sp_counted_base"*)* @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)], comdat, align 8
@_ZTVNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEE = linkonce_odr unnamed_addr constant [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEE to i8*), i8* bitcast (void (%"struct.std::thread::_Impl"*)* @_ZNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEED2Ev to i8*), i8* bitcast (void (%"struct.std::thread::_Impl"*)* @_ZNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEED0Ev to i8*), i8* bitcast (void (%"struct.std::thread::_Impl"*)* @_ZNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEE6_M_runEv to i8*)], comdat, align 8
@_ZTSNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEE = linkonce_odr constant [46 x i8] c"NSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEE\00", comdat
@_ZTSNSt6thread10_Impl_baseE = linkonce_odr constant [24 x i8] c"NSt6thread10_Impl_baseE\00", comdat
@_ZTINSt6thread10_Impl_baseE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @_ZTSNSt6thread10_Impl_baseE, i32 0, i32 0) }, comdat
@_ZTINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @_ZTSNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTINSt6thread10_Impl_baseE to i8*) }, comdat
@_ZTVNSt6thread10_Impl_baseE = linkonce_odr unnamed_addr constant [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTINSt6thread10_Impl_baseE to i8*), i8* bitcast (void (%"struct.std::thread::_Impl_base"*)* @_ZNSt6thread10_Impl_baseD2Ev to i8*), i8* bitcast (void (%"struct.std::thread::_Impl_base"*)* @_ZNSt6thread10_Impl_baseD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)], comdat, align 8
@_ZZL18__gthread_active_pvE20__gthread_active_ptr = internal constant i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }]

define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: uwtable
define void @_Z19doesNothingButSleepv() #3 {
entry:
  %ref.tmp = alloca %"struct.std::chrono::duration", align 8
  %ref.tmp1 = alloca i32, align 4
  store i32 1, i32* %ref.tmp1
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_(%"struct.std::chrono::duration"* %ref.tmp, i32* dereferenceable(4) %ref.tmp1)
  call void @_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE(%"struct.std::chrono::duration"* dereferenceable(8) %ref.tmp)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE(%"struct.std::chrono::duration"* dereferenceable(8) %__rtime) #4 comdat {
entry:
  %__rtime.addr = alloca %"struct.std::chrono::duration"*, align 8
  %__s = alloca %"struct.std::chrono::duration", align 8
  %__ns = alloca %"struct.std::chrono::duration.0", align 8
  %ref.tmp = alloca %"struct.std::chrono::duration", align 8
  %__ts = alloca %struct.timespec, align 8
  store %"struct.std::chrono::duration"* %__rtime, %"struct.std::chrono::duration"** %__rtime.addr, align 8
  %0 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__rtime.addr, align 8
  %call = call i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration"* dereferenceable(8) %0)
  %coerce.dive = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %__s, i32 0, i32 0
  store i64 %call, i64* %coerce.dive
  %1 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__rtime.addr, align 8
  %call1 = call i64 @_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%"struct.std::chrono::duration"* dereferenceable(8) %1, %"struct.std::chrono::duration"* dereferenceable(8) %__s)
  %coerce.dive2 = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %ref.tmp, i32 0, i32 0
  store i64 %call1, i64* %coerce.dive2
  %call3 = call i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration"* dereferenceable(8) %ref.tmp)
  %coerce.dive4 = getelementptr %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %__ns, i32 0, i32 0
  store i64 %call3, i64* %coerce.dive4
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %__ts, i32 0, i32 0
  %call5 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %__s)
  store i64 %call5, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %__ts, i32 0, i32 1
  %call6 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%"struct.std::chrono::duration.0"* %__ns)
  store i64 %call6, i64* %tv_nsec, align 8
  %call7 = call i32 @nanosleep(%struct.timespec* %__ts, %struct.timespec* null)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_(%"struct.std::chrono::duration"* %this, i32* dereferenceable(4) %__rep) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration"*, align 8
  %__rep.addr = alloca i32*, align 8
  store %"struct.std::chrono::duration"* %this, %"struct.std::chrono::duration"** %this.addr, align 8
  store i32* %__rep, i32** %__rep.addr, align 8
  %this1 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %this.addr
  %__r = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %__rep.addr, align 8
  %1 = load i32, i32* %0, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %__r, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z12testFunctioniPdS_(i32 %d, double* %S, double* %D) #5 {
entry:
  %d.addr = alloca i32, align 4
  %S.addr = alloca double*, align 8
  %D.addr = alloca double*, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca double, align 8
  %p = alloca i32, align 4
  %j = alloca i32, align 4
  %sum28 = alloca double, align 8
  %p29 = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  store double* %S, double** %S.addr, align 8
  store double* %D, double** %D.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc62, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %d.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end64

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc21, %for.body
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %d.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end23

for.body3:                                        ; preds = %for.cond1
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %p, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %5 = load i32, i32* %p, align 4
  %6 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %d.addr, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, i32* %p, align 4
  %add = add nsw i32 %mul, %9
  %idxprom = sext i32 %add to i64
  %10 = load double*, double** %D.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx, align 8
  %12 = load i32, i32* %p, align 4
  %13 = load i32, i32* %d.addr, align 4
  %mul7 = mul nsw i32 %12, %13
  %14 = load i32, i32* %k, align 4
  %add8 = add nsw i32 %mul7, %14
  %idxprom9 = sext i32 %add8 to i64
  %15 = load double*, double** %D.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %15, i64 %idxprom9
  %16 = load double, double* %arrayidx10, align 8
  %mul11 = fmul double %11, %16
  %17 = load double, double* %sum, align 8
  %add12 = fadd double %17, %mul11
  store double %add12, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %18 = load i32, i32* %p, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %p, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %d.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %21 = load i32, i32* %k, align 4
  %add14 = add nsw i32 %mul13, %21
  %idxprom15 = sext i32 %add14 to i64
  %22 = load double*, double** %S.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %22, i64 %idxprom15
  %23 = load double, double* %arrayidx16, align 8
  %24 = load double, double* %sum, align 8
  %sub = fsub double %23, %24
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %d.addr, align 4
  %mul17 = mul nsw i32 %25, %26
  %27 = load i32, i32* %k, align 4
  %add18 = add nsw i32 %mul17, %27
  %idxprom19 = sext i32 %add18 to i64
  %28 = load double*, double** %D.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %28, i64 %idxprom19
  store double %sub, double* %arrayidx20, align 8
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %29 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %29, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond1

for.end23:                                        ; preds = %for.cond1
  %30 = load i32, i32* %k, align 4
  %add24 = add nsw i32 %30, 1
  store i32 %add24, i32* %j, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc59, %for.end23
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %d.addr, align 4
  %cmp26 = icmp slt i32 %31, %32
  br i1 %cmp26, label %for.body27, label %for.end61

for.body27:                                       ; preds = %for.cond25
  store double 0.000000e+00, double* %sum28, align 8
  store i32 0, i32* %p29, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc43, %for.body27
  %33 = load i32, i32* %p29, align 4
  %34 = load i32, i32* %k, align 4
  %cmp31 = icmp slt i32 %33, %34
  br i1 %cmp31, label %for.body32, label %for.end45

for.body32:                                       ; preds = %for.cond30
  %35 = load i32, i32* %k, align 4
  %36 = load i32, i32* %d.addr, align 4
  %mul33 = mul nsw i32 %35, %36
  %37 = load i32, i32* %p29, align 4
  %add34 = add nsw i32 %mul33, %37
  %idxprom35 = sext i32 %add34 to i64
  %38 = load double*, double** %D.addr, align 8
  %arrayidx36 = getelementptr inbounds double, double* %38, i64 %idxprom35
  %39 = load double, double* %arrayidx36, align 8
  %40 = load i32, i32* %p29, align 4
  %41 = load i32, i32* %d.addr, align 4
  %mul37 = mul nsw i32 %40, %41
  %42 = load i32, i32* %j, align 4
  %add38 = add nsw i32 %mul37, %42
  %idxprom39 = sext i32 %add38 to i64
  %43 = load double*, double** %D.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %43, i64 %idxprom39
  %44 = load double, double* %arrayidx40, align 8
  %mul41 = fmul double %39, %44
  %45 = load double, double* %sum28, align 8
  %add42 = fadd double %45, %mul41
  store double %add42, double* %sum28, align 8
  br label %for.inc43

for.inc43:                                        ; preds = %for.body32
  %46 = load i32, i32* %p29, align 4
  %inc44 = add nsw i32 %46, 1
  store i32 %inc44, i32* %p29, align 4
  br label %for.cond30

for.end45:                                        ; preds = %for.cond30
  %47 = load i32, i32* %k, align 4
  %48 = load i32, i32* %d.addr, align 4
  %mul46 = mul nsw i32 %47, %48
  %49 = load i32, i32* %j, align 4
  %add47 = add nsw i32 %mul46, %49
  %idxprom48 = sext i32 %add47 to i64
  %50 = load double*, double** %S.addr, align 8
  %arrayidx49 = getelementptr inbounds double, double* %50, i64 %idxprom48
  %51 = load double, double* %arrayidx49, align 8
  %52 = load double, double* %sum28, align 8
  %sub50 = fsub double %51, %52
  %53 = load i32, i32* %k, align 4
  %54 = load i32, i32* %d.addr, align 4
  %mul51 = mul nsw i32 %53, %54
  %55 = load i32, i32* %k, align 4
  %add52 = add nsw i32 %mul51, %55
  %idxprom53 = sext i32 %add52 to i64
  %56 = load double*, double** %D.addr, align 8
  %arrayidx54 = getelementptr inbounds double, double* %56, i64 %idxprom53
  %57 = load double, double* %arrayidx54, align 8
  %div = fdiv double %sub50, %57
  %58 = load i32, i32* %k, align 4
  %59 = load i32, i32* %d.addr, align 4
  %mul55 = mul nsw i32 %58, %59
  %60 = load i32, i32* %j, align 4
  %add56 = add nsw i32 %mul55, %60
  %idxprom57 = sext i32 %add56 to i64
  %61 = load double*, double** %D.addr, align 8
  %arrayidx58 = getelementptr inbounds double, double* %61, i64 %idxprom57
  store double %div, double* %arrayidx58, align 8
  br label %for.inc59

for.inc59:                                        ; preds = %for.end45
  %62 = load i32, i32* %j, align 4
  %inc60 = add nsw i32 %62, 1
  store i32 %inc60, i32* %j, align 4
  br label %for.cond25

for.end61:                                        ; preds = %for.cond25
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %63 = load i32, i32* %k, align 4
  %inc63 = add nsw i32 %63, 1
  store i32 %inc63, i32* %k, align 4
  br label %for.cond

for.end64:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %args) #3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %args.addr = alloca i8**, align 8
  %matrixSize = alloca i32, align 4
  %ref.tmp = alloca %"class.std::basic_string", align 8
  %ref.tmp1 = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %S = alloca double*, align 8
  %D = alloca double*, align 8
  %inp = alloca %"class.std::basic_string", align 8
  %ref.tmp7 = alloca %"class.std::allocator", align 1
  %t1 = alloca %"class.std::thread", align 8
  %t2 = alloca %"class.std::thread", align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %args, i8*** %args.addr, align 8
  %0 = load i8**, i8*** %args.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp1) #2
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %ref.tmp, i8* %1, %"class.std::allocator"* dereferenceable(1) %ref.tmp1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i32 @_ZSt4stoiRKSsPmi(%"class.std::basic_string"* dereferenceable(8) %ref.tmp, i64* null, i32 10)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %ref.tmp) #2
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp1) #2
  store i32 %call, i32* %matrixSize, align 4
  %2 = load i32, i32* %matrixSize, align 4
  %3 = load i32, i32* %matrixSize, align 4
  %mul = mul nsw i32 %2, %3
  %4 = sext i32 %mul to i64
  %5 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 8)
  %6 = extractvalue { i64, i1 } %5, 1
  %7 = extractvalue { i64, i1 } %5, 0
  %8 = select i1 %6, i64 -1, i64 %7
  %call4 = call noalias i8* @_Znam(i64 %8) #14
  %9 = bitcast i8* %call4 to double*
  store double* %9, double** %S, align 8
  %10 = load i32, i32* %matrixSize, align 4
  %11 = load i32, i32* %matrixSize, align 4
  %mul5 = mul nsw i32 %10, %11
  %12 = sext i32 %mul5 to i64
  %13 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %12, i64 8)
  %14 = extractvalue { i64, i1 } %13, 1
  %15 = extractvalue { i64, i1 } %13, 0
  %16 = select i1 %14, i64 -1, i64 %15
  %call6 = call noalias i8* @_Znam(i64 %16) #14
  %17 = bitcast i8* %call6 to double*
  store double* %17, double** %D, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp7) #2
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %inp, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp7) #2
  %18 = load i32, i32* %matrixSize, align 4
  %19 = load double*, double** %S, align 8
  %20 = load double*, double** %D, align 8
  invoke void @_Z12testFunctioniPdS_(i32 %18, double* %19, double* %20)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %invoke.cont9
  invoke void @_ZNSt6threadC2IRFvvEJEEEOT_DpOT0_(%"class.std::thread"* %t1, void ()* @_Z19doesNothingButSleepv)
          to label %invoke.cont13 unwind label %lpad11

invoke.cont13:                                    ; preds = %invoke.cont12
  invoke void @_ZNSt6threadC2IRFvvEJEEEOT_DpOT0_(%"class.std::thread"* %t2, void ()* @_Z19doesNothingButSleepv)
          to label %invoke.cont15 unwind label %lpad14

invoke.cont15:                                    ; preds = %invoke.cont13
  invoke void @_ZNSt6thread4joinEv(%"class.std::thread"* %t1)
          to label %invoke.cont17 unwind label %lpad16

invoke.cont17:                                    ; preds = %invoke.cont15
  invoke void @_ZNSt6thread4joinEv(%"class.std::thread"* %t2)
          to label %invoke.cont18 unwind label %lpad16

invoke.cont18:                                    ; preds = %invoke.cont17
  %21 = load double*, double** %S, align 8
  %isnull = icmp eq double* %21, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %invoke.cont18
  %22 = bitcast double* %21 to i8*
  call void @_ZdaPv(i8* %22) #15
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %invoke.cont18
  %23 = load double*, double** %D, align 8
  %isnull19 = icmp eq double* %23, null
  br i1 %isnull19, label %delete.end21, label %delete.notnull20

delete.notnull20:                                 ; preds = %delete.end
  %24 = bitcast double* %23 to i8*
  call void @_ZdaPv(i8* %24) #15
  br label %delete.end21

delete.end21:                                     ; preds = %delete.notnull20, %delete.end
  store i32 0, i32* %retval
  call void @_ZNSt6threadD2Ev(%"class.std::thread"* %t2) #2
  call void @_ZNSt6threadD2Ev(%"class.std::thread"* %t1) #2
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %inp) #2
  %25 = load i32, i32* %retval
  ret i32 %25

lpad:                                             ; preds = %entry
  %26 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %exn.slot
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %ehselector.slot
  br label %ehcleanup

lpad2:                                            ; preds = %invoke.cont
  %29 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %exn.slot
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %ehselector.slot
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %ref.tmp) #2
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad2, %lpad
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp1) #2
  br label %eh.resume

lpad8:                                            ; preds = %invoke.cont3
  %32 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %33 = extractvalue { i8*, i32 } %32, 0
  store i8* %33, i8** %exn.slot
  %34 = extractvalue { i8*, i32 } %32, 1
  store i32 %34, i32* %ehselector.slot
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp7) #2
  br label %eh.resume

lpad11:                                           ; preds = %invoke.cont12, %invoke.cont9
  %35 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %exn.slot
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %ehselector.slot
  br label %ehcleanup24

lpad14:                                           ; preds = %invoke.cont13
  %38 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  store i8* %39, i8** %exn.slot
  %40 = extractvalue { i8*, i32 } %38, 1
  store i32 %40, i32* %ehselector.slot
  br label %ehcleanup23

lpad16:                                           ; preds = %invoke.cont17, %invoke.cont15
  %41 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %42 = extractvalue { i8*, i32 } %41, 0
  store i8* %42, i8** %exn.slot
  %43 = extractvalue { i8*, i32 } %41, 1
  store i32 %43, i32* %ehselector.slot
  call void @_ZNSt6threadD2Ev(%"class.std::thread"* %t2) #2
  br label %ehcleanup23

ehcleanup23:                                      ; preds = %lpad16, %lpad14
  call void @_ZNSt6threadD2Ev(%"class.std::thread"* %t1) #2
  br label %ehcleanup24

ehcleanup24:                                      ; preds = %ehcleanup23, %lpad11
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %inp) #2
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup24, %lpad8, %ehcleanup
  %exn = load i8*, i8** %exn.slot
  %sel = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val25 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val25
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32 @_ZSt4stoiRKSsPmi(%"class.std::basic_string"* dereferenceable(8) %__str, i64* %__idx, i32 %__base) #4 comdat {
entry:
  %__str.addr = alloca %"class.std::basic_string"*, align 8
  %__idx.addr = alloca i64*, align 8
  %__base.addr = alloca i32, align 4
  store %"class.std::basic_string"* %__str, %"class.std::basic_string"** %__str.addr, align 8
  store i64* %__idx, i64** %__idx.addr, align 8
  store i32 %__base, i32* %__base.addr, align 4
  %0 = load %"class.std::basic_string"*, %"class.std::basic_string"** %__str.addr, align 8
  %call = call i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* %0) #2
  %1 = load i64*, i64** %__idx.addr, align 8
  %2 = load i32, i32* %__base.addr, align 4
  %call1 = call i32 @_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_(i64 (i8*, i8**, i32)* @strtol, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str1, i32 0, i32 0), i8* %call, i64* %1, i32 %2)
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"*) #1

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"*, i8*, %"class.std::allocator"* dereferenceable(1)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNSsD1Ev(%"class.std::basic_string"*) #1

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"*) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #7

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6threadC2IRFvvEJEEEOT_DpOT0_(%"class.std::thread"* %this, void ()* %__f) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %__f.addr = alloca void ()*, align 8
  %agg.tmp = alloca %"class.std::shared_ptr", align 8
  %ref.tmp = alloca %"class.std::shared_ptr.1", align 8
  %ref.tmp2 = alloca %"struct.std::_Bind_simple", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  store void ()* %__f, void ()** %__f.addr, align 8
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0
  call void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* %_M_id) #2
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 (i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*)* @pthread_create) #2, !srcloc !1
  %0 = load void ()*, void ()** %__f.addr, align 8
  %call = call void ()* @_ZSt7forwardIRFvvEEOT_RNSt16remove_referenceIS2_E4typeE(void ()* %0) #2
  %call3 = call void ()* @_ZSt13__bind_simpleIRFvvEJEENSt19_Bind_simple_helperIT_JDpT0_EE6__typeEOS3_DpOS4_(void ()* %call)
  %coerce.dive = getelementptr %"struct.std::_Bind_simple", %"struct.std::_Bind_simple"* %ref.tmp2, i32 0, i32 0
  %coerce.dive4 = getelementptr %"class.std::tuple", %"class.std::tuple"* %coerce.dive, i32 0, i32 0
  %coerce.dive5 = getelementptr %"struct.std::_Tuple_impl", %"struct.std::_Tuple_impl"* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr %"struct.std::_Head_base", %"struct.std::_Head_base"* %coerce.dive5, i32 0, i32 0
  store void ()* %call3, void ()** %coerce.dive6
  call void @_ZNSt6thread15_M_make_routineISt12_Bind_simpleIFPFvvEvEEEESt10shared_ptrINS_5_ImplIT_EEEOS8_(%"class.std::shared_ptr.1"* sret %ref.tmp, %"class.std::thread"* %this1, %"struct.std::_Bind_simple"* dereferenceable(8) %ref.tmp2)
  call void @_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2INS0_5_ImplISt12_Bind_simpleIFPFvvEvEEEEvEEOS_IT_E(%"class.std::shared_ptr"* %agg.tmp, %"class.std::shared_ptr.1"* dereferenceable(16) %ref.tmp) #2
  invoke void @_ZNSt6thread15_M_start_threadESt10shared_ptrINS_10_Impl_baseEE(%"class.std::thread"* %this1, %"class.std::shared_ptr"* %agg.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt10shared_ptrINSt6thread10_Impl_baseEED2Ev(%"class.std::shared_ptr"* %agg.tmp) #2
  call void @_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev(%"class.std::shared_ptr.1"* %ref.tmp) #2
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot
  call void @_ZNSt10shared_ptrINSt6thread10_Impl_baseEED2Ev(%"class.std::shared_ptr"* %agg.tmp) #2
  call void @_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev(%"class.std::shared_ptr.1"* %ref.tmp) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot
  %sel = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

declare void @_ZNSt6thread4joinEv(%"class.std::thread"*) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #8

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6threadD2Ev(%"class.std::thread"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr
  %call = call zeroext i1 @_ZNKSt6thread8joinableEv(%"class.std::thread"* %this1) #2
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt9terminatev() #16
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_(i64 (i8*, i8**, i32)* %__convf, i8* %__name, i8* %__str, i64* %__idx, i32 %__base) #3 comdat {
entry:
  %__convf.addr = alloca i64 (i8*, i8**, i32)*, align 8
  %__name.addr = alloca i8*, align 8
  %__str.addr = alloca i8*, align 8
  %__idx.addr = alloca i64*, align 8
  %__base.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__endptr = alloca i8*, align 8
  %__tmp = alloca i64, align 8
  store i64 (i8*, i8**, i32)* %__convf, i64 (i8*, i8**, i32)** %__convf.addr, align 8
  store i8* %__name, i8** %__name.addr, align 8
  store i8* %__str, i8** %__str.addr, align 8
  store i64* %__idx, i64** %__idx.addr, align 8
  store i32 %__base, i32* %__base.addr, align 4
  %call = call i32* @__errno_location() #6
  store i32 0, i32* %call, align 4
  %0 = load i64 (i8*, i8**, i32)*, i64 (i8*, i8**, i32)** %__convf.addr, align 8
  %1 = load i8*, i8** %__str.addr, align 8
  %2 = load i32, i32* %__base.addr, align 4
  %call1 = call i64 %0(i8* %1, i8** %__endptr, i32 %2)
  store i64 %call1, i64* %__tmp, align 8
  %3 = load i8*, i8** %__endptr, align 8
  %4 = load i8*, i8** %__str.addr, align 8
  %cmp = icmp eq i8* %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %__name.addr, align 8
  call void @_ZSt24__throw_invalid_argumentPKc(i8* %5) #17
  unreachable

if.else:                                          ; preds = %entry
  %call2 = call i32* @__errno_location() #6
  %6 = load i32, i32* %call2, align 4
  %cmp3 = icmp eq i32 %6, 34
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %7 = load i64, i64* %__tmp, align 8
  %cmp4 = icmp slt i64 %7, -2147483648
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %8 = load i64, i64* %__tmp, align 8
  %cmp6 = icmp sgt i64 %8, 2147483647
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.else
  %9 = load i8*, i8** %__name.addr, align 8
  call void @_ZSt20__throw_out_of_rangePKc(i8* %9) #17
  unreachable

if.else8:                                         ; preds = %lor.lhs.false5
  %10 = load i64, i64* %__tmp, align 8
  %conv = trunc i64 %10 to i32
  store i32 %conv, i32* %__ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else8
  br label %if.end9

if.end9:                                          ; preds = %if.end
  %11 = load i64*, i64** %__idx.addr, align 8
  %tobool = icmp ne i64* %11, null
  br i1 %tobool, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end9
  %12 = load i8*, i8** %__endptr, align 8
  %13 = load i8*, i8** %__str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %14 = load i64*, i64** %__idx.addr, align 8
  store i64 %sub.ptr.sub, i64* %14, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end9
  %15 = load i32, i32* %__ret, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #1

; Function Attrs: nounwind
declare i8* @_ZNKSs5c_strEv(%"class.std::basic_string"*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #9

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(i8*) #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(i8*) #10

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt6thread8joinableEv(%"class.std::thread"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %agg.tmp = alloca %"class.std::thread::id", align 8
  %agg.tmp2 = alloca %"class.std::thread::id", align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0
  %0 = bitcast %"class.std::thread::id"* %agg.tmp to i8*
  %1 = bitcast %"class.std::thread::id"* %_M_id to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  call void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* %agg.tmp2) #2
  %coerce.dive = getelementptr %"class.std::thread::id", %"class.std::thread::id"* %agg.tmp, i32 0, i32 0
  %2 = load i64, i64* %coerce.dive
  %coerce.dive3 = getelementptr %"class.std::thread::id", %"class.std::thread::id"* %agg.tmp2, i32 0, i32 0
  %3 = load i64, i64* %coerce.dive3
  %call = call zeroext i1 @_ZSteqNSt6thread2idES0_(i64 %2, i64 %3) #2
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: noreturn nounwind
declare void @_ZSt9terminatev() #11

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZSteqNSt6thread2idES0_(i64 %__x.coerce, i64 %__y.coerce) #5 comdat {
entry:
  %__x = alloca %"class.std::thread::id", align 8
  %__y = alloca %"class.std::thread::id", align 8
  %coerce.dive = getelementptr %"class.std::thread::id", %"class.std::thread::id"* %__x, i32 0, i32 0
  store i64 %__x.coerce, i64* %coerce.dive
  %coerce.dive1 = getelementptr %"class.std::thread::id", %"class.std::thread::id"* %__y, i32 0, i32 0
  store i64 %__y.coerce, i64* %coerce.dive1
  %_M_thread = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__x, i32 0, i32 0
  %0 = load i64, i64* %_M_thread, align 8
  %_M_thread2 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__y, i32 0, i32 0
  %1 = load i64, i64* %_M_thread2, align 8
  %call = invoke i32 @_ZL15__gthread_equalmm(i64 %0, i64 %1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #16
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::thread::id"*, align 8
  store %"class.std::thread::id"* %this, %"class.std::thread::id"** %this.addr, align 8
  %this1 = load %"class.std::thread::id"*, %"class.std::thread::id"** %this.addr
  %_M_thread = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %this1, i32 0, i32 0
  store i64 0, i64* %_M_thread, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_ZL15__gthread_equalmm(i64 %__t1, i64 %__t2) #12 {
entry:
  %__t1.addr = alloca i64, align 8
  %__t2.addr = alloca i64, align 8
  store i64 %__t1, i64* %__t1.addr, align 8
  store i64 %__t2, i64* %__t2.addr, align 8
  %0 = load i64, i64* %__t1.addr, align 8
  %1 = load i64, i64* %__t2.addr, align 8
  %call = call i32 @pthread_equal(i64 %0, i64 %1) #2
  ret i32 %call
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #13 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #16
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

; Function Attrs: nounwind
declare extern_weak i32 @pthread_equal(i64, i64) #1

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration"* dereferenceable(8) %__d) #3 comdat {
entry:
  %retval = alloca %"struct.std::chrono::duration", align 8
  %__d.addr = alloca %"struct.std::chrono::duration"*, align 8
  store %"struct.std::chrono::duration"* %__d, %"struct.std::chrono::duration"** %__d.addr, align 8
  %0 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__d.addr, align 8
  %call = call i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration"* dereferenceable(8) %0)
  %coerce.dive = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %retval, i32 0, i32 0
  store i64 %call, i64* %coerce.dive
  %coerce.dive1 = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %retval, i32 0, i32 0
  %1 = load i64, i64* %coerce.dive1
  ret i64 %1
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration"* dereferenceable(8) %__d) #3 comdat {
entry:
  %retval = alloca %"struct.std::chrono::duration.0", align 8
  %__d.addr = alloca %"struct.std::chrono::duration"*, align 8
  store %"struct.std::chrono::duration"* %__d, %"struct.std::chrono::duration"** %__d.addr, align 8
  %0 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__d.addr, align 8
  %call = call i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration"* dereferenceable(8) %0)
  %coerce.dive = getelementptr %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %retval, i32 0, i32 0
  store i64 %call, i64* %coerce.dive
  %coerce.dive1 = getelementptr %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %retval, i32 0, i32 0
  %1 = load i64, i64* %coerce.dive1
  ret i64 %1
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%"struct.std::chrono::duration"* dereferenceable(8) %__lhs, %"struct.std::chrono::duration"* dereferenceable(8) %__rhs) #3 comdat {
entry:
  %retval = alloca %"struct.std::chrono::duration", align 8
  %__lhs.addr = alloca %"struct.std::chrono::duration"*, align 8
  %__rhs.addr = alloca %"struct.std::chrono::duration"*, align 8
  %ref.tmp = alloca i64, align 8
  %tmp = alloca %"struct.std::chrono::duration", align 8
  %tmp1 = alloca %"struct.std::chrono::duration", align 8
  store %"struct.std::chrono::duration"* %__lhs, %"struct.std::chrono::duration"** %__lhs.addr, align 8
  store %"struct.std::chrono::duration"* %__rhs, %"struct.std::chrono::duration"** %__rhs.addr, align 8
  %0 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__lhs.addr, align 8
  %1 = bitcast %"struct.std::chrono::duration"* %tmp to i8*
  %2 = bitcast %"struct.std::chrono::duration"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %tmp)
  %3 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__rhs.addr, align 8
  %4 = bitcast %"struct.std::chrono::duration"* %tmp1 to i8*
  %5 = bitcast %"struct.std::chrono::duration"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %call2 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %tmp1)
  %sub = sub nsw i64 %call, %call2
  store i64 %sub, i64* %ref.tmp
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_(%"struct.std::chrono::duration"* %retval, i64* dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %retval, i32 0, i32 0
  %6 = load i64, i64* %coerce.dive
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration"*, align 8
  store %"struct.std::chrono::duration"* %this, %"struct.std::chrono::duration"** %this.addr, align 8
  %this1 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %this.addr
  %__r = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %this1, i32 0, i32 0
  %0 = load i64, i64* %__r, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%"struct.std::chrono::duration.0"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration.0"*, align 8
  store %"struct.std::chrono::duration.0"* %this, %"struct.std::chrono::duration.0"** %this.addr, align 8
  %this1 = load %"struct.std::chrono::duration.0"*, %"struct.std::chrono::duration.0"** %this.addr
  %__r = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %this1, i32 0, i32 0
  %0 = load i64, i64* %__r, align 8
  ret i64 %0
}

declare i32 @nanosleep(%struct.timespec*, %struct.timespec*) #0

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration"* dereferenceable(8) %__d) #3 comdat align 2 {
entry:
  %retval = alloca %"struct.std::chrono::duration", align 8
  %__d.addr = alloca %"struct.std::chrono::duration"*, align 8
  %ref.tmp = alloca i64, align 8
  store %"struct.std::chrono::duration"* %__d, %"struct.std::chrono::duration"** %__d.addr, align 8
  %0 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__d.addr, align 8
  %call = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %0)
  store i64 %call, i64* %ref.tmp
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_(%"struct.std::chrono::duration"* %retval, i64* dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %retval, i32 0, i32 0
  %1 = load i64, i64* %coerce.dive
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_(%"struct.std::chrono::duration"* %this, i64* dereferenceable(8) %__rep) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration"*, align 8
  %__rep.addr = alloca i64*, align 8
  store %"struct.std::chrono::duration"* %this, %"struct.std::chrono::duration"** %this.addr, align 8
  store i64* %__rep, i64** %__rep.addr, align 8
  %this1 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %this.addr
  %__r = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %this1, i32 0, i32 0
  %0 = load i64*, i64** %__rep.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %__r, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration"* dereferenceable(8) %__d) #3 comdat align 2 {
entry:
  %retval = alloca %"struct.std::chrono::duration.0", align 8
  %__d.addr = alloca %"struct.std::chrono::duration"*, align 8
  %ref.tmp = alloca i64, align 8
  store %"struct.std::chrono::duration"* %__d, %"struct.std::chrono::duration"** %__d.addr, align 8
  %0 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__d.addr, align 8
  %call = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %0)
  %mul = mul nsw i64 %call, 1000000000
  store i64 %mul, i64* %ref.tmp
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_(%"struct.std::chrono::duration.0"* %retval, i64* dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %retval, i32 0, i32 0
  %1 = load i64, i64* %coerce.dive
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_(%"struct.std::chrono::duration.0"* %this, i64* dereferenceable(8) %__rep) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration.0"*, align 8
  %__rep.addr = alloca i64*, align 8
  store %"struct.std::chrono::duration.0"* %this, %"struct.std::chrono::duration.0"** %this.addr, align 8
  store i64* %__rep, i64** %__rep.addr, align 8
  %this1 = load %"struct.std::chrono::duration.0"*, %"struct.std::chrono::duration.0"** %this.addr
  %__r = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %this1, i32 0, i32 0
  %0 = load i64*, i64** %__rep.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %__r, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare void @_ZNSt6thread15_M_start_threadESt10shared_ptrINS_10_Impl_baseEE(%"class.std::thread"*, %"class.std::shared_ptr"*) #0

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6thread15_M_make_routineISt12_Bind_simpleIFPFvvEvEEEESt10shared_ptrINS_5_ImplIT_EEEOS8_(%"class.std::shared_ptr.1"* noalias sret %agg.result, %"class.std::thread"* %this, %"struct.std::_Bind_simple"* dereferenceable(8) %__f) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %__f.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  store %"struct.std::_Bind_simple"* %__f, %"struct.std::_Bind_simple"** %__f.addr, align 8
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr
  %0 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__f.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %0) #2
  call void @_ZSt11make_sharedINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEJS6_EESt10shared_ptrIT_EDpOT0_(%"class.std::shared_ptr.1"* sret %agg.result, %"struct.std::_Bind_simple"* dereferenceable(8) %call)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void ()* @_ZSt13__bind_simpleIRFvvEJEENSt19_Bind_simple_helperIT_JDpT0_EE6__typeEOS3_DpOS4_(void ()* %__callable) #3 comdat {
entry:
  %retval = alloca %"struct.std::_Bind_simple", align 8
  %__callable.addr = alloca void ()*, align 8
  %ref.tmp = alloca void ()*, align 8
  store void ()* %__callable, void ()** %__callable.addr, align 8
  %0 = load void ()*, void ()** %__callable.addr, align 8
  %call = call void ()* @_ZSt7forwardIRFvvEEOT_RNSt16remove_referenceIS2_E4typeE(void ()* %0) #2
  store void ()* %call, void ()** %ref.tmp
  %call1 = call dereferenceable(8) void ()** @_ZNSt26_Maybe_wrap_member_pointerIPFvvEE9__do_wrapEOS1_(void ()** dereferenceable(8) %ref.tmp)
  call void @_ZNSt12_Bind_simpleIFPFvvEvEEC2IJEvEEOS1_DpOT_(%"struct.std::_Bind_simple"* %retval, void ()** dereferenceable(8) %call1)
  %coerce.dive = getelementptr %"struct.std::_Bind_simple", %"struct.std::_Bind_simple"* %retval, i32 0, i32 0
  %coerce.dive2 = getelementptr %"class.std::tuple", %"class.std::tuple"* %coerce.dive, i32 0, i32 0
  %coerce.dive3 = getelementptr %"struct.std::_Tuple_impl", %"struct.std::_Tuple_impl"* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr %"struct.std::_Head_base", %"struct.std::_Head_base"* %coerce.dive3, i32 0, i32 0
  %1 = load void ()*, void ()** %coerce.dive4
  ret void ()* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void ()* @_ZSt7forwardIRFvvEEOT_RNSt16remove_referenceIS2_E4typeE(void ()* %__t) #5 comdat {
entry:
  %__t.addr = alloca void ()*, align 8
  store void ()* %__t, void ()** %__t.addr, align 8
  %0 = load void ()*, void ()** %__t.addr, align 8
  ret void ()* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2INS0_5_ImplISt12_Bind_simpleIFPFvvEvEEEEvEEOS_IT_E(%"class.std::shared_ptr"* %this, %"class.std::shared_ptr.1"* dereferenceable(16) %__r) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::shared_ptr"*, align 8
  %__r.addr = alloca %"class.std::shared_ptr.1"*, align 8
  store %"class.std::shared_ptr"* %this, %"class.std::shared_ptr"** %this.addr, align 8
  store %"class.std::shared_ptr.1"* %__r, %"class.std::shared_ptr.1"** %__r.addr, align 8
  %this1 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %this.addr
  %0 = bitcast %"class.std::shared_ptr"* %this1 to %"class.std::__shared_ptr"*
  %1 = load %"class.std::shared_ptr.1"*, %"class.std::shared_ptr.1"** %__r.addr, align 8
  %call = call dereferenceable(16) %"class.std::shared_ptr.1"* @_ZSt4moveIRSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEEONSt16remove_referenceIT_E4typeEOSC_(%"class.std::shared_ptr.1"* dereferenceable(16) %1) #2
  %2 = bitcast %"class.std::shared_ptr.1"* %call to %"class.std::__shared_ptr.2"*
  call void @_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2INS0_5_ImplISt12_Bind_simpleIFPFvvEvEEEEvEEOS_IT_LS3_2EE(%"class.std::__shared_ptr"* %0, %"class.std::__shared_ptr.2"* dereferenceable(16) %2) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt10shared_ptrINSt6thread10_Impl_baseEED2Ev(%"class.std::shared_ptr"* %this) unnamed_addr #12 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::shared_ptr"*, align 8
  store %"class.std::shared_ptr"* %this, %"class.std::shared_ptr"** %this.addr, align 8
  %this1 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %this.addr
  %0 = bitcast %"class.std::shared_ptr"* %this1 to %"class.std::__shared_ptr"*
  call void @_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr"* %0) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev(%"class.std::shared_ptr.1"* %this) unnamed_addr #12 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::shared_ptr.1"*, align 8
  store %"class.std::shared_ptr.1"* %this, %"class.std::shared_ptr.1"** %this.addr, align 8
  %this1 = load %"class.std::shared_ptr.1"*, %"class.std::shared_ptr.1"** %this.addr
  %0 = bitcast %"class.std::shared_ptr.1"* %this1 to %"class.std::__shared_ptr.2"*
  call void @_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.2"* %0) #2
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt11make_sharedINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEJS6_EESt10shared_ptrIT_EDpOT0_(%"class.std::shared_ptr.1"* noalias sret %agg.result, %"struct.std::_Bind_simple"* dereferenceable(8) %__args) #4 comdat {
entry:
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %ref.tmp = alloca %"class.std::allocator.4", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  call void @_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2Ev(%"class.std::allocator.4"* %ref.tmp) #2
  %0 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %0) #2
  invoke void @_ZSt15allocate_sharedINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_EJS6_EESt10shared_ptrIT_ERKT0_DpOT1_(%"class.std::shared_ptr.1"* sret %agg.result, %"class.std::allocator.4"* dereferenceable(1) %ref.tmp, %"struct.std::_Bind_simple"* dereferenceable(8) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev(%"class.std::allocator.4"* %ref.tmp) #2
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot
  call void @_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev(%"class.std::allocator.4"* %ref.tmp) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot
  %sel = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val1
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"struct.std::_Bind_simple"* %__t, %"struct.std::_Bind_simple"** %__t.addr, align 8
  %0 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__t.addr, align 8
  ret %"struct.std::_Bind_simple"* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt15allocate_sharedINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_EJS6_EESt10shared_ptrIT_ERKT0_DpOT1_(%"class.std::shared_ptr.1"* noalias sret %agg.result, %"class.std::allocator.4"* dereferenceable(1) %__a, %"struct.std::_Bind_simple"* dereferenceable(8) %__args) #4 comdat {
entry:
  %__a.addr = alloca %"class.std::allocator.4"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %agg.tmp = alloca %"struct.std::_Sp_make_shared_tag", align 1
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %__a.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %0 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__a.addr, align 8
  %1 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %1) #2
  call void @_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2ISaIS7_EJS6_EEESt19_Sp_make_shared_tagRKT_DpOT0_(%"class.std::shared_ptr.1"* %agg.result, %"class.std::allocator.4"* dereferenceable(1) %0, %"struct.std::_Bind_simple"* dereferenceable(8) %call)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2Ev(%"class.std::allocator.4"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %this.addr, align 8
  %this1 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %this.addr
  %0 = bitcast %"class.std::allocator.4"* %this1 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev(%"class.std::allocator.4"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %this.addr, align 8
  %this1 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %this.addr
  %0 = bitcast %"class.std::allocator.4"* %this1 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev(%"class.__gnu_cxx::new_allocator.5"* %0) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2ISaIS7_EJS6_EEESt19_Sp_make_shared_tagRKT_DpOT0_(%"class.std::shared_ptr.1"* %this, %"class.std::allocator.4"* dereferenceable(1) %__a, %"struct.std::_Bind_simple"* dereferenceable(8) %__args) unnamed_addr #3 comdat align 2 {
entry:
  %__tag = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %this.addr = alloca %"class.std::shared_ptr.1"*, align 8
  %__a.addr = alloca %"class.std::allocator.4"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %agg.tmp = alloca %"struct.std::_Sp_make_shared_tag", align 1
  store %"class.std::shared_ptr.1"* %this, %"class.std::shared_ptr.1"** %this.addr, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %__a.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %this1 = load %"class.std::shared_ptr.1"*, %"class.std::shared_ptr.1"** %this.addr
  %0 = bitcast %"class.std::shared_ptr.1"* %this1 to %"class.std::__shared_ptr.2"*
  %1 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__a.addr, align 8
  %2 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %2) #2
  call void @_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS7_EJS6_EEESt19_Sp_make_shared_tagRKT_DpOT0_(%"class.std::__shared_ptr.2"* %0, %"class.std::allocator.4"* dereferenceable(1) %1, %"struct.std::_Bind_simple"* dereferenceable(8) %call)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS7_EJS6_EEESt19_Sp_make_shared_tagRKT_DpOT0_(%"class.std::__shared_ptr.2"* %this, %"class.std::allocator.4"* dereferenceable(1) %__a, %"struct.std::_Bind_simple"* dereferenceable(8) %__args) unnamed_addr #3 comdat align 2 {
entry:
  %__tag = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %this.addr = alloca %"class.std::__shared_ptr.2"*, align 8
  %__a.addr = alloca %"class.std::allocator.4"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %agg.tmp = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %__p = alloca i8*, align 8
  store %"class.std::__shared_ptr.2"* %this, %"class.std::__shared_ptr.2"** %this.addr, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %__a.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %this1 = load %"class.std::__shared_ptr.2"*, %"class.std::__shared_ptr.2"** %this.addr
  %_M_ptr = getelementptr inbounds %"class.std::__shared_ptr.2", %"class.std::__shared_ptr.2"* %this1, i32 0, i32 0
  store %"struct.std::thread::_Impl"* null, %"struct.std::thread::_Impl"** %_M_ptr, align 8
  %_M_refcount = getelementptr inbounds %"class.std::__shared_ptr.2", %"class.std::__shared_ptr.2"* %this1, i32 0, i32 1
  %0 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__a.addr, align 8
  %1 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %1) #2
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaISB_EJSA_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_(%"class.std::__shared_count"* %_M_refcount, %"struct.std::thread::_Impl"* null, %"class.std::allocator.4"* dereferenceable(1) %0, %"struct.std::_Bind_simple"* dereferenceable(8) %call)
  %_M_refcount2 = getelementptr inbounds %"class.std::__shared_ptr.2", %"class.std::__shared_ptr.2"* %this1, i32 0, i32 1
  %call3 = call i8* @_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(%"class.std::__shared_count"* %_M_refcount2, %"class.std::type_info"* dereferenceable(16) bitcast ({ i8*, i8* }* @_ZTISt19_Sp_make_shared_tag to %"class.std::type_info"*)) #2
  store i8* %call3, i8** %__p, align 8
  %2 = load i8*, i8** %__p, align 8
  %3 = bitcast i8* %2 to %"struct.std::thread::_Impl"*
  %_M_ptr4 = getelementptr inbounds %"class.std::__shared_ptr.2", %"class.std::__shared_ptr.2"* %this1, i32 0, i32 0
  store %"struct.std::thread::_Impl"* %3, %"struct.std::thread::_Impl"** %_M_ptr4, align 8
  %_M_refcount5 = getelementptr inbounds %"class.std::__shared_ptr.2", %"class.std::__shared_ptr.2"* %this1, i32 0, i32 1
  %_M_ptr6 = getelementptr inbounds %"class.std::__shared_ptr.2", %"class.std::__shared_ptr.2"* %this1, i32 0, i32 0
  %4 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %_M_ptr6, align 8
  %_M_ptr7 = getelementptr inbounds %"class.std::__shared_ptr.2", %"class.std::__shared_ptr.2"* %this1, i32 0, i32 0
  %5 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %_M_ptr7, align 8
  call void (%"class.std::__shared_count"*, ...) @_ZSt32__enable_shared_from_this_helperILN9__gnu_cxx12_Lock_policyE2EEvRKSt14__shared_countIXT_EEz(%"class.std::__shared_count"* dereferenceable(8) %_M_refcount5, %"struct.std::thread::_Impl"* %4, %"struct.std::thread::_Impl"* %5) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaISB_EJSA_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_(%"class.std::__shared_count"* %this, %"struct.std::thread::_Impl"*, %"class.std::allocator.4"* dereferenceable(1) %__a, %"struct.std::_Bind_simple"* dereferenceable(8) %__args) unnamed_addr #3 comdat align 2 {
entry:
  %1 = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %this.addr = alloca %"class.std::__shared_count"*, align 8
  %.addr = alloca %"struct.std::thread::_Impl"*, align 8
  %__a.addr = alloca %"class.std::allocator.4"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %__a2 = alloca %"class.std::allocator.7", align 1
  %__mem = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__shared_count"* %this, %"class.std::__shared_count"** %this.addr, align 8
  store %"struct.std::thread::_Impl"* %0, %"struct.std::thread::_Impl"** %.addr, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %__a.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %this1 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %this.addr
  %_M_pi = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* null, %"class.std::_Sp_counted_base"** %_M_pi, align 8
  %2 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__a.addr, align 8
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS7_EERKSaIT_E(%"class.std::allocator.7"* %__a2, %"class.std::allocator.4"* dereferenceable(1) %2) #2
  %call = invoke %"class.std::_Sp_counted_ptr_inplace"* @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSD_m(%"class.std::allocator.7"* dereferenceable(1) %__a2, i64 1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %"class.std::_Sp_counted_ptr_inplace"* %call, %"class.std::_Sp_counted_ptr_inplace"** %__mem, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__mem, align 8
  %4 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__a.addr, align 8
  %call2 = call dereferenceable(1) %"class.std::allocator.4"* @_ZSt4moveIRKSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEEONSt16remove_referenceIT_E4typeEOSC_(%"class.std::allocator.4"* dereferenceable(1) %4) #2
  %5 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call3 = call dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %5) #2
  invoke void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE9constructISC_JKS9_S7_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERSD_PT_DpOSH_(%"class.std::allocator.7"* dereferenceable(1) %__a2, %"class.std::_Sp_counted_ptr_inplace"* %3, %"class.std::allocator.4"* dereferenceable(1) %call2, %"struct.std::_Bind_simple"* dereferenceable(8) %call3)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  %6 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__mem, align 8
  %7 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %6 to %"class.std::_Sp_counted_base"*
  %_M_pi6 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* %7, %"class.std::_Sp_counted_base"** %_M_pi6, align 8
  br label %try.cont

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot
  br label %ehcleanup

lpad4:                                            ; preds = %invoke.cont
  %11 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot
  br label %catch

catch:                                            ; preds = %lpad4
  %exn = load i8*, i8** %exn.slot
  %14 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %15 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__mem, align 8
  invoke void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERSD_PSC_m(%"class.std::allocator.7"* dereferenceable(1) %__a2, %"class.std::_Sp_counted_ptr_inplace"* %15, i64 1)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #17
          to label %unreachable unwind label %lpad7

lpad7:                                            ; preds = %invoke.cont8, %catch
  %16 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %exn.slot
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %ehselector.slot
  invoke void @__cxa_end_catch()
          to label %invoke.cont9 unwind label %terminate.lpad

invoke.cont9:                                     ; preds = %lpad7
  br label %ehcleanup

try.cont:                                         ; preds = %invoke.cont5
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev(%"class.std::allocator.7"* %__a2) #2
  ret void

ehcleanup:                                        ; preds = %invoke.cont9, %lpad
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev(%"class.std::allocator.7"* %__a2) #2
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn10 = load i8*, i8** %exn.slot
  %sel = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn10, 0
  %lpad.val11 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val11

terminate.lpad:                                   ; preds = %lpad7
  %19 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  call void @__clang_call_terminate(i8* %20) #16
  unreachable

unreachable:                                      ; preds = %invoke.cont8
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(%"class.std::__shared_count"* %this, %"class.std::type_info"* dereferenceable(16) %__ti) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_count"*, align 8
  %__ti.addr = alloca %"class.std::type_info"*, align 8
  store %"class.std::__shared_count"* %this, %"class.std::__shared_count"** %this.addr, align 8
  store %"class.std::type_info"* %__ti, %"class.std::type_info"** %__ti.addr, align 8
  %this1 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %this.addr
  %_M_pi = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  %0 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %_M_pi, align 8
  %tobool = icmp ne %"class.std::_Sp_counted_base"* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_pi2 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  %1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %_M_pi2, align 8
  %2 = bitcast %"class.std::_Sp_counted_base"* %1 to i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)***
  %vtable = load i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)**, i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)*** %2
  %vfn = getelementptr inbounds i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)*, i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)** %vtable, i64 4
  %3 = load i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)*, i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)** %vfn
  %4 = load %"class.std::type_info"*, %"class.std::type_info"** %__ti.addr, align 8
  %call = call i8* %3(%"class.std::_Sp_counted_base"* %1, %"class.std::type_info"* dereferenceable(16) %4) #2
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  ret i8* %cond
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt32__enable_shared_from_this_helperILN9__gnu_cxx12_Lock_policyE2EEvRKSt14__shared_countIXT_EEz(%"class.std::__shared_count"* dereferenceable(8), ...) #12 comdat {
entry:
  %.addr = alloca %"class.std::__shared_count"*, align 8
  store %"class.std::__shared_count"* %0, %"class.std::__shared_count"** %.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS7_EERKSaIT_E(%"class.std::allocator.7"* %this, %"class.std::allocator.4"* dereferenceable(1)) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.7"*, align 8
  %.addr = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.7"* %this, %"class.std::allocator.7"** %this.addr, align 8
  store %"class.std::allocator.4"* %0, %"class.std::allocator.4"** %.addr, align 8
  %this1 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %this.addr
  %1 = bitcast %"class.std::allocator.7"* %this1 to %"class.__gnu_cxx::new_allocator.8"*
  call void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEEC2Ev(%"class.__gnu_cxx::new_allocator.8"* %1) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::_Sp_counted_ptr_inplace"* @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSD_m(%"class.std::allocator.7"* dereferenceable(1) %__a, i64 %__n) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.7"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.7"* %0 to %"class.__gnu_cxx::new_allocator.8"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"class.std::_Sp_counted_ptr_inplace"* @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.8"* %1, i64 %2, i8* null)
  ret %"class.std::_Sp_counted_ptr_inplace"* %call
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE9constructISC_JKS9_S7_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERSD_PT_DpOSH_(%"class.std::allocator.7"* dereferenceable(1) %__a, %"class.std::_Sp_counted_ptr_inplace"* %__p, %"class.std::allocator.4"* dereferenceable(1) %__args, %"struct.std::_Bind_simple"* dereferenceable(8) %__args1) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.7"*, align 8
  %__p.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %__args.addr = alloca %"class.std::allocator.4"*, align 8
  %__args.addr2 = alloca %"struct.std::_Bind_simple"*, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %__a.addr, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %__p, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  store %"class.std::allocator.4"* %__args, %"class.std::allocator.4"** %__args.addr, align 8
  store %"struct.std::_Bind_simple"* %__args1, %"struct.std::_Bind_simple"** %__args.addr2, align 8
  %0 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %__a.addr, align 8
  %1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  %2 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__args.addr, align 8
  %call = call dereferenceable(1) %"class.std::allocator.4"* @_ZSt7forwardIKSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEEOT_RNSt16remove_referenceISA_E4typeE(%"class.std::allocator.4"* dereferenceable(1) %2) #2
  %3 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr2, align 8
  %call3 = call dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %3) #2
  call void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE12_S_constructISC_JKS9_S7_EEENSt9enable_ifIXsr6__and_INSE_18__construct_helperIT_JDpT0_EE4typeEEE5valueEvE4typeERSD_PSJ_DpOSK_(%"class.std::allocator.7"* dereferenceable(1) %0, %"class.std::_Sp_counted_ptr_inplace"* %1, %"class.std::allocator.4"* dereferenceable(1) %call, %"struct.std::_Bind_simple"* dereferenceable(8) %call3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.4"* @_ZSt4moveIRKSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEEONSt16remove_referenceIT_E4typeEOSC_(%"class.std::allocator.4"* dereferenceable(1) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %__t, %"class.std::allocator.4"** %__t.addr, align 8
  %0 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__t.addr, align 8
  ret %"class.std::allocator.4"* %0
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERSD_PSC_m(%"class.std::allocator.7"* dereferenceable(1) %__a, %"class.std::_Sp_counted_ptr_inplace"* %__p, i64 %__n) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.7"*, align 8
  %__p.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %__a.addr, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %__p, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.7"* %0 to %"class.__gnu_cxx::new_allocator.8"*
  %2 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE10deallocateEPSC_m(%"class.__gnu_cxx::new_allocator.8"* %1, %"class.std::_Sp_counted_ptr_inplace"* %2, i64 %3)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev(%"class.std::allocator.7"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.7"*, align 8
  store %"class.std::allocator.7"* %this, %"class.std::allocator.7"** %this.addr, align 8
  %this1 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %this.addr
  %0 = bitcast %"class.std::allocator.7"* %this1 to %"class.__gnu_cxx::new_allocator.8"*
  call void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEED2Ev(%"class.__gnu_cxx::new_allocator.8"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEEC2Ev(%"class.__gnu_cxx::new_allocator.8"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.8"*, %"class.__gnu_cxx::new_allocator.8"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::_Sp_counted_ptr_inplace"* @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.8"* %this, i64 %__n, i8*) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.8"*, %"class.__gnu_cxx::new_allocator.8"** %this.addr
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.8"* %this1) #2
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 48
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"class.std::_Sp_counted_ptr_inplace"*
  ret %"class.std::_Sp_counted_ptr_inplace"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.8"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.8"*, %"class.__gnu_cxx::new_allocator.8"** %this.addr
  ret i64 384307168202282325
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #7

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE12_S_constructISC_JKS9_S7_EEENSt9enable_ifIXsr6__and_INSE_18__construct_helperIT_JDpT0_EE4typeEEE5valueEvE4typeERSD_PSJ_DpOSK_(%"class.std::allocator.7"* dereferenceable(1) %__a, %"class.std::_Sp_counted_ptr_inplace"* %__p, %"class.std::allocator.4"* dereferenceable(1) %__args, %"struct.std::_Bind_simple"* dereferenceable(8) %__args1) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.7"*, align 8
  %__p.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %__args.addr = alloca %"class.std::allocator.4"*, align 8
  %__args.addr2 = alloca %"struct.std::_Bind_simple"*, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %__a.addr, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %__p, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  store %"class.std::allocator.4"* %__args, %"class.std::allocator.4"** %__args.addr, align 8
  store %"struct.std::_Bind_simple"* %__args1, %"struct.std::_Bind_simple"** %__args.addr2, align 8
  %0 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.7"* %0 to %"class.__gnu_cxx::new_allocator.8"*
  %2 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  %3 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__args.addr, align 8
  %call = call dereferenceable(1) %"class.std::allocator.4"* @_ZSt7forwardIKSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEEOT_RNSt16remove_referenceISA_E4typeE(%"class.std::allocator.4"* dereferenceable(1) %3) #2
  %4 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr2, align 8
  %call3 = call dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %4) #2
  call void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE9constructISC_JKSA_S8_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.8"* %1, %"class.std::_Sp_counted_ptr_inplace"* %2, %"class.std::allocator.4"* dereferenceable(1) %call, %"struct.std::_Bind_simple"* dereferenceable(8) %call3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.4"* @_ZSt7forwardIKSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEEOT_RNSt16remove_referenceISA_E4typeE(%"class.std::allocator.4"* dereferenceable(1) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %__t, %"class.std::allocator.4"** %__t.addr, align 8
  %0 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__t.addr, align 8
  ret %"class.std::allocator.4"* %0
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE9constructISC_JKSA_S8_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.8"* %this, %"class.std::_Sp_counted_ptr_inplace"* %__p, %"class.std::allocator.4"* dereferenceable(1) %__args, %"struct.std::_Bind_simple"* dereferenceable(8) %__args1) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %__p.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %__args.addr = alloca %"class.std::allocator.4"*, align 8
  %__args.addr2 = alloca %"struct.std::_Bind_simple"*, align 8
  %agg.tmp = alloca %"class.std::allocator.4", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %this.addr, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %__p, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  store %"class.std::allocator.4"* %__args, %"class.std::allocator.4"** %__args.addr, align 8
  store %"struct.std::_Bind_simple"* %__args1, %"struct.std::_Bind_simple"** %__args.addr2, align 8
  %this3 = load %"class.__gnu_cxx::new_allocator.8"*, %"class.__gnu_cxx::new_allocator.8"** %this.addr
  %0 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  %1 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %0 to i8*
  %2 = bitcast i8* %1 to %"class.std::_Sp_counted_ptr_inplace"*
  %3 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__args.addr, align 8
  %call = call dereferenceable(1) %"class.std::allocator.4"* @_ZSt7forwardIKSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEEOT_RNSt16remove_referenceISA_E4typeE(%"class.std::allocator.4"* dereferenceable(1) %3) #2
  call void @_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2ERKS7_(%"class.std::allocator.4"* %agg.tmp, %"class.std::allocator.4"* dereferenceable(1) %call) #2
  %4 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr2, align 8
  %call4 = call dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %4) #2
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS6_EEES8_DpOT_(%"class.std::_Sp_counted_ptr_inplace"* %2, %"class.std::allocator.4"* %agg.tmp, %"struct.std::_Bind_simple"* dereferenceable(8) %call4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev(%"class.std::allocator.4"* %agg.tmp) #2
  ret void

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot
  call void @_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev(%"class.std::allocator.4"* %agg.tmp) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot
  %sel = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2ERKS7_(%"class.std::allocator.4"* %this, %"class.std::allocator.4"* dereferenceable(1) %__a) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.4"*, align 8
  %__a.addr = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %this.addr, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %__a.addr, align 8
  %this1 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %this.addr
  %0 = bitcast %"class.std::allocator.4"* %this1 to %"class.__gnu_cxx::new_allocator.5"*
  %1 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator.4"* %1 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2ERKS9_(%"class.__gnu_cxx::new_allocator.5"* %0, %"class.__gnu_cxx::new_allocator.5"* dereferenceable(1) %2) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS6_EEES8_DpOT_(%"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::allocator.4"* %__a, %"struct.std::_Bind_simple"* dereferenceable(8) %__args) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %agg.tmp = alloca %"class.std::allocator.4", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %this.addr
  %0 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %this1 to %"class.std::_Sp_counted_base"*
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::_Sp_counted_base"* %0) #2
  %1 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @_ZTVSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %1
  %_M_impl = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %this1, i32 0, i32 1
  call void @_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2ERKS7_(%"class.std::allocator.4"* %agg.tmp, %"class.std::allocator.4"* dereferenceable(1) %__a) #2
  call void @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES8_(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %_M_impl, %"class.std::allocator.4"* %agg.tmp) #2
  call void @_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev(%"class.std::allocator.4"* %agg.tmp) #2
  %call = call %"struct.std::thread::_Impl"* @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv(%"class.std::_Sp_counted_ptr_inplace"* %this1) #2
  %2 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call2 = call dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %2) #2
  invoke void @_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEE9constructIS7_JS6_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS8_PT_DpOSB_(%"class.std::allocator.4"* dereferenceable(1) %__a, %"struct.std::thread::_Impl"* %call, %"struct.std::_Bind_simple"* dereferenceable(8) %call2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  call void @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %_M_impl) #2
  %6 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %this1 to %"class.std::_Sp_counted_base"*
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_base"* %6) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot
  %sel = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2ERKS9_(%"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"* dereferenceable(1)) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %0, %"class.__gnu_cxx::new_allocator.5"** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"*, %"class.__gnu_cxx::new_allocator.5"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::_Sp_counted_base"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %this, %"class.std::_Sp_counted_base"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %this.addr
  %0 = bitcast %"class.std::_Sp_counted_base"* %this1 to %"class.std::_Mutex_base"*
  %1 = bitcast %"class.std::_Sp_counted_base"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %1
  %_M_use_count = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %this1, i32 0, i32 1
  store i32 1, i32* %_M_use_count, align 4
  %_M_weak_count = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %this1, i32 0, i32 2
  store i32 1, i32* %_M_weak_count, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES8_(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %this, %"class.std::allocator.4"* %__a) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %this, %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"*, %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"** %this.addr
  %0 = bitcast %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %this1 to %"struct.std::_Sp_ebo_helper"*
  invoke void @_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEELb1EEC2ERKS8_(%"struct.std::_Sp_ebo_helper"* %0, %"class.std::allocator.4"* dereferenceable(1) %__a)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_storage = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl", %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %this1, i32 0, i32 0
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #16
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEE9constructIS7_JS6_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS8_PT_DpOSB_(%"class.std::allocator.4"* dereferenceable(1) %__a, %"struct.std::thread::_Impl"* %__p, %"struct.std::_Bind_simple"* dereferenceable(8) %__args) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.4"*, align 8
  %__p.addr = alloca %"struct.std::thread::_Impl"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %__a.addr, align 8
  store %"struct.std::thread::_Impl"* %__p, %"struct.std::thread::_Impl"** %__p.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %0 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__a.addr, align 8
  %1 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %__p.addr, align 8
  %2 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %2) #2
  call void @_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEE12_S_constructIS7_JS6_EEENSt9enable_ifIXsr6__and_INS9_18__construct_helperIT_JDpT0_EE4typeEEE5valueEvE4typeERS8_PSD_DpOSE_(%"class.std::allocator.4"* dereferenceable(1) %0, %"struct.std::thread::_Impl"* %1, %"struct.std::_Bind_simple"* dereferenceable(8) %call)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::thread::_Impl"* @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv(%"class.std::_Sp_counted_ptr_inplace"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %this1, i32 0, i32 1
  %_M_storage = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl", %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %_M_impl, i32 0, i32 0
  %call = call %"struct.std::thread::_Impl"* @_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_buffer"* %_M_storage) #2
  ret %"struct.std::thread::_Impl"* %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %this) unnamed_addr #12 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %this, %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"*, %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"** %this.addr
  %0 = bitcast %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %this1 to %"struct.std::_Sp_ebo_helper"*
  call void @_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEELb1EED2Ev(%"struct.std::_Sp_ebo_helper"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_ptr_inplace"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %this1, i32 0, i32 1
  call void @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %_M_impl) #2
  %0 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %this1 to %"class.std::_Sp_counted_base"*
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_base"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EED0Ev(%"class.std::_Sp_counted_ptr_inplace"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %this.addr
  call void @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_ptr_inplace"* %this1) #2
  %0 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(%"class.std::_Sp_counted_ptr_inplace"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %this1, i32 0, i32 1
  %call = call dereferenceable(1) %"class.std::allocator.4"* @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %_M_impl) #2
  %call2 = call %"struct.std::thread::_Impl"* @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv(%"class.std::_Sp_counted_ptr_inplace"* %this1) #2
  invoke void @_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEE7destroyIS7_EEvRS8_PT_(%"class.std::allocator.4"* dereferenceable(1) %call, %"struct.std::thread::_Impl"* %call2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  call void @__clang_call_terminate(i8* %1) #16
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(%"class.std::_Sp_counted_ptr_inplace"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %__a = alloca %"class.std::allocator.7", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %this.addr
  %_M_impl = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %this1, i32 0, i32 1
  %call = call dereferenceable(1) %"class.std::allocator.4"* @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %_M_impl) #2
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS7_EERKSaIT_E(%"class.std::allocator.7"* %__a, %"class.std::allocator.4"* dereferenceable(1) %call) #2
  invoke void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE7destroyISC_EEvRSD_PT_(%"class.std::allocator.7"* dereferenceable(1) %__a, %"class.std::_Sp_counted_ptr_inplace"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERSD_PSC_m(%"class.std::allocator.7"* dereferenceable(1) %__a, %"class.std::_Sp_counted_ptr_inplace"* %this1, i64 1)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev(%"class.std::allocator.7"* %__a) #2
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev(%"class.std::allocator.7"* %__a) #2
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot
  call void @__clang_call_terminate(i8* %exn) #16
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(%"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::type_info"* dereferenceable(16) %__ti) unnamed_addr #5 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %__ti.addr = alloca %"class.std::type_info"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  store %"class.std::type_info"* %__ti, %"class.std::type_info"** %__ti.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %this.addr
  %0 = load %"class.std::type_info"*, %"class.std::type_info"** %__ti.addr, align 8
  %call = call zeroext i1 @_ZNKSt9type_infoeqERKS_(%"class.std::type_info"* %0, %"class.std::type_info"* dereferenceable(16) bitcast ({ i8*, i8* }* @_ZTISt19_Sp_make_shared_tag to %"class.std::type_info"*)) #2
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %"struct.std::thread::_Impl"* @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv(%"class.std::_Sp_counted_ptr_inplace"* %this1) #2
  %1 = bitcast %"struct.std::thread::_Impl"* %call2 to i8*
  store i8* %1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i8*, i8** %retval
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_base"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %this, %"class.std::_Sp_counted_base"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev(%"class.std::_Sp_counted_base"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %this, %"class.std::_Sp_counted_base"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %this.addr
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_base"* %this1) #2
  %0 = bitcast %"class.std::_Sp_counted_base"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

declare void @__cxa_pure_virtual()

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(%"class.std::_Sp_counted_base"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %this, %"class.std::_Sp_counted_base"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %this.addr
  %isnull = icmp eq %"class.std::_Sp_counted_base"* %this1, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %0 = bitcast %"class.std::_Sp_counted_base"* %this1 to void (%"class.std::_Sp_counted_base"*)***
  %vtable = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %0
  %vfn = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %vtable, i64 1
  %1 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %vfn
  call void %1(%"class.std::_Sp_counted_base"* %this1) #2
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #8

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEELb1EEC2ERKS8_(%"struct.std::_Sp_ebo_helper"* %this, %"class.std::allocator.4"* dereferenceable(1) %__tp) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Sp_ebo_helper"*, align 8
  %__tp.addr = alloca %"class.std::allocator.4"*, align 8
  store %"struct.std::_Sp_ebo_helper"* %this, %"struct.std::_Sp_ebo_helper"** %this.addr, align 8
  store %"class.std::allocator.4"* %__tp, %"class.std::allocator.4"** %__tp.addr, align 8
  %this1 = load %"struct.std::_Sp_ebo_helper"*, %"struct.std::_Sp_ebo_helper"** %this.addr
  %0 = bitcast %"struct.std::_Sp_ebo_helper"* %this1 to %"class.std::allocator.4"*
  %1 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__tp.addr, align 8
  call void @_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2ERKS7_(%"class.std::allocator.4"* %0, %"class.std::allocator.4"* dereferenceable(1) %1) #2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEE12_S_constructIS7_JS6_EEENSt9enable_ifIXsr6__and_INS9_18__construct_helperIT_JDpT0_EE4typeEEE5valueEvE4typeERS8_PSD_DpOSE_(%"class.std::allocator.4"* dereferenceable(1) %__a, %"struct.std::thread::_Impl"* %__p, %"struct.std::_Bind_simple"* dereferenceable(8) %__args) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.4"*, align 8
  %__p.addr = alloca %"struct.std::thread::_Impl"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %__a.addr, align 8
  store %"struct.std::thread::_Impl"* %__p, %"struct.std::thread::_Impl"** %__p.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %0 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.4"* %0 to %"class.__gnu_cxx::new_allocator.5"*
  %2 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %__p.addr, align 8
  %3 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %3) #2
  call void @_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEE9constructIS8_JS7_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.5"* %1, %"struct.std::thread::_Impl"* %2, %"struct.std::_Bind_simple"* dereferenceable(8) %call)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEE9constructIS8_JS7_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.5"* %this, %"struct.std::thread::_Impl"* %__p, %"struct.std::_Bind_simple"* dereferenceable(8) %__args) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %__p.addr = alloca %"struct.std::thread::_Impl"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  store %"struct.std::thread::_Impl"* %__p, %"struct.std::thread::_Impl"** %__p.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"*, %"class.__gnu_cxx::new_allocator.5"** %this.addr
  %0 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %__p.addr, align 8
  %1 = bitcast %"struct.std::thread::_Impl"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::thread::_Impl"*
  %3 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %3) #2
  call void @_ZNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEC2EOS5_(%"struct.std::thread::_Impl"* %2, %"struct.std::_Bind_simple"* dereferenceable(8) %call)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEC2EOS5_(%"struct.std::thread::_Impl"* %this, %"struct.std::_Bind_simple"* dereferenceable(8) %__f) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Impl"*, align 8
  %__f.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"struct.std::thread::_Impl"* %this, %"struct.std::thread::_Impl"** %this.addr, align 8
  store %"struct.std::_Bind_simple"* %__f, %"struct.std::_Bind_simple"** %__f.addr, align 8
  %this1 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %this.addr
  %0 = bitcast %"struct.std::thread::_Impl"* %this1 to %"struct.std::thread::_Impl_base"*
  call void @_ZNSt6thread10_Impl_baseC2Ev(%"struct.std::thread::_Impl_base"* %0) #2
  %1 = bitcast %"struct.std::thread::_Impl"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @_ZTVNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %1
  %_M_func = getelementptr inbounds %"struct.std::thread::_Impl", %"struct.std::thread::_Impl"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__f.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Bind_simple"* @_ZSt7forwardISt12_Bind_simpleIFPFvvEvEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Bind_simple"* dereferenceable(8) %2) #2
  call void @_ZNSt12_Bind_simpleIFPFvvEvEEC2EOS3_(%"struct.std::_Bind_simple"* %_M_func, %"struct.std::_Bind_simple"* dereferenceable(8) %call) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt6thread10_Impl_baseC2Ev(%"struct.std::thread::_Impl_base"* %this) unnamed_addr #12 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Impl_base"*, align 8
  store %"struct.std::thread::_Impl_base"* %this, %"struct.std::thread::_Impl_base"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_Impl_base"*, %"struct.std::thread::_Impl_base"** %this.addr
  %0 = bitcast %"struct.std::thread::_Impl_base"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @_ZTVNSt6thread10_Impl_baseE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %0
  %_M_this_ptr = getelementptr inbounds %"struct.std::thread::_Impl_base", %"struct.std::thread::_Impl_base"* %this1, i32 0, i32 1
  call void @_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2Ev(%"class.std::shared_ptr"* %_M_this_ptr) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Bind_simpleIFPFvvEvEEC2EOS3_(%"struct.std::_Bind_simple"* %this, %"struct.std::_Bind_simple"* dereferenceable(8)) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"struct.std::_Bind_simple"* %this, %"struct.std::_Bind_simple"** %this.addr, align 8
  store %"struct.std::_Bind_simple"* %0, %"struct.std::_Bind_simple"** %.addr, align 8
  %this1 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %this.addr
  %_M_bound = getelementptr inbounds %"struct.std::_Bind_simple", %"struct.std::_Bind_simple"* %this1, i32 0, i32 0
  %1 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %.addr, align 8
  %_M_bound2 = getelementptr inbounds %"struct.std::_Bind_simple", %"struct.std::_Bind_simple"* %1, i32 0, i32 0
  call void @_ZNSt5tupleIJPFvvEEEC2EOS2_(%"class.std::tuple"* %_M_bound, %"class.std::tuple"* dereferenceable(8) %_M_bound2) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEED2Ev(%"struct.std::thread::_Impl"* %this) unnamed_addr #12 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Impl"*, align 8
  store %"struct.std::thread::_Impl"* %this, %"struct.std::thread::_Impl"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %this.addr
  %0 = bitcast %"struct.std::thread::_Impl"* %this1 to %"struct.std::thread::_Impl_base"*
  call void @_ZNSt6thread10_Impl_baseD2Ev(%"struct.std::thread::_Impl_base"* %0) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEED0Ev(%"struct.std::thread::_Impl"* %this) unnamed_addr #12 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Impl"*, align 8
  store %"struct.std::thread::_Impl"* %this, %"struct.std::thread::_Impl"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %this.addr
  call void @_ZNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEED2Ev(%"struct.std::thread::_Impl"* %this1) #2
  %0 = bitcast %"struct.std::thread::_Impl"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEE6_M_runEv(%"struct.std::thread::_Impl"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Impl"*, align 8
  store %"struct.std::thread::_Impl"* %this, %"struct.std::thread::_Impl"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %this.addr
  %_M_func = getelementptr inbounds %"struct.std::thread::_Impl", %"struct.std::thread::_Impl"* %this1, i32 0, i32 1
  call void @_ZNSt12_Bind_simpleIFPFvvEvEEclEv(%"struct.std::_Bind_simple"* %_M_func)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2Ev(%"class.std::shared_ptr"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::shared_ptr"*, align 8
  store %"class.std::shared_ptr"* %this, %"class.std::shared_ptr"** %this.addr, align 8
  %this1 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %this.addr
  %0 = bitcast %"class.std::shared_ptr"* %this1 to %"class.std::__shared_ptr"*
  call void @_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::__shared_ptr"* %0) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt6thread10_Impl_baseD2Ev(%"struct.std::thread::_Impl_base"* %this) unnamed_addr #12 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Impl_base"*, align 8
  store %"struct.std::thread::_Impl_base"* %this, %"struct.std::thread::_Impl_base"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_Impl_base"*, %"struct.std::thread::_Impl_base"** %this.addr
  %0 = bitcast %"struct.std::thread::_Impl_base"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @_ZTVNSt6thread10_Impl_baseE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %0
  %_M_this_ptr = getelementptr inbounds %"struct.std::thread::_Impl_base", %"struct.std::thread::_Impl_base"* %this1, i32 0, i32 1
  call void @_ZNSt10shared_ptrINSt6thread10_Impl_baseEED2Ev(%"class.std::shared_ptr"* %_M_this_ptr) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt6thread10_Impl_baseD0Ev(%"struct.std::thread::_Impl_base"* %this) unnamed_addr #12 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Impl_base"*, align 8
  store %"struct.std::thread::_Impl_base"* %this, %"struct.std::thread::_Impl_base"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_Impl_base"*, %"struct.std::thread::_Impl_base"** %this.addr
  call void @_ZNSt6thread10_Impl_baseD2Ev(%"struct.std::thread::_Impl_base"* %this1) #2
  %0 = bitcast %"struct.std::thread::_Impl_base"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::__shared_ptr"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_ptr"*, align 8
  store %"class.std::__shared_ptr"* %this, %"class.std::__shared_ptr"** %this.addr, align 8
  %this1 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %this.addr
  %_M_ptr = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %this1, i32 0, i32 0
  store %"struct.std::thread::_Impl_base"* null, %"struct.std::thread::_Impl_base"** %_M_ptr, align 8
  %_M_refcount = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %this1, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::__shared_count"* %_M_refcount) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::__shared_count"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_count"*, align 8
  store %"class.std::__shared_count"* %this, %"class.std::__shared_count"** %this.addr, align 8
  %this1 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %this.addr
  %_M_pi = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* null, %"class.std::_Sp_counted_base"** %_M_pi, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5tupleIJPFvvEEEC2EOS2_(%"class.std::tuple"* %this, %"class.std::tuple"* dereferenceable(8)) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::tuple"*, align 8
  %.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %this, %"class.std::tuple"** %this.addr, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %.addr, align 8
  %this1 = load %"class.std::tuple"*, %"class.std::tuple"** %this.addr
  %1 = bitcast %"class.std::tuple"* %this1 to %"struct.std::_Tuple_impl"*
  %2 = load %"class.std::tuple"*, %"class.std::tuple"** %.addr, align 8
  %3 = bitcast %"class.std::tuple"* %2 to %"struct.std::_Tuple_impl"*
  call void @_ZNSt11_Tuple_implILm0EJPFvvEEEC2EOS2_(%"struct.std::_Tuple_impl"* %1, %"struct.std::_Tuple_impl"* dereferenceable(8) %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Tuple_implILm0EJPFvvEEEC2EOS2_(%"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"* dereferenceable(8) %__in) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  %__in.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %this.addr, align 8
  store %"struct.std::_Tuple_impl"* %__in, %"struct.std::_Tuple_impl"** %__in.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %this.addr
  %0 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Tuple_impl.3"*
  %1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__in.addr, align 8
  %call = call dereferenceable(1) %"struct.std::_Tuple_impl.3"* @_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_tailERS2_(%"struct.std::_Tuple_impl"* dereferenceable(8) %1) #2
  %call2 = call dereferenceable(1) %"struct.std::_Tuple_impl.3"* @_ZSt4moveIRSt11_Tuple_implILm1EJEEEONSt16remove_referenceIT_E4typeEOS4_(%"struct.std::_Tuple_impl.3"* dereferenceable(1) %call) #2
  %2 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Head_base"*
  %3 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__in.addr, align 8
  %call3 = call dereferenceable(8) void ()** @_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_headERS2_(%"struct.std::_Tuple_impl"* dereferenceable(8) %3) #2
  %call4 = call dereferenceable(8) void ()** @_ZSt7forwardIPFvvEEOT_RNSt16remove_referenceIS2_E4typeE(void ()** dereferenceable(8) %call3) #2
  invoke void @_ZNSt10_Head_baseILm0EPFvvELb0EEC2IS1_vEEOT_(%"struct.std::_Head_base"* %2, void ()** dereferenceable(8) %call4)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %4 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  call void @__clang_call_terminate(i8* %5) #16
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"struct.std::_Tuple_impl.3"* @_ZSt4moveIRSt11_Tuple_implILm1EJEEEONSt16remove_referenceIT_E4typeEOS4_(%"struct.std::_Tuple_impl.3"* dereferenceable(1) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.3"*, align 8
  store %"struct.std::_Tuple_impl.3"* %__t, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8
  ret %"struct.std::_Tuple_impl.3"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"struct.std::_Tuple_impl.3"* @_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_tailERS2_(%"struct.std::_Tuple_impl"* dereferenceable(8) %__t) #5 comdat align 2 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl"* %0 to %"struct.std::_Tuple_impl.3"*
  ret %"struct.std::_Tuple_impl.3"* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) void ()** @_ZSt7forwardIPFvvEEOT_RNSt16remove_referenceIS2_E4typeE(void ()** dereferenceable(8) %__t) #5 comdat {
entry:
  %__t.addr = alloca void ()**, align 8
  store void ()** %__t, void ()*** %__t.addr, align 8
  %0 = load void ()**, void ()*** %__t.addr, align 8
  ret void ()** %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) void ()** @_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_headERS2_(%"struct.std::_Tuple_impl"* dereferenceable(8) %__t) #5 comdat align 2 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl"* %0 to %"struct.std::_Head_base"*
  %call = call dereferenceable(8) void ()** @_ZNSt10_Head_baseILm0EPFvvELb0EE7_M_headERS2_(%"struct.std::_Head_base"* dereferenceable(8) %1) #2
  ret void ()** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_Head_baseILm0EPFvvELb0EEC2IS1_vEEOT_(%"struct.std::_Head_base"* %this, void ()** dereferenceable(8) %__h) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Head_base"*, align 8
  %__h.addr = alloca void ()**, align 8
  store %"struct.std::_Head_base"* %this, %"struct.std::_Head_base"** %this.addr, align 8
  store void ()** %__h, void ()*** %__h.addr, align 8
  %this1 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %this.addr
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base", %"struct.std::_Head_base"* %this1, i32 0, i32 0
  %0 = load void ()**, void ()*** %__h.addr, align 8
  %call = call dereferenceable(8) void ()** @_ZSt7forwardIPFvvEEOT_RNSt16remove_referenceIS2_E4typeE(void ()** dereferenceable(8) %0) #2
  %1 = load void ()*, void ()** %call
  store void ()* %1, void ()** %_M_head_impl, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) void ()** @_ZNSt10_Head_baseILm0EPFvvELb0EE7_M_headERS2_(%"struct.std::_Head_base"* dereferenceable(8) %__b) #5 comdat align 2 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %__b, %"struct.std::_Head_base"** %__b.addr, align 8
  %0 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %__b.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base", %"struct.std::_Head_base"* %0, i32 0, i32 0
  ret void ()** %_M_head_impl
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Bind_simpleIFPFvvEvEEclEv(%"struct.std::_Bind_simple"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %agg.tmp = alloca %"struct.std::_Index_tuple", align 1
  store %"struct.std::_Bind_simple"* %this, %"struct.std::_Bind_simple"** %this.addr, align 8
  %this1 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %this.addr
  call void @_ZNSt12_Bind_simpleIFPFvvEvEE9_M_invokeIJEEEvSt12_Index_tupleIJXspT_EEE(%"struct.std::_Bind_simple"* %this1)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Bind_simpleIFPFvvEvEE9_M_invokeIJEEEvSt12_Index_tupleIJXspT_EEE(%"struct.std::_Bind_simple"* %this) #3 comdat align 2 {
entry:
  %0 = alloca %"struct.std::_Index_tuple", align 1
  %this.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"struct.std::_Bind_simple"* %this, %"struct.std::_Bind_simple"** %this.addr, align 8
  %this1 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %this.addr
  %_M_bound = getelementptr inbounds %"struct.std::_Bind_simple", %"struct.std::_Bind_simple"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) void ()** @_ZSt3getILm0EJPFvvEEENSt9__add_refINSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEE4typeERS7_(%"class.std::tuple"* dereferenceable(8) %_M_bound) #2
  %call2 = call dereferenceable(8) void ()** @_ZSt7forwardIPFvvEEOT_RNSt16remove_referenceIS2_E4typeE(void ()** dereferenceable(8) %call) #2
  %1 = load void ()*, void ()** %call2
  call void %1()
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) void ()** @_ZSt3getILm0EJPFvvEEENSt9__add_refINSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEE4typeERS7_(%"class.std::tuple"* dereferenceable(8) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl"*
  %call = call dereferenceable(8) void ()** @_ZSt12__get_helperILm0EPFvvEJEENSt9__add_refIT0_E4typeERSt11_Tuple_implIXT_EJS3_DpT1_EE(%"struct.std::_Tuple_impl"* dereferenceable(8) %1) #2
  ret void ()** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) void ()** @_ZSt12__get_helperILm0EPFvvEJEENSt9__add_refIT0_E4typeERSt11_Tuple_implIXT_EJS3_DpT1_EE(%"struct.std::_Tuple_impl"* dereferenceable(8) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %call = call dereferenceable(8) void ()** @_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_headERS2_(%"struct.std::_Tuple_impl"* dereferenceable(8) %0) #2
  ret void ()** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::thread::_Impl"* @_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_buffer"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__aligned_buffer"*, align 8
  store %"struct.__gnu_cxx::__aligned_buffer"* %this, %"struct.__gnu_cxx::__aligned_buffer"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__aligned_buffer"*, %"struct.__gnu_cxx::__aligned_buffer"** %this.addr
  %call = call i8* @_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_buffer"* %this1) #2
  %0 = bitcast i8* %call to %"struct.std::thread::_Impl"*
  ret %"struct.std::thread::_Impl"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_buffer"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__aligned_buffer"*, align 8
  store %"struct.__gnu_cxx::__aligned_buffer"* %this, %"struct.__gnu_cxx::__aligned_buffer"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__aligned_buffer"*, %"struct.__gnu_cxx::__aligned_buffer"** %this.addr
  %_M_storage = getelementptr inbounds %"struct.__gnu_cxx::__aligned_buffer", %"struct.__gnu_cxx::__aligned_buffer"* %this1, i32 0, i32 0
  %0 = bitcast %"union.std::aligned_storage<32, 8>::type"* %_M_storage to i8*
  ret i8* %0
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEELb1EED2Ev(%"struct.std::_Sp_ebo_helper"* %this) unnamed_addr #12 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Sp_ebo_helper"*, align 8
  store %"struct.std::_Sp_ebo_helper"* %this, %"struct.std::_Sp_ebo_helper"** %this.addr, align 8
  %this1 = load %"struct.std::_Sp_ebo_helper"*, %"struct.std::_Sp_ebo_helper"** %this.addr
  %0 = bitcast %"struct.std::_Sp_ebo_helper"* %this1 to %"class.std::allocator.4"*
  call void @_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev(%"class.std::allocator.4"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEED2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"*, %"class.__gnu_cxx::new_allocator.5"** %this.addr
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEE7destroyIS7_EEvRS8_PT_(%"class.std::allocator.4"* dereferenceable(1) %__a, %"struct.std::thread::_Impl"* %__p) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.4"*, align 8
  %__p.addr = alloca %"struct.std::thread::_Impl"*, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %__a.addr, align 8
  store %"struct.std::thread::_Impl"* %__p, %"struct.std::thread::_Impl"** %__p.addr, align 8
  %0 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__a.addr, align 8
  %1 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %__p.addr, align 8
  call void @_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEE10_S_destroyIS7_EENSt9enable_ifIXsr6__and_INS9_16__destroy_helperIT_E4typeEEE5valueEvE4typeERS8_PSD_(%"class.std::allocator.4"* dereferenceable(1) %0, %"struct.std::thread::_Impl"* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.4"* @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %this, %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"*, %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"** %this.addr
  %0 = bitcast %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<void (*())()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<void (*())()> > >, __gnu_cxx::_Lock_policy::_S_atomic>::_Impl"* %this1 to %"struct.std::_Sp_ebo_helper"*
  %call = invoke dereferenceable(1) %"class.std::allocator.4"* @_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEELb1EE6_S_getERS9_(%"struct.std::_Sp_ebo_helper"* dereferenceable(1) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret %"class.std::allocator.4"* %call

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #16
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEE10_S_destroyIS7_EENSt9enable_ifIXsr6__and_INS9_16__destroy_helperIT_E4typeEEE5valueEvE4typeERS8_PSD_(%"class.std::allocator.4"* dereferenceable(1) %__a, %"struct.std::thread::_Impl"* %__p) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.4"*, align 8
  %__p.addr = alloca %"struct.std::thread::_Impl"*, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %__a.addr, align 8
  store %"struct.std::thread::_Impl"* %__p, %"struct.std::thread::_Impl"** %__p.addr, align 8
  %0 = load %"class.std::allocator.4"*, %"class.std::allocator.4"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.4"* %0 to %"class.__gnu_cxx::new_allocator.5"*
  %2 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEE7destroyIS8_EEvPT_(%"class.__gnu_cxx::new_allocator.5"* %1, %"struct.std::thread::_Impl"* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEE7destroyIS8_EEvPT_(%"class.__gnu_cxx::new_allocator.5"* %this, %"struct.std::thread::_Impl"* %__p) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %__p.addr = alloca %"struct.std::thread::_Impl"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  store %"struct.std::thread::_Impl"* %__p, %"struct.std::thread::_Impl"** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"*, %"class.__gnu_cxx::new_allocator.5"** %this.addr
  %0 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %__p.addr, align 8
  %1 = bitcast %"struct.std::thread::_Impl"* %0 to void (%"struct.std::thread::_Impl"*)***
  %vtable = load void (%"struct.std::thread::_Impl"*)**, void (%"struct.std::thread::_Impl"*)*** %1
  %vfn = getelementptr inbounds void (%"struct.std::thread::_Impl"*)*, void (%"struct.std::thread::_Impl"*)** %vtable, i64 0
  %2 = load void (%"struct.std::thread::_Impl"*)*, void (%"struct.std::thread::_Impl"*)** %vfn
  call void %2(%"struct.std::thread::_Impl"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.4"* @_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEELb1EE6_S_getERS9_(%"struct.std::_Sp_ebo_helper"* dereferenceable(1) %__eboh) #5 comdat align 2 {
entry:
  %__eboh.addr = alloca %"struct.std::_Sp_ebo_helper"*, align 8
  store %"struct.std::_Sp_ebo_helper"* %__eboh, %"struct.std::_Sp_ebo_helper"** %__eboh.addr, align 8
  %0 = load %"struct.std::_Sp_ebo_helper"*, %"struct.std::_Sp_ebo_helper"** %__eboh.addr, align 8
  %1 = bitcast %"struct.std::_Sp_ebo_helper"* %0 to %"class.std::allocator.4"*
  ret %"class.std::allocator.4"* %1
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE7destroyISC_EEvRSD_PT_(%"class.std::allocator.7"* dereferenceable(1) %__a, %"class.std::_Sp_counted_ptr_inplace"* %__p) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.7"*, align 8
  %__p.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %__a.addr, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %__p, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  %0 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %__a.addr, align 8
  %1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  call void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE10_S_destroyISC_EENSt9enable_ifIXsr6__and_INSE_16__destroy_helperIT_E4typeEEE5valueEvE4typeERSD_PSI_(%"class.std::allocator.7"* dereferenceable(1) %0, %"class.std::_Sp_counted_ptr_inplace"* %1)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS8_ELN9__gnu_cxx12_Lock_policyE2EEEE10_S_destroyISC_EENSt9enable_ifIXsr6__and_INSE_16__destroy_helperIT_E4typeEEE5valueEvE4typeERSD_PSI_(%"class.std::allocator.7"* dereferenceable(1) %__a, %"class.std::_Sp_counted_ptr_inplace"* %__p) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.7"*, align 8
  %__p.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %__a.addr, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %__p, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  %0 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.7"* %0 to %"class.__gnu_cxx::new_allocator.8"*
  %2 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE7destroyISC_EEvPT_(%"class.__gnu_cxx::new_allocator.8"* %1, %"class.std::_Sp_counted_ptr_inplace"* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE7destroyISC_EEvPT_(%"class.__gnu_cxx::new_allocator.8"* %this, %"class.std::_Sp_counted_ptr_inplace"* %__p) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %__p.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %this.addr, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %__p, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.8"*, %"class.__gnu_cxx::new_allocator.8"** %this.addr
  %0 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  call void @_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_ptr_inplace"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt9type_infoeqERKS_(%"class.std::type_info"* %this, %"class.std::type_info"* dereferenceable(16) %__arg) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::type_info"*, align 8
  %__arg.addr = alloca %"class.std::type_info"*, align 8
  store %"class.std::type_info"* %this, %"class.std::type_info"** %this.addr, align 8
  store %"class.std::type_info"* %__arg, %"class.std::type_info"** %__arg.addr, align 8
  %this1 = load %"class.std::type_info"*, %"class.std::type_info"** %this.addr
  %__name = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %this1, i32 0, i32 1
  %0 = load i8*, i8** %__name, align 8
  %1 = load %"class.std::type_info"*, %"class.std::type_info"** %__arg.addr, align 8
  %__name2 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %1, i32 0, i32 1
  %2 = load i8*, i8** %__name2, align 8
  %cmp = icmp eq i8* %0, %2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %__name3 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %this1, i32 0, i32 1
  %3 = load i8*, i8** %__name3, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp4 = icmp ne i32 %conv, 42
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %__name5 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %this1, i32 0, i32 1
  %5 = load i8*, i8** %__name5, align 8
  %6 = load %"class.std::type_info"*, %"class.std::type_info"** %__arg.addr, align 8
  %__name6 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %6, i32 0, i32 1
  %7 = load i8*, i8** %__name6, align 8
  %call = call i32 @strcmp(i8* %5, i8* %7) #2
  %cmp7 = icmp eq i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %8 = phi i1 [ false, %lor.rhs ], [ %cmp7, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %9 = phi i1 [ true, %entry ], [ %8, %land.end ]
  ret i1 %9
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEE10deallocateEPSC_m(%"class.__gnu_cxx::new_allocator.8"* %this, %"class.std::_Sp_counted_ptr_inplace"* %__p, i64) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %__p.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %this.addr, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %__p, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.8"*, %"class.__gnu_cxx::new_allocator.8"** %this.addr
  %1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  %2 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %1 to i8*
  call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEESaIS9_ELNS_12_Lock_policyE2EEED2Ev(%"class.__gnu_cxx::new_allocator.8"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.8"*, %"class.__gnu_cxx::new_allocator.8"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.5"*, %"class.__gnu_cxx::new_allocator.5"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) void ()** @_ZNSt26_Maybe_wrap_member_pointerIPFvvEE9__do_wrapEOS1_(void ()** dereferenceable(8) %__x) #5 comdat align 2 {
entry:
  %__x.addr = alloca void ()**, align 8
  store void ()** %__x, void ()*** %__x.addr, align 8
  %0 = load void ()**, void ()*** %__x.addr, align 8
  ret void ()** %0
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Bind_simpleIFPFvvEvEEC2IJEvEEOS1_DpOT_(%"struct.std::_Bind_simple"* %this, void ()** dereferenceable(8) %__callable) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %__callable.addr = alloca void ()**, align 8
  store %"struct.std::_Bind_simple"* %this, %"struct.std::_Bind_simple"** %this.addr, align 8
  store void ()** %__callable, void ()*** %__callable.addr, align 8
  %this1 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %this.addr
  %_M_bound = getelementptr inbounds %"struct.std::_Bind_simple", %"struct.std::_Bind_simple"* %this1, i32 0, i32 0
  %0 = load void ()**, void ()*** %__callable.addr, align 8
  %call = call dereferenceable(8) void ()** @_ZSt4moveIRPFvvEEONSt16remove_referenceIT_E4typeEOS4_(void ()** dereferenceable(8) %0) #2
  call void @_ZNSt5tupleIJPFvvEEEC2IJS1_EvEEDpOT_(%"class.std::tuple"* %_M_bound, void ()** dereferenceable(8) %call)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) void ()** @_ZSt4moveIRPFvvEEONSt16remove_referenceIT_E4typeEOS4_(void ()** dereferenceable(8) %__t) #5 comdat {
entry:
  %__t.addr = alloca void ()**, align 8
  store void ()** %__t, void ()*** %__t.addr, align 8
  %0 = load void ()**, void ()*** %__t.addr, align 8
  ret void ()** %0
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5tupleIJPFvvEEEC2IJS1_EvEEDpOT_(%"class.std::tuple"* %this, void ()** dereferenceable(8) %__elements) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::tuple"*, align 8
  %__elements.addr = alloca void ()**, align 8
  store %"class.std::tuple"* %this, %"class.std::tuple"** %this.addr, align 8
  store void ()** %__elements, void ()*** %__elements.addr, align 8
  %this1 = load %"class.std::tuple"*, %"class.std::tuple"** %this.addr
  %0 = bitcast %"class.std::tuple"* %this1 to %"struct.std::_Tuple_impl"*
  %1 = load void ()**, void ()*** %__elements.addr, align 8
  %call = call dereferenceable(8) void ()** @_ZSt7forwardIPFvvEEOT_RNSt16remove_referenceIS2_E4typeE(void ()** dereferenceable(8) %1) #2
  call void @_ZNSt11_Tuple_implILm0EJPFvvEEEC2IS1_JEvEEOT_DpOT0_(%"struct.std::_Tuple_impl"* %0, void ()** dereferenceable(8) %call)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Tuple_implILm0EJPFvvEEEC2IS1_JEvEEOT_DpOT0_(%"struct.std::_Tuple_impl"* %this, void ()** dereferenceable(8) %__head) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  %__head.addr = alloca void ()**, align 8
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %this.addr, align 8
  store void ()** %__head, void ()*** %__head.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %this.addr
  %0 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Tuple_impl.3"*
  %1 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Head_base"*
  %2 = load void ()**, void ()*** %__head.addr, align 8
  %call = call dereferenceable(8) void ()** @_ZSt7forwardIPFvvEEOT_RNSt16remove_referenceIS2_E4typeE(void ()** dereferenceable(8) %2) #2
  call void @_ZNSt10_Head_baseILm0EPFvvELb0EEC2IS1_vEEOT_(%"struct.std::_Head_base"* %1, void ()** dereferenceable(8) %call)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(16) %"class.std::shared_ptr.1"* @_ZSt4moveIRSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEEEEONSt16remove_referenceIT_E4typeEOSC_(%"class.std::shared_ptr.1"* dereferenceable(16) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"class.std::shared_ptr.1"*, align 8
  store %"class.std::shared_ptr.1"* %__t, %"class.std::shared_ptr.1"** %__t.addr, align 8
  %0 = load %"class.std::shared_ptr.1"*, %"class.std::shared_ptr.1"** %__t.addr, align 8
  ret %"class.std::shared_ptr.1"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2INS0_5_ImplISt12_Bind_simpleIFPFvvEvEEEEvEEOS_IT_LS3_2EE(%"class.std::__shared_ptr"* %this, %"class.std::__shared_ptr.2"* dereferenceable(16) %__r) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_ptr"*, align 8
  %__r.addr = alloca %"class.std::__shared_ptr.2"*, align 8
  store %"class.std::__shared_ptr"* %this, %"class.std::__shared_ptr"** %this.addr, align 8
  store %"class.std::__shared_ptr.2"* %__r, %"class.std::__shared_ptr.2"** %__r.addr, align 8
  %this1 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %this.addr
  %_M_ptr = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %this1, i32 0, i32 0
  %0 = load %"class.std::__shared_ptr.2"*, %"class.std::__shared_ptr.2"** %__r.addr, align 8
  %_M_ptr2 = getelementptr inbounds %"class.std::__shared_ptr.2", %"class.std::__shared_ptr.2"* %0, i32 0, i32 0
  %1 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %_M_ptr2, align 8
  %2 = bitcast %"struct.std::thread::_Impl"* %1 to %"struct.std::thread::_Impl_base"*
  store %"struct.std::thread::_Impl_base"* %2, %"struct.std::thread::_Impl_base"** %_M_ptr, align 8
  %_M_refcount = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %this1, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::__shared_count"* %_M_refcount) #2
  %_M_refcount3 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %this1, i32 0, i32 1
  %3 = load %"class.std::__shared_ptr.2"*, %"class.std::__shared_ptr.2"** %__r.addr, align 8
  %_M_refcount4 = getelementptr inbounds %"class.std::__shared_ptr.2", %"class.std::__shared_ptr.2"* %3, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_(%"class.std::__shared_count"* %_M_refcount3, %"class.std::__shared_count"* dereferenceable(8) %_M_refcount4) #2
  %4 = load %"class.std::__shared_ptr.2"*, %"class.std::__shared_ptr.2"** %__r.addr, align 8
  %_M_ptr5 = getelementptr inbounds %"class.std::__shared_ptr.2", %"class.std::__shared_ptr.2"* %4, i32 0, i32 0
  store %"struct.std::thread::_Impl"* null, %"struct.std::thread::_Impl"** %_M_ptr5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_(%"class.std::__shared_count"* %this, %"class.std::__shared_count"* dereferenceable(8) %__r) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_count"*, align 8
  %__r.addr = alloca %"class.std::__shared_count"*, align 8
  %__tmp = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::__shared_count"* %this, %"class.std::__shared_count"** %this.addr, align 8
  store %"class.std::__shared_count"* %__r, %"class.std::__shared_count"** %__r.addr, align 8
  %this1 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %this.addr
  %0 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %__r.addr, align 8
  %_M_pi = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %0, i32 0, i32 0
  %1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %_M_pi, align 8
  store %"class.std::_Sp_counted_base"* %1, %"class.std::_Sp_counted_base"** %__tmp, align 8
  %_M_pi2 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  %2 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %_M_pi2, align 8
  %3 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %__r.addr, align 8
  %_M_pi3 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %3, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* %2, %"class.std::_Sp_counted_base"** %_M_pi3, align 8
  %4 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %__tmp, align 8
  %_M_pi4 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* %4, %"class.std::_Sp_counted_base"** %_M_pi4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_ptr"*, align 8
  store %"class.std::__shared_ptr"* %this, %"class.std::__shared_ptr"** %this.addr, align 8
  %this1 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %this.addr
  %_M_refcount = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %this1, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* %_M_refcount) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_count"*, align 8
  store %"class.std::__shared_count"* %this, %"class.std::__shared_count"** %this.addr, align 8
  %this1 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %this.addr
  %_M_pi = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  %0 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %_M_pi, align 8
  %cmp = icmp ne %"class.std::_Sp_counted_base"* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_pi2 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  %1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %_M_pi2, align 8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv(%"class.std::_Sp_counted_base"* %1) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv(%"class.std::_Sp_counted_base"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %this, %"class.std::_Sp_counted_base"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %this.addr
  %_M_use_count = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %this1, i32 0, i32 1
  %call = invoke i32 @_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii(i32* %_M_use_count, i32 -1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %invoke.cont
  %0 = bitcast %"class.std::_Sp_counted_base"* %this1 to void (%"class.std::_Sp_counted_base"*)***
  %vtable = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %0
  %vfn = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %vtable, i64 2
  %1 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %vfn
  call void %1(%"class.std::_Sp_counted_base"* %this1) #2
  %_M_weak_count = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %this1, i32 0, i32 2
  %call3 = invoke i32 @_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii(i32* %_M_weak_count, i32 -1)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %if.then
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %invoke.cont2
  %2 = bitcast %"class.std::_Sp_counted_base"* %this1 to void (%"class.std::_Sp_counted_base"*)***
  %vtable6 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %2
  %vfn7 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %vtable6, i64 3
  %3 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %vfn7
  call void %3(%"class.std::_Sp_counted_base"* %this1) #2
  br label %if.end

if.end:                                           ; preds = %if.then5, %invoke.cont2
  br label %if.end8

if.end8:                                          ; preds = %if.end, %invoke.cont
  ret void

terminate.lpad:                                   ; preds = %if.then, %entry
  %4 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  call void @__clang_call_terminate(i8* %5) #16
  unreachable
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii(i32* %__mem, i32 %__val) #4 {
entry:
  %retval = alloca i32, align 4
  %__mem.addr = alloca i32*, align 8
  %__val.addr = alloca i32, align 4
  store i32* %__mem, i32** %__mem.addr, align 8
  store i32 %__val, i32* %__val.addr, align 4
  %call = call i32 @_ZL18__gthread_active_pv()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32*, i32** %__mem.addr, align 8
  %1 = load i32, i32* %__val.addr, align 4
  %call1 = call i32 @_ZN9__gnu_cxxL18__exchange_and_addEPVii(i32* %0, i32 %1)
  store i32 %call1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32*, i32** %__mem.addr, align 8
  %3 = load i32, i32* %__val.addr, align 4
  %call2 = call i32 @_ZN9__gnu_cxxL25__exchange_and_add_singleEPii(i32* %2, i32 %3)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_ZL18__gthread_active_pv() #12 {
entry:
  %0 = load i8*, i8** @_ZZL18__gthread_active_pvE20__gthread_active_ptr, align 8
  %cmp = icmp ne i8* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_ZN9__gnu_cxxL18__exchange_and_addEPVii(i32* %__mem, i32 %__val) #12 {
entry:
  %__mem.addr = alloca i32*, align 8
  %__val.addr = alloca i32, align 4
  %.atomictmp = alloca i32, align 4
  %.atomicdst = alloca i32, align 4
  store i32* %__mem, i32** %__mem.addr, align 8
  store i32 %__val, i32* %__val.addr, align 4
  %0 = load i32*, i32** %__mem.addr, align 8
  %1 = load i32, i32* %__val.addr, align 4
  store i32 %1, i32* %.atomictmp
  %2 = load i32, i32* %.atomictmp, align 4
  %3 = atomicrmw volatile add i32* %0, i32 %2 acq_rel
  store i32 %3, i32* %.atomicdst, align 4
  %4 = load i32, i32* %.atomicdst, align 4
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_ZN9__gnu_cxxL25__exchange_and_add_singleEPii(i32* %__mem, i32 %__val) #12 {
entry:
  %__mem.addr = alloca i32*, align 8
  %__val.addr = alloca i32, align 4
  %__result = alloca i32, align 4
  store i32* %__mem, i32** %__mem.addr, align 8
  store i32 %__val, i32* %__val.addr, align 4
  %0 = load i32*, i32** %__mem.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %__result, align 4
  %2 = load i32, i32* %__val.addr, align 4
  %3 = load i32*, i32** %__mem.addr, align 8
  %4 = load i32, i32* %3, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %3, align 4
  %5 = load i32, i32* %__result, align 4
  ret i32 %5
}

; Function Attrs: nounwind
declare extern_weak i32 @__pthread_key_create(i32*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFPFvvEvEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.2"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_ptr.2"*, align 8
  store %"class.std::__shared_ptr.2"* %this, %"class.std::__shared_ptr.2"** %this.addr, align 8
  %this1 = load %"class.std::__shared_ptr.2"*, %"class.std::__shared_ptr.2"** %this.addr
  %_M_refcount = getelementptr inbounds %"class.std::__shared_ptr.2", %"class.std::__shared_ptr.2"* %this1, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* %_M_refcount) #2
  ret void
}

define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noinline noreturn nounwind }
attributes #14 = { builtin }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (http://llvm.org/git/clang.git 9a9c87baad47937aaa1f6ca78fa799ab31e970af) (http://llvm.org/git/llvm.git 32675bbfd0c79f67865c0999d8c90a31848ee648)"}
!1 = !{i32 1672507}
