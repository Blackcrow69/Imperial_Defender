Shader "CTS/CTS Terrain Shader Basic CutOut Mesh"
{
	Properties
	{
		_Cutoff( "Mask Clip Value", Float ) = 0.5
		_Geological_Tiling_Far("Geological_Tiling_Far", Range( 0 , 1000)) = 87
		_Geological_Tiling_Close("Geological_Tiling_Close", Range( 0 , 1000)) = 87
		_Texture_Glitter("Texture_Glitter", 2D) = "black" {}
		_Geological_Map_Offset_Far("Geological_Map_Offset _Far", Range( 0 , 1)) = 1
		_Global_Color_Map_Far_Power("Global_Color_Map_Far_Power", Range( 0 , 10)) = 5
		_Global_Color_Map_Close_Power("Global_Color_Map_Close_Power", Range( 0 , 10)) = 0.1
		_Geological_Map_Offset_Close("Geological_Map_Offset _Close", Range( 0 , 1)) = 1
		_Gliter_Color_Power("Gliter_Color_Power", Range( 0 , 2)) = 0.8
		_Geological_Map_Close_Power("Geological_Map_Close_Power", Range( 0 , 1)) = 0
		_Global_Color_Opacity_Power("Global_Color_Opacity_Power", Range( 0 , 1)) = 0
		_Geological_Map_Far_Power("Geological_Map_Far_Power", Range( 0 , 1)) = 1
		_Glitter_Noise_Threshold("Glitter_Noise_Threshold", Range( 0 , 1)) = 0.991
		_UV_Mix_Power("UV_Mix_Power", Range( 0.01 , 10)) = 4
		_Glitter_Specular("Glitter_Specular", Range( 0 , 3)) = 0.2
		_UV_Mix_Start_Distance("UV_Mix_Start_Distance", Range( 0 , 100000)) = 400
		_Glitter_Smoothness("Glitter_Smoothness", Range( 0 , 1)) = 0.9
		_Perlin_Normal_Tiling_Close("Perlin_Normal_Tiling_Close", Range( 0.01 , 1000)) = 40
		_Perlin_Normal_Tiling_Far("Perlin_Normal_Tiling_Far", Range( 0.01 , 1000)) = 40
		_Perlin_Normal_Power("Perlin_Normal_Power", Range( 0 , 10)) = 1
		_Perlin_Normal_Power_Close("Perlin_Normal_Power_Close", Range( 0 , 10)) = 0.5
		_Terrain_Smoothness("Terrain_Smoothness", Range( 0 , 2)) = 1
		_Terrain_Specular("Terrain_Specular", Range( 0 , 3)) = 1
		_Global_Normalmap_Power("Global_Normalmap_Power", Range( 0 , 10)) = 0
		_Texture_1_Tiling("Texture_1_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_2_Tiling("Texture_2_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_3_Tiling("Texture_3_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_4_Tiling("Texture_4_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_5_Tiling("Texture_5_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_6_Tiling("Texture_6_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_7_Tiling("Texture_7_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_8_Tiling("Texture_8_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_9_Tiling("Texture_9_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_10_Tiling("Texture_10_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_11_Tiling("Texture_11_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_12_Tiling("Texture_12_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_13_Tiling("Texture_13_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_14_Tiling("Texture_14_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_15_Tiling("Texture_15_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_16_Tiling("Texture_16_Tiling", Range( 0.0001 , 100)) = 15
		_Texture_1_Far_Multiplier("Texture_1_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_2_Far_Multiplier("Texture_2_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_3_Far_Multiplier("Texture_3_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_4_Far_Multiplier("Texture_4_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_5_Far_Multiplier("Texture_5_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_6_Far_Multiplier("Texture_6_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_7_Far_Multiplier("Texture_7_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_8_Far_Multiplier("Texture_8_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_9_Far_Multiplier("Texture_9_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_10_Far_Multiplier("Texture_10_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_11_Far_Multiplier("Texture_11_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_12_Far_Multiplier("Texture_12_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_13_Far_Multiplier("Texture_13_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_14_Far_Multiplier("Texture_14_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_15_Far_Multiplier("Texture_15_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_16_Far_Multiplier("Texture_16_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_1_Perlin_Power("Texture_1_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_2_Perlin_Power("Texture_2_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_3_Perlin_Power("Texture_3_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_4_Perlin_Power("Texture_4_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_5_Perlin_Power("Texture_5_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_6_Perlin_Power("Texture_6_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_7_Perlin_Power("Texture_7_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_8_Perlin_Power("Texture_8_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_9_Perlin_Power("Texture_9_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_10_Perlin_Power("Texture_10_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_11_Perlin_Power("Texture_11_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_12_Perlin_Power("Texture_12_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_Array_Normal("Texture_Array_Normal", 2DArray ) = "" {}
		_Texture_Array_Albedo("Texture_Array_Albedo", 2DArray ) = "" {}
		_Texture_13_Perlin_Power("Texture_13_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_14_Perlin_Power("Texture_14_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_15_Perlin_Power("Texture_15_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_16_Perlin_Power("Texture_16_Perlin_Power", Range( 0 , 1)) = 0
		_Texture_1_Geological_Power("Texture_1_Geological_Power", Range( 0 , 5)) = 1
		_Texture_2_Geological_Power("Texture_2_Geological_Power", Range( 0 , 5)) = 1
		_Texture_3_Geological_Power("Texture_3_Geological_Power", Range( 0 , 5)) = 1
		_Texture_4_Geological_Power("Texture_4_Geological_Power", Range( 0 , 5)) = 1
		_Texture_5_Geological_Power("Texture_5_Geological_Power", Range( 0 , 5)) = 1
		_Texture_6_Geological_Power("Texture_6_Geological_Power", Range( 0 , 5)) = 1
		_Texture_7_Geological_Power("Texture_7_Geological_Power", Range( 0 , 5)) = 1
		_Texture_8_Geological_Power("Texture_8_Geological_Power", Range( 0 , 5)) = 1
		_Texture_9_Geological_Power("Texture_9_Geological_Power", Range( 0 , 5)) = 1
		_Texture_10_Geological_Power("Texture_10_Geological_Power", Range( 0 , 5)) = 1
		_Texture_11_Geological_Power("Texture_11_Geological_Power", Range( 0 , 5)) = 1
		_Texture_12_Geological_Power("Texture_12_Geological_Power", Range( 0 , 5)) = 1
		_Texture_13_Geological_Power("Texture_13_Geological_Power", Range( 0 , 5)) = 1
		_Texture_14_Geological_Power("Texture_14_Geological_Power", Range( 0 , 5)) = 1
		_Texture_15_Geological_Power("Texture_15_Geological_Power", Range( 0 , 5)) = 1
		_Texture_16_Geological_Power("Texture_16_Geological_Power", Range( 0 , 5)) = 1
		_Snow_Specular("Snow_Specular", Range( 0 , 3)) = 1
		_Snow_Normal_Scale("Snow_Normal_Scale", Range( 0 , 5)) = 1
		_Snow_Blend_Normal("Snow_Blend_Normal", Range( 0 , 1)) = 0.8
		_Snow_Amount("Snow_Amount", Range( 0 , 2)) = 0
		_Snow_Tiling("Snow_Tiling", Range( 0.001 , 20)) = 15
		_Snow_Perlin_Power("Snow_Perlin_Power", Range( 0 , 1)) = 0
		_Snow_Noise_Power("Snow_Noise_Power", Range( 0 , 1)) = 1
		_Snow_Noise_Tiling("Snow_Noise_Tiling", Range( 0.001 , 1)) = 0.02
		_Snow_Min_Height("Snow_Min_Height", Range( -1000 , 10000)) = -1000
		_Snow_Min_Height_Blending("Snow_Min_Height_Blending", Range( 0 , 500)) = 1
		_Snow_Maximum_Angle("Snow_Maximum_Angle", Range( 0.001 , 180)) = 30
		_Snow_Maximum_Angle_Hardness("Snow_Maximum_Angle_Hardness", Range( 0.01 , 3)) = 1
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		_Texture_1_Snow_Reduction("Texture_1_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_2_Snow_Reduction("Texture_2_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_3_Snow_Reduction("Texture_3_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_4_Snow_Reduction("Texture_4_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_5_Snow_Reduction("Texture_5_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_6_Snow_Reduction("Texture_6_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_7_Snow_Reduction("Texture_7_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_8_Snow_Reduction("Texture_8_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_9_Snow_Reduction("Texture_9_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_10_Snow_Reduction("Texture_10_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_11_Snow_Reduction("Texture_11_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_12_Snow_Reduction("Texture_12_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_13_Snow_Reduction("Texture_13_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_14_Snow_Reduction("Texture_14_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_15_Snow_Reduction("Texture_15_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_16_Snow_Reduction("Texture_16_Snow_Reduction", Range( 0 , 1)) = 0
		_Texture_Perlin_Normal_Index("Texture_Perlin_Normal_Index", Int) = -1
		_Texture_1_Normal_Power("Texture_1_Normal_Power", Range( 0 , 5)) = 1
		_Texture_2_Normal_Power("Texture_2_Normal_Power", Range( 0 , 5)) = 1
		_Texture_3_Normal_Power("Texture_3_Normal_Power", Range( 0 , 5)) = 1
		_Texture_4_Normal_Power("Texture_4_Normal_Power", Range( 0 , 5)) = 1
		_Texture_5_Normal_Power("Texture_5_Normal_Power", Range( 0 , 5)) = 1
		_Texture_6_Normal_Power("Texture_6_Normal_Power", Range( 0 , 5)) = 1
		_Texture_7_Normal_Power("Texture_7_Normal_Power", Range( 0 , 5)) = 1
		_Texture_8_Normal_Power("Texture_8_Normal_Power", Range( 0 , 5)) = 1
		_Texture_9_Normal_Power("Texture_9_Normal_Power", Range( 0 , 5)) = 1
		_Texture_10_Normal_Power("Texture_10_Normal_Power", Range( 0 , 5)) = 1
		_Texture_11_Normal_Power("Texture_11_Normal_Power", Range( 0 , 5)) = 1
		_Texture_12_Normal_Power("Texture_12_Normal_Power", Range( 0 , 5)) = 1
		_Texture_13_Normal_Power("Texture_13_Normal_Power", Range( 0 , 5)) = 1
		_Texture_14_Normal_Power("Texture_14_Normal_Power", Range( 0 , 5)) = 1
		_Texture_15_Normal_Power("Texture_15_Normal_Power", Range( 0 , 5)) = 1
		_Texture_16_Normal_Power("Texture_16_Normal_Power", Range( 0 , 5)) = 1
		_Texture_Splat_1("Texture_Splat_1", 2D) = "black" {}
		_Texture_Splat_2("Texture_Splat_2", 2D) = "black" {}
		_Texture_Splat_3("Texture_Splat_3", 2D) = "black" {}
		_Texture_Splat_4("Texture_Splat_4", 2D) = "black" {}
		_Global_Normal_Map("Global_Normal_Map", 2D) = "bump" {}
		_Ambient_Occlusion_Power("Ambient_Occlusion_Power", Range( 0 , 1)) = 1
		_Texture_3_Triplanar("Texture_3_Triplanar", Range( 0 , 1)) = 0
		_Texture_Snow_Noise_Index("Texture_Snow_Noise_Index", Range( -1 , 100)) = -1
		_Texture_Snow_Index("Texture_Snow_Index", Range( -1 , 100)) = -1
		_Texture_Snow_Normal_Index("Texture_Snow_Normal_Index", Range( -1 , 100)) = -1
		_Texture_4_Triplanar("Texture_4_Triplanar", Range( 0 , 1)) = 0
		_Texture_2_Triplanar("Texture_2_Triplanar", Range( 0 , 1)) = 0
		_Texture_6_Triplanar("Texture_6_Triplanar", Range( 0 , 1)) = 0
		_Texture_Snow_Average("Texture_Snow_Average", Vector) = (0,0,0,0)
		_Texture_8_Triplanar("Texture_8_Triplanar", Range( 0 , 1)) = 0
		_Remove_Vert_Height("Remove_Vert_Height", Range( -10000 , 10000)) = -1000
		_Texture_9_Triplanar("Texture_9_Triplanar", Range( 0 , 1)) = 0
		_Texture_10_Triplanar("Texture_10_Triplanar", Range( 0 , 1)) = 0
		_Texture_11_Triplanar("Texture_11_Triplanar", Range( 0 , 1)) = 0
		_Texture_12_Triplanar("Texture_12_Triplanar", Range( 0 , 1)) = 0
		_Texture_13_Triplanar("Texture_13_Triplanar", Range( 0 , 1)) = 0
		_Texture_14_Triplanar("Texture_14_Triplanar", Range( 0 , 1)) = 0
		_Texture_15_Triplanar("Texture_15_Triplanar", Range( 0 , 1)) = 0
		_Texture_16_Triplanar("Texture_16_Triplanar", Range( 0 , 1)) = 0
		_Texture_7_Triplanar("Texture_7_Triplanar", Range( 0 , 1)) = 0
		_Texture_5_Triplanar("Texture_5_Triplanar", Range( 0 , 1)) = 0
		_Texture_1_Triplanar("Texture_1_Triplanar", Range( 0 , 1)) = 0
		_Texture_Geological_Map("Texture_Geological_Map", 2D) = "white" {}
		_Texture_4_Color("Texture_4_Color", Vector) = (1,1,1,1)
		_Snow_Color("Snow_Color", Vector) = (1,1,1,1)
		_Texture_16_Color("Texture_16_Color", Vector) = (1,1,1,1)
		_Texture_8_Color("Texture_8_Color", Vector) = (1,1,1,1)
		_Texture_7_Color("Texture_7_Color", Vector) = (1,1,1,1)
		_Texture_6_Color("Texture_6_Color", Vector) = (1,1,1,1)
		_Texture_5_Color("Texture_5_Color", Vector) = (1,1,1,1)
		_Texture_2_Color("Texture_2_Color", Vector) = (1,1,1,1)
		_Texture_3_Color("Texture_3_Color", Vector) = (1,1,1,1)
		_Texture_13_Color("Texture_13_Color", Vector) = (1,1,1,1)
		_Texture_15_Color("Texture_15_Color", Vector) = (1,1,1,1)
		_Texture_14_Color("Texture_14_Color", Vector) = (1,1,1,1)
		_Texture_9_Color("Texture_9_Color", Vector) = (1,1,1,1)
		_Texture_12_Color("Texture_12_Color", Vector) = (1,1,1,1)
		_Texture_11_Color("Texture_11_Color", Vector) = (1,1,1,1)
		_Texture_10_Color("Texture_10_Color", Vector) = (1,1,1,1)
		_Texture_1_Color("Texture_1_Color", Vector) = (1,1,1,1)
		_Texture_1_Albedo_Index("Texture_1_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_1_Normal_Index("Texture_1_Normal_Index", Range( -1 , 100)) = -1
		_Texture_2_Albedo_Index("Texture_2_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_3_Albedo_Index("Texture_3_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_3_Normal_Index("Texture_3_Normal_Index", Range( -1 , 100)) = -1
		_Texture_4_Albedo_Index("Texture_4_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_4_Normal_Index("Texture_4_Normal_Index", Range( -1 , 100)) = -1
		_Texture_5_Albedo_Index("Texture_5_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_5_Normal_Index("Texture_5_Normal_Index", Range( -1 , 100)) = -1
		_Texture_6_Normal_Index("Texture_6_Normal_Index", Range( -1 , 100)) = -1
		_Texture_6_Albedo_Index("Texture_6_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_7_Normal_Index("Texture_7_Normal_Index", Range( -1 , 100)) = -1
		_Texture_8_Albedo_Index("Texture_8_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_2_Normal_Index("Texture_2_Normal_Index", Range( -1 , 100)) = -1
		_Texture_8_Normal_Index("Texture_8_Normal_Index", Range( -1 , 100)) = -1
		_Texture_16_Normal_Index("Texture_16_Normal_Index", Range( -1 , 100)) = -1
		_Texture_15_Normal_Index("Texture_15_Normal_Index", Range( -1 , 100)) = -1
		_Texture_15_Albedo_Index("Texture_15_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_7_Albedo_Index("Texture_7_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_14_Normal_Index("Texture_14_Normal_Index", Range( -1 , 100)) = -1
		_Texture_13_Normal_Index("Texture_13_Normal_Index", Range( -1 , 100)) = -1
		_Texture_14_Albedo_Index("Texture_14_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_13_Albedo_Index("Texture_13_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_12_Normal_Index("Texture_12_Normal_Index", Range( -1 , 100)) = -1
		_Texture_12_Albedo_Index("Texture_12_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_11_Normal_Index("Texture_11_Normal_Index", Range( -1 , 100)) = -1
		_Texture_11_Albedo_Index("Texture_11_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_10_Normal_Index("Texture_10_Normal_Index", Range( -1 , 100)) = -1
		_Texture_10_Albedo_Index("Texture_10_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_9_Normal_Index("Texture_9_Normal_Index", Range( -1 , 100)) = -1
		[Toggle(_USE_AO_ON)] _Use_AO("Use_AO", Float) = 0
		_Texture_9_Albedo_Index("Texture_9_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_16_Albedo_Index("Texture_16_Albedo_Index", Range( -1 , 100)) = -1
		_Global_Color_Map("Global_Color_Map", 2D) = "white" {}
		_Global_Color_Map_Scale("Global_Color_Map_Scale", Float) = 1
		_Global_Color_Map_Offset("Global_Color_Map_Offset", Vector) = (0,0,0,0)
		_Texture_Additional_Masks("Texture_Additional_Masks", 2D) = "white" {}
		_Glitter_Refreshing_Speed("Glitter_Refreshing_Speed", Range( 0 , 7)) = 4
		_Glitter_Tiling("Glitter_Tiling", Range( 0 , 100)) = 3
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "Geometry+100" }
		Cull Back
		ZTest LEqual
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityShaderVariables.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 3.5
		#pragma multi_compile __ _USE_AO_ON
		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) fixed3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif
		struct Input
		{
			float3 worldPos;
			fixed2 uv_texcoord;
			float3 worldNormal;
			INTERNAL_DATA
		};

		uniform UNITY_DECLARE_TEX2DARRAY( _Texture_Array_Normal );
		uniform fixed _Perlin_Normal_Tiling_Close;
		uniform int _Texture_Perlin_Normal_Index;
		uniform fixed _Perlin_Normal_Power_Close;
		uniform fixed _Perlin_Normal_Tiling_Far;
		uniform fixed _Perlin_Normal_Power;
		uniform fixed _UV_Mix_Start_Distance;
		uniform fixed _UV_Mix_Power;
		uniform fixed _Texture_16_Perlin_Power;
		uniform sampler2D _Texture_Splat_4;
		uniform fixed _Texture_15_Perlin_Power;
		uniform fixed _Texture_14_Perlin_Power;
		uniform fixed _Texture_13_Perlin_Power;
		uniform fixed _Texture_12_Perlin_Power;
		uniform sampler2D _Texture_Splat_3;
		uniform fixed _Texture_11_Perlin_Power;
		uniform fixed _Texture_10_Perlin_Power;
		uniform fixed _Texture_9_Perlin_Power;
		uniform fixed _Texture_8_Perlin_Power;
		uniform sampler2D _Texture_Splat_2;
		uniform fixed _Texture_7_Perlin_Power;
		uniform fixed _Texture_6_Perlin_Power;
		uniform fixed _Texture_5_Perlin_Power;
		uniform fixed _Texture_1_Perlin_Power;
		uniform sampler2D _Texture_Splat_1;
		uniform fixed _Texture_2_Perlin_Power;
		uniform fixed _Texture_4_Perlin_Power;
		uniform fixed _Texture_3_Perlin_Power;
		uniform fixed _Snow_Perlin_Power;
		uniform fixed _Texture_1_Normal_Index;
		uniform fixed _Texture_1_Triplanar;
		uniform fixed _Texture_1_Tiling;
		uniform fixed _Texture_1_Normal_Power;
		uniform fixed _Texture_2_Normal_Index;
		uniform fixed _Texture_2_Triplanar;
		uniform fixed _Texture_2_Tiling;
		uniform fixed _Texture_2_Normal_Power;
		uniform fixed _Texture_3_Normal_Index;
		uniform fixed _Texture_3_Triplanar;
		uniform fixed _Texture_3_Tiling;
		uniform fixed _Texture_3_Normal_Power;
		uniform fixed _Texture_3_Far_Multiplier;
		uniform fixed _Texture_4_Normal_Index;
		uniform fixed _Texture_4_Triplanar;
		uniform fixed _Texture_4_Tiling;
		uniform fixed _Texture_4_Normal_Power;
		uniform fixed _Texture_5_Normal_Index;
		uniform fixed _Texture_5_Triplanar;
		uniform fixed _Texture_5_Tiling;
		uniform fixed _Texture_5_Normal_Power;
		uniform fixed _Texture_6_Normal_Index;
		uniform fixed _Texture_6_Triplanar;
		uniform fixed _Texture_6_Tiling;
		uniform fixed _Texture_6_Normal_Power;
		uniform fixed _Texture_7_Normal_Index;
		uniform fixed _Texture_7_Triplanar;
		uniform fixed _Texture_7_Tiling;
		uniform fixed _Texture_7_Normal_Power;
		uniform fixed _Texture_8_Normal_Index;
		uniform fixed _Texture_8_Triplanar;
		uniform fixed _Texture_8_Tiling;
		uniform fixed _Texture_8_Normal_Power;
		uniform fixed _Texture_9_Normal_Index;
		uniform fixed _Texture_9_Triplanar;
		uniform fixed _Texture_9_Tiling;
		uniform fixed _Texture_9_Normal_Power;
		uniform fixed _Texture_10_Normal_Index;
		uniform fixed _Texture_10_Triplanar;
		uniform fixed _Texture_10_Tiling;
		uniform fixed _Texture_10_Normal_Power;
		uniform fixed _Texture_11_Normal_Index;
		uniform fixed _Texture_11_Triplanar;
		uniform fixed _Texture_11_Tiling;
		uniform fixed _Texture_11_Normal_Power;
		uniform fixed _Texture_12_Normal_Index;
		uniform fixed _Texture_12_Triplanar;
		uniform fixed _Texture_12_Tiling;
		uniform fixed _Texture_12_Normal_Power;
		uniform fixed _Texture_13_Normal_Index;
		uniform fixed _Texture_13_Triplanar;
		uniform fixed _Texture_13_Tiling;
		uniform fixed _Texture_13_Normal_Power;
		uniform fixed _Texture_14_Normal_Index;
		uniform fixed _Texture_14_Triplanar;
		uniform fixed _Texture_14_Tiling;
		uniform fixed _Texture_14_Normal_Power;
		uniform fixed _Texture_15_Normal_Index;
		uniform fixed _Texture_15_Triplanar;
		uniform fixed _Texture_15_Tiling;
		uniform fixed _Texture_15_Normal_Power;
		uniform fixed _Texture_16_Normal_Index;
		uniform fixed _Texture_16_Triplanar;
		uniform fixed _Texture_16_Tiling;
		uniform fixed _Texture_16_Normal_Power;
		uniform fixed _Texture_Snow_Normal_Index;
		uniform fixed _Snow_Tiling;
		uniform fixed _Snow_Normal_Scale;
		uniform fixed _Snow_Blend_Normal;
		uniform fixed _Snow_Amount;
		uniform UNITY_DECLARE_TEX2DARRAY( _Texture_Array_Albedo );
		uniform fixed _Snow_Noise_Tiling;
		uniform fixed _Texture_Snow_Noise_Index;
		uniform fixed _Snow_Noise_Power;
		uniform fixed _Snow_Maximum_Angle;
		uniform fixed _Snow_Maximum_Angle_Hardness;
		uniform fixed _Snow_Min_Height;
		uniform fixed _Snow_Min_Height_Blending;
		uniform fixed _Texture_16_Snow_Reduction;
		uniform fixed _Texture_15_Snow_Reduction;
		uniform fixed _Texture_13_Snow_Reduction;
		uniform fixed _Texture_12_Snow_Reduction;
		uniform fixed _Texture_11_Snow_Reduction;
		uniform fixed _Texture_9_Snow_Reduction;
		uniform fixed _Texture_8_Snow_Reduction;
		uniform fixed _Texture_7_Snow_Reduction;
		uniform fixed _Texture_5_Snow_Reduction;
		uniform fixed _Texture_1_Snow_Reduction;
		uniform fixed _Texture_2_Snow_Reduction;
		uniform fixed _Texture_3_Snow_Reduction;
		uniform fixed _Texture_4_Snow_Reduction;
		uniform fixed _Texture_6_Snow_Reduction;
		uniform fixed _Texture_10_Snow_Reduction;
		uniform fixed _Texture_14_Snow_Reduction;
		uniform fixed _Global_Normalmap_Power;
		uniform sampler2D _Global_Normal_Map;
		uniform fixed _Global_Color_Map_Close_Power;
		uniform fixed _Global_Color_Map_Far_Power;
		uniform sampler2D _Global_Color_Map;
		uniform fixed2 _Global_Color_Map_Offset;
		uniform fixed _Global_Color_Map_Scale;
		uniform fixed _Global_Color_Opacity_Power;
		uniform fixed _Texture_1_Albedo_Index;
		uniform fixed _Texture_1_Far_Multiplier;
		uniform fixed4 _Texture_1_Color;
		uniform fixed _Texture_2_Albedo_Index;
		uniform fixed _Texture_2_Far_Multiplier;
		uniform fixed4 _Texture_2_Color;
		uniform fixed _Texture_3_Albedo_Index;
		uniform fixed4 _Texture_3_Color;
		uniform fixed _Texture_4_Albedo_Index;
		uniform fixed _Texture_4_Far_Multiplier;
		uniform fixed4 _Texture_4_Color;
		uniform fixed _Texture_5_Albedo_Index;
		uniform fixed _Texture_5_Far_Multiplier;
		uniform fixed4 _Texture_5_Color;
		uniform fixed _Texture_6_Albedo_Index;
		uniform fixed _Texture_6_Far_Multiplier;
		uniform fixed4 _Texture_6_Color;
		uniform fixed _Texture_7_Albedo_Index;
		uniform fixed _Texture_7_Far_Multiplier;
		uniform fixed4 _Texture_7_Color;
		uniform fixed _Texture_8_Albedo_Index;
		uniform fixed _Texture_8_Far_Multiplier;
		uniform fixed4 _Texture_8_Color;
		uniform fixed _Texture_9_Albedo_Index;
		uniform fixed _Texture_9_Far_Multiplier;
		uniform fixed4 _Texture_9_Color;
		uniform fixed _Texture_10_Albedo_Index;
		uniform fixed _Texture_10_Far_Multiplier;
		uniform fixed4 _Texture_10_Color;
		uniform fixed _Texture_11_Albedo_Index;
		uniform fixed _Texture_11_Far_Multiplier;
		uniform fixed4 _Texture_11_Color;
		uniform fixed _Texture_12_Albedo_Index;
		uniform fixed _Texture_12_Far_Multiplier;
		uniform fixed4 _Texture_12_Color;
		uniform fixed _Texture_13_Albedo_Index;
		uniform fixed _Texture_13_Far_Multiplier;
		uniform fixed4 _Texture_13_Color;
		uniform fixed _Texture_14_Albedo_Index;
		uniform fixed _Texture_14_Far_Multiplier;
		uniform fixed4 _Texture_14_Color;
		uniform fixed _Texture_15_Albedo_Index;
		uniform fixed _Texture_15_Far_Multiplier;
		uniform fixed4 _Texture_15_Color;
		uniform fixed _Texture_16_Albedo_Index;
		uniform fixed _Texture_16_Far_Multiplier;
		uniform fixed4 _Texture_16_Color;
		uniform fixed _Geological_Map_Close_Power;
		uniform sampler2D _Texture_Geological_Map;
		uniform fixed _Geological_Map_Offset_Close;
		uniform fixed _Geological_Tiling_Close;
		uniform fixed _Geological_Map_Far_Power;
		uniform fixed _Geological_Tiling_Far;
		uniform fixed _Geological_Map_Offset_Far;
		uniform fixed _Texture_16_Geological_Power;
		uniform fixed _Texture_15_Geological_Power;
		uniform fixed _Texture_14_Geological_Power;
		uniform fixed _Texture_13_Geological_Power;
		uniform fixed _Texture_12_Geological_Power;
		uniform fixed _Texture_11_Geological_Power;
		uniform fixed _Texture_10_Geological_Power;
		uniform fixed _Texture_9_Geological_Power;
		uniform fixed _Texture_8_Geological_Power;
		uniform fixed _Texture_7_Geological_Power;
		uniform fixed _Texture_6_Geological_Power;
		uniform fixed _Texture_5_Geological_Power;
		uniform fixed _Texture_1_Geological_Power;
		uniform fixed _Texture_2_Geological_Power;
		uniform fixed _Texture_4_Geological_Power;
		uniform fixed _Texture_3_Geological_Power;
		uniform fixed _Texture_Snow_Index;
		uniform fixed4 _Texture_Snow_Average;
		uniform fixed4 _Snow_Color;
		uniform fixed _Gliter_Color_Power;
		uniform fixed _Glitter_Refreshing_Speed;
		uniform sampler2D _Texture_Glitter;
		uniform fixed _Glitter_Tiling;
		uniform fixed _Glitter_Noise_Threshold;
		uniform fixed _Terrain_Specular;
		uniform fixed _Snow_Specular;
		uniform fixed _Glitter_Specular;
		uniform fixed _Terrain_Smoothness;
		uniform fixed _Glitter_Smoothness;
		uniform fixed _Ambient_Occlusion_Power;
		uniform sampler2D _Texture_Additional_Masks;
		uniform float4 _Texture_Additional_Masks_ST;
		uniform fixed _Remove_Vert_Height;
		uniform float _Cutoff = 0.5;


		inline fixed MyCustomExpression6278( inout fixed3 In0 )
		{
			return UNITY_MATRIX_IT_MV[2].xyz;
		}


		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float2 appendResult6266 = (fixed2(ase_vertex3Pos.x , ase_vertex3Pos.z));
			fixed2 Top_Bottom1999 = appendResult6266;
			float4 texArray5480 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(( Top_Bottom1999 / _Perlin_Normal_Tiling_Close ), (float)_Texture_Perlin_Normal_Index)  );
			float2 appendResult11_g957 = (fixed2(texArray5480.w , texArray5480.y));
			float2 temp_output_4_0_g957 = ( ( ( appendResult11_g957 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Perlin_Normal_Power_Close );
			float dotResult5_g957 = dot( temp_output_4_0_g957 , temp_output_4_0_g957 );
			float temp_output_9_0_g957 = sqrt( ( 1.0 - saturate( dotResult5_g957 ) ) );
			float3 appendResult10_g957 = (fixed3(temp_output_4_0_g957.x , temp_output_4_0_g957.y , temp_output_9_0_g957));
			float4 texArray4374 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(( Top_Bottom1999 / _Perlin_Normal_Tiling_Far ), (float)_Texture_Perlin_Normal_Index)  );
			float2 appendResult11_g958 = (fixed2(texArray4374.w , texArray4374.y));
			float2 temp_output_4_0_g958 = ( ( ( appendResult11_g958 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Perlin_Normal_Power );
			float dotResult5_g958 = dot( temp_output_4_0_g958 , temp_output_4_0_g958 );
			float temp_output_9_0_g958 = sqrt( ( 1.0 - saturate( dotResult5_g958 ) ) );
			float3 appendResult10_g958 = (fixed3(temp_output_4_0_g958.x , temp_output_4_0_g958.y , temp_output_9_0_g958));
			float3 ase_worldPos = i.worldPos;
			float clampResult297 = clamp( pow( ( max( max( abs( ( ase_worldPos - _WorldSpaceCameraPos ) ).x , abs( ( ase_worldPos - _WorldSpaceCameraPos ) ).y ) , abs( ( ase_worldPos - _WorldSpaceCameraPos ) ).z ) / _UV_Mix_Start_Distance ) , _UV_Mix_Power ) , 0 , 1 );
			fixed UVmixDistance636 = clampResult297;
			float3 lerpResult5460 = lerp( appendResult10_g957 , appendResult10_g958 , UVmixDistance636);
			float2 uv_TexCoord2588 = i.uv_texcoord * float2( 1,1 ) + float2( 0,0 );
			fixed4 tex2DNode4371 = tex2D( _Texture_Splat_4, uv_TexCoord2588 );
			fixed Splat4_A2546 = tex2DNode4371.a;
			fixed Splat4_B2545 = tex2DNode4371.b;
			fixed Splat4_G2544 = tex2DNode4371.g;
			fixed Splat4_R2543 = tex2DNode4371.r;
			fixed4 tex2DNode4370 = tex2D( _Texture_Splat_3, uv_TexCoord2588 );
			fixed Splat3_A2540 = tex2DNode4370.a;
			fixed Splat3_B2539 = tex2DNode4370.b;
			fixed Splat3_G2538 = tex2DNode4370.g;
			fixed Splat3_R2537 = tex2DNode4370.r;
			fixed4 tex2DNode4369 = tex2D( _Texture_Splat_2, uv_TexCoord2588 );
			fixed Splat2_A2109 = tex2DNode4369.a;
			fixed Splat2_B2108 = tex2DNode4369.b;
			fixed Splat2_G2107 = tex2DNode4369.g;
			fixed Splat2_R2106 = tex2DNode4369.r;
			fixed4 tex2DNode4368 = tex2D( _Texture_Splat_1, uv_TexCoord2588 );
			fixed Splat1_R1438 = tex2DNode4368.r;
			fixed Splat1_G1441 = tex2DNode4368.g;
			fixed Splat1_A1491 = tex2DNode4368.a;
			fixed Splat1_B1442 = tex2DNode4368.b;
			float clampResult3775 = clamp( ( ( _Texture_16_Perlin_Power * Splat4_A2546 ) + ( ( _Texture_15_Perlin_Power * Splat4_B2545 ) + ( ( _Texture_14_Perlin_Power * Splat4_G2544 ) + ( ( _Texture_13_Perlin_Power * Splat4_R2543 ) + ( ( _Texture_12_Perlin_Power * Splat3_A2540 ) + ( ( _Texture_11_Perlin_Power * Splat3_B2539 ) + ( ( _Texture_10_Perlin_Power * Splat3_G2538 ) + ( ( _Texture_9_Perlin_Power * Splat3_R2537 ) + ( ( _Texture_8_Perlin_Power * Splat2_A2109 ) + ( ( _Texture_7_Perlin_Power * Splat2_B2108 ) + ( ( _Texture_6_Perlin_Power * Splat2_G2107 ) + ( ( _Texture_5_Perlin_Power * Splat2_R2106 ) + ( ( _Texture_1_Perlin_Power * Splat1_R1438 ) + ( ( _Texture_2_Perlin_Power * Splat1_G1441 ) + ( ( _Texture_4_Perlin_Power * Splat1_A1491 ) + ( _Texture_3_Perlin_Power * Splat1_B1442 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) , 0 , 1 );
			float3 lerpResult3776 = lerp( float3( 0,0,1 ) , lerpResult5460 , clampResult3775);
			float3 lerpResult3906 = lerp( float3( 0,0,1 ) , lerpResult5460 , ( _Snow_Perlin_Power * 0.5 ));
			float temp_output_3830_0 = ( 1 / _Texture_1_Tiling );
			float2 appendResult3284 = (fixed2(temp_output_3830_0 , temp_output_3830_0));
			float2 temp_output_3275_0 = ( Top_Bottom1999 * appendResult3284 );
			float4 texArray3300 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3275_0, _Texture_1_Normal_Index)  );
			float2 appendResult11_g924 = (fixed2(texArray3300.w , texArray3300.y));
			float2 temp_output_4_0_g924 = ( ( ( appendResult11_g924 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_1_Normal_Power );
			float dotResult5_g924 = dot( temp_output_4_0_g924 , temp_output_4_0_g924 );
			float temp_output_9_0_g924 = sqrt( ( 1.0 - saturate( dotResult5_g924 ) ) );
			float3 appendResult10_g924 = (fixed3(temp_output_4_0_g924.x , temp_output_4_0_g924.y , temp_output_9_0_g924));
			float3 temp_output_6001_0 = appendResult10_g924;
			fixed3 ase_worldNormal = WorldNormalVector( i, fixed3( 0, 0, 1 ) );
			float3 clampResult5488 = clamp( pow( ( ase_worldNormal * ase_worldNormal ) , 25 ) , float3( -1,-1,-1 ) , float3( 1,1,1 ) );
			fixed3 BlendComponents91 = clampResult5488;
			float2 appendResult6264 = (fixed2(ase_vertex3Pos.z , ase_vertex3Pos.y));
			fixed2 Front_Back1991 = appendResult6264;
			float2 temp_output_3279_0 = ( Front_Back1991 * appendResult3284 );
			float4 texArray3299 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3279_0, _Texture_1_Normal_Index)  );
			float2 appendResult11_g755 = (fixed2(texArray3299.w , texArray3299.y));
			float2 temp_output_4_0_g755 = ( ( ( appendResult11_g755 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_1_Normal_Power * -1 ) );
			float dotResult5_g755 = dot( temp_output_4_0_g755 , temp_output_4_0_g755 );
			float temp_output_9_0_g755 = sqrt( ( 1.0 - saturate( dotResult5_g755 ) ) );
			float3 appendResult19_g755 = (fixed3(temp_output_4_0_g755.y , temp_output_4_0_g755.x , temp_output_9_0_g755));
			float3 appendResult5874 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 appendResult6265 = (fixed2(ase_vertex3Pos.x , ase_vertex3Pos.y));
			fixed2 Left_Right2003 = appendResult6265;
			float2 temp_output_3277_0 = ( Left_Right2003 * appendResult3284 );
			float4 texArray3301 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3277_0, _Texture_1_Normal_Index)  );
			float2 appendResult11_g757 = (fixed2(texArray3301.w , texArray3301.y));
			float2 temp_output_4_0_g757 = ( ( ( appendResult11_g757 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_1_Normal_Power );
			float dotResult5_g757 = dot( temp_output_4_0_g757 , temp_output_4_0_g757 );
			float temp_output_9_0_g757 = sqrt( ( 1.0 - saturate( dotResult5_g757 ) ) );
			float3 appendResult10_g757 = (fixed3(temp_output_4_0_g757.x , temp_output_4_0_g757.y , temp_output_9_0_g757));
			float3 appendResult5876 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5676 = BlendComponents91;
			float3 weightedAvg5676 = ( ( weightedBlendVar5676.x*( appendResult19_g755 * appendResult5874 ) + weightedBlendVar5676.y*temp_output_6001_0 + weightedBlendVar5676.z*( appendResult10_g757 * appendResult5876 ) )/( weightedBlendVar5676.x + weightedBlendVar5676.y + weightedBlendVar5676.z ) );
			fixed3 ifLocalVar5783 = 0;
			UNITY_BRANCH 
			if( _Texture_1_Triplanar == 1 )
				ifLocalVar5783 = weightedAvg5676;
			else
				ifLocalVar5783 = temp_output_6001_0;
			fixed3 EmptyNRM6172 = fixed3(0,0,1);
			fixed3 ifLocalVar6127 = 0;
			UNITY_BRANCH 
			if( _Texture_1_Normal_Index <= -1 )
				ifLocalVar6127 = EmptyNRM6172;
			else
				ifLocalVar6127 = ifLocalVar5783;
			fixed3 Normal_1569 = ifLocalVar6127;
			float temp_output_3831_0 = ( 1 / _Texture_2_Tiling );
			float2 appendResult3349 = (fixed2(temp_output_3831_0 , temp_output_3831_0));
			float2 temp_output_3343_0 = ( Top_Bottom1999 * appendResult3349 );
			float4 texArray3350 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3343_0, _Texture_2_Normal_Index)  );
			float2 appendResult11_g920 = (fixed2(texArray3350.w , texArray3350.y));
			float2 temp_output_4_0_g920 = ( ( ( appendResult11_g920 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_2_Normal_Power );
			float dotResult5_g920 = dot( temp_output_4_0_g920 , temp_output_4_0_g920 );
			float temp_output_9_0_g920 = sqrt( ( 1.0 - saturate( dotResult5_g920 ) ) );
			float3 appendResult10_g920 = (fixed3(temp_output_4_0_g920.x , temp_output_4_0_g920.y , temp_output_9_0_g920));
			float3 temp_output_6005_0 = appendResult10_g920;
			float2 temp_output_3344_0 = ( Front_Back1991 * appendResult3349 );
			float4 texArray3384 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3344_0, _Texture_2_Normal_Index)  );
			float2 appendResult11_g758 = (fixed2(texArray3384.w , texArray3384.y));
			float2 temp_output_4_0_g758 = ( ( ( appendResult11_g758 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_2_Normal_Power * -1 ) );
			float dotResult5_g758 = dot( temp_output_4_0_g758 , temp_output_4_0_g758 );
			float temp_output_9_0_g758 = sqrt( ( 1.0 - saturate( dotResult5_g758 ) ) );
			float3 appendResult19_g758 = (fixed3(temp_output_4_0_g758.y , temp_output_4_0_g758.x , temp_output_9_0_g758));
			float3 appendResult5879 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_3379_0 = ( Left_Right2003 * appendResult3349 );
			float4 texArray3351 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3379_0, _Texture_2_Normal_Index)  );
			float2 appendResult11_g752 = (fixed2(texArray3351.w , texArray3351.y));
			float2 temp_output_4_0_g752 = ( ( ( appendResult11_g752 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_2_Normal_Power );
			float dotResult5_g752 = dot( temp_output_4_0_g752 , temp_output_4_0_g752 );
			float temp_output_9_0_g752 = sqrt( ( 1.0 - saturate( dotResult5_g752 ) ) );
			float3 appendResult10_g752 = (fixed3(temp_output_4_0_g752.x , temp_output_4_0_g752.y , temp_output_9_0_g752));
			float3 appendResult5882 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5499 = BlendComponents91;
			float3 weightedAvg5499 = ( ( weightedBlendVar5499.x*( appendResult19_g758 * appendResult5879 ) + weightedBlendVar5499.y*temp_output_6005_0 + weightedBlendVar5499.z*( appendResult10_g752 * appendResult5882 ) )/( weightedBlendVar5499.x + weightedBlendVar5499.y + weightedBlendVar5499.z ) );
			fixed3 ifLocalVar5774 = 0;
			UNITY_BRANCH 
			if( _Texture_2_Triplanar == 1 )
				ifLocalVar5774 = weightedAvg5499;
			else
				ifLocalVar5774 = temp_output_6005_0;
			fixed3 ifLocalVar6129 = 0;
			UNITY_BRANCH 
			if( _Texture_2_Normal_Index <= -1 )
				ifLocalVar6129 = EmptyNRM6172;
			else
				ifLocalVar6129 = ifLocalVar5774;
			fixed3 Normal_23361 = ifLocalVar6129;
			float temp_output_3832_0 = ( 1 / _Texture_3_Tiling );
			float2 appendResult3415 = (fixed2(temp_output_3832_0 , temp_output_3832_0));
			float2 temp_output_3410_0 = ( Top_Bottom1999 * appendResult3415 );
			float4 texArray3416 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3410_0, _Texture_3_Normal_Index)  );
			float2 appendResult11_g923 = (fixed2(texArray3416.w , texArray3416.y));
			float2 temp_output_4_0_g923 = ( ( ( appendResult11_g923 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_3_Normal_Power );
			float dotResult5_g923 = dot( temp_output_4_0_g923 , temp_output_4_0_g923 );
			float temp_output_9_0_g923 = sqrt( ( 1.0 - saturate( dotResult5_g923 ) ) );
			float3 appendResult10_g923 = (fixed3(temp_output_4_0_g923.x , temp_output_4_0_g923.y , temp_output_9_0_g923));
			float3 temp_output_6008_0 = appendResult10_g923;
			float2 temp_output_3411_0 = ( Front_Back1991 * appendResult3415 );
			float2 temp_output_3413_0 = ( temp_output_3411_0 / _Texture_3_Far_Multiplier );
			float4 texArray3445 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3413_0, _Texture_3_Normal_Index)  );
			float2 appendResult11_g754 = (fixed2(texArray3445.w , texArray3445.y));
			float2 temp_output_4_0_g754 = ( ( ( appendResult11_g754 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_3_Normal_Power * -1 ) );
			float dotResult5_g754 = dot( temp_output_4_0_g754 , temp_output_4_0_g754 );
			float temp_output_9_0_g754 = sqrt( ( 1.0 - saturate( dotResult5_g754 ) ) );
			float3 appendResult19_g754 = (fixed3(temp_output_4_0_g754.y , temp_output_4_0_g754.x , temp_output_9_0_g754));
			float3 appendResult5886 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_3441_0 = ( Left_Right2003 * appendResult3415 );
			float4 texArray3417 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3441_0, _Texture_3_Normal_Index)  );
			float2 appendResult11_g756 = (fixed2(texArray3417.w , texArray3417.y));
			float2 temp_output_4_0_g756 = ( ( ( appendResult11_g756 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_3_Normal_Power );
			float dotResult5_g756 = dot( temp_output_4_0_g756 , temp_output_4_0_g756 );
			float temp_output_9_0_g756 = sqrt( ( 1.0 - saturate( dotResult5_g756 ) ) );
			float3 appendResult10_g756 = (fixed3(temp_output_4_0_g756.x , temp_output_4_0_g756.y , temp_output_9_0_g756));
			float3 appendResult5889 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5503 = BlendComponents91;
			float3 weightedAvg5503 = ( ( weightedBlendVar5503.x*( appendResult19_g754 * appendResult5886 ) + weightedBlendVar5503.y*temp_output_6008_0 + weightedBlendVar5503.z*( appendResult10_g756 * appendResult5889 ) )/( weightedBlendVar5503.x + weightedBlendVar5503.y + weightedBlendVar5503.z ) );
			fixed3 ifLocalVar5776 = 0;
			UNITY_BRANCH 
			if( _Texture_3_Triplanar == 1 )
				ifLocalVar5776 = weightedAvg5503;
			else
				ifLocalVar5776 = temp_output_6008_0;
			fixed3 ifLocalVar6131 = 0;
			UNITY_BRANCH 
			if( _Texture_3_Normal_Index > -1 )
				ifLocalVar6131 = ifLocalVar5776;
			fixed3 Normal_33452 = ifLocalVar6131;
			float temp_output_3833_0 = ( 1 / _Texture_4_Tiling );
			float2 temp_output_3477_0 = ( Top_Bottom1999 * temp_output_3833_0 );
			float4 texArray3483 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3477_0, _Texture_4_Normal_Index)  );
			float2 appendResult11_g922 = (fixed2(texArray3483.w , texArray3483.y));
			float2 temp_output_4_0_g922 = ( ( ( appendResult11_g922 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_4_Normal_Power );
			float dotResult5_g922 = dot( temp_output_4_0_g922 , temp_output_4_0_g922 );
			float temp_output_9_0_g922 = sqrt( ( 1.0 - saturate( dotResult5_g922 ) ) );
			float3 appendResult10_g922 = (fixed3(temp_output_4_0_g922.x , temp_output_4_0_g922.y , temp_output_9_0_g922));
			float3 temp_output_6011_0 = appendResult10_g922;
			float2 temp_output_3478_0 = ( Front_Back1991 * temp_output_3833_0 );
			float4 texArray3512 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3478_0, _Texture_4_Normal_Index)  );
			float2 appendResult11_g753 = (fixed2(texArray3512.w , texArray3512.y));
			float2 temp_output_4_0_g753 = ( ( ( appendResult11_g753 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_4_Normal_Power * -1 ) );
			float dotResult5_g753 = dot( temp_output_4_0_g753 , temp_output_4_0_g753 );
			float temp_output_9_0_g753 = sqrt( ( 1.0 - saturate( dotResult5_g753 ) ) );
			float3 appendResult19_g753 = (fixed3(temp_output_4_0_g753.y , temp_output_4_0_g753.x , temp_output_9_0_g753));
			float3 appendResult5893 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_3508_0 = ( Left_Right2003 * temp_output_3833_0 );
			float4 texArray3484 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3508_0, _Texture_4_Normal_Index)  );
			float2 appendResult11_g759 = (fixed2(texArray3484.w , texArray3484.y));
			float2 temp_output_4_0_g759 = ( ( ( appendResult11_g759 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_4_Normal_Power );
			float dotResult5_g759 = dot( temp_output_4_0_g759 , temp_output_4_0_g759 );
			float temp_output_9_0_g759 = sqrt( ( 1.0 - saturate( dotResult5_g759 ) ) );
			float3 appendResult10_g759 = (fixed3(temp_output_4_0_g759.x , temp_output_4_0_g759.y , temp_output_9_0_g759));
			float3 appendResult5896 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5507 = BlendComponents91;
			float3 weightedAvg5507 = ( ( weightedBlendVar5507.x*( appendResult19_g753 * appendResult5893 ) + weightedBlendVar5507.y*temp_output_6011_0 + weightedBlendVar5507.z*( appendResult10_g759 * appendResult5896 ) )/( weightedBlendVar5507.x + weightedBlendVar5507.y + weightedBlendVar5507.z ) );
			fixed3 ifLocalVar5999 = 0;
			UNITY_BRANCH 
			if( _Texture_4_Triplanar == 1 )
				ifLocalVar5999 = weightedAvg5507;
			else
				ifLocalVar5999 = temp_output_6011_0;
			fixed3 ifLocalVar6133 = 0;
			UNITY_BRANCH 
			if( _Texture_4_Normal_Index <= -1 )
				ifLocalVar6133 = EmptyNRM6172;
			else
				ifLocalVar6133 = ifLocalVar5999;
			fixed3 Normal_43519 = ifLocalVar6133;
			float4 layeredBlendVar5639 = tex2DNode4368;
			float3 layeredBlend5639 = ( lerp( lerp( lerp( lerp( float3( 0,0,0 ) , Normal_1569 , layeredBlendVar5639.x ) , Normal_23361 , layeredBlendVar5639.y ) , Normal_33452 , layeredBlendVar5639.z ) , Normal_43519 , layeredBlendVar5639.w ) );
			float temp_output_4397_0 = ( 1 / _Texture_5_Tiling );
			float2 appendResult4399 = (fixed2(temp_output_4397_0 , temp_output_4397_0));
			float2 temp_output_4416_0 = ( Top_Bottom1999 * appendResult4399 );
			float4 texArray4424 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4416_0, _Texture_5_Normal_Index)  );
			float2 appendResult11_g935 = (fixed2(texArray4424.w , texArray4424.y));
			float2 temp_output_4_0_g935 = ( ( ( appendResult11_g935 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_5_Normal_Power );
			float dotResult5_g935 = dot( temp_output_4_0_g935 , temp_output_4_0_g935 );
			float temp_output_9_0_g935 = sqrt( ( 1.0 - saturate( dotResult5_g935 ) ) );
			float3 appendResult10_g935 = (fixed3(temp_output_4_0_g935.x , temp_output_4_0_g935.y , temp_output_9_0_g935));
			float3 temp_output_6014_0 = appendResult10_g935;
			float2 temp_output_4400_0 = ( Front_Back1991 * appendResult4399 );
			float4 texArray4417 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4400_0, _Texture_5_Normal_Index)  );
			float2 appendResult11_g917 = (fixed2(texArray4417.w , texArray4417.y));
			float2 temp_output_4_0_g917 = ( ( ( appendResult11_g917 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_5_Normal_Power * -1 ) );
			float dotResult5_g917 = dot( temp_output_4_0_g917 , temp_output_4_0_g917 );
			float temp_output_9_0_g917 = sqrt( ( 1.0 - saturate( dotResult5_g917 ) ) );
			float3 appendResult19_g917 = (fixed3(temp_output_4_0_g917.y , temp_output_4_0_g917.x , temp_output_9_0_g917));
			float3 appendResult5900 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_4413_0 = ( Left_Right2003 * appendResult4399 );
			float4 texArray4422 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4413_0, _Texture_5_Normal_Index)  );
			float2 appendResult11_g916 = (fixed2(texArray4422.w , texArray4422.y));
			float2 temp_output_4_0_g916 = ( ( ( appendResult11_g916 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_5_Normal_Power );
			float dotResult5_g916 = dot( temp_output_4_0_g916 , temp_output_4_0_g916 );
			float temp_output_9_0_g916 = sqrt( ( 1.0 - saturate( dotResult5_g916 ) ) );
			float3 appendResult10_g916 = (fixed3(temp_output_4_0_g916.x , temp_output_4_0_g916.y , temp_output_9_0_g916));
			float3 appendResult5903 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5511 = BlendComponents91;
			float3 weightedAvg5511 = ( ( weightedBlendVar5511.x*( appendResult19_g917 * appendResult5900 ) + weightedBlendVar5511.y*temp_output_6014_0 + weightedBlendVar5511.z*( appendResult10_g916 * appendResult5903 ) )/( weightedBlendVar5511.x + weightedBlendVar5511.y + weightedBlendVar5511.z ) );
			fixed3 ifLocalVar5806 = 0;
			UNITY_BRANCH 
			if( _Texture_5_Triplanar == 1 )
				ifLocalVar5806 = weightedAvg5511;
			else
				ifLocalVar5806 = temp_output_6014_0;
			fixed3 ifLocalVar6135 = 0;
			UNITY_BRANCH 
			if( _Texture_5_Normal_Index <= -1 )
				ifLocalVar6135 = EmptyNRM6172;
			else
				ifLocalVar6135 = ifLocalVar5806;
			fixed3 Normal_54456 = ifLocalVar6135;
			float temp_output_4469_0 = ( 1 / _Texture_6_Tiling );
			float2 appendResult4471 = (fixed2(temp_output_4469_0 , temp_output_4469_0));
			float2 temp_output_4485_0 = ( Top_Bottom1999 * appendResult4471 );
			float4 texArray4493 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4485_0, _Texture_6_Normal_Index)  );
			float2 appendResult11_g931 = (fixed2(texArray4493.w , texArray4493.y));
			float2 temp_output_4_0_g931 = ( ( ( appendResult11_g931 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_6_Normal_Power );
			float dotResult5_g931 = dot( temp_output_4_0_g931 , temp_output_4_0_g931 );
			float temp_output_9_0_g931 = sqrt( ( 1.0 - saturate( dotResult5_g931 ) ) );
			float3 appendResult10_g931 = (fixed3(temp_output_4_0_g931.x , temp_output_4_0_g931.y , temp_output_9_0_g931));
			float3 temp_output_6017_0 = appendResult10_g931;
			float2 temp_output_4472_0 = ( Front_Back1991 * appendResult4471 );
			float4 texArray4486 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4472_0, _Texture_6_Normal_Index)  );
			float2 appendResult11_g918 = (fixed2(texArray4486.w , texArray4486.y));
			float2 temp_output_4_0_g918 = ( ( ( appendResult11_g918 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_6_Normal_Power * -1 ) );
			float dotResult5_g918 = dot( temp_output_4_0_g918 , temp_output_4_0_g918 );
			float temp_output_9_0_g918 = sqrt( ( 1.0 - saturate( dotResult5_g918 ) ) );
			float3 appendResult19_g918 = (fixed3(temp_output_4_0_g918.y , temp_output_4_0_g918.x , temp_output_9_0_g918));
			float3 appendResult5907 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_4483_0 = ( Left_Right2003 * appendResult4471 );
			float4 texArray4491 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4483_0, _Texture_6_Normal_Index)  );
			float2 appendResult11_g915 = (fixed2(texArray4491.w , texArray4491.y));
			float2 temp_output_4_0_g915 = ( ( ( appendResult11_g915 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_6_Normal_Power );
			float dotResult5_g915 = dot( temp_output_4_0_g915 , temp_output_4_0_g915 );
			float temp_output_9_0_g915 = sqrt( ( 1.0 - saturate( dotResult5_g915 ) ) );
			float3 appendResult10_g915 = (fixed3(temp_output_4_0_g915.x , temp_output_4_0_g915.y , temp_output_9_0_g915));
			float3 appendResult5910 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5519 = BlendComponents91;
			float3 weightedAvg5519 = ( ( weightedBlendVar5519.x*( appendResult19_g918 * appendResult5907 ) + weightedBlendVar5519.y*temp_output_6017_0 + weightedBlendVar5519.z*( appendResult10_g915 * appendResult5910 ) )/( weightedBlendVar5519.x + weightedBlendVar5519.y + weightedBlendVar5519.z ) );
			fixed3 ifLocalVar5807 = 0;
			UNITY_BRANCH 
			if( _Texture_6_Triplanar == 1 )
				ifLocalVar5807 = weightedAvg5519;
			else
				ifLocalVar5807 = temp_output_6017_0;
			fixed3 ifLocalVar6138 = 0;
			UNITY_BRANCH 
			if( _Texture_6_Normal_Index <= -1 )
				ifLocalVar6138 = EmptyNRM6172;
			else
				ifLocalVar6138 = ifLocalVar5807;
			fixed3 Normal_64537 = ifLocalVar6138;
			float temp_output_4543_0 = ( 1 / _Texture_7_Tiling );
			float2 appendResult4545 = (fixed2(temp_output_4543_0 , temp_output_4543_0));
			float2 temp_output_4559_0 = ( Top_Bottom1999 * appendResult4545 );
			float4 texArray4567 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4559_0, _Texture_7_Normal_Index)  );
			float2 appendResult11_g934 = (fixed2(texArray4567.w , texArray4567.y));
			float2 temp_output_4_0_g934 = ( ( ( appendResult11_g934 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_7_Normal_Power );
			float dotResult5_g934 = dot( temp_output_4_0_g934 , temp_output_4_0_g934 );
			float temp_output_9_0_g934 = sqrt( ( 1.0 - saturate( dotResult5_g934 ) ) );
			float3 appendResult10_g934 = (fixed3(temp_output_4_0_g934.x , temp_output_4_0_g934.y , temp_output_9_0_g934));
			float3 temp_output_6020_0 = appendResult10_g934;
			float2 temp_output_4546_0 = ( Front_Back1991 * appendResult4545 );
			float4 texArray4560 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4546_0, _Texture_7_Normal_Index)  );
			float2 appendResult11_g921 = (fixed2(texArray4560.w , texArray4560.y));
			float2 temp_output_4_0_g921 = ( ( ( appendResult11_g921 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_7_Normal_Power * -1 ) );
			float dotResult5_g921 = dot( temp_output_4_0_g921 , temp_output_4_0_g921 );
			float temp_output_9_0_g921 = sqrt( ( 1.0 - saturate( dotResult5_g921 ) ) );
			float3 appendResult19_g921 = (fixed3(temp_output_4_0_g921.y , temp_output_4_0_g921.x , temp_output_9_0_g921));
			float3 appendResult5914 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_4557_0 = ( Left_Right2003 * appendResult4545 );
			float4 texArray4565 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4557_0, _Texture_7_Normal_Index)  );
			float2 appendResult11_g925 = (fixed2(texArray4565.w , texArray4565.y));
			float2 temp_output_4_0_g925 = ( ( ( appendResult11_g925 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_7_Normal_Power );
			float dotResult5_g925 = dot( temp_output_4_0_g925 , temp_output_4_0_g925 );
			float temp_output_9_0_g925 = sqrt( ( 1.0 - saturate( dotResult5_g925 ) ) );
			float3 appendResult10_g925 = (fixed3(temp_output_4_0_g925.x , temp_output_4_0_g925.y , temp_output_9_0_g925));
			float3 appendResult5917 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5523 = BlendComponents91;
			float3 weightedAvg5523 = ( ( weightedBlendVar5523.x*( appendResult19_g921 * appendResult5914 ) + weightedBlendVar5523.y*temp_output_6020_0 + weightedBlendVar5523.z*( appendResult10_g925 * appendResult5917 ) )/( weightedBlendVar5523.x + weightedBlendVar5523.y + weightedBlendVar5523.z ) );
			fixed3 ifLocalVar5853 = 0;
			UNITY_BRANCH 
			if( _Texture_7_Triplanar == 1 )
				ifLocalVar5853 = weightedAvg5523;
			else
				ifLocalVar5853 = temp_output_6020_0;
			fixed3 ifLocalVar6140 = 0;
			UNITY_BRANCH 
			if( _Texture_7_Normal_Index <= -1 )
				ifLocalVar6140 = EmptyNRM6172;
			else
				ifLocalVar6140 = ifLocalVar5853;
			fixed3 Normal_74615 = ifLocalVar6140;
			float temp_output_4617_0 = ( 1 / _Texture_8_Tiling );
			float2 appendResult4619 = (fixed2(temp_output_4617_0 , temp_output_4617_0));
			float2 temp_output_4633_0 = ( Top_Bottom1999 * appendResult4619 );
			float4 texArray4641 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4633_0, _Texture_8_Normal_Index)  );
			float2 appendResult11_g926 = (fixed2(texArray4641.w , texArray4641.y));
			float2 temp_output_4_0_g926 = ( ( ( appendResult11_g926 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_8_Normal_Power );
			float dotResult5_g926 = dot( temp_output_4_0_g926 , temp_output_4_0_g926 );
			float temp_output_9_0_g926 = sqrt( ( 1.0 - saturate( dotResult5_g926 ) ) );
			float3 appendResult10_g926 = (fixed3(temp_output_4_0_g926.x , temp_output_4_0_g926.y , temp_output_9_0_g926));
			float3 temp_output_6023_0 = appendResult10_g926;
			float2 temp_output_4620_0 = ( Front_Back1991 * appendResult4619 );
			float4 texArray4634 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4620_0, _Texture_8_Normal_Index)  );
			float2 appendResult11_g919 = (fixed2(texArray4634.w , texArray4634.y));
			float2 temp_output_4_0_g919 = ( ( ( appendResult11_g919 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_8_Normal_Power * -1 ) );
			float dotResult5_g919 = dot( temp_output_4_0_g919 , temp_output_4_0_g919 );
			float temp_output_9_0_g919 = sqrt( ( 1.0 - saturate( dotResult5_g919 ) ) );
			float3 appendResult19_g919 = (fixed3(temp_output_4_0_g919.y , temp_output_4_0_g919.x , temp_output_9_0_g919));
			float3 appendResult5921 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_4631_0 = ( Left_Right2003 * appendResult4619 );
			float4 texArray4639 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4631_0, _Texture_8_Normal_Index)  );
			float2 appendResult11_g914 = (fixed2(texArray4639.w , texArray4639.y));
			float2 temp_output_4_0_g914 = ( ( ( appendResult11_g914 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_8_Normal_Power );
			float dotResult5_g914 = dot( temp_output_4_0_g914 , temp_output_4_0_g914 );
			float temp_output_9_0_g914 = sqrt( ( 1.0 - saturate( dotResult5_g914 ) ) );
			float3 appendResult10_g914 = (fixed3(temp_output_4_0_g914.x , temp_output_4_0_g914.y , temp_output_9_0_g914));
			float3 appendResult5924 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5527 = BlendComponents91;
			float3 weightedAvg5527 = ( ( weightedBlendVar5527.x*( appendResult19_g919 * appendResult5921 ) + weightedBlendVar5527.y*temp_output_6023_0 + weightedBlendVar5527.z*( appendResult10_g914 * appendResult5924 ) )/( weightedBlendVar5527.x + weightedBlendVar5527.y + weightedBlendVar5527.z ) );
			fixed3 ifLocalVar5813 = 0;
			UNITY_BRANCH 
			if( _Texture_8_Triplanar == 1 )
				ifLocalVar5813 = weightedAvg5527;
			else
				ifLocalVar5813 = temp_output_6023_0;
			fixed3 ifLocalVar6142 = 0;
			UNITY_BRANCH 
			if( _Texture_8_Normal_Index <= -1 )
				ifLocalVar6142 = EmptyNRM6172;
			else
				ifLocalVar6142 = ifLocalVar5813;
			fixed3 Normal_84690 = ifLocalVar6142;
			float4 layeredBlendVar5640 = tex2DNode4369;
			float3 layeredBlend5640 = ( lerp( lerp( lerp( lerp( layeredBlend5639 , Normal_54456 , layeredBlendVar5640.x ) , Normal_64537 , layeredBlendVar5640.y ) , Normal_74615 , layeredBlendVar5640.z ) , Normal_84690 , layeredBlendVar5640.w ) );
			float temp_output_4703_0 = ( 1 / _Texture_9_Tiling );
			float2 appendResult4736 = (fixed2(temp_output_4703_0 , temp_output_4703_0));
			float2 temp_output_4712_0 = ( Top_Bottom1999 * appendResult4736 );
			float4 texArray4788 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4712_0, _Texture_9_Normal_Index)  );
			float2 appendResult11_g941 = (fixed2(texArray4788.w , texArray4788.y));
			float2 temp_output_4_0_g941 = ( ( ( appendResult11_g941 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_9_Normal_Power );
			float dotResult5_g941 = dot( temp_output_4_0_g941 , temp_output_4_0_g941 );
			float temp_output_9_0_g941 = sqrt( ( 1.0 - saturate( dotResult5_g941 ) ) );
			float3 appendResult10_g941 = (fixed3(temp_output_4_0_g941.x , temp_output_4_0_g941.y , temp_output_9_0_g941));
			float3 temp_output_6047_0 = appendResult10_g941;
			float2 temp_output_4706_0 = ( Front_Back1991 * appendResult4736 );
			float4 texArray5285 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4706_0, _Texture_9_Normal_Index)  );
			float2 appendResult11_g927 = (fixed2(texArray5285.w , texArray5285.y));
			float2 temp_output_4_0_g927 = ( ( ( appendResult11_g927 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_9_Normal_Power * -1 ) );
			float dotResult5_g927 = dot( temp_output_4_0_g927 , temp_output_4_0_g927 );
			float temp_output_9_0_g927 = sqrt( ( 1.0 - saturate( dotResult5_g927 ) ) );
			float3 appendResult19_g927 = (fixed3(temp_output_4_0_g927.y , temp_output_4_0_g927.x , temp_output_9_0_g927));
			float3 appendResult5977 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_4761_0 = ( Left_Right2003 * appendResult4736 );
			float4 texArray4783 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4761_0, _Texture_9_Normal_Index)  );
			float2 appendResult11_g932 = (fixed2(texArray4783.w , texArray4783.y));
			float2 temp_output_4_0_g932 = ( ( ( appendResult11_g932 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_9_Normal_Power );
			float dotResult5_g932 = dot( temp_output_4_0_g932 , temp_output_4_0_g932 );
			float temp_output_9_0_g932 = sqrt( ( 1.0 - saturate( dotResult5_g932 ) ) );
			float3 appendResult10_g932 = (fixed3(temp_output_4_0_g932.x , temp_output_4_0_g932.y , temp_output_9_0_g932));
			float3 appendResult5980 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5491 = BlendComponents91;
			float3 weightedAvg5491 = ( ( weightedBlendVar5491.x*( appendResult19_g927 * appendResult5977 ) + weightedBlendVar5491.y*temp_output_6047_0 + weightedBlendVar5491.z*( appendResult10_g932 * appendResult5980 ) )/( weightedBlendVar5491.x + weightedBlendVar5491.y + weightedBlendVar5491.z ) );
			fixed3 ifLocalVar5846 = 0;
			UNITY_BRANCH 
			if( _Texture_9_Triplanar == 1 )
				ifLocalVar5846 = weightedAvg5491;
			else
				ifLocalVar5846 = temp_output_6047_0;
			fixed3 ifLocalVar6144 = 0;
			UNITY_BRANCH 
			if( _Texture_9_Normal_Index <= -1 )
				ifLocalVar6144 = EmptyNRM6172;
			else
				ifLocalVar6144 = ifLocalVar5846;
			fixed3 Normal_94897 = ifLocalVar6144;
			float temp_output_4734_0 = ( 1 / _Texture_10_Tiling );
			float2 appendResult4738 = (fixed2(temp_output_4734_0 , temp_output_4734_0));
			float2 temp_output_4793_0 = ( Top_Bottom1999 * appendResult4738 );
			float4 texArray4822 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4793_0, _Texture_10_Normal_Index)  );
			float2 appendResult11_g946 = (fixed2(texArray4822.w , texArray4822.y));
			float2 temp_output_4_0_g946 = ( ( ( appendResult11_g946 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_10_Normal_Power );
			float dotResult5_g946 = dot( temp_output_4_0_g946 , temp_output_4_0_g946 );
			float temp_output_9_0_g946 = sqrt( ( 1.0 - saturate( dotResult5_g946 ) ) );
			float3 appendResult10_g946 = (fixed3(temp_output_4_0_g946.x , temp_output_4_0_g946.y , temp_output_9_0_g946));
			float3 temp_output_6044_0 = appendResult10_g946;
			float2 temp_output_4742_0 = ( Front_Back1991 * appendResult4738 );
			float4 texArray4798 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4742_0, _Texture_10_Normal_Index)  );
			float2 appendResult11_g938 = (fixed2(texArray4798.w , texArray4798.y));
			float2 temp_output_4_0_g938 = ( ( ( appendResult11_g938 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_10_Normal_Power * -1 ) );
			float dotResult5_g938 = dot( temp_output_4_0_g938 , temp_output_4_0_g938 );
			float temp_output_9_0_g938 = sqrt( ( 1.0 - saturate( dotResult5_g938 ) ) );
			float3 appendResult19_g938 = (fixed3(temp_output_4_0_g938.y , temp_output_4_0_g938.x , temp_output_9_0_g938));
			float3 appendResult5970 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_4785_0 = ( Left_Right2003 * appendResult4738 );
			float4 texArray4791 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4785_0, _Texture_10_Normal_Index)  );
			float2 appendResult11_g933 = (fixed2(texArray4791.w , texArray4791.y));
			float2 temp_output_4_0_g933 = ( ( ( appendResult11_g933 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_10_Normal_Power );
			float dotResult5_g933 = dot( temp_output_4_0_g933 , temp_output_4_0_g933 );
			float temp_output_9_0_g933 = sqrt( ( 1.0 - saturate( dotResult5_g933 ) ) );
			float3 appendResult10_g933 = (fixed3(temp_output_4_0_g933.x , temp_output_4_0_g933.y , temp_output_9_0_g933));
			float3 appendResult5973 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5531 = BlendComponents91;
			float3 weightedAvg5531 = ( ( weightedBlendVar5531.x*( appendResult19_g938 * appendResult5970 ) + weightedBlendVar5531.y*temp_output_6044_0 + weightedBlendVar5531.z*( appendResult10_g933 * appendResult5973 ) )/( weightedBlendVar5531.x + weightedBlendVar5531.y + weightedBlendVar5531.z ) );
			fixed3 ifLocalVar5842 = 0;
			UNITY_BRANCH 
			if( _Texture_10_Triplanar == 1 )
				ifLocalVar5842 = weightedAvg5531;
			else
				ifLocalVar5842 = temp_output_6044_0;
			fixed3 ifLocalVar6146 = 0;
			UNITY_BRANCH 
			if( _Texture_10_Normal_Index <= -1 )
				ifLocalVar6146 = EmptyNRM6172;
			else
				ifLocalVar6146 = ifLocalVar5842;
			fixed3 Normal_104918 = ifLocalVar6146;
			float temp_output_4739_0 = ( 1 / _Texture_11_Tiling );
			float2 appendResult4741 = (fixed2(temp_output_4739_0 , temp_output_4739_0));
			float2 temp_output_4817_0 = ( Top_Bottom1999 * appendResult4741 );
			float4 texArray4856 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4817_0, _Texture_11_Normal_Index)  );
			float2 appendResult11_g949 = (fixed2(texArray4856.w , texArray4856.y));
			float2 temp_output_4_0_g949 = ( ( ( appendResult11_g949 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_11_Normal_Power );
			float dotResult5_g949 = dot( temp_output_4_0_g949 , temp_output_4_0_g949 );
			float temp_output_9_0_g949 = sqrt( ( 1.0 - saturate( dotResult5_g949 ) ) );
			float3 appendResult10_g949 = (fixed3(temp_output_4_0_g949.x , temp_output_4_0_g949.y , temp_output_9_0_g949));
			float3 temp_output_6041_0 = appendResult10_g949;
			float2 temp_output_4748_0 = ( Front_Back1991 * appendResult4741 );
			float4 texArray4828 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4748_0, _Texture_11_Normal_Index)  );
			float2 appendResult11_g937 = (fixed2(texArray4828.w , texArray4828.y));
			float2 temp_output_4_0_g937 = ( ( ( appendResult11_g937 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_11_Normal_Power * -1 ) );
			float dotResult5_g937 = dot( temp_output_4_0_g937 , temp_output_4_0_g937 );
			float temp_output_9_0_g937 = sqrt( ( 1.0 - saturate( dotResult5_g937 ) ) );
			float3 appendResult19_g937 = (fixed3(temp_output_4_0_g937.y , temp_output_4_0_g937.x , temp_output_9_0_g937));
			float3 appendResult5963 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_4795_0 = ( Left_Right2003 * appendResult4741 );
			float4 texArray4811 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4795_0, _Texture_11_Normal_Index)  );
			float2 appendResult11_g936 = (fixed2(texArray4811.w , texArray4811.y));
			float2 temp_output_4_0_g936 = ( ( ( appendResult11_g936 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_11_Normal_Power );
			float dotResult5_g936 = dot( temp_output_4_0_g936 , temp_output_4_0_g936 );
			float temp_output_9_0_g936 = sqrt( ( 1.0 - saturate( dotResult5_g936 ) ) );
			float3 appendResult10_g936 = (fixed3(temp_output_4_0_g936.x , temp_output_4_0_g936.y , temp_output_9_0_g936));
			float3 appendResult5966 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5535 = BlendComponents91;
			float3 weightedAvg5535 = ( ( weightedBlendVar5535.x*( appendResult19_g937 * appendResult5963 ) + weightedBlendVar5535.y*temp_output_6041_0 + weightedBlendVar5535.z*( appendResult10_g936 * appendResult5966 ) )/( weightedBlendVar5535.x + weightedBlendVar5535.y + weightedBlendVar5535.z ) );
			fixed3 ifLocalVar5838 = 0;
			UNITY_BRANCH 
			if( _Texture_11_Triplanar == 1 )
				ifLocalVar5838 = weightedAvg5535;
			else
				ifLocalVar5838 = temp_output_6041_0;
			fixed3 ifLocalVar6148 = 0;
			UNITY_BRANCH 
			if( _Texture_11_Normal_Index <= -1 )
				ifLocalVar6148 = EmptyNRM6172;
			else
				ifLocalVar6148 = ifLocalVar5838;
			fixed3 Normal_114948 = ifLocalVar6148;
			float temp_output_4745_0 = ( 1 / _Texture_12_Tiling );
			float2 appendResult4751 = (fixed2(temp_output_4745_0 , temp_output_4745_0));
			float2 temp_output_4849_0 = ( Top_Bottom1999 * appendResult4751 );
			float4 texArray4870 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4849_0, _Texture_12_Normal_Index)  );
			float2 appendResult11_g942 = (fixed2(texArray4870.w , texArray4870.y));
			float2 temp_output_4_0_g942 = ( ( ( appendResult11_g942 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_12_Normal_Power );
			float dotResult5_g942 = dot( temp_output_4_0_g942 , temp_output_4_0_g942 );
			float temp_output_9_0_g942 = sqrt( ( 1.0 - saturate( dotResult5_g942 ) ) );
			float3 appendResult10_g942 = (fixed3(temp_output_4_0_g942.x , temp_output_4_0_g942.y , temp_output_9_0_g942));
			float3 temp_output_6038_0 = appendResult10_g942;
			float2 temp_output_4758_0 = ( Front_Back1991 * appendResult4751 );
			float4 texArray4850 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4758_0, _Texture_12_Normal_Index)  );
			float2 appendResult11_g929 = (fixed2(texArray4850.w , texArray4850.y));
			float2 temp_output_4_0_g929 = ( ( ( appendResult11_g929 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_12_Normal_Power * -1 ) );
			float dotResult5_g929 = dot( temp_output_4_0_g929 , temp_output_4_0_g929 );
			float temp_output_9_0_g929 = sqrt( ( 1.0 - saturate( dotResult5_g929 ) ) );
			float3 appendResult19_g929 = (fixed3(temp_output_4_0_g929.y , temp_output_4_0_g929.x , temp_output_9_0_g929));
			float3 appendResult5956 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_4830_0 = ( Left_Right2003 * appendResult4751 );
			float4 texArray4852 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4830_0, _Texture_12_Normal_Index)  );
			float2 appendResult11_g930 = (fixed2(texArray4852.w , texArray4852.y));
			float2 temp_output_4_0_g930 = ( ( ( appendResult11_g930 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_12_Normal_Power );
			float dotResult5_g930 = dot( temp_output_4_0_g930 , temp_output_4_0_g930 );
			float temp_output_9_0_g930 = sqrt( ( 1.0 - saturate( dotResult5_g930 ) ) );
			float3 appendResult10_g930 = (fixed3(temp_output_4_0_g930.x , temp_output_4_0_g930.y , temp_output_9_0_g930));
			float3 appendResult5959 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5539 = BlendComponents91;
			float3 weightedAvg5539 = ( ( weightedBlendVar5539.x*( appendResult19_g929 * appendResult5956 ) + weightedBlendVar5539.y*temp_output_6038_0 + weightedBlendVar5539.z*( appendResult10_g930 * appendResult5959 ) )/( weightedBlendVar5539.x + weightedBlendVar5539.y + weightedBlendVar5539.z ) );
			fixed3 ifLocalVar5834 = 0;
			UNITY_BRANCH 
			if( _Texture_12_Triplanar == 1 )
				ifLocalVar5834 = weightedAvg5539;
			else
				ifLocalVar5834 = temp_output_6038_0;
			fixed3 ifLocalVar6150 = 0;
			UNITY_BRANCH 
			if( _Texture_12_Normal_Index <= -1 )
				ifLocalVar6150 = EmptyNRM6172;
			else
				ifLocalVar6150 = ifLocalVar5834;
			fixed3 Normal_124962 = ifLocalVar6150;
			float4 layeredBlendVar5641 = tex2DNode4370;
			float3 layeredBlend5641 = ( lerp( lerp( lerp( lerp( layeredBlend5640 , Normal_94897 , layeredBlendVar5641.x ) , Normal_104918 , layeredBlendVar5641.y ) , Normal_114948 , layeredBlendVar5641.z ) , Normal_124962 , layeredBlendVar5641.w ) );
			float temp_output_5125_0 = ( 1 / _Texture_13_Tiling );
			float2 appendResult5027 = (fixed2(temp_output_5125_0 , temp_output_5125_0));
			float2 temp_output_5037_0 = ( Top_Bottom1999 * appendResult5027 );
			float4 texArray5120 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5037_0, _Texture_13_Normal_Index)  );
			float2 appendResult11_g952 = (fixed2(texArray5120.w , texArray5120.y));
			float2 temp_output_4_0_g952 = ( ( ( appendResult11_g952 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_13_Normal_Power );
			float dotResult5_g952 = dot( temp_output_4_0_g952 , temp_output_4_0_g952 );
			float temp_output_9_0_g952 = sqrt( ( 1.0 - saturate( dotResult5_g952 ) ) );
			float3 appendResult10_g952 = (fixed3(temp_output_4_0_g952.x , temp_output_4_0_g952.y , temp_output_9_0_g952));
			float3 temp_output_6035_0 = appendResult10_g952;
			float2 temp_output_5025_0 = ( Front_Back1991 * appendResult5027 );
			float4 texArray5127 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5025_0, _Texture_13_Normal_Index)  );
			float2 appendResult11_g945 = (fixed2(texArray5127.w , texArray5127.y));
			float2 temp_output_4_0_g945 = ( ( ( appendResult11_g945 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_13_Normal_Power * -1 ) );
			float dotResult5_g945 = dot( temp_output_4_0_g945 , temp_output_4_0_g945 );
			float temp_output_9_0_g945 = sqrt( ( 1.0 - saturate( dotResult5_g945 ) ) );
			float3 appendResult19_g945 = (fixed3(temp_output_4_0_g945.y , temp_output_4_0_g945.x , temp_output_9_0_g945));
			float3 appendResult5949 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_5035_0 = ( Left_Right2003 * appendResult5027 );
			float4 texArray5109 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5035_0, _Texture_13_Normal_Index)  );
			float2 appendResult11_g947 = (fixed2(texArray5109.w , texArray5109.y));
			float2 temp_output_4_0_g947 = ( ( ( appendResult11_g947 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_13_Normal_Power );
			float dotResult5_g947 = dot( temp_output_4_0_g947 , temp_output_4_0_g947 );
			float temp_output_9_0_g947 = sqrt( ( 1.0 - saturate( dotResult5_g947 ) ) );
			float3 appendResult10_g947 = (fixed3(temp_output_4_0_g947.x , temp_output_4_0_g947.y , temp_output_9_0_g947));
			float3 appendResult5952 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5543 = BlendComponents91;
			float3 weightedAvg5543 = ( ( weightedBlendVar5543.x*( appendResult19_g945 * appendResult5949 ) + weightedBlendVar5543.y*temp_output_6035_0 + weightedBlendVar5543.z*( appendResult10_g947 * appendResult5952 ) )/( weightedBlendVar5543.x + weightedBlendVar5543.y + weightedBlendVar5543.z ) );
			fixed3 ifLocalVar5830 = 0;
			UNITY_BRANCH 
			if( _Texture_13_Triplanar == 1 )
				ifLocalVar5830 = weightedAvg5543;
			else
				ifLocalVar5830 = temp_output_6035_0;
			fixed3 ifLocalVar6152 = 0;
			UNITY_BRANCH 
			if( _Texture_13_Normal_Index <= -1 )
				ifLocalVar6152 = EmptyNRM6172;
			else
				ifLocalVar6152 = ifLocalVar5830;
			fixed3 Normal_135059 = ifLocalVar6152;
			float temp_output_5006_0 = ( 1 / _Texture_14_Tiling );
			float2 appendResult5033 = (fixed2(temp_output_5006_0 , temp_output_5006_0));
			float2 temp_output_5022_0 = ( Top_Bottom1999 * appendResult5033 );
			float4 texArray5178 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5022_0, _Texture_14_Normal_Index)  );
			float2 appendResult11_g951 = (fixed2(texArray5178.w , texArray5178.y));
			float2 temp_output_4_0_g951 = ( ( ( appendResult11_g951 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_14_Normal_Power );
			float dotResult5_g951 = dot( temp_output_4_0_g951 , temp_output_4_0_g951 );
			float temp_output_9_0_g951 = sqrt( ( 1.0 - saturate( dotResult5_g951 ) ) );
			float3 appendResult10_g951 = (fixed3(temp_output_4_0_g951.x , temp_output_4_0_g951.y , temp_output_9_0_g951));
			float3 temp_output_6032_0 = appendResult10_g951;
			float2 temp_output_5009_0 = ( Front_Back1991 * appendResult5033 );
			float4 texArray5017 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5009_0, _Texture_14_Normal_Index)  );
			float2 appendResult11_g943 = (fixed2(texArray5017.w , texArray5017.y));
			float2 temp_output_4_0_g943 = ( ( ( appendResult11_g943 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_14_Normal_Power * -1 ) );
			float dotResult5_g943 = dot( temp_output_4_0_g943 , temp_output_4_0_g943 );
			float temp_output_9_0_g943 = sqrt( ( 1.0 - saturate( dotResult5_g943 ) ) );
			float3 appendResult19_g943 = (fixed3(temp_output_4_0_g943.y , temp_output_4_0_g943.x , temp_output_9_0_g943));
			float3 appendResult5942 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_5010_0 = ( Left_Right2003 * appendResult5033 );
			float4 texArray5170 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5010_0, _Texture_14_Normal_Index)  );
			float2 appendResult11_g940 = (fixed2(texArray5170.w , texArray5170.y));
			float2 temp_output_4_0_g940 = ( ( ( appendResult11_g940 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_14_Normal_Power );
			float dotResult5_g940 = dot( temp_output_4_0_g940 , temp_output_4_0_g940 );
			float temp_output_9_0_g940 = sqrt( ( 1.0 - saturate( dotResult5_g940 ) ) );
			float3 appendResult10_g940 = (fixed3(temp_output_4_0_g940.x , temp_output_4_0_g940.y , temp_output_9_0_g940));
			float3 appendResult5945 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5547 = BlendComponents91;
			float3 weightedAvg5547 = ( ( weightedBlendVar5547.x*( appendResult19_g943 * appendResult5942 ) + weightedBlendVar5547.y*temp_output_6032_0 + weightedBlendVar5547.z*( appendResult10_g940 * appendResult5945 ) )/( weightedBlendVar5547.x + weightedBlendVar5547.y + weightedBlendVar5547.z ) );
			fixed3 ifLocalVar5826 = 0;
			UNITY_BRANCH 
			if( _Texture_14_Triplanar == 1 )
				ifLocalVar5826 = weightedAvg5547;
			else
				ifLocalVar5826 = temp_output_6032_0;
			fixed3 ifLocalVar6154 = 0;
			UNITY_BRANCH 
			if( _Texture_14_Normal_Index <= -1 )
				ifLocalVar6154 = EmptyNRM6172;
			else
				ifLocalVar6154 = ifLocalVar5826;
			fixed3 Normal_145196 = ifLocalVar6154;
			float temp_output_5210_0 = ( 1 / _Texture_15_Tiling );
			float2 appendResult5212 = (fixed2(temp_output_5210_0 , temp_output_5210_0));
			float2 temp_output_5226_0 = ( Top_Bottom1999 * appendResult5212 );
			float4 texArray5246 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5226_0, _Texture_15_Normal_Index)  );
			float2 appendResult11_g954 = (fixed2(texArray5246.w , texArray5246.y));
			float2 temp_output_4_0_g954 = ( ( ( appendResult11_g954 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_15_Normal_Power );
			float dotResult5_g954 = dot( temp_output_4_0_g954 , temp_output_4_0_g954 );
			float temp_output_9_0_g954 = sqrt( ( 1.0 - saturate( dotResult5_g954 ) ) );
			float3 appendResult10_g954 = (fixed3(temp_output_4_0_g954.x , temp_output_4_0_g954.y , temp_output_9_0_g954));
			float3 temp_output_6029_0 = appendResult10_g954;
			float2 temp_output_5213_0 = ( Front_Back1991 * appendResult5212 );
			float4 texArray5227 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5213_0, _Texture_15_Normal_Index)  );
			float2 appendResult11_g944 = (fixed2(texArray5227.w , texArray5227.y));
			float2 temp_output_4_0_g944 = ( ( ( appendResult11_g944 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_15_Normal_Power * -1 ) );
			float dotResult5_g944 = dot( temp_output_4_0_g944 , temp_output_4_0_g944 );
			float temp_output_9_0_g944 = sqrt( ( 1.0 - saturate( dotResult5_g944 ) ) );
			float3 appendResult19_g944 = (fixed3(temp_output_4_0_g944.y , temp_output_4_0_g944.x , temp_output_9_0_g944));
			float3 appendResult5935 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_5224_0 = ( Left_Right2003 * appendResult5212 );
			float4 texArray5250 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5224_0, _Texture_15_Normal_Index)  );
			float2 appendResult11_g939 = (fixed2(texArray5250.w , texArray5250.y));
			float2 temp_output_4_0_g939 = ( ( ( appendResult11_g939 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_15_Normal_Power );
			float dotResult5_g939 = dot( temp_output_4_0_g939 , temp_output_4_0_g939 );
			float temp_output_9_0_g939 = sqrt( ( 1.0 - saturate( dotResult5_g939 ) ) );
			float3 appendResult10_g939 = (fixed3(temp_output_4_0_g939.x , temp_output_4_0_g939.y , temp_output_9_0_g939));
			float3 appendResult5938 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5551 = BlendComponents91;
			float3 weightedAvg5551 = ( ( weightedBlendVar5551.x*( appendResult19_g944 * appendResult5935 ) + weightedBlendVar5551.y*temp_output_6029_0 + weightedBlendVar5551.z*( appendResult10_g939 * appendResult5938 ) )/( weightedBlendVar5551.x + weightedBlendVar5551.y + weightedBlendVar5551.z ) );
			fixed3 ifLocalVar5822 = 0;
			UNITY_BRANCH 
			if( _Texture_15_Triplanar == 1 )
				ifLocalVar5822 = weightedAvg5551;
			else
				ifLocalVar5822 = temp_output_6029_0;
			fixed3 ifLocalVar6156 = 0;
			UNITY_BRANCH 
			if( _Texture_15_Normal_Index <= -1 )
				ifLocalVar6156 = EmptyNRM6172;
			else
				ifLocalVar6156 = ifLocalVar5822;
			fixed3 Normal_155280 = ifLocalVar6156;
			float temp_output_5075_0 = ( 1 / _Texture_16_Tiling );
			float2 appendResult5078 = (fixed2(temp_output_5075_0 , temp_output_5075_0));
			float2 temp_output_5083_0 = ( Top_Bottom1999 * appendResult5078 );
			float4 texArray5099 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5083_0, _Texture_16_Normal_Index)  );
			float2 appendResult11_g953 = (fixed2(texArray5099.w , texArray5099.y));
			float2 temp_output_4_0_g953 = ( ( ( appendResult11_g953 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_16_Normal_Power );
			float dotResult5_g953 = dot( temp_output_4_0_g953 , temp_output_4_0_g953 );
			float temp_output_9_0_g953 = sqrt( ( 1.0 - saturate( dotResult5_g953 ) ) );
			float3 appendResult10_g953 = (fixed3(temp_output_4_0_g953.x , temp_output_4_0_g953.y , temp_output_9_0_g953));
			float3 temp_output_6026_0 = appendResult10_g953;
			float2 temp_output_5079_0 = ( Front_Back1991 * appendResult5078 );
			float4 texArray5082 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5079_0, _Texture_16_Normal_Index)  );
			float2 appendResult11_g948 = (fixed2(texArray5082.w , texArray5082.y));
			float2 temp_output_4_0_g948 = ( ( ( appendResult11_g948 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_16_Normal_Power * -1 ) );
			float dotResult5_g948 = dot( temp_output_4_0_g948 , temp_output_4_0_g948 );
			float temp_output_9_0_g948 = sqrt( ( 1.0 - saturate( dotResult5_g948 ) ) );
			float3 appendResult19_g948 = (fixed3(temp_output_4_0_g948.y , temp_output_4_0_g948.x , temp_output_9_0_g948));
			float3 appendResult5928 = (fixed3(ase_worldNormal.x , -1 , 1));
			float2 temp_output_5085_0 = ( Left_Right2003 * appendResult5078 );
			float4 texArray4731 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5085_0, _Texture_16_Normal_Index)  );
			float2 appendResult11_g950 = (fixed2(texArray4731.w , texArray4731.y));
			float2 temp_output_4_0_g950 = ( ( ( appendResult11_g950 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_16_Normal_Power );
			float dotResult5_g950 = dot( temp_output_4_0_g950 , temp_output_4_0_g950 );
			float temp_output_9_0_g950 = sqrt( ( 1.0 - saturate( dotResult5_g950 ) ) );
			float3 appendResult10_g950 = (fixed3(temp_output_4_0_g950.x , temp_output_4_0_g950.y , temp_output_9_0_g950));
			float3 appendResult5931 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar5555 = BlendComponents91;
			float3 weightedAvg5555 = ( ( weightedBlendVar5555.x*( appendResult19_g948 * appendResult5928 ) + weightedBlendVar5555.y*temp_output_6026_0 + weightedBlendVar5555.z*( appendResult10_g950 * appendResult5931 ) )/( weightedBlendVar5555.x + weightedBlendVar5555.y + weightedBlendVar5555.z ) );
			fixed3 ifLocalVar5818 = 0;
			UNITY_BRANCH 
			if( _Texture_16_Triplanar == 1 )
				ifLocalVar5818 = weightedAvg5555;
			else
				ifLocalVar5818 = temp_output_6026_0;
			fixed3 ifLocalVar6158 = 0;
			UNITY_BRANCH 
			if( _Texture_16_Normal_Index <= -1 )
				ifLocalVar6158 = EmptyNRM6172;
			else
				ifLocalVar6158 = ifLocalVar5818;
			fixed3 Normal_164696 = ifLocalVar6158;
			float4 layeredBlendVar5642 = tex2DNode4371;
			float3 layeredBlend5642 = ( lerp( lerp( lerp( lerp( layeredBlend5641 , Normal_135059 , layeredBlendVar5642.x ) , Normal_145196 , layeredBlendVar5642.y ) , Normal_155280 , layeredBlendVar5642.z ) , Normal_164696 , layeredBlendVar5642.w ) );
			float3 normalizeResult3900 = normalize( layeredBlend5642 );
			float2 temp_output_3893_0 = ( Top_Bottom1999 / _Snow_Tiling );
			float4 texArray4382 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3893_0, _Texture_Snow_Normal_Index)  );
			float2 appendResult11_g955 = (fixed2(texArray4382.w , texArray4382.y));
			float2 temp_output_4_0_g955 = ( ( ( appendResult11_g955 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Snow_Normal_Scale );
			float dotResult5_g955 = dot( temp_output_4_0_g955 , temp_output_4_0_g955 );
			float temp_output_9_0_g955 = sqrt( ( 1.0 - saturate( dotResult5_g955 ) ) );
			float3 appendResult10_g955 = (fixed3(temp_output_4_0_g955.x , temp_output_4_0_g955.y , temp_output_9_0_g955));
			fixed3 ifLocalVar6166 = 0;
			UNITY_BRANCH 
			if( _Texture_Snow_Normal_Index <= -1 )
				ifLocalVar6166 = EmptyNRM6172;
			else
				ifLocalVar6166 = appendResult10_g955;
			float2 temp_output_3715_0 = ( Top_Bottom1999 * _Snow_Noise_Tiling );
			float4 texArray4383 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3715_0, _Texture_Snow_Noise_Index)  );
			float4 texArray4385 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3715_0 * float2( 0.23,0.23 ) ), _Texture_Snow_Noise_Index)  );
			float4 texArray4384 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3715_0 * float2( 0.53,0.53 ) ), _Texture_Snow_Noise_Index)  );
			float lerpResult4310 = lerp( 1.0 , ( texArray4383.w + texArray4385.w + texArray4384.w ) , _Snow_Noise_Power);
			float clampResult4302 = clamp( ( lerpResult4310 * _Snow_Amount ) , 0.4 , 1 );
			float clampResult1354 = clamp( ase_worldNormal.y , 0 , 0.9999 );
			float temp_output_1349_0 = ( _Snow_Maximum_Angle / 90 );
			float clampResult1347 = clamp( ( clampResult1354 - ( 1.0 - temp_output_1349_0 ) ) , 0 , 2 );
			fixed SnowSlope1352 = pow( ( 1.0 - ( clampResult1347 * ( 1 / temp_output_1349_0 ) ) ) , _Snow_Maximum_Angle_Hardness );
			float clampResult4146 = clamp( SnowSlope1352 , 0 , 1 );
			float lerpResult4293 = lerp( ( _Snow_Amount * clampResult4302 ) , 0 , clampResult4146);
			float temp_output_3751_0 = ( ( 1.0 - _Snow_Min_Height ) + ase_worldPos.y );
			float clampResult4220 = clamp( ( temp_output_3751_0 + 1 ) , 0 , 1 );
			float clampResult4260 = clamp( ( ( 1.0 - ( ( temp_output_3751_0 + _Snow_Min_Height_Blending ) / temp_output_3751_0 ) ) + -0.5 ) , 0 , 1 );
			float clampResult4263 = clamp( ( clampResult4220 + clampResult4260 ) , 0 , 1 );
			float lerpResult3759 = lerp( 0 , lerpResult4293 , clampResult4263);
			float clampResult4298 = clamp( lerpResult3759 , 0 , 1 );
			float temp_output_3708_0 = saturate( ( ( clampResult4298 / 1.5 ) * _Snow_Amount ) );
			float3 lerpResult5703 = lerp( normalizeResult3900 , ifLocalVar6166 , ( _Snow_Blend_Normal * temp_output_3708_0 ));
			float HeightMask5474 = saturate(pow(((( ( normalizeResult3900.y + 1 ) * 0.5 )*temp_output_3708_0)*4)+(temp_output_3708_0*2),5.0));
			float3 lerpResult3902 = lerp( normalizeResult3900 , lerpResult5703 , HeightMask5474);
			float lerpResult4350 = lerp( normalizeResult3900.y , WorldNormalVector( i , lerpResult3902 ).y , pow( clampResult4298 , 2 ));
			float clampResult4299 = clamp( ( lerpResult4350 * clampResult4298 ) , 0 , 1 );
			float clampResult3702 = clamp( pow( ( ( ( _Texture_16_Snow_Reduction * Splat4_A2546 ) + ( ( _Texture_15_Snow_Reduction * Splat4_B2545 ) + ( ( ( _Texture_13_Snow_Reduction * Splat4_R2543 ) + ( ( _Texture_12_Snow_Reduction * Splat3_A2540 ) + ( ( _Texture_11_Snow_Reduction * Splat3_B2539 ) + ( ( ( _Texture_9_Snow_Reduction * Splat3_R2537 ) + ( ( _Texture_8_Snow_Reduction * Splat2_A2109 ) + ( ( _Texture_7_Snow_Reduction * Splat2_B2108 ) + ( ( ( _Texture_5_Snow_Reduction * Splat2_R2106 ) + ( ( _Texture_1_Snow_Reduction * Splat1_R1438 ) + ( ( _Texture_2_Snow_Reduction * Splat1_G1441 ) + ( ( _Texture_3_Snow_Reduction * Splat1_B1442 ) + ( _Texture_4_Snow_Reduction * Splat1_A1491 ) ) ) ) ) + ( _Texture_6_Snow_Reduction * Splat2_G2107 ) ) ) ) ) + ( _Texture_10_Snow_Reduction * Splat3_G2538 ) ) ) ) ) + ( _Texture_14_Snow_Reduction * Splat4_G2544 ) ) ) ) * ( lerpResult4310 * 5 ) ) , 3 ) , 0 , 1 );
			float lerpResult3742 = lerp( saturate( clampResult4299 ) , 0 , clampResult3702);
			float3 lerpResult5722 = lerp( lerpResult3776 , lerpResult3906 , lerpResult3742);
			float3 lerpResult3741 = lerp( lerpResult3902 , normalizeResult3900 , clampResult3702);
			float3 lerpResult939 = lerp( lerpResult3741 , UnpackScaleNormal( tex2D( _Global_Normal_Map, uv_TexCoord2588 ) ,_Global_Normalmap_Power ) , UVmixDistance636);
			float3 normalizeResult3901 = normalize( lerpResult939 );
			float3 temp_output_4100_0 = BlendNormals( lerpResult5722 , normalizeResult3901 );
			o.Normal = temp_output_4100_0;
			float lerpResult6230 = lerp( _Global_Color_Map_Close_Power , _Global_Color_Map_Far_Power , UVmixDistance636);
			fixed4 tex2DNode6204 = tex2D( _Global_Color_Map, ( _Global_Color_Map_Offset + ( _Global_Color_Map_Scale * uv_TexCoord2588 ) ) );
			float clampResult6325 = clamp( ( tex2DNode6204.a + ( 1.0 - _Global_Color_Opacity_Power ) ) , 0 , 1 );
			float2 appendResult6241 = (fixed2(1 , ( lerpResult6230 * clampResult6325 )));
			float4 texArray3292 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3275_0, _Texture_1_Albedo_Index)  );
			float4 texArray3293 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3275_0 / _Texture_1_Far_Multiplier ), _Texture_1_Albedo_Index)  );
			float4 lerpResult5739 = lerp( texArray3292 , texArray3293 , UVmixDistance636);
			float4 texArray3287 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3279_0, _Texture_1_Albedo_Index)  );
			float4 texArray3294 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3277_0, _Texture_1_Albedo_Index)  );
			float3 weightedBlendVar5674 = BlendComponents91;
			float4 weightedAvg5674 = ( ( weightedBlendVar5674.x*texArray3287 + weightedBlendVar5674.y*texArray3292 + weightedBlendVar5674.z*texArray3294 )/( weightedBlendVar5674.x + weightedBlendVar5674.y + weightedBlendVar5674.z ) );
			float4 texArray3291 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3279_0 / _Texture_1_Far_Multiplier ), _Texture_1_Albedo_Index)  );
			float4 texArray3295 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3277_0 / _Texture_1_Far_Multiplier ), _Texture_1_Albedo_Index)  );
			float3 weightedBlendVar5675 = BlendComponents91;
			float4 weightedAvg5675 = ( ( weightedBlendVar5675.x*texArray3291 + weightedBlendVar5675.y*texArray3293 + weightedBlendVar5675.z*texArray3295 )/( weightedBlendVar5675.x + weightedBlendVar5675.y + weightedBlendVar5675.z ) );
			float4 lerpResult1767 = lerp( weightedAvg5674 , weightedAvg5675 , UVmixDistance636);
			fixed4 ifLocalVar5782 = 0;
			UNITY_BRANCH 
			if( _Texture_1_Triplanar == 1 )
				ifLocalVar5782 = lerpResult1767;
			else
				ifLocalVar5782 = lerpResult5739;
			fixed4 ifLocalVar6174 = 0;
			UNITY_BRANCH 
			if( _Texture_1_Albedo_Index > -1 )
				ifLocalVar6174 = ( ifLocalVar5782 * _Texture_1_Color );
			fixed4 Texture_1_Final950 = ifLocalVar6174;
			float4 texArray3338 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3343_0, _Texture_2_Albedo_Index)  );
			float4 texArray3339 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3343_0 / _Texture_2_Far_Multiplier ), _Texture_2_Albedo_Index)  );
			float4 lerpResult5749 = lerp( texArray3338 , texArray3339 , UVmixDistance636);
			float4 texArray3355 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3344_0, _Texture_2_Albedo_Index)  );
			float4 texArray3341 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3379_0, _Texture_2_Albedo_Index)  );
			float3 weightedBlendVar5496 = BlendComponents91;
			float4 weightedAvg5496 = ( ( weightedBlendVar5496.x*texArray3355 + weightedBlendVar5496.y*texArray3338 + weightedBlendVar5496.z*texArray3341 )/( weightedBlendVar5496.x + weightedBlendVar5496.y + weightedBlendVar5496.z ) );
			float4 texArray3356 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3344_0 / _Texture_2_Far_Multiplier ), _Texture_2_Albedo_Index)  );
			float4 texArray3342 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3379_0 / _Texture_2_Far_Multiplier ), _Texture_2_Albedo_Index)  );
			float3 weightedBlendVar5497 = BlendComponents91;
			float4 weightedAvg5497 = ( ( weightedBlendVar5497.x*texArray3356 + weightedBlendVar5497.y*texArray3339 + weightedBlendVar5497.z*texArray3342 )/( weightedBlendVar5497.x + weightedBlendVar5497.y + weightedBlendVar5497.z ) );
			float4 lerpResult3333 = lerp( weightedAvg5496 , weightedAvg5497 , UVmixDistance636);
			fixed4 ifLocalVar5771 = 0;
			UNITY_BRANCH 
			if( _Texture_2_Triplanar == 1 )
				ifLocalVar5771 = lerpResult3333;
			else
				ifLocalVar5771 = lerpResult5749;
			fixed4 ifLocalVar6128 = 0;
			UNITY_BRANCH 
			if( _Texture_2_Albedo_Index > -1 )
				ifLocalVar6128 = ( ifLocalVar5771 * _Texture_2_Color );
			fixed4 Texture_2_Final3385 = ifLocalVar6128;
			float4 texArray3405 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3410_0, _Texture_3_Albedo_Index)  );
			float4 texArray3406 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3410_0 / _Texture_3_Far_Multiplier ), _Texture_3_Albedo_Index)  );
			float4 lerpResult5759 = lerp( texArray3405 , texArray3406 , UVmixDistance636);
			float4 texArray3419 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3411_0, _Texture_3_Albedo_Index)  );
			float4 texArray3408 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3441_0, _Texture_3_Albedo_Index)  );
			float3 weightedBlendVar5500 = BlendComponents91;
			float4 weightedAvg5500 = ( ( weightedBlendVar5500.x*texArray3419 + weightedBlendVar5500.y*texArray3405 + weightedBlendVar5500.z*texArray3408 )/( weightedBlendVar5500.x + weightedBlendVar5500.y + weightedBlendVar5500.z ) );
			float4 texArray3420 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3413_0, _Texture_3_Albedo_Index)  );
			float4 texArray3409 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3441_0 / _Texture_3_Far_Multiplier ), _Texture_3_Albedo_Index)  );
			float3 weightedBlendVar5501 = BlendComponents91;
			float4 weightedAvg5501 = ( ( weightedBlendVar5501.x*texArray3420 + weightedBlendVar5501.y*texArray3406 + weightedBlendVar5501.z*texArray3409 )/( weightedBlendVar5501.x + weightedBlendVar5501.y + weightedBlendVar5501.z ) );
			float4 lerpResult3400 = lerp( weightedAvg5500 , weightedAvg5501 , UVmixDistance636);
			fixed4 ifLocalVar5775 = 0;
			UNITY_BRANCH 
			if( _Texture_3_Triplanar == 1 )
				ifLocalVar5775 = lerpResult3400;
			else
				ifLocalVar5775 = lerpResult5759;
			fixed4 ifLocalVar6130 = 0;
			UNITY_BRANCH 
			if( _Texture_3_Albedo_Index > -1 )
				ifLocalVar6130 = ( ifLocalVar5775 * _Texture_3_Color );
			fixed4 Texture_3_Final3451 = ifLocalVar6130;
			float4 texArray3472 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3477_0, _Texture_4_Albedo_Index)  );
			float4 texArray3473 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3477_0 / _Texture_4_Far_Multiplier ), _Texture_4_Albedo_Index)  );
			float4 lerpResult5761 = lerp( texArray3472 , texArray3473 , UVmixDistance636);
			float4 texArray3486 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3478_0, _Texture_4_Albedo_Index)  );
			float4 texArray3475 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3508_0, _Texture_4_Albedo_Index)  );
			float3 weightedBlendVar5504 = BlendComponents91;
			float4 weightedAvg5504 = ( ( weightedBlendVar5504.x*texArray3486 + weightedBlendVar5504.y*texArray3472 + weightedBlendVar5504.z*texArray3475 )/( weightedBlendVar5504.x + weightedBlendVar5504.y + weightedBlendVar5504.z ) );
			float4 texArray3487 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3478_0 / _Texture_4_Far_Multiplier ), _Texture_4_Albedo_Index)  );
			float4 texArray3476 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3508_0 / _Texture_4_Far_Multiplier ), _Texture_4_Albedo_Index)  );
			float3 weightedBlendVar5505 = BlendComponents91;
			float4 weightedAvg5505 = ( ( weightedBlendVar5505.x*texArray3487 + weightedBlendVar5505.y*texArray3473 + weightedBlendVar5505.z*texArray3476 )/( weightedBlendVar5505.x + weightedBlendVar5505.y + weightedBlendVar5505.z ) );
			float4 lerpResult3467 = lerp( weightedAvg5504 , weightedAvg5505 , UVmixDistance636);
			fixed4 ifLocalVar5777 = 0;
			UNITY_BRANCH 
			if( _Texture_4_Triplanar == 1 )
				ifLocalVar5777 = lerpResult3467;
			else
				ifLocalVar5777 = lerpResult5761;
			fixed4 ifLocalVar6132 = 0;
			UNITY_BRANCH 
			if( _Texture_4_Albedo_Index > -1 )
				ifLocalVar6132 = ( ifLocalVar5777 * _Texture_4_Color );
			fixed4 Texture_4_Final3518 = ifLocalVar6132;
			float4 layeredBlendVar5643 = tex2DNode4368;
			float4 layeredBlend5643 = ( lerp( lerp( lerp( lerp( float4( 0,0,0,0 ) , Texture_1_Final950 , layeredBlendVar5643.x ) , Texture_2_Final3385 , layeredBlendVar5643.y ) , Texture_3_Final3451 , layeredBlendVar5643.z ) , Texture_4_Final3518 , layeredBlendVar5643.w ) );
			float4 texArray4450 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4416_0, _Texture_5_Albedo_Index)  );
			float4 texArray4445 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4416_0 / _Texture_5_Far_Multiplier ), _Texture_5_Albedo_Index)  );
			float4 lerpResult5789 = lerp( texArray4450 , texArray4445 , UVmixDistance636);
			float4 texArray4442 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4400_0, _Texture_5_Albedo_Index)  );
			float4 texArray4443 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4413_0, _Texture_5_Albedo_Index)  );
			float3 weightedBlendVar5512 = BlendComponents91;
			float4 weightedAvg5512 = ( ( weightedBlendVar5512.x*texArray4442 + weightedBlendVar5512.y*texArray4450 + weightedBlendVar5512.z*texArray4443 )/( weightedBlendVar5512.x + weightedBlendVar5512.y + weightedBlendVar5512.z ) );
			float4 texArray4444 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4400_0 / _Texture_5_Far_Multiplier ), _Texture_5_Albedo_Index)  );
			float4 texArray4439 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4413_0 / _Texture_5_Far_Multiplier ), _Texture_5_Albedo_Index)  );
			float3 weightedBlendVar5514 = BlendComponents91;
			float4 weightedAvg5514 = ( ( weightedBlendVar5514.x*texArray4444 + weightedBlendVar5514.y*texArray4445 + weightedBlendVar5514.z*texArray4439 )/( weightedBlendVar5514.x + weightedBlendVar5514.y + weightedBlendVar5514.z ) );
			float4 lerpResult4466 = lerp( weightedAvg5512 , weightedAvg5514 , UVmixDistance636);
			fixed4 ifLocalVar5804 = 0;
			UNITY_BRANCH 
			if( _Texture_5_Triplanar == 1 )
				ifLocalVar5804 = lerpResult4466;
			else
				ifLocalVar5804 = lerpResult5789;
			fixed4 ifLocalVar6134 = 0;
			UNITY_BRANCH 
			if( _Texture_5_Albedo_Index > -1 )
				ifLocalVar6134 = ( ifLocalVar5804 * _Texture_5_Color );
			fixed4 Texture_5_Final4396 = ifLocalVar6134;
			float4 texArray4517 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4485_0, _Texture_6_Albedo_Index)  );
			float4 texArray4512 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4485_0 / _Texture_6_Far_Multiplier ), _Texture_6_Albedo_Index)  );
			float4 lerpResult5794 = lerp( texArray4517 , texArray4512 , UVmixDistance636);
			float4 texArray4509 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4472_0, _Texture_6_Albedo_Index)  );
			float4 texArray4510 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4483_0, _Texture_6_Albedo_Index)  );
			float3 weightedBlendVar5520 = BlendComponents91;
			float4 weightedAvg5520 = ( ( weightedBlendVar5520.x*texArray4509 + weightedBlendVar5520.y*texArray4517 + weightedBlendVar5520.z*texArray4510 )/( weightedBlendVar5520.x + weightedBlendVar5520.y + weightedBlendVar5520.z ) );
			float4 texArray4511 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4472_0 / _Texture_6_Far_Multiplier ), _Texture_6_Albedo_Index)  );
			float4 texArray4506 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4483_0 / _Texture_6_Far_Multiplier ), _Texture_6_Albedo_Index)  );
			float3 weightedBlendVar5522 = BlendComponents91;
			float4 weightedAvg5522 = ( ( weightedBlendVar5522.x*texArray4511 + weightedBlendVar5522.y*texArray4512 + weightedBlendVar5522.z*texArray4506 )/( weightedBlendVar5522.x + weightedBlendVar5522.y + weightedBlendVar5522.z ) );
			float4 lerpResult4532 = lerp( weightedAvg5520 , weightedAvg5522 , UVmixDistance636);
			fixed4 ifLocalVar5809 = 0;
			UNITY_BRANCH 
			if( _Texture_6_Triplanar == 1 )
				ifLocalVar5809 = lerpResult4532;
			else
				ifLocalVar5809 = lerpResult5794;
			fixed4 ifLocalVar6136 = 0;
			UNITY_BRANCH 
			if( _Texture_6_Albedo_Index > -1 )
				ifLocalVar6136 = ( ifLocalVar5809 * _Texture_6_Color );
			fixed4 Texture_6_Final4536 = ifLocalVar6136;
			float4 texArray4591 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4559_0, _Texture_7_Albedo_Index)  );
			float4 texArray4586 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4559_0 / _Texture_7_Far_Multiplier ), _Texture_7_Albedo_Index)  );
			float4 lerpResult5798 = lerp( texArray4591 , texArray4586 , UVmixDistance636);
			float4 texArray4583 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4546_0, _Texture_7_Albedo_Index)  );
			float4 texArray4584 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4557_0, _Texture_7_Albedo_Index)  );
			float3 weightedBlendVar5524 = BlendComponents91;
			float4 weightedAvg5524 = ( ( weightedBlendVar5524.x*texArray4583 + weightedBlendVar5524.y*texArray4591 + weightedBlendVar5524.z*texArray4584 )/( weightedBlendVar5524.x + weightedBlendVar5524.y + weightedBlendVar5524.z ) );
			float4 texArray4585 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4546_0 / _Texture_7_Far_Multiplier ), _Texture_7_Albedo_Index)  );
			float4 texArray4580 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4557_0 / _Texture_7_Far_Multiplier ), _Texture_7_Albedo_Index)  );
			float3 weightedBlendVar5526 = BlendComponents91;
			float4 weightedAvg5526 = ( ( weightedBlendVar5526.x*texArray4585 + weightedBlendVar5526.y*texArray4586 + weightedBlendVar5526.z*texArray4580 )/( weightedBlendVar5526.x + weightedBlendVar5526.y + weightedBlendVar5526.z ) );
			float4 lerpResult4606 = lerp( weightedAvg5524 , weightedAvg5526 , UVmixDistance636);
			fixed4 ifLocalVar5812 = 0;
			UNITY_BRANCH 
			if( _Texture_7_Triplanar == 1 )
				ifLocalVar5812 = lerpResult4606;
			else
				ifLocalVar5812 = lerpResult5798;
			fixed4 ifLocalVar6139 = 0;
			UNITY_BRANCH 
			if( _Texture_7_Albedo_Index > -1 )
				ifLocalVar6139 = ( ifLocalVar5812 * _Texture_7_Color );
			fixed4 Texture_7_Final4614 = ifLocalVar6139;
			float4 texArray4665 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4633_0, _Texture_8_Albedo_Index)  );
			float4 texArray4660 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4633_0 / _Texture_8_Far_Multiplier ), _Texture_8_Albedo_Index)  );
			float4 lerpResult5802 = lerp( texArray4665 , texArray4660 , UVmixDistance636);
			float4 texArray4657 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4620_0, _Texture_8_Albedo_Index)  );
			float4 texArray4658 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4631_0, _Texture_8_Albedo_Index)  );
			float3 weightedBlendVar5528 = BlendComponents91;
			float4 weightedAvg5528 = ( ( weightedBlendVar5528.x*texArray4657 + weightedBlendVar5528.y*texArray4665 + weightedBlendVar5528.z*texArray4658 )/( weightedBlendVar5528.x + weightedBlendVar5528.y + weightedBlendVar5528.z ) );
			float4 texArray4659 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4620_0 / _Texture_8_Far_Multiplier ), _Texture_8_Albedo_Index)  );
			float4 texArray4654 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4631_0 / _Texture_8_Far_Multiplier ), _Texture_8_Albedo_Index)  );
			float3 weightedBlendVar5530 = BlendComponents91;
			float4 weightedAvg5530 = ( ( weightedBlendVar5530.x*texArray4659 + weightedBlendVar5530.y*texArray4660 + weightedBlendVar5530.z*texArray4654 )/( weightedBlendVar5530.x + weightedBlendVar5530.y + weightedBlendVar5530.z ) );
			float4 lerpResult4680 = lerp( weightedAvg5528 , weightedAvg5530 , UVmixDistance636);
			fixed4 ifLocalVar5815 = 0;
			UNITY_BRANCH 
			if( _Texture_8_Triplanar == 1 )
				ifLocalVar5815 = lerpResult4680;
			else
				ifLocalVar5815 = lerpResult5802;
			fixed4 ifLocalVar6141 = 0;
			UNITY_BRANCH 
			if( _Texture_8_Albedo_Index > -1 )
				ifLocalVar6141 = ( ifLocalVar5815 * _Texture_8_Color );
			fixed4 Texture_8_Final4689 = ifLocalVar6141;
			float4 layeredBlendVar5644 = tex2DNode4369;
			float4 layeredBlend5644 = ( lerp( lerp( lerp( lerp( layeredBlend5643 , Texture_5_Final4396 , layeredBlendVar5644.x ) , Texture_6_Final4536 , layeredBlendVar5644.y ) , Texture_7_Final4614 , layeredBlendVar5644.z ) , Texture_8_Final4689 , layeredBlendVar5644.w ) );
			float4 texArray4723 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4712_0, _Texture_9_Albedo_Index)  );
			float4 texArray4889 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4712_0 / _Texture_9_Far_Multiplier ), _Texture_9_Albedo_Index)  );
			float4 lerpResult5845 = lerp( texArray4723 , texArray4889 , UVmixDistance636);
			float4 texArray5286 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4706_0, _Texture_9_Albedo_Index)  );
			float4 texArray4858 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4761_0, _Texture_9_Albedo_Index)  );
			float3 weightedBlendVar5489 = BlendComponents91;
			float4 weightedAvg5489 = ( ( weightedBlendVar5489.x*texArray5286 + weightedBlendVar5489.y*texArray4723 + weightedBlendVar5489.z*texArray4858 )/( weightedBlendVar5489.x + weightedBlendVar5489.y + weightedBlendVar5489.z ) );
			float4 texArray4719 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4706_0 / _Texture_9_Far_Multiplier ), _Texture_9_Albedo_Index)  );
			float4 texArray4865 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4761_0 / _Texture_9_Far_Multiplier ), _Texture_9_Albedo_Index)  );
			float3 weightedBlendVar5490 = BlendComponents91;
			float4 weightedAvg5490 = ( ( weightedBlendVar5490.x*texArray4719 + weightedBlendVar5490.y*texArray4889 + weightedBlendVar5490.z*texArray4865 )/( weightedBlendVar5490.x + weightedBlendVar5490.y + weightedBlendVar5490.z ) );
			float4 lerpResult4976 = lerp( weightedAvg5489 , weightedAvg5490 , UVmixDistance636);
			fixed4 ifLocalVar5844 = 0;
			UNITY_BRANCH 
			if( _Texture_9_Triplanar == 1 )
				ifLocalVar5844 = lerpResult4976;
			else
				ifLocalVar5844 = lerpResult5845;
			fixed4 ifLocalVar6143 = 0;
			UNITY_BRANCH 
			if( _Texture_9_Albedo_Index > -1 )
				ifLocalVar6143 = ( ifLocalVar5844 * _Texture_9_Color );
			fixed4 Texture_9_Final4987 = ifLocalVar6143;
			float4 texArray4899 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4793_0, _Texture_10_Albedo_Index)  );
			float4 texArray4913 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4793_0 / _Texture_10_Far_Multiplier ), _Texture_10_Albedo_Index)  );
			float4 lerpResult5841 = lerp( texArray4899 , texArray4913 , UVmixDistance636);
			float4 texArray4886 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4742_0, _Texture_10_Albedo_Index)  );
			float4 texArray4877 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4785_0, _Texture_10_Albedo_Index)  );
			float3 weightedBlendVar5532 = BlendComponents91;
			float4 weightedAvg5532 = ( ( weightedBlendVar5532.x*texArray4886 + weightedBlendVar5532.y*texArray4899 + weightedBlendVar5532.z*texArray4877 )/( weightedBlendVar5532.x + weightedBlendVar5532.y + weightedBlendVar5532.z ) );
			float4 texArray4894 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4742_0 / _Texture_10_Far_Multiplier ), _Texture_10_Albedo_Index)  );
			float4 texArray4878 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4785_0 / _Texture_10_Far_Multiplier ), _Texture_10_Albedo_Index)  );
			float3 weightedBlendVar5534 = BlendComponents91;
			float4 weightedAvg5534 = ( ( weightedBlendVar5534.x*texArray4894 + weightedBlendVar5534.y*texArray4913 + weightedBlendVar5534.z*texArray4878 )/( weightedBlendVar5534.x + weightedBlendVar5534.y + weightedBlendVar5534.z ) );
			float4 lerpResult4983 = lerp( weightedAvg5532 , weightedAvg5534 , UVmixDistance636);
			fixed4 ifLocalVar5840 = 0;
			UNITY_BRANCH 
			if( _Texture_10_Triplanar == 1 )
				ifLocalVar5840 = lerpResult4983;
			else
				ifLocalVar5840 = lerpResult5841;
			fixed4 ifLocalVar6145 = 0;
			UNITY_BRANCH 
			if( _Texture_10_Albedo_Index > -1 )
				ifLocalVar6145 = ( ifLocalVar5840 * _Texture_10_Color );
			fixed4 Texture_10_Final4994 = ifLocalVar6145;
			float4 texArray4928 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4817_0, _Texture_11_Albedo_Index)  );
			float4 texArray4923 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4817_0 / _Texture_11_Far_Multiplier ), _Texture_11_Albedo_Index)  );
			float4 lerpResult5837 = lerp( texArray4928 , texArray4923 , UVmixDistance636);
			float4 texArray4917 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4748_0, _Texture_11_Albedo_Index)  );
			float4 texArray4911 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4795_0, _Texture_11_Albedo_Index)  );
			float3 weightedBlendVar5536 = BlendComponents91;
			float4 weightedAvg5536 = ( ( weightedBlendVar5536.x*texArray4917 + weightedBlendVar5536.y*texArray4928 + weightedBlendVar5536.z*texArray4911 )/( weightedBlendVar5536.x + weightedBlendVar5536.y + weightedBlendVar5536.z ) );
			float4 texArray4898 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4748_0 / _Texture_11_Far_Multiplier ), _Texture_11_Albedo_Index)  );
			float4 texArray4914 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4795_0 / _Texture_11_Far_Multiplier ), _Texture_11_Albedo_Index)  );
			float3 weightedBlendVar5538 = BlendComponents91;
			float4 weightedAvg5538 = ( ( weightedBlendVar5538.x*texArray4898 + weightedBlendVar5538.y*texArray4923 + weightedBlendVar5538.z*texArray4914 )/( weightedBlendVar5538.x + weightedBlendVar5538.y + weightedBlendVar5538.z ) );
			float4 lerpResult4988 = lerp( weightedAvg5536 , weightedAvg5538 , UVmixDistance636);
			fixed4 ifLocalVar5836 = 0;
			UNITY_BRANCH 
			if( _Texture_11_Triplanar == 1 )
				ifLocalVar5836 = lerpResult4988;
			else
				ifLocalVar5836 = lerpResult5837;
			fixed4 ifLocalVar6147 = 0;
			UNITY_BRANCH 
			if( _Texture_11_Albedo_Index > -1 )
				ifLocalVar6147 = ( ifLocalVar5836 * _Texture_11_Color );
			fixed4 Texture_11_Final4996 = ifLocalVar6147;
			float4 texArray4954 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4849_0, _Texture_12_Albedo_Index)  );
			float4 texArray4952 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4849_0 / _Texture_12_Far_Multiplier ), _Texture_12_Albedo_Index)  );
			float4 lerpResult5833 = lerp( texArray4954 , texArray4952 , UVmixDistance636);
			float4 texArray4926 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4758_0, _Texture_12_Albedo_Index)  );
			float4 texArray4927 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4830_0, _Texture_12_Albedo_Index)  );
			float3 weightedBlendVar5540 = BlendComponents91;
			float4 weightedAvg5540 = ( ( weightedBlendVar5540.x*texArray4926 + weightedBlendVar5540.y*texArray4954 + weightedBlendVar5540.z*texArray4927 )/( weightedBlendVar5540.x + weightedBlendVar5540.y + weightedBlendVar5540.z ) );
			float4 texArray4919 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4758_0 / _Texture_12_Far_Multiplier ), _Texture_12_Albedo_Index)  );
			float4 texArray4931 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4830_0 / _Texture_12_Far_Multiplier ), _Texture_12_Albedo_Index)  );
			float3 weightedBlendVar5542 = BlendComponents91;
			float4 weightedAvg5542 = ( ( weightedBlendVar5542.x*texArray4919 + weightedBlendVar5542.y*texArray4952 + weightedBlendVar5542.z*texArray4931 )/( weightedBlendVar5542.x + weightedBlendVar5542.y + weightedBlendVar5542.z ) );
			float4 lerpResult4993 = lerp( weightedAvg5540 , weightedAvg5542 , UVmixDistance636);
			fixed4 ifLocalVar5832 = 0;
			UNITY_BRANCH 
			if( _Texture_12_Triplanar == 1 )
				ifLocalVar5832 = lerpResult4993;
			else
				ifLocalVar5832 = lerpResult5833;
			fixed4 ifLocalVar6169 = 0;
			UNITY_BRANCH 
			if( _Texture_12_Albedo_Index > -1 )
				ifLocalVar6169 = ( ifLocalVar5832 * _Texture_12_Color );
			fixed4 Texture_12_Final4997 = ifLocalVar6169;
			float4 layeredBlendVar5645 = tex2DNode4370;
			float4 layeredBlend5645 = ( lerp( lerp( lerp( lerp( layeredBlend5644 , Texture_9_Final4987 , layeredBlendVar5645.x ) , Texture_10_Final4994 , layeredBlendVar5645.y ) , Texture_11_Final4996 , layeredBlendVar5645.z ) , Texture_12_Final4997 , layeredBlendVar5645.w ) );
			float4 texArray5043 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5037_0, _Texture_13_Albedo_Index)  );
			float4 texArray5034 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5037_0 / _Texture_13_Far_Multiplier ), _Texture_13_Albedo_Index)  );
			float4 lerpResult5829 = lerp( texArray5043 , texArray5034 , UVmixDistance636);
			float4 texArray5128 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5025_0, _Texture_13_Albedo_Index)  );
			float4 texArray5129 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5035_0, _Texture_13_Albedo_Index)  );
			float3 weightedBlendVar5544 = BlendComponents91;
			float4 weightedAvg5544 = ( ( weightedBlendVar5544.x*texArray5128 + weightedBlendVar5544.y*texArray5043 + weightedBlendVar5544.z*texArray5129 )/( weightedBlendVar5544.x + weightedBlendVar5544.y + weightedBlendVar5544.z ) );
			float4 texArray5130 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5025_0 / _Texture_13_Far_Multiplier ), _Texture_13_Albedo_Index)  );
			float4 texArray5121 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5035_0 / _Texture_13_Far_Multiplier ), _Texture_13_Albedo_Index)  );
			float3 weightedBlendVar5546 = BlendComponents91;
			float4 weightedAvg5546 = ( ( weightedBlendVar5546.x*texArray5130 + weightedBlendVar5546.y*texArray5034 + weightedBlendVar5546.z*texArray5121 )/( weightedBlendVar5546.x + weightedBlendVar5546.y + weightedBlendVar5546.z ) );
			float4 lerpResult5054 = lerp( weightedAvg5544 , weightedAvg5546 , UVmixDistance636);
			fixed4 ifLocalVar5828 = 0;
			UNITY_BRANCH 
			if( _Texture_13_Triplanar == 1 )
				ifLocalVar5828 = lerpResult5054;
			else
				ifLocalVar5828 = lerpResult5829;
			fixed4 ifLocalVar6151 = 0;
			UNITY_BRANCH 
			if( _Texture_13_Albedo_Index > -1 )
				ifLocalVar6151 = ( ifLocalVar5828 * _Texture_13_Color );
			fixed4 Texture_13_Final5058 = ifLocalVar6151;
			float4 texArray5202 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5022_0, _Texture_14_Albedo_Index)  );
			float4 texArray5171 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5022_0 / _Texture_14_Far_Multiplier ), _Texture_14_Albedo_Index)  );
			float4 lerpResult5825 = lerp( texArray5202 , texArray5171 , UVmixDistance636);
			float4 texArray5168 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5009_0, _Texture_14_Albedo_Index)  );
			float4 texArray5239 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5010_0, _Texture_14_Albedo_Index)  );
			float3 weightedBlendVar5548 = BlendComponents91;
			float4 weightedAvg5548 = ( ( weightedBlendVar5548.x*texArray5168 + weightedBlendVar5548.y*texArray5202 + weightedBlendVar5548.z*texArray5239 )/( weightedBlendVar5548.x + weightedBlendVar5548.y + weightedBlendVar5548.z ) );
			float4 texArray5205 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5009_0 / _Texture_14_Far_Multiplier ), _Texture_14_Albedo_Index)  );
			float4 texArray5241 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5010_0 / _Texture_14_Far_Multiplier ), _Texture_14_Albedo_Index)  );
			float3 weightedBlendVar5550 = BlendComponents91;
			float4 weightedAvg5550 = ( ( weightedBlendVar5550.x*texArray5205 + weightedBlendVar5550.y*texArray5171 + weightedBlendVar5550.z*texArray5241 )/( weightedBlendVar5550.x + weightedBlendVar5550.y + weightedBlendVar5550.z ) );
			float4 lerpResult5197 = lerp( weightedAvg5548 , weightedAvg5550 , UVmixDistance636);
			fixed4 ifLocalVar5824 = 0;
			UNITY_BRANCH 
			if( _Texture_14_Triplanar == 1 )
				ifLocalVar5824 = lerpResult5197;
			else
				ifLocalVar5824 = lerpResult5825;
			fixed4 ifLocalVar6153 = 0;
			UNITY_BRANCH 
			if( _Texture_14_Albedo_Index > -1 )
				ifLocalVar6153 = ( ifLocalVar5824 * _Texture_14_Color );
			fixed4 Texture_14_Final5163 = ifLocalVar6153;
			float4 texArray5259 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5226_0, _Texture_15_Albedo_Index)  );
			float4 texArray5272 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5226_0 / _Texture_15_Far_Multiplier ), _Texture_15_Albedo_Index)  );
			float4 lerpResult5821 = lerp( texArray5259 , texArray5272 , UVmixDistance636);
			float4 texArray5182 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5213_0, _Texture_15_Albedo_Index)  );
			float4 texArray5189 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5224_0, _Texture_15_Albedo_Index)  );
			float3 weightedBlendVar5552 = BlendComponents91;
			float4 weightedAvg5552 = ( ( weightedBlendVar5552.x*texArray5182 + weightedBlendVar5552.y*texArray5259 + weightedBlendVar5552.z*texArray5189 )/( weightedBlendVar5552.x + weightedBlendVar5552.y + weightedBlendVar5552.z ) );
			float4 texArray5188 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5213_0 / _Texture_15_Far_Multiplier ), _Texture_15_Albedo_Index)  );
			float4 texArray5247 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5224_0 / _Texture_15_Far_Multiplier ), _Texture_15_Albedo_Index)  );
			float3 weightedBlendVar5554 = BlendComponents91;
			float4 weightedAvg5554 = ( ( weightedBlendVar5554.x*texArray5188 + weightedBlendVar5554.y*texArray5272 + weightedBlendVar5554.z*texArray5247 )/( weightedBlendVar5554.x + weightedBlendVar5554.y + weightedBlendVar5554.z ) );
			float4 lerpResult5279 = lerp( weightedAvg5552 , weightedAvg5554 , UVmixDistance636);
			fixed4 ifLocalVar5820 = 0;
			UNITY_BRANCH 
			if( _Texture_15_Triplanar == 1 )
				ifLocalVar5820 = lerpResult5279;
			else
				ifLocalVar5820 = lerpResult5821;
			fixed4 ifLocalVar6155 = 0;
			UNITY_BRANCH 
			if( _Texture_15_Albedo_Index > -1 )
				ifLocalVar6155 = ( ifLocalVar5820 * _Texture_15_Color );
			fixed4 Texture_15_Final5270 = ifLocalVar6155;
			float4 texArray5139 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5083_0, _Texture_16_Albedo_Index)  );
			float4 texArray5143 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5083_0 / _Texture_16_Far_Multiplier ), _Texture_16_Albedo_Index)  );
			float4 lerpResult5817 = lerp( texArray5139 , texArray5143 , UVmixDistance636);
			float4 texArray5150 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5079_0, _Texture_16_Albedo_Index)  );
			float4 texArray5145 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5085_0, _Texture_16_Albedo_Index)  );
			float3 weightedBlendVar5556 = BlendComponents91;
			float4 weightedAvg5556 = ( ( weightedBlendVar5556.x*texArray5150 + weightedBlendVar5556.y*texArray5139 + weightedBlendVar5556.z*texArray5145 )/( weightedBlendVar5556.x + weightedBlendVar5556.y + weightedBlendVar5556.z ) );
			float4 texArray5144 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5079_0 / _Texture_16_Far_Multiplier ), _Texture_16_Albedo_Index)  );
			float4 texArray5154 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5085_0 / _Texture_16_Far_Multiplier ), _Texture_16_Albedo_Index)  );
			float3 weightedBlendVar5558 = BlendComponents91;
			float4 weightedAvg5558 = ( ( weightedBlendVar5558.x*texArray5144 + weightedBlendVar5558.y*texArray5143 + weightedBlendVar5558.z*texArray5154 )/( weightedBlendVar5558.x + weightedBlendVar5558.y + weightedBlendVar5558.z ) );
			float4 lerpResult5104 = lerp( weightedAvg5556 , weightedAvg5558 , UVmixDistance636);
			fixed4 ifLocalVar5816 = 0;
			UNITY_BRANCH 
			if( _Texture_16_Triplanar == 1 )
				ifLocalVar5816 = lerpResult5104;
			else
				ifLocalVar5816 = lerpResult5817;
			fixed4 ifLocalVar6183 = 0;
			UNITY_BRANCH 
			if( _Texture_16_Albedo_Index > -1 )
				ifLocalVar6183 = ( ifLocalVar5816 * _Texture_16_Color );
			fixed4 Texture_16_Final5094 = ifLocalVar6183;
			float4 layeredBlendVar5646 = tex2DNode4371;
			float4 layeredBlend5646 = ( lerp( lerp( lerp( lerp( layeredBlend5645 , Texture_13_Final5058 , layeredBlendVar5646.x ) , Texture_14_Final5163 , layeredBlendVar5646.y ) , Texture_15_Final5270 , layeredBlendVar5646.z ) , Texture_16_Final5094 , layeredBlendVar5646.w ) );
			float3 appendResult3857 = (fixed3(layeredBlend5646.x , layeredBlend5646.y , layeredBlend5646.z));
			float3 appendResult6206 = (fixed3(tex2DNode6204.r , tex2DNode6204.g , tex2DNode6204.b));
			float2 weightedBlendVar6240 = appendResult6241;
			float3 weightedAvg6240 = ( ( weightedBlendVar6240.x*appendResult3857 + weightedBlendVar6240.y*appendResult6206 )/( weightedBlendVar6240.x + weightedBlendVar6240.y ) );
			fixed2 temp_cast_2 = (( _Geological_Map_Offset_Close + ( ase_worldPos.y / _Geological_Tiling_Close ) )).xx;
			fixed4 tex2DNode5984 = tex2D( _Texture_Geological_Map, temp_cast_2 );
			float3 appendResult5986 = (fixed3(tex2DNode5984.r , tex2DNode5984.g , tex2DNode5984.b));
			fixed2 temp_cast_3 = (( ( ase_worldPos.y / _Geological_Tiling_Far ) + _Geological_Map_Offset_Far )).xx;
			fixed4 tex2DNode5983 = tex2D( _Texture_Geological_Map, temp_cast_3 );
			float3 appendResult5985 = (fixed3(tex2DNode5983.r , tex2DNode5983.g , tex2DNode5983.b));
			float3 lerpResult1315 = lerp( ( _Geological_Map_Close_Power * ( appendResult5986 + float3( -0.3,-0.3,-0.3 ) ) ) , ( _Geological_Map_Far_Power * ( appendResult5985 + float3( -0.3,-0.3,-0.3 ) ) ) , UVmixDistance636);
			fixed3 blendOpSrc4362 = weightedAvg6240;
			fixed3 blendOpDest4362 = ( lerpResult1315 * ( ( _Texture_16_Geological_Power * Splat4_A2546 ) + ( ( _Texture_15_Geological_Power * Splat4_B2545 ) + ( ( _Texture_14_Geological_Power * Splat4_G2544 ) + ( ( _Texture_13_Geological_Power * Splat4_R2543 ) + ( ( _Texture_12_Geological_Power * Splat3_A2540 ) + ( ( _Texture_11_Geological_Power * Splat3_B2539 ) + ( ( _Texture_10_Geological_Power * Splat3_G2538 ) + ( ( _Texture_9_Geological_Power * Splat3_R2537 ) + ( ( _Texture_8_Geological_Power * Splat2_A2109 ) + ( ( _Texture_7_Geological_Power * Splat2_B2108 ) + ( ( _Texture_6_Geological_Power * Splat2_G2107 ) + ( ( _Texture_5_Geological_Power * Splat2_R2106 ) + ( ( _Texture_1_Geological_Power * Splat1_R1438 ) + ( ( _Texture_2_Geological_Power * Splat1_G1441 ) + ( ( _Texture_4_Geological_Power * Splat1_A1491 ) + ( _Texture_3_Geological_Power * Splat1_B1442 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) );
			float3 clampResult5715 = clamp( ( saturate( ( blendOpSrc4362 + blendOpDest4362 ) )) , float3( 0,0,0 ) , float3( 1,1,1 ) );
			float4 texArray4378 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3893_0, _Texture_Snow_Index)  );
			float4 lerpResult1416 = lerp( texArray4378 , _Texture_Snow_Average , UVmixDistance636);
			fixed4 ifLocalVar6165 = 0;
			UNITY_BRANCH 
			if( _Texture_Snow_Index > -1 )
				ifLocalVar6165 = ( lerpResult1416 * _Snow_Color );
			float3 appendResult1410 = (fixed3(ifLocalVar6165.x , ifLocalVar6165.y , ifLocalVar6165.z));
			fixed3 In06278 = float3( 0,0,0 );
			fixed localMyCustomExpression6278 = MyCustomExpression6278( In06278 );
			float temp_output_6282_0 = ( _Glitter_Refreshing_Speed * ( ( localMyCustomExpression6278 * 10 ) + ( _WorldSpaceCameraPos.x + _WorldSpaceCameraPos.y + _WorldSpaceCameraPos.z ) ) );
			float temp_output_6285_0 = ( 0 + temp_output_6282_0 );
			float clampResult6297 = clamp( sin( ( temp_output_6285_0 * 0.1 ) ) , 0 , 1 );
			float2 temp_output_6288_0 = ( Top_Bottom1999 * ( 1 / _Glitter_Tiling ) );
			float2 appendResult6320 = (fixed2(temp_output_6288_0.y , temp_output_6288_0.x));
			fixed4 tex2DNode6299 = tex2D( _Texture_Glitter, ( appendResult6320 + float2( 0.37,0.67 ) ) );
			float2 panner6289 = ( temp_output_6288_0 + ( temp_output_6282_0 * 0.01 ) * float2( 1,1 ));
			float cos6291 = cos( sin( ( temp_output_6285_0 * 0.0001 ) ) );
			float sin6291 = sin( sin( ( temp_output_6285_0 * 0.0001 ) ) );
			float2 rotator6291 = mul( panner6289 - float2( 0.5,0.5 ) , float2x2( cos6291 , -sin6291 , sin6291 , cos6291 )) + float2( 0.5,0.5 );
			float clampResult6301 = clamp( pow( tex2D( _Texture_Glitter, ( ( rotator6291 + temp_output_6288_0 ) * float2( 0.2,0.2 ) ) ).r , ( 1.0 - _Glitter_Noise_Threshold ) ) , 0 , 1 );
			float lerpResult6302 = lerp(  ( clampResult6297 - 0.2 > 0 ? tex2D( _Texture_Glitter, temp_output_6288_0 ).r : clampResult6297 - 0.2 <= 0 && clampResult6297 + 0.2 >= 0 ? tex2DNode6299.r : tex2DNode6299.r )  , 0.6 , clampResult6301);
			float clampResult6304 = clamp( pow( lerpResult6302 , 100.0 ) , 0 , 1 );
			float temp_output_6305_0 = ( _Gliter_Color_Power * clampResult6304 );
			float3 lerpResult1356 = lerp( clampResult5715 , ( appendResult1410 + temp_output_6305_0 ) , lerpResult3742);
			o.Albedo = lerpResult1356;
			float3 clampResult5471 = clamp( appendResult1410 , float3( 0,0,0 ) , float3( 0.5,0.5,0.5 ) );
			fixed3 temp_cast_4 = (_Glitter_Specular).xxx;
			float clampResult6306 = clamp( temp_output_6305_0 , 0 , 1 );
			float3 lerpResult6308 = lerp( ( clampResult5471 * _Snow_Specular ) , temp_cast_4 , clampResult6306);
			float3 lerpResult4040 = lerp( ( ( appendResult3857 * float3( 0.3,0.3,0.3 ) ) * _Terrain_Specular ) , lerpResult6308 , lerpResult3742);
			o.Specular = lerpResult4040;
			float lerpResult6307 = lerp( ifLocalVar6165.w , _Glitter_Smoothness , clampResult6306);
			float lerpResult3951 = lerp( ( layeredBlend5646.w * _Terrain_Smoothness ) , lerpResult6307 , lerpResult3742);
			o.Smoothness = lerpResult3951;
			float clampResult5699 = clamp( ( ( 1 + temp_output_4100_0.y ) * 0.5 ) , ( 1 - _Ambient_Occlusion_Power ) , 1 );
			#ifdef _USE_AO_ON
				float staticSwitch6192 = clampResult5699;
			#else
				float staticSwitch6192 = 1.0;
			#endif
			o.Occlusion = staticSwitch6192;
			o.Alpha = 1;
			float2 uv_Texture_Additional_Masks = i.uv_texcoord * _Texture_Additional_Masks_ST.xy + _Texture_Additional_Masks_ST.zw;
			float clampResult6254 = clamp( ( ase_worldPos.y + ( 0 - _Remove_Vert_Height ) ) , 0 , 1 );
			clip( ( tex2D( _Texture_Additional_Masks, uv_Texture_Additional_Masks ).a * clampResult6254 ) - _Cutoff );
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf StandardSpecular keepalpha fullforwardshadows 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 3.5
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float4 tSpace0 : TEXCOORD2;
				float4 tSpace1 : TEXCOORD3;
				float4 tSpace2 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				fixed3 worldNormal = UnityObjectToWorldNormal( v.normal );
				fixed3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				fixed tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				fixed3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				return o;
			}
			fixed4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				fixed3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				SurfaceOutputStandardSpecular o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandardSpecular, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
}