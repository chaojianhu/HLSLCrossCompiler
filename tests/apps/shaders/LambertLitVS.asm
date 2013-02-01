//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20499
//
//
///
// Buffer Definitions: 
//
// cbuffer SharedConsts
// {
//
//   float4x4 World;                    // Offset:    0 Size:    64
//   float4x4 View;                     // Offset:   64 Size:    64
//   float4x4 Projection;               // Offset:  128 Size:    64
//   float4 vLightDir[2];               // Offset:  192 Size:    32 [unused]
//   float4 vLightColor[2];             // Offset:  224 Size:    32 [unused]
//   float4 vOutputColor;               // Offset:  256 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// SharedConsts                      cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xyz         1     NONE   float   xyz 
//
vs_4_0
dcl_constantbuffer cb0[12], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output_siv o0.xyzw, position
dcl_output o1.xyz
dcl_temps 2
dp4 r0.x, v0.xyzw, cb0[0].xyzw
dp4 r0.y, v0.xyzw, cb0[1].xyzw
dp4 r0.z, v0.xyzw, cb0[2].xyzw
dp4 r0.w, v0.xyzw, cb0[3].xyzw
dp4 r1.x, r0.xyzw, cb0[4].xyzw
dp4 r1.y, r0.xyzw, cb0[5].xyzw
dp4 r1.z, r0.xyzw, cb0[6].xyzw
dp4 r1.w, r0.xyzw, cb0[7].xyzw
dp4 o0.x, r1.xyzw, cb0[8].xyzw
dp4 o0.y, r1.xyzw, cb0[9].xyzw
dp4 o0.z, r1.xyzw, cb0[10].xyzw
dp4 o0.w, r1.xyzw, cb0[11].xyzw
dp3 o1.x, v1.xyzx, cb0[0].xyzx
dp3 o1.y, v1.xyzx, cb0[1].xyzx
dp3 o1.z, v1.xyzx, cb0[2].xyzx
ret 
// Approximately 16 instruction slots used
