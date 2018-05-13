Shader "CTS/CTS Terrain Shader Lite"
{
	Properties
	{
		_Geological_Tiling_Far("Geological_Tiling_Far", Range( 0 , 1000)) = 87
		_Geological_Tiling_Close("Geological_Tiling_Close", Range( 0 , 1000)) = 87
		_Geological_Map_Offset_Far("Geological_Map_Offset _Far", Range( 0 , 1)) = 1
		_Geological_Map_Offset_Close("Geological_Map_Offset _Close", Range( 0 , 1)) = 1
		_Geological_Map_Close_Power("Geological_Map_Close_Power", Range( 0 , 1)) = 0
		_Geological_Map_Far_Power("Geological_Map_Far_Power", Range( 0 , 1)) = 1
		_UV_Mix_Power("UV_Mix_Power", Range( 0.01 , 10)) = 4
		_UV_Mix_Start_Distance("UV_Mix_Start_Distance", Range( 0 , 100000)) = 400
		_Perlin_Normal_Tiling_Close("Perlin_Normal_Tiling_Close", Range( 0.01 , 1000)) = 40
		_Perlin_Normal_Tiling_Far("Perlin_Normal_Tiling_Far", Range( 0.01 , 1000)) = 40
		_Perlin_Normal_Power("Perlin_Normal_Power", Range( 0 , 10)) = 1
		_Perlin_Normal_Power_Close("Perlin_Normal_Power_Close", Range( 0 , 10)) = 0.5
		_Terrain_Smoothness("Terrain_Smoothness", Range( 0 , 2)) = 1
		_Terrain_Specular("Terrain_Specular", Range( 0 , 3)) = 1
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
		_Texture_Array_Normal("Texture_Array_Normal", 2DArray ) = "" {}
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
		_Texture_Array_Albedo("Texture_Array_Albedo", 2DArray ) = "" {}
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
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		_Texture_Splat_4("Texture_Splat_4", 2D) = "black" {}
		_Ambient_Occlusion_Power("Ambient_Occlusion_Power", Range( 0 , 1)) = 1
		_Texture_Geological_Map("Texture_Geological_Map", 2D) = "white" {}
		_Texture_4_Color("Texture_4_Color", Vector) = (1,1,1,1)
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
		_Texture_9_Albedo_Index("Texture_9_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_16_Albedo_Index("Texture_16_Albedo_Index", Range( -1 , 100)) = -1
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+100" }
		Cull Back
		ZTest LEqual
		CGPROGRAM
		#include "UnityStandardUtils.cginc"
		#include "UnityShaderVariables.cginc"
		#pragma target 3.5
		#pragma surface surf StandardSpecular keepalpha addshadow fullforwardshadows vertex:vertexDataFunc 
		struct Input
		{
			float3 worldPos;
			fixed2 uv_texcoord;
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
		uniform fixed _Texture_1_Normal_Index;
		uniform fixed _Texture_1_Tiling;
		uniform fixed _Texture_1_Normal_Power;
		uniform fixed _Texture_2_Normal_Index;
		uniform fixed _Texture_2_Tiling;
		uniform fixed _Texture_2_Normal_Power;
		uniform fixed _Texture_3_Normal_Index;
		uniform fixed _Texture_3_Tiling;
		uniform fixed _Texture_3_Normal_Power;
		uniform fixed _Texture_4_Normal_Index;
		uniform fixed _Texture_4_Tiling;
		uniform fixed _Texture_4_Normal_Power;
		uniform fixed _Texture_5_Normal_Index;
		uniform fixed _Texture_5_Tiling;
		uniform fixed _Texture_5_Normal_Power;
		uniform fixed _Texture_6_Normal_Index;
		uniform fixed _Texture_6_Tiling;
		uniform fixed _Texture_6_Normal_Power;
		uniform fixed _Texture_7_Normal_Index;
		uniform fixed _Texture_7_Tiling;
		uniform fixed _Texture_7_Normal_Power;
		uniform fixed _Texture_8_Normal_Index;
		uniform fixed _Texture_8_Tiling;
		uniform fixed _Texture_8_Normal_Power;
		uniform fixed _Texture_9_Normal_Index;
		uniform fixed _Texture_9_Tiling;
		uniform fixed _Texture_9_Normal_Power;
		uniform fixed _Texture_10_Normal_Index;
		uniform fixed _Texture_10_Tiling;
		uniform fixed _Texture_10_Normal_Power;
		uniform fixed _Texture_11_Normal_Index;
		uniform fixed _Texture_11_Tiling;
		uniform fixed _Texture_11_Normal_Power;
		uniform fixed _Texture_12_Normal_Index;
		uniform fixed _Texture_12_Tiling;
		uniform fixed _Texture_12_Normal_Power;
		uniform fixed _Texture_13_Normal_Index;
		uniform fixed _Texture_13_Tiling;
		uniform fixed _Texture_13_Normal_Power;
		uniform fixed _Texture_14_Normal_Index;
		uniform fixed _Texture_14_Tiling;
		uniform fixed _Texture_14_Normal_Power;
		uniform fixed _Texture_15_Normal_Index;
		uniform fixed _Texture_15_Tiling;
		uniform fixed _Texture_15_Normal_Power;
		uniform fixed _Texture_16_Normal_Index;
		uniform fixed _Texture_16_Tiling;
		uniform fixed _Texture_16_Normal_Power;
		uniform fixed _Texture_1_Albedo_Index;
		uniform UNITY_DECLARE_TEX2DARRAY( _Texture_Array_Albedo );
		uniform fixed _Texture_1_Far_Multiplier;
		uniform fixed4 _Texture_1_Color;
		uniform fixed _Texture_2_Albedo_Index;
		uniform fixed _Texture_2_Far_Multiplier;
		uniform fixed4 _Texture_2_Color;
		uniform fixed _Texture_3_Albedo_Index;
		uniform fixed _Texture_3_Far_Multiplier;
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
		uniform fixed _Terrain_Specular;
		uniform fixed _Terrain_Smoothness;
		uniform fixed _Ambient_Occlusion_Power;

		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			fixed localTangent6282 = ( 0 );
			v.tangent.xyz = cross ( v.normal, float3( 0, 0, 1 ) );
			v.tangent.w = -1;
			fixed3 temp_cast_0 = (localTangent6282).xxx;
			v.vertex.xyz += temp_cast_0;
		}

		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float2 appendResult6281 = (fixed2(ase_vertex3Pos.x , ase_vertex3Pos.z));
			fixed2 Top_Bottom1999 = appendResult6281;
			float4 texArray5480 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(( Top_Bottom1999 / _Perlin_Normal_Tiling_Close ), (float)_Texture_Perlin_Normal_Index)  );
			float2 appendResult11_g1010 = (fixed2(texArray5480.w , texArray5480.y));
			float2 temp_output_4_0_g1010 = ( ( ( appendResult11_g1010 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Perlin_Normal_Power_Close );
			float dotResult5_g1010 = dot( temp_output_4_0_g1010 , temp_output_4_0_g1010 );
			float temp_output_9_0_g1010 = sqrt( ( 1.0 - saturate( dotResult5_g1010 ) ) );
			float3 appendResult10_g1010 = (fixed3(temp_output_4_0_g1010.x , temp_output_4_0_g1010.y , temp_output_9_0_g1010));
			float4 texArray4374 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(( Top_Bottom1999 / _Perlin_Normal_Tiling_Far ), (float)_Texture_Perlin_Normal_Index)  );
			float2 appendResult11_g1009 = (fixed2(texArray4374.w , texArray4374.y));
			float2 temp_output_4_0_g1009 = ( ( ( appendResult11_g1009 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Perlin_Normal_Power );
			float dotResult5_g1009 = dot( temp_output_4_0_g1009 , temp_output_4_0_g1009 );
			float temp_output_9_0_g1009 = sqrt( ( 1.0 - saturate( dotResult5_g1009 ) ) );
			float3 appendResult10_g1009 = (fixed3(temp_output_4_0_g1009.x , temp_output_4_0_g1009.y , temp_output_9_0_g1009));
			float3 ase_worldPos = i.worldPos;
			float clampResult297 = clamp( pow( ( max( max( abs( ( ase_worldPos - _WorldSpaceCameraPos ) ).x , abs( ( ase_worldPos - _WorldSpaceCameraPos ) ).y ) , abs( ( ase_worldPos - _WorldSpaceCameraPos ) ).z ) / _UV_Mix_Start_Distance ) , _UV_Mix_Power ) , 0 , 1 );
			fixed UVmixDistance636 = clampResult297;
			float3 lerpResult5460 = lerp( appendResult10_g1010 , appendResult10_g1009 , UVmixDistance636);
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
			float temp_output_3830_0 = ( 1 / _Texture_1_Tiling );
			float2 appendResult3284 = (fixed2(temp_output_3830_0 , temp_output_3830_0));
			float2 temp_output_3275_0 = ( Top_Bottom1999 * appendResult3284 );
			float4 texArray3299 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3275_0, _Texture_1_Normal_Index)  );
			float2 appendResult11_g959 = (fixed2(texArray3299.w , texArray3299.y));
			float2 temp_output_4_0_g959 = ( ( ( appendResult11_g959 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_1_Normal_Power );
			float dotResult5_g959 = dot( temp_output_4_0_g959 , temp_output_4_0_g959 );
			float temp_output_9_0_g959 = sqrt( ( 1.0 - saturate( dotResult5_g959 ) ) );
			float3 appendResult10_g959 = (fixed3(temp_output_4_0_g959.x , temp_output_4_0_g959.y , temp_output_9_0_g959));
			fixed3 EmptyNRM6172 = fixed3(0,0,1);
			fixed3 ifLocalVar6127 = 0;
			UNITY_BRANCH 
			if( _Texture_1_Normal_Index <= -1 )
				ifLocalVar6127 = EmptyNRM6172;
			else
				ifLocalVar6127 = appendResult10_g959;
			fixed3 Normal_1569 = ifLocalVar6127;
			float temp_output_3831_0 = ( 1 / _Texture_2_Tiling );
			float2 appendResult3349 = (fixed2(temp_output_3831_0 , temp_output_3831_0));
			float2 temp_output_3343_0 = ( Top_Bottom1999 * appendResult3349 );
			float4 texArray3350 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3343_0, _Texture_2_Normal_Index)  );
			float2 appendResult11_g958 = (fixed2(texArray3350.w , texArray3350.y));
			float2 temp_output_4_0_g958 = ( ( ( appendResult11_g958 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_2_Normal_Power );
			float dotResult5_g958 = dot( temp_output_4_0_g958 , temp_output_4_0_g958 );
			float temp_output_9_0_g958 = sqrt( ( 1.0 - saturate( dotResult5_g958 ) ) );
			float3 appendResult10_g958 = (fixed3(temp_output_4_0_g958.x , temp_output_4_0_g958.y , temp_output_9_0_g958));
			fixed3 ifLocalVar6129 = 0;
			UNITY_BRANCH 
			if( _Texture_2_Normal_Index <= -1 )
				ifLocalVar6129 = EmptyNRM6172;
			else
				ifLocalVar6129 = appendResult10_g958;
			fixed3 Normal_23361 = ifLocalVar6129;
			float temp_output_3832_0 = ( 1 / _Texture_3_Tiling );
			float2 appendResult3415 = (fixed2(temp_output_3832_0 , temp_output_3832_0));
			float2 temp_output_3410_0 = ( Top_Bottom1999 * appendResult3415 );
			float4 texArray3416 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3410_0, _Texture_3_Normal_Index)  );
			float2 appendResult11_g956 = (fixed2(texArray3416.w , texArray3416.y));
			float2 temp_output_4_0_g956 = ( ( ( appendResult11_g956 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_3_Normal_Power );
			float dotResult5_g956 = dot( temp_output_4_0_g956 , temp_output_4_0_g956 );
			float temp_output_9_0_g956 = sqrt( ( 1.0 - saturate( dotResult5_g956 ) ) );
			float3 appendResult10_g956 = (fixed3(temp_output_4_0_g956.x , temp_output_4_0_g956.y , temp_output_9_0_g956));
			fixed3 ifLocalVar6131 = 0;
			UNITY_BRANCH 
			if( _Texture_3_Normal_Index > -1 )
				ifLocalVar6131 = appendResult10_g956;
			fixed3 Normal_33452 = ifLocalVar6131;
			float2 temp_output_3477_0 = ( Top_Bottom1999 * ( 1 / _Texture_4_Tiling ) );
			float4 texArray3483 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3477_0, _Texture_4_Normal_Index)  );
			float2 appendResult11_g957 = (fixed2(texArray3483.w , texArray3483.y));
			float2 temp_output_4_0_g957 = ( ( ( appendResult11_g957 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_4_Normal_Power );
			float dotResult5_g957 = dot( temp_output_4_0_g957 , temp_output_4_0_g957 );
			float temp_output_9_0_g957 = sqrt( ( 1.0 - saturate( dotResult5_g957 ) ) );
			float3 appendResult10_g957 = (fixed3(temp_output_4_0_g957.x , temp_output_4_0_g957.y , temp_output_9_0_g957));
			fixed3 ifLocalVar6133 = 0;
			UNITY_BRANCH 
			if( _Texture_4_Normal_Index <= -1 )
				ifLocalVar6133 = EmptyNRM6172;
			else
				ifLocalVar6133 = appendResult10_g957;
			fixed3 Normal_43519 = ifLocalVar6133;
			float4 layeredBlendVar5639 = tex2DNode4368;
			float3 layeredBlend5639 = ( lerp( lerp( lerp( lerp( float3( 0,0,0 ) , Normal_1569 , layeredBlendVar5639.x ) , Normal_23361 , layeredBlendVar5639.y ) , Normal_33452 , layeredBlendVar5639.z ) , Normal_43519 , layeredBlendVar5639.w ) );
			float temp_output_4397_0 = ( 1 / _Texture_5_Tiling );
			float2 appendResult4399 = (fixed2(temp_output_4397_0 , temp_output_4397_0));
			float2 temp_output_4416_0 = ( Top_Bottom1999 * appendResult4399 );
			float4 texArray4424 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4416_0, _Texture_5_Normal_Index)  );
			float2 appendResult11_g997 = (fixed2(texArray4424.w , texArray4424.y));
			float2 temp_output_4_0_g997 = ( ( ( appendResult11_g997 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_5_Normal_Power );
			float dotResult5_g997 = dot( temp_output_4_0_g997 , temp_output_4_0_g997 );
			float temp_output_9_0_g997 = sqrt( ( 1.0 - saturate( dotResult5_g997 ) ) );
			float3 appendResult10_g997 = (fixed3(temp_output_4_0_g997.x , temp_output_4_0_g997.y , temp_output_9_0_g997));
			fixed3 ifLocalVar6135 = 0;
			UNITY_BRANCH 
			if( _Texture_5_Normal_Index <= -1 )
				ifLocalVar6135 = EmptyNRM6172;
			else
				ifLocalVar6135 = appendResult10_g997;
			fixed3 Normal_54456 = ifLocalVar6135;
			float temp_output_4469_0 = ( 1 / _Texture_6_Tiling );
			float2 appendResult4471 = (fixed2(temp_output_4469_0 , temp_output_4469_0));
			float2 temp_output_4485_0 = ( Top_Bottom1999 * appendResult4471 );
			float4 texArray4493 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4485_0, _Texture_6_Normal_Index)  );
			float2 appendResult11_g998 = (fixed2(texArray4493.w , texArray4493.y));
			float2 temp_output_4_0_g998 = ( ( ( appendResult11_g998 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_6_Normal_Power );
			float dotResult5_g998 = dot( temp_output_4_0_g998 , temp_output_4_0_g998 );
			float temp_output_9_0_g998 = sqrt( ( 1.0 - saturate( dotResult5_g998 ) ) );
			float3 appendResult10_g998 = (fixed3(temp_output_4_0_g998.x , temp_output_4_0_g998.y , temp_output_9_0_g998));
			fixed3 ifLocalVar6138 = 0;
			UNITY_BRANCH 
			if( _Texture_6_Normal_Index <= -1 )
				ifLocalVar6138 = EmptyNRM6172;
			else
				ifLocalVar6138 = appendResult10_g998;
			fixed3 Normal_64537 = ifLocalVar6138;
			float temp_output_4543_0 = ( 1 / _Texture_7_Tiling );
			float2 appendResult4545 = (fixed2(temp_output_4543_0 , temp_output_4543_0));
			float2 temp_output_4559_0 = ( Top_Bottom1999 * appendResult4545 );
			float4 texArray4567 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4559_0, _Texture_7_Normal_Index)  );
			float2 appendResult11_g996 = (fixed2(texArray4567.w , texArray4567.y));
			float2 temp_output_4_0_g996 = ( ( ( appendResult11_g996 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_7_Normal_Power );
			float dotResult5_g996 = dot( temp_output_4_0_g996 , temp_output_4_0_g996 );
			float temp_output_9_0_g996 = sqrt( ( 1.0 - saturate( dotResult5_g996 ) ) );
			float3 appendResult10_g996 = (fixed3(temp_output_4_0_g996.x , temp_output_4_0_g996.y , temp_output_9_0_g996));
			fixed3 ifLocalVar6140 = 0;
			UNITY_BRANCH 
			if( _Texture_7_Normal_Index <= -1 )
				ifLocalVar6140 = EmptyNRM6172;
			else
				ifLocalVar6140 = appendResult10_g996;
			fixed3 Normal_74615 = ifLocalVar6140;
			float temp_output_4617_0 = ( 1 / _Texture_8_Tiling );
			float2 appendResult4619 = (fixed2(temp_output_4617_0 , temp_output_4617_0));
			float2 temp_output_4633_0 = ( Top_Bottom1999 * appendResult4619 );
			float4 texArray4641 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4633_0, _Texture_8_Normal_Index)  );
			float2 appendResult11_g995 = (fixed2(texArray4641.w , texArray4641.y));
			float2 temp_output_4_0_g995 = ( ( ( appendResult11_g995 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_8_Normal_Power );
			float dotResult5_g995 = dot( temp_output_4_0_g995 , temp_output_4_0_g995 );
			float temp_output_9_0_g995 = sqrt( ( 1.0 - saturate( dotResult5_g995 ) ) );
			float3 appendResult10_g995 = (fixed3(temp_output_4_0_g995.x , temp_output_4_0_g995.y , temp_output_9_0_g995));
			fixed3 ifLocalVar6142 = 0;
			UNITY_BRANCH 
			if( _Texture_8_Normal_Index <= -1 )
				ifLocalVar6142 = EmptyNRM6172;
			else
				ifLocalVar6142 = appendResult10_g995;
			fixed3 Normal_84690 = ifLocalVar6142;
			float4 layeredBlendVar5640 = tex2DNode4369;
			float3 layeredBlend5640 = ( lerp( lerp( lerp( lerp( layeredBlend5639 , Normal_54456 , layeredBlendVar5640.x ) , Normal_64537 , layeredBlendVar5640.y ) , Normal_74615 , layeredBlendVar5640.z ) , Normal_84690 , layeredBlendVar5640.w ) );
			float temp_output_4703_0 = ( 1 / _Texture_9_Tiling );
			float2 appendResult4736 = (fixed2(temp_output_4703_0 , temp_output_4703_0));
			float2 temp_output_4712_0 = ( Top_Bottom1999 * appendResult4736 );
			float4 texArray4788 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4712_0, _Texture_9_Normal_Index)  );
			float2 appendResult11_g1002 = (fixed2(texArray4788.w , texArray4788.y));
			float2 temp_output_4_0_g1002 = ( ( ( appendResult11_g1002 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_9_Normal_Power );
			float dotResult5_g1002 = dot( temp_output_4_0_g1002 , temp_output_4_0_g1002 );
			float temp_output_9_0_g1002 = sqrt( ( 1.0 - saturate( dotResult5_g1002 ) ) );
			float3 appendResult10_g1002 = (fixed3(temp_output_4_0_g1002.x , temp_output_4_0_g1002.y , temp_output_9_0_g1002));
			fixed3 ifLocalVar6144 = 0;
			UNITY_BRANCH 
			if( _Texture_9_Normal_Index <= -1 )
				ifLocalVar6144 = EmptyNRM6172;
			else
				ifLocalVar6144 = appendResult10_g1002;
			fixed3 Normal_94897 = ifLocalVar6144;
			float temp_output_4734_0 = ( 1 / _Texture_10_Tiling );
			float2 appendResult4738 = (fixed2(temp_output_4734_0 , temp_output_4734_0));
			float2 temp_output_4793_0 = ( Top_Bottom1999 * appendResult4738 );
			float4 texArray4822 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4793_0, _Texture_10_Normal_Index)  );
			float2 appendResult11_g1001 = (fixed2(texArray4822.w , texArray4822.y));
			float2 temp_output_4_0_g1001 = ( ( ( appendResult11_g1001 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_10_Normal_Power );
			float dotResult5_g1001 = dot( temp_output_4_0_g1001 , temp_output_4_0_g1001 );
			float temp_output_9_0_g1001 = sqrt( ( 1.0 - saturate( dotResult5_g1001 ) ) );
			float3 appendResult10_g1001 = (fixed3(temp_output_4_0_g1001.x , temp_output_4_0_g1001.y , temp_output_9_0_g1001));
			fixed3 ifLocalVar6146 = 0;
			UNITY_BRANCH 
			if( _Texture_10_Normal_Index <= -1 )
				ifLocalVar6146 = EmptyNRM6172;
			else
				ifLocalVar6146 = appendResult10_g1001;
			fixed3 Normal_104918 = ifLocalVar6146;
			float temp_output_4739_0 = ( 1 / _Texture_11_Tiling );
			float2 appendResult4741 = (fixed2(temp_output_4739_0 , temp_output_4739_0));
			float2 temp_output_4817_0 = ( Top_Bottom1999 * appendResult4741 );
			float4 texArray4856 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4817_0, _Texture_11_Normal_Index)  );
			float2 appendResult11_g1003 = (fixed2(texArray4856.w , texArray4856.y));
			float2 temp_output_4_0_g1003 = ( ( ( appendResult11_g1003 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_11_Normal_Power );
			float dotResult5_g1003 = dot( temp_output_4_0_g1003 , temp_output_4_0_g1003 );
			float temp_output_9_0_g1003 = sqrt( ( 1.0 - saturate( dotResult5_g1003 ) ) );
			float3 appendResult10_g1003 = (fixed3(temp_output_4_0_g1003.x , temp_output_4_0_g1003.y , temp_output_9_0_g1003));
			fixed3 ifLocalVar6148 = 0;
			UNITY_BRANCH 
			if( _Texture_11_Normal_Index <= -1 )
				ifLocalVar6148 = EmptyNRM6172;
			else
				ifLocalVar6148 = appendResult10_g1003;
			fixed3 Normal_114948 = ifLocalVar6148;
			float temp_output_4745_0 = ( 1 / _Texture_12_Tiling );
			float2 appendResult4751 = (fixed2(temp_output_4745_0 , temp_output_4745_0));
			float2 temp_output_4849_0 = ( Top_Bottom1999 * appendResult4751 );
			float4 texArray4870 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4849_0, _Texture_12_Normal_Index)  );
			float2 appendResult11_g1004 = (fixed2(texArray4870.w , texArray4870.y));
			float2 temp_output_4_0_g1004 = ( ( ( appendResult11_g1004 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_12_Normal_Power );
			float dotResult5_g1004 = dot( temp_output_4_0_g1004 , temp_output_4_0_g1004 );
			float temp_output_9_0_g1004 = sqrt( ( 1.0 - saturate( dotResult5_g1004 ) ) );
			float3 appendResult10_g1004 = (fixed3(temp_output_4_0_g1004.x , temp_output_4_0_g1004.y , temp_output_9_0_g1004));
			fixed3 ifLocalVar6150 = 0;
			UNITY_BRANCH 
			if( _Texture_12_Normal_Index <= -1 )
				ifLocalVar6150 = EmptyNRM6172;
			else
				ifLocalVar6150 = appendResult10_g1004;
			fixed3 Normal_124962 = ifLocalVar6150;
			float4 layeredBlendVar5641 = tex2DNode4370;
			float3 layeredBlend5641 = ( lerp( lerp( lerp( lerp( layeredBlend5640 , Normal_94897 , layeredBlendVar5641.x ) , Normal_104918 , layeredBlendVar5641.y ) , Normal_114948 , layeredBlendVar5641.z ) , Normal_124962 , layeredBlendVar5641.w ) );
			float temp_output_5125_0 = ( 1 / _Texture_13_Tiling );
			float2 appendResult5027 = (fixed2(temp_output_5125_0 , temp_output_5125_0));
			float2 temp_output_5037_0 = ( Top_Bottom1999 * appendResult5027 );
			float4 texArray5120 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5037_0, _Texture_13_Normal_Index)  );
			float2 appendResult11_g1006 = (fixed2(texArray5120.w , texArray5120.y));
			float2 temp_output_4_0_g1006 = ( ( ( appendResult11_g1006 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_13_Normal_Power );
			float dotResult5_g1006 = dot( temp_output_4_0_g1006 , temp_output_4_0_g1006 );
			float temp_output_9_0_g1006 = sqrt( ( 1.0 - saturate( dotResult5_g1006 ) ) );
			float3 appendResult10_g1006 = (fixed3(temp_output_4_0_g1006.x , temp_output_4_0_g1006.y , temp_output_9_0_g1006));
			fixed3 ifLocalVar6152 = 0;
			UNITY_BRANCH 
			if( _Texture_13_Normal_Index <= -1 )
				ifLocalVar6152 = EmptyNRM6172;
			else
				ifLocalVar6152 = appendResult10_g1006;
			fixed3 Normal_135059 = ifLocalVar6152;
			float temp_output_5006_0 = ( 1 / _Texture_14_Tiling );
			float2 appendResult5033 = (fixed2(temp_output_5006_0 , temp_output_5006_0));
			float2 temp_output_5022_0 = ( Top_Bottom1999 * appendResult5033 );
			float4 texArray5178 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5022_0, _Texture_14_Normal_Index)  );
			float2 appendResult11_g1007 = (fixed2(texArray5178.w , texArray5178.y));
			float2 temp_output_4_0_g1007 = ( ( ( appendResult11_g1007 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_14_Normal_Power );
			float dotResult5_g1007 = dot( temp_output_4_0_g1007 , temp_output_4_0_g1007 );
			float temp_output_9_0_g1007 = sqrt( ( 1.0 - saturate( dotResult5_g1007 ) ) );
			float3 appendResult10_g1007 = (fixed3(temp_output_4_0_g1007.x , temp_output_4_0_g1007.y , temp_output_9_0_g1007));
			fixed3 ifLocalVar6154 = 0;
			UNITY_BRANCH 
			if( _Texture_14_Normal_Index <= -1 )
				ifLocalVar6154 = EmptyNRM6172;
			else
				ifLocalVar6154 = appendResult10_g1007;
			fixed3 Normal_145196 = ifLocalVar6154;
			float temp_output_5210_0 = ( 1 / _Texture_15_Tiling );
			float2 appendResult5212 = (fixed2(temp_output_5210_0 , temp_output_5210_0));
			float2 temp_output_5226_0 = ( Top_Bottom1999 * appendResult5212 );
			float4 texArray5246 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5226_0, _Texture_15_Normal_Index)  );
			float2 appendResult11_g1005 = (fixed2(texArray5246.w , texArray5246.y));
			float2 temp_output_4_0_g1005 = ( ( ( appendResult11_g1005 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_15_Normal_Power );
			float dotResult5_g1005 = dot( temp_output_4_0_g1005 , temp_output_4_0_g1005 );
			float temp_output_9_0_g1005 = sqrt( ( 1.0 - saturate( dotResult5_g1005 ) ) );
			float3 appendResult10_g1005 = (fixed3(temp_output_4_0_g1005.x , temp_output_4_0_g1005.y , temp_output_9_0_g1005));
			fixed3 ifLocalVar6156 = 0;
			UNITY_BRANCH 
			if( _Texture_15_Normal_Index <= -1 )
				ifLocalVar6156 = EmptyNRM6172;
			else
				ifLocalVar6156 = appendResult10_g1005;
			fixed3 Normal_155280 = ifLocalVar6156;
			float temp_output_5075_0 = ( 1 / _Texture_16_Tiling );
			float2 appendResult5078 = (fixed2(temp_output_5075_0 , temp_output_5075_0));
			float2 temp_output_5083_0 = ( Top_Bottom1999 * appendResult5078 );
			float4 texArray5099 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5083_0, _Texture_16_Normal_Index)  );
			float2 appendResult11_g1008 = (fixed2(texArray5099.w , texArray5099.y));
			float2 temp_output_4_0_g1008 = ( ( ( appendResult11_g1008 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_16_Normal_Power );
			float dotResult5_g1008 = dot( temp_output_4_0_g1008 , temp_output_4_0_g1008 );
			float temp_output_9_0_g1008 = sqrt( ( 1.0 - saturate( dotResult5_g1008 ) ) );
			float3 appendResult10_g1008 = (fixed3(temp_output_4_0_g1008.x , temp_output_4_0_g1008.y , temp_output_9_0_g1008));
			fixed3 ifLocalVar6158 = 0;
			UNITY_BRANCH 
			if( _Texture_16_Normal_Index <= -1 )
				ifLocalVar6158 = EmptyNRM6172;
			else
				ifLocalVar6158 = appendResult10_g1008;
			fixed3 Normal_164696 = ifLocalVar6158;
			float4 layeredBlendVar5642 = tex2DNode4371;
			float3 layeredBlend5642 = ( lerp( lerp( lerp( lerp( layeredBlend5641 , Normal_135059 , layeredBlendVar5642.x ) , Normal_145196 , layeredBlendVar5642.y ) , Normal_155280 , layeredBlendVar5642.z ) , Normal_164696 , layeredBlendVar5642.w ) );
			float3 normalizeResult3901 = normalize( layeredBlend5642 );
			o.Normal = BlendNormals( lerpResult3776 , normalizeResult3901 );
			float4 texArray3287 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3275_0, _Texture_1_Albedo_Index)  );
			float4 texArray3293 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3275_0 / _Texture_1_Far_Multiplier ), _Texture_1_Albedo_Index)  );
			float4 lerpResult5739 = lerp( texArray3287 , texArray3293 , UVmixDistance636);
			fixed4 ifLocalVar6174 = 0;
			UNITY_BRANCH 
			if( _Texture_1_Albedo_Index > -1 )
				ifLocalVar6174 = ( lerpResult5739 * _Texture_1_Color );
			fixed4 Texture_1_Final950 = ifLocalVar6174;
			float4 texArray3338 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3343_0, _Texture_2_Albedo_Index)  );
			float4 texArray3339 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3343_0 / _Texture_2_Far_Multiplier ), _Texture_2_Albedo_Index)  );
			float4 lerpResult5749 = lerp( texArray3338 , texArray3339 , UVmixDistance636);
			fixed4 ifLocalVar6128 = 0;
			UNITY_BRANCH 
			if( _Texture_2_Albedo_Index > -1 )
				ifLocalVar6128 = ( lerpResult5749 * _Texture_2_Color );
			fixed4 Texture_2_Final3385 = ifLocalVar6128;
			float4 texArray3405 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3410_0, _Texture_3_Albedo_Index)  );
			float4 texArray3406 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3410_0 / _Texture_3_Far_Multiplier ), _Texture_3_Albedo_Index)  );
			float4 lerpResult5759 = lerp( texArray3405 , texArray3406 , UVmixDistance636);
			fixed4 ifLocalVar6130 = 0;
			UNITY_BRANCH 
			if( _Texture_3_Albedo_Index > -1 )
				ifLocalVar6130 = ( lerpResult5759 * _Texture_3_Color );
			fixed4 Texture_3_Final3451 = ifLocalVar6130;
			float4 texArray3472 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3477_0, _Texture_4_Albedo_Index)  );
			float4 texArray3473 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3477_0 / _Texture_4_Far_Multiplier ), _Texture_4_Albedo_Index)  );
			float4 lerpResult5761 = lerp( texArray3472 , texArray3473 , UVmixDistance636);
			fixed4 ifLocalVar6132 = 0;
			UNITY_BRANCH 
			if( _Texture_4_Albedo_Index > -1 )
				ifLocalVar6132 = ( lerpResult5761 * _Texture_4_Color );
			fixed4 Texture_4_Final3518 = ifLocalVar6132;
			float4 layeredBlendVar5643 = tex2DNode4368;
			float4 layeredBlend5643 = ( lerp( lerp( lerp( lerp( float4( 0,0,0,0 ) , Texture_1_Final950 , layeredBlendVar5643.x ) , Texture_2_Final3385 , layeredBlendVar5643.y ) , Texture_3_Final3451 , layeredBlendVar5643.z ) , Texture_4_Final3518 , layeredBlendVar5643.w ) );
			float4 texArray4450 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4416_0, _Texture_5_Albedo_Index)  );
			float4 texArray4445 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4416_0 / _Texture_5_Far_Multiplier ), _Texture_5_Albedo_Index)  );
			float4 lerpResult5789 = lerp( texArray4450 , texArray4445 , UVmixDistance636);
			fixed4 ifLocalVar6134 = 0;
			UNITY_BRANCH 
			if( _Texture_5_Albedo_Index > -1 )
				ifLocalVar6134 = ( lerpResult5789 * _Texture_5_Color );
			fixed4 Texture_5_Final4396 = ifLocalVar6134;
			float4 texArray4517 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4485_0, _Texture_6_Albedo_Index)  );
			float4 texArray4512 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4485_0 / _Texture_6_Far_Multiplier ), _Texture_6_Albedo_Index)  );
			float4 lerpResult5794 = lerp( texArray4517 , texArray4512 , UVmixDistance636);
			fixed4 ifLocalVar6136 = 0;
			UNITY_BRANCH 
			if( _Texture_6_Albedo_Index > -1 )
				ifLocalVar6136 = ( lerpResult5794 * _Texture_6_Color );
			fixed4 Texture_6_Final4536 = ifLocalVar6136;
			float4 texArray4591 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4559_0, _Texture_7_Albedo_Index)  );
			float4 texArray4586 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4559_0 / _Texture_7_Far_Multiplier ), _Texture_7_Albedo_Index)  );
			float4 lerpResult5798 = lerp( texArray4591 , texArray4586 , UVmixDistance636);
			fixed4 ifLocalVar6139 = 0;
			UNITY_BRANCH 
			if( _Texture_7_Albedo_Index > -1 )
				ifLocalVar6139 = ( lerpResult5798 * _Texture_7_Color );
			fixed4 Texture_7_Final4614 = ifLocalVar6139;
			float4 texArray4665 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4633_0, _Texture_8_Albedo_Index)  );
			float4 texArray4660 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4633_0 / _Texture_8_Far_Multiplier ), _Texture_8_Albedo_Index)  );
			float4 lerpResult5802 = lerp( texArray4665 , texArray4660 , UVmixDistance636);
			fixed4 ifLocalVar6141 = 0;
			UNITY_BRANCH 
			if( _Texture_8_Albedo_Index > -1 )
				ifLocalVar6141 = ( lerpResult5802 * _Texture_8_Color );
			fixed4 Texture_8_Final4689 = ifLocalVar6141;
			float4 layeredBlendVar5644 = tex2DNode4369;
			float4 layeredBlend5644 = ( lerp( lerp( lerp( lerp( layeredBlend5643 , Texture_5_Final4396 , layeredBlendVar5644.x ) , Texture_6_Final4536 , layeredBlendVar5644.y ) , Texture_7_Final4614 , layeredBlendVar5644.z ) , Texture_8_Final4689 , layeredBlendVar5644.w ) );
			float4 texArray4723 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4712_0, _Texture_9_Albedo_Index)  );
			float4 texArray4889 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4712_0 / _Texture_9_Far_Multiplier ), _Texture_9_Albedo_Index)  );
			float4 lerpResult5845 = lerp( texArray4723 , texArray4889 , UVmixDistance636);
			fixed4 ifLocalVar6143 = 0;
			UNITY_BRANCH 
			if( _Texture_9_Albedo_Index > -1 )
				ifLocalVar6143 = ( lerpResult5845 * _Texture_9_Color );
			fixed4 Texture_9_Final4987 = ifLocalVar6143;
			float4 texArray4899 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4793_0, _Texture_10_Albedo_Index)  );
			float4 texArray4913 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4793_0 / _Texture_10_Far_Multiplier ), _Texture_10_Albedo_Index)  );
			float4 lerpResult5841 = lerp( texArray4899 , texArray4913 , UVmixDistance636);
			fixed4 ifLocalVar6145 = 0;
			UNITY_BRANCH 
			if( _Texture_10_Albedo_Index > -1 )
				ifLocalVar6145 = ( lerpResult5841 * _Texture_10_Color );
			fixed4 Texture_10_Final4994 = ifLocalVar6145;
			float4 texArray4928 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4817_0, _Texture_11_Albedo_Index)  );
			float4 texArray4923 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4817_0 / _Texture_11_Far_Multiplier ), _Texture_11_Albedo_Index)  );
			float4 lerpResult5837 = lerp( texArray4928 , texArray4923 , UVmixDistance636);
			fixed4 ifLocalVar6147 = 0;
			UNITY_BRANCH 
			if( _Texture_11_Albedo_Index > -1 )
				ifLocalVar6147 = ( lerpResult5837 * _Texture_11_Color );
			fixed4 Texture_11_Final4996 = ifLocalVar6147;
			float4 texArray4954 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4849_0, _Texture_12_Albedo_Index)  );
			float4 texArray4952 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_4849_0 / _Texture_12_Far_Multiplier ), _Texture_12_Albedo_Index)  );
			float4 lerpResult5833 = lerp( texArray4954 , texArray4952 , UVmixDistance636);
			fixed4 ifLocalVar6169 = 0;
			UNITY_BRANCH 
			if( _Texture_12_Albedo_Index > -1 )
				ifLocalVar6169 = ( lerpResult5833 * _Texture_12_Color );
			fixed4 Texture_12_Final4997 = ifLocalVar6169;
			float4 layeredBlendVar5645 = tex2DNode4370;
			float4 layeredBlend5645 = ( lerp( lerp( lerp( lerp( layeredBlend5644 , Texture_9_Final4987 , layeredBlendVar5645.x ) , Texture_10_Final4994 , layeredBlendVar5645.y ) , Texture_11_Final4996 , layeredBlendVar5645.z ) , Texture_12_Final4997 , layeredBlendVar5645.w ) );
			float4 texArray5043 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5037_0, _Texture_13_Albedo_Index)  );
			float4 texArray5034 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5037_0 / _Texture_13_Far_Multiplier ), _Texture_13_Albedo_Index)  );
			float4 lerpResult5829 = lerp( texArray5043 , texArray5034 , UVmixDistance636);
			fixed4 ifLocalVar6151 = 0;
			UNITY_BRANCH 
			if( _Texture_13_Albedo_Index > -1 )
				ifLocalVar6151 = ( lerpResult5829 * _Texture_13_Color );
			fixed4 Texture_13_Final5058 = ifLocalVar6151;
			float4 texArray5202 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5022_0, _Texture_14_Albedo_Index)  );
			float4 texArray5171 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5022_0 / _Texture_14_Far_Multiplier ), _Texture_14_Albedo_Index)  );
			float4 lerpResult5825 = lerp( texArray5202 , texArray5171 , UVmixDistance636);
			fixed4 ifLocalVar6153 = 0;
			UNITY_BRANCH 
			if( _Texture_14_Albedo_Index > -1 )
				ifLocalVar6153 = ( lerpResult5825 * _Texture_14_Color );
			fixed4 Texture_14_Final5163 = ifLocalVar6153;
			float4 texArray5259 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5226_0, _Texture_15_Albedo_Index)  );
			float4 texArray5272 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5226_0 / _Texture_15_Far_Multiplier ), _Texture_15_Albedo_Index)  );
			float4 lerpResult5821 = lerp( texArray5259 , texArray5272 , UVmixDistance636);
			fixed4 ifLocalVar6155 = 0;
			UNITY_BRANCH 
			if( _Texture_15_Albedo_Index > -1 )
				ifLocalVar6155 = ( lerpResult5821 * _Texture_15_Color );
			fixed4 Texture_15_Final5270 = ifLocalVar6155;
			float4 texArray5139 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5083_0, _Texture_16_Albedo_Index)  );
			float4 texArray5143 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_5083_0 / _Texture_16_Far_Multiplier ), _Texture_16_Albedo_Index)  );
			float4 lerpResult5817 = lerp( texArray5139 , texArray5143 , UVmixDistance636);
			fixed4 ifLocalVar6183 = 0;
			UNITY_BRANCH 
			if( _Texture_16_Albedo_Index > -1 )
				ifLocalVar6183 = ( lerpResult5817 * _Texture_16_Color );
			fixed4 Texture_16_Final5094 = ifLocalVar6183;
			float4 layeredBlendVar5646 = tex2DNode4371;
			float4 layeredBlend5646 = ( lerp( lerp( lerp( lerp( layeredBlend5645 , Texture_13_Final5058 , layeredBlendVar5646.x ) , Texture_14_Final5163 , layeredBlendVar5646.y ) , Texture_15_Final5270 , layeredBlendVar5646.z ) , Texture_16_Final5094 , layeredBlendVar5646.w ) );
			float3 appendResult6259 = (fixed3(layeredBlend5646.xyz));
			fixed2 temp_cast_3 = (( _Geological_Map_Offset_Close + ( ase_worldPos.y / _Geological_Tiling_Close ) )).xx;
			float3 appendResult6257 = (fixed3(tex2D( _Texture_Geological_Map, temp_cast_3 ).rgb));
			fixed2 temp_cast_5 = (( ( ase_worldPos.y / _Geological_Tiling_Far ) + _Geological_Map_Offset_Far )).xx;
			float3 appendResult6256 = (fixed3(tex2D( _Texture_Geological_Map, temp_cast_5 ).rgb));
			float3 lerpResult1315 = lerp( ( _Geological_Map_Close_Power * ( appendResult6257 + float3( -0.3,-0.3,-0.3 ) ) ) , ( _Geological_Map_Far_Power * ( appendResult6256 + float3( -0.3,-0.3,-0.3 ) ) ) , UVmixDistance636);
			fixed3 blendOpSrc4362 = appendResult6259;
			fixed3 blendOpDest4362 = ( lerpResult1315 * ( ( _Texture_16_Geological_Power * Splat4_A2546 ) + ( ( _Texture_15_Geological_Power * Splat4_B2545 ) + ( ( _Texture_14_Geological_Power * Splat4_G2544 ) + ( ( _Texture_13_Geological_Power * Splat4_R2543 ) + ( ( _Texture_12_Geological_Power * Splat3_A2540 ) + ( ( _Texture_11_Geological_Power * Splat3_B2539 ) + ( ( _Texture_10_Geological_Power * Splat3_G2538 ) + ( ( _Texture_9_Geological_Power * Splat3_R2537 ) + ( ( _Texture_8_Geological_Power * Splat2_A2109 ) + ( ( _Texture_7_Geological_Power * Splat2_B2108 ) + ( ( _Texture_6_Geological_Power * Splat2_G2107 ) + ( ( _Texture_5_Geological_Power * Splat2_R2106 ) + ( ( _Texture_1_Geological_Power * Splat1_R1438 ) + ( ( _Texture_2_Geological_Power * Splat1_G1441 ) + ( ( _Texture_4_Geological_Power * Splat1_A1491 ) + ( _Texture_3_Geological_Power * Splat1_B1442 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) );
			float3 clampResult5715 = clamp( ( saturate( ( blendOpSrc4362 + blendOpDest4362 ) )) , float3( 0,0,0 ) , float3( 1,1,1 ) );
			o.Albedo = clampResult5715;
			o.Specular = ( ( appendResult6259 * float3( 0.3,0.3,0.3 ) ) * _Terrain_Specular );
			o.Smoothness = ( layeredBlend5646.w * _Terrain_Smoothness );
			o.Occlusion = _Ambient_Occlusion_Power;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	Dependency "BaseMapShader" = "CTS/CTS Terrain Shader Lite LOD"
}