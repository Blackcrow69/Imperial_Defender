Shader "CTS/CTS Terrain Shader Advanced Tess CutOut Mesh"
{
	Properties
	{
		_Cutoff( "Mask Clip Value", Float ) = 0.5
		[Toggle(_USE_AO_TEXTURE_ON)] _Use_AO_Texture("Use_AO_Texture", Float) = 0
		_TessValue( "Max Tessellation", Range( 1, 32 ) ) = 7
		_TessMin( "Tess Min Distance", Float ) = 0
		_TessMax( "Tess Max Distance", Float ) = 50
		_Texture_Glitter("Texture_Glitter", 2D) = "black" {}
		_Gliter_Color_Power("Gliter_Color_Power", Range( 0 , 2)) = 0.8
		_Global_Color_Opacity_Power("Global_Color_Opacity_Power", Range( 0 , 1)) = 0
		_Global_Color_Map_Far_Power("Global_Color_Map_Far_Power", Range( 0 , 10)) = 5
		_Glitter_Noise_Threshold("Glitter_Noise_Threshold", Range( 0 , 1)) = 0.991
		_Global_Color_Map_Close_Power("Global_Color_Map_Close_Power", Range( 0 , 10)) = 0.1
		_Geological_Tiling_Close("Geological_Tiling_Close", Range( 0 , 1000)) = 87
		_Glitter_Specular("Glitter_Specular", Range( 0 , 3)) = 0.2
		_Glitter_Smoothness("Glitter_Smoothness", Range( 0 , 1)) = 0.9
		_Geological_Tiling_Far("Geological_Tiling_Far", Range( 0 , 1000)) = 87
		_Geological_Map_Offset_Far("Geological_Map_Offset _Far", Range( 0 , 1)) = 1
		_Geological_Map_Offset_Close("Geological_Map_Offset _Close", Range( 0 , 1)) = 1
		_Geological_Map_Close_Power("Geological_Map_Close_Power", Range( 0 , 2)) = 0
		_Geological_Map_Far_Power("Geological_Map_Far_Power", Range( 0 , 2)) = 1
		_UV_Mix_Power("UV_Mix_Power", Range( 0.01 , 10)) = 4
		_UV_Mix_Start_Distance("UV_Mix_Start_Distance", Range( 0 , 100000)) = 400
		_Perlin_Normal_Tiling_Close("Perlin_Normal_Tiling_Close", Range( 0.01 , 1000)) = 40
		_Perlin_Normal_Tiling_Far("Perlin_Normal_Tiling_Far", Range( 0.01 , 1000)) = 40
		_Perlin_Normal_Power("Perlin_Normal_Power", Range( 0 , 2)) = 1
		_Perlin_Normal_Power_Close("Perlin_Normal_Power_Close", Range( 0 , 1)) = 0.5
		_Terrain_Smoothness("Terrain_Smoothness", Range( 0 , 2)) = 1
		_Terrain_Specular("Terrain_Specular", Range( 0 , 3)) = 1
		_Texture_4_AO_Power("Texture_4_AO_Power", Range( 0 , 1)) = 1
		_Texture_15_AO_Power("Texture_15_AO_Power", Range( 0 , 1)) = 1
		_Texture_3_AO_Power("Texture_3_AO_Power", Range( 0 , 1)) = 1
		_Texture_8_AO_Power("Texture_8_AO_Power", Range( 0 , 1)) = 1
		_Texture_6_AO_Power("Texture_6_AO_Power", Range( 0 , 1)) = 1
		_Texture_16_AO_Power("Texture_16_AO_Power", Range( 0 , 1)) = 1
		_Texture_7_AO_Power("Texture_7_AO_Power", Range( 0 , 1)) = 1
		_Texture_5_AO_Power("Texture_5_AO_Power", Range( 0 , 1)) = 1
		_Texture_12_AO_Power("Texture_12_AO_Power", Range( 0 , 1)) = 1
		_Texture_1_AO_Power("Texture_1_AO_Power", Range( 0 , 1)) = 1
		_Texture_11_AO_Power("Texture_11_AO_Power", Range( 0 , 1)) = 1
		_Texture_10_AO_Power("Texture_10_AO_Power", Range( 0 , 1)) = 1
		_Texture_13_AO_Power("Texture_13_AO_Power", Range( 0 , 1)) = 1
		_Texture_14_AO_Power("Texture_14_AO_Power", Range( 0 , 1)) = 1
		_Texture_2_AO_Power("Texture_2_AO_Power", Range( 0 , 1)) = 1
		_Texture_9_AO_Power("Texture_9_AO_Power", Range( 0 , 1)) = 1
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
		_Texture_Array_Normal("Texture_Array_Normal", 2DArray ) = "" {}
		_Texture_7_Far_Multiplier("Texture_7_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_8_Far_Multiplier("Texture_8_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_9_Far_Multiplier("Texture_9_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_Array_Albedo("Texture_Array_Albedo", 2DArray ) = "" {}
		_Texture_10_Far_Multiplier("Texture_10_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_11_Far_Multiplier("Texture_11_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_12_Far_Multiplier("Texture_12_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_13_Far_Multiplier("Texture_13_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_14_Far_Multiplier("Texture_14_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_15_Far_Multiplier("Texture_15_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_16_Far_Multiplier("Texture_16_Far_Multiplier", Range( 0 , 10)) = 3
		_Texture_1_Perlin_Power("Texture_1_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_2_Perlin_Power("Texture_2_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_3_Perlin_Power("Texture_3_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_4_Perlin_Power("Texture_4_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_5_Perlin_Power("Texture_5_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_6_Perlin_Power("Texture_6_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_7_Perlin_Power("Texture_7_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_8_Perlin_Power("Texture_8_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_9_Perlin_Power("Texture_9_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_10_Perlin_Power("Texture_10_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_11_Perlin_Power("Texture_11_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_12_Perlin_Power("Texture_12_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_13_Perlin_Power("Texture_13_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_14_Perlin_Power("Texture_14_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_15_Perlin_Power("Texture_15_Perlin_Power", Range( 0 , 2)) = 0
		_Texture_16_Perlin_Power("Texture_16_Perlin_Power", Range( 0 , 2)) = 0
		_Snow_Heightmap_Depth("Snow_Heightmap_Depth", Range( 0 , 10)) = 1
		_Snow_Tesselation_Depth("Snow_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_14_Heightmap_Depth("Texture_14_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_13_Heightmap_Depth("Texture_13_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_11_Heightmap_Depth("Texture_11_Heightmap_Depth", Range( 0 , 10)) = 1
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		_Texture_15_Heightmap_Depth("Texture_15_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_16_Heightmap_Depth("Texture_16_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_12_Heightmap_Depth("Texture_12_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_6_Heightmap_Depth("Texture_6_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_10_Heightmap_Depth("Texture_10_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_9_Heightmap_Depth("Texture_9_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_5_Heightmap_Depth("Texture_5_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_7_Heightmap_Depth("Texture_7_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_3_Heightmap_Depth("Texture_3_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_8_Heightmap_Depth("Texture_8_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_4_Heightmap_Depth("Texture_4_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_2_Heightmap_Depth("Texture_2_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_1_Heightmap_Depth("Texture_1_Heightmap_Depth", Range( 0 , 10)) = 1
		_Texture_1_Tesselation_Depth("Texture_1_Tesselation_Depth", Range( 0 , 10)) = 1
		_Snow_Height_Contrast("Snow_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_14_Height_Contrast("Texture_14_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_16_Height_Contrast("Texture_16_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_15_Height_Contrast("Texture_15_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_9_Height_Contrast("Texture_9_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_13_Height_Contrast("Texture_13_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_10_Height_Contrast("Texture_10_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_11_Height_Contrast("Texture_11_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_12_Height_Contrast("Texture_12_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_6_Height_Contrast("Texture_6_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_8_Height_Contrast("Texture_8_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_7_Height_Contrast("Texture_7_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_3_Height_Contrast("Texture_3_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_5_Height_Contrast("Texture_5_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_4_Height_Contrast("Texture_4_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_1_Height_Contrast("Texture_1_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_2_Height_Contrast("Texture_2_Height_Contrast", Range( 0 , 10)) = 1
		_Texture_2_Tesselation_Depth("Texture_2_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_3_Tesselation_Depth("Texture_3_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_4_Tesselation_Depth("Texture_4_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_5_Tesselation_Depth("Texture_5_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_6_Tesselation_Depth("Texture_6_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_7_Tesselation_Depth("Texture_7_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_8_Tesselation_Depth("Texture_8_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_9_Tesselation_Depth("Texture_9_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_10_Tesselation_Depth("Texture_10_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_11_Tesselation_Depth("Texture_11_Tesselation_Depth", Range( 0 , 10)) = 0
		_Texture_12_Tesselation_Depth("Texture_12_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_13_Tesselation_Depth("Texture_13_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_14_Tesselation_Depth("Texture_14_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_16_Heightblend_Far("Texture_16_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_15_Heightblend_Far("Texture_15_Heightblend_Far", Range( 1 , 10)) = 5
		_Snow_Heightblend_Far("Snow_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_14_Heightblend_Far("Texture_14_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_Snow_Average("Texture_Snow_Average", Vector) = (0,0,0,0)
		_Texture_12_Heightblend_Far("Texture_12_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_16_Heightblend_Close("Texture_16_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_13_Heightblend_Far("Texture_13_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_15_Heightblend_Close("Texture_15_Heightblend_Close", Range( 1 , 10)) = 5
		_Remove_Vert_Height("Remove_Vert_Height", Range( -10000 , 10000)) = -1000
		_Texture_7_Heightblend_Far("Texture_7_Heightblend_Far", Range( 1 , 10)) = 5
		_Snow_Heightblend_Close("Snow_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_14_Heightblend_Close("Texture_14_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_11_Heightblend_Far("Texture_11_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_13_Heightblend_Close("Texture_13_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_10_Heightblend_Far("Texture_10_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_9_Heightblend_Far("Texture_9_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_12_Heightblend_Close("Texture_12_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_8_Heightblend_Far("Texture_8_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_11_Heightblend_Close("Texture_11_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_6_Heightblend_Far("Texture_6_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_10_Heightblend_Close("Texture_10_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_9_Heightblend_Close("Texture_9_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_5_Heightblend_Far("Texture_5_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_8_Heightblend_Close("Texture_8_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_3_Heightblend_Far("Texture_3_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_4_Heightblend_Far("Texture_4_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_7_Heightblend_Close("Texture_7_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_15_Tesselation_Depth("Texture_15_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_6_Heightblend_Close("Texture_6_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_5_Heightblend_Close("Texture_5_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_2_Heightblend_Far("Texture_2_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_4_Heightblend_Close("Texture_4_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_2_Heightmap_MaxHeight("Texture_2_Heightmap_MaxHeight", Range( 0 , 1)) = 0
		_Texture_4_Heightmap_MaxHeight("Texture_4_Heightmap_MaxHeight", Range( 0 , 2)) = 0
		_Texture_14_Heightmap_MaxHeight("Texture_14_Heightmap_MaxHeight", Range( 0 , 2)) = 0
		_Texture_13_Heightmap_MaxHeight("Texture_13_Heightmap_MaxHeight", Range( 0 , 2)) = 0
		_Texture_9_Heightmap_MaxHeight("Texture_9_Heightmap_MaxHeight", Range( 0 , 2)) = 0
		_Texture_15_Heightmap_MaxHeight("Texture_15_Heightmap_MaxHeight", Range( 0 , 2)) = 0
		_Texture_16_Heightmap_MaxHeight("Texture_16_Heightmap_MaxHeight", Range( 0 , 2)) = 0
		_Texture_7_Heightmap_MaxHeight("Texture_7_Heightmap_MaxHeight", Range( 0 , 2)) = 0
		_Texture_10_Heightmap_MaxHeight("Texture_10_Heightmap_MaxHeight", Range( 0 , 2)) = 0
		_Texture_11_Heightmap_MaxHeight("Texture_11_Heightmap_MaxHeight", Range( 0 , 2)) = 0
		_Texture_12_Heightmap_MaxHeight("Texture_12_Heightmap_MaxHeight", Range( 0 , 2)) = 0
		_Texture_5_Heightmap_MaxHeight("Texture_5_Heightmap_MaxHeight", Range( 0 , 2)) = 0
		_Texture_6_Heightmap_MaxHeight("Texture_6_Heightmap_MaxHeight", Range( 0 , 2)) = 0
		_Texture_3_Heightmap_MaxHeight("Texture_3_Heightmap_MaxHeight", Range( 0 , 1)) = 0
		_Texture_8_Heightmap_MaxHeight("Texture_8_Heightmap_MaxHeight", Range( 0 , 2)) = 0
		_Texture_1_Heightmap_MaxHeight("Texture_1_Heightmap_MaxHeight", Range( 0 , 1)) = 0
		_Texture_1_Heightblend_Far("Texture_1_Heightblend_Far", Range( 1 , 10)) = 5
		_Texture_16_Tesselation_Depth("Texture_16_Tesselation_Depth", Range( 0 , 10)) = 1
		_Texture_3_Heightblend_Close("Texture_3_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_2_Heightblend_Close("Texture_2_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_1_Heightblend_Close("Texture_1_Heightblend_Close", Range( 1 , 10)) = 5
		_Texture_1_Geological_Power("Texture_1_Geological_Power", Range( 0 , 2)) = 1
		_Texture_2_Geological_Power("Texture_2_Geological_Power", Range( 0 , 2)) = 1
		_Texture_3_Geological_Power("Texture_3_Geological_Power", Range( 0 , 2)) = 1
		_Texture_4_Geological_Power("Texture_4_Geological_Power", Range( 0 , 2)) = 1
		_Texture_5_Geological_Power("Texture_5_Geological_Power", Range( 0 , 2)) = 1
		_Texture_6_Geological_Power("Texture_6_Geological_Power", Range( 0 , 2)) = 1
		_Texture_7_Geological_Power("Texture_7_Geological_Power", Range( 0 , 2)) = 1
		_Texture_8_Geological_Power("Texture_8_Geological_Power", Range( 0 , 2)) = 1
		_Texture_9_Geological_Power("Texture_9_Geological_Power", Range( 0 , 2)) = 1
		_Texture_10_Geological_Power("Texture_10_Geological_Power", Range( 0 , 2)) = 1
		_Texture_11_Geological_Power("Texture_11_Geological_Power", Range( 0 , 2)) = 1
		_Texture_12_Geological_Power("Texture_12_Geological_Power", Range( 0 , 2)) = 1
		_Texture_13_Geological_Power("Texture_13_Geological_Power", Range( 0 , 2)) = 1
		_Texture_14_Geological_Power("Texture_14_Geological_Power", Range( 0 , 2)) = 1
		[Toggle(_USE_AO_ON)] _Use_AO("Use_AO", Float) = 0
		_Texture_15_Geological_Power("Texture_15_Geological_Power", Range( 0 , 2)) = 1
		_Texture_16_Geological_Power("Texture_16_Geological_Power", Range( 0 , 2)) = 1
		_Snow_Specular("Snow_Specular", Range( 0 , 3)) = 1
		_Snow_Normal_Scale("Snow_Normal_Scale", Range( 0 , 5)) = 1
		_Global_Color_Map("Global_Color_Map", 2D) = "white" {}
		_Snow_Color("Snow_Color", Vector) = (1,1,1,1)
		_Snow_Blend_Normal("Snow_Blend_Normal", Range( 0 , 1)) = 0.8
		_Snow_Amount("Snow_Amount", Range( 0 , 2)) = 0
		_Texture_Additional_Masks("Texture_Additional_Masks", 2D) = "white" {}
		_Snow_Tiling("Snow_Tiling", Range( 0.001 , 20)) = 15
		_Snow_Tiling_Far_Multiplier("Snow_Tiling_Far_Multiplier", Range( 0.001 , 20)) = 1
		_Snow_Perlin_Power("Snow_Perlin_Power", Range( 0 , 2)) = 0
		_Snow_Noise_Power("Snow_Noise_Power", Range( 0 , 1)) = 1
		_Snow_Noise_Tiling("Snow_Noise_Tiling", Range( 0.001 , 1)) = 0.02
		_Snow_Min_Height("Snow_Min_Height", Range( -1000 , 10000)) = -1000
		_Snow_Min_Height_Blending("Snow_Min_Height_Blending", Range( 0 , 500)) = 1
		_Snow_Maximum_Angle("Snow_Maximum_Angle", Range( 0.001 , 180)) = 30
		_Snow_Maximum_Angle_Hardness("Snow_Maximum_Angle_Hardness", Range( 0.001 , 10)) = 1
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
		_Snow_Ambient_Occlusion_Power("Snow_Ambient_Occlusion_Power", Range( 0 , 1)) = 1
		_Ambient_Occlusion_Power("Ambient_Occlusion_Power", Range( 0 , 1)) = 1
		_Texture_9_Color("Texture_9_Color", Vector) = (1,1,1,1)
		_Texture_10_Color("Texture_10_Color", Vector) = (1,1,1,1)
		_Texture_13_Color("Texture_13_Color", Vector) = (1,1,1,1)
		_Texture_11_Color("Texture_11_Color", Vector) = (1,1,1,1)
		_Texture_12_Color("Texture_12_Color", Vector) = (1,1,1,1)
		_Texture_15_Color("Texture_15_Color", Vector) = (1,1,1,1)
		_Texture_14_Color("Texture_14_Color", Vector) = (1,1,1,1)
		_Texture_8_Color("Texture_8_Color", Vector) = (1,1,1,1)
		_Texture_16_Color("Texture_16_Color", Vector) = (1,1,1,1)
		_Texture_7_Color("Texture_7_Color", Vector) = (1,1,1,1)
		_Texture_5_Color("Texture_5_Color", Vector) = (1,1,1,1)
		_Texture_6_Color("Texture_6_Color", Vector) = (1,1,1,1)
		_Texture_4_Color("Texture_4_Color", Vector) = (1,1,1,1)
		_Texture_1_Color("Texture_1_Color", Vector) = (1,1,1,1)
		_Texture_3_Color("Texture_3_Color", Vector) = (1,1,1,1)
		_Texture_2_Color("Texture_2_Color", Vector) = (1,1,1,1)
		_Texture_2_Triplanar("Texture_2_Triplanar", Range( 0 , 1)) = 0
		_Texture_16_Triplanar("Texture_16_Triplanar", Range( 0 , 1)) = 0
		_Texture_15_Triplanar("Texture_15_Triplanar", Range( 0 , 1)) = 0
		_Texture_12_Triplanar("Texture_12_Triplanar", Range( 0 , 1)) = 0
		_Texture_14_Triplanar("Texture_14_Triplanar", Range( 0 , 1)) = 0
		_Texture_13_Triplanar("Texture_13_Triplanar", Range( 0 , 1)) = 0
		_Texture_11_Triplanar("Texture_11_Triplanar", Range( 0 , 1)) = 0
		_Texture_9_Triplanar("Texture_9_Triplanar", Range( 0 , 1)) = 0
		_Texture_10_Triplanar("Texture_10_Triplanar", Range( 0 , 1)) = 0
		_Texture_8_Triplanar("Texture_8_Triplanar", Range( 0 , 1)) = 0
		_Texture_7_Triplanar("Texture_7_Triplanar", Range( 0 , 1)) = 0
		_Texture_6_Triplanar("Texture_6_Triplanar", Range( 0 , 1)) = 0
		_Texture_Geological_Map("Texture_Geological_Map", 2D) = "white" {}
		_Texture_5_Triplanar("Texture_5_Triplanar", Range( 0 , 1)) = 0
		_Texture_4_Triplanar("Texture_4_Triplanar", Range( 0 , 1)) = 0
		_Texture_3_Triplanar("Texture_3_Triplanar", Range( 0 , 1)) = 0
		_Texture_1_Triplanar("Texture_1_Triplanar", Range( 0 , 1)) = 0
		_Texture_1_Normal_Power("Texture_1_Normal_Power", Range( 0 , 2)) = 1
		_Texture_2_Normal_Power("Texture_2_Normal_Power", Range( 0 , 2)) = 1
		_Texture_3_Normal_Power("Texture_3_Normal_Power", Range( 0 , 2)) = 1
		_Texture_4_Normal_Power("Texture_4_Normal_Power", Range( 0 , 2)) = 1
		_Texture_5_Normal_Power("Texture_5_Normal_Power", Range( 0 , 2)) = 1
		_Texture_6_Normal_Power("Texture_6_Normal_Power", Range( 0 , 2)) = 1
		_Texture_7_Normal_Power("Texture_7_Normal_Power", Range( 0 , 2)) = 1
		_Texture_8_Normal_Power("Texture_8_Normal_Power", Range( 0 , 2)) = 1
		_Texture_9_Normal_Power("Texture_9_Normal_Power", Range( 0 , 2)) = 1
		_Texture_10_Normal_Power("Texture_10_Normal_Power", Range( 0 , 2)) = 1
		_Texture_11_Normal_Power("Texture_11_Normal_Power", Range( 0 , 2)) = 1
		_Texture_12_Normal_Power("Texture_12_Normal_Power", Range( 0 , 2)) = 1
		_Texture_13_Normal_Power("Texture_13_Normal_Power", Range( 0 , 2)) = 1
		_Texture_13_Albedo_Index("Texture_13_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_12_H_AO_Index("Texture_12_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_12_Albedo_Index("Texture_12_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_12_Normal_Index("Texture_12_Normal_Index", Range( -1 , 100)) = -1
		_Texture_14_Normal_Power("Texture_14_Normal_Power", Range( 0 , 2)) = 1
		_Texture_15_Normal_Power("Texture_15_Normal_Power", Range( 0 , 2)) = 1
		_Texture_16_Normal_Power("Texture_16_Normal_Power", Range( 0 , 2)) = 1
		_Texture_Splat_1("Texture_Splat_1", 2D) = "black" {}
		_Texture_1_Albedo_Index("Texture_1_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_2_Albedo_Index("Texture_2_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_1_H_AO_Index("Texture_1_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_2_H_AO_Index("Texture_2_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_3_Normal_Index("Texture_3_Normal_Index", Range( -1 , 100)) = -1
		_Texture_11_H_AO_Index("Texture_11_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_3_H_AO_Index("Texture_3_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_13_Normal_Index("Texture_13_Normal_Index", Range( -1 , 100)) = -1
		_Texture_3_Albedo_Index("Texture_3_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_11_Normal_Index("Texture_11_Normal_Index", Range( -1 , 100)) = -1
		_Texture_10_H_AO_Index("Texture_10_H_AO_Index", Range( -1 , 100)) = -1
		_Global_Color_Map_Scale("Global_Color_Map_Scale", Float) = 1
		_Texture_10_Normal_Index("Texture_10_Normal_Index", Range( -1 , 100)) = -1
		_Texture_9_H_AO_Index("Texture_9_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_11_Albedo_Index("Texture_11_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_9_Normal_Index("Texture_9_Normal_Index", Range( -1 , 100)) = -1
		_Global_Color_Map_Offset("Global_Color_Map_Offset", Vector) = (0,0,0,0)
		_Texture_10_Albedo_Index("Texture_10_Albedo_Index", Range( -1 , 100)) = -1
		_Glitter_Refreshing_Speed("Glitter_Refreshing_Speed", Range( 0 , 7)) = 4
		_Glitter_Tiling("Glitter_Tiling", Range( 0 , 100)) = 3
		_Texture_9_Albedo_Index("Texture_9_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_4_Normal_Index("Texture_4_Normal_Index", Range( -1 , 100)) = -1
		_Texture_4_H_AO_Index("Texture_4_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_4_Albedo_Index("Texture_4_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_5_Normal_Index("Texture_5_Normal_Index", Range( -1 , 100)) = -1
		_Texture_5_H_AO_Index("Texture_5_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_6_Albedo_Index("Texture_6_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_5_Albedo_Index("Texture_5_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_6_Normal_Index("Texture_6_Normal_Index", Range( -1 , 100)) = -1
		_Texture_6_H_AO_Index("Texture_6_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_7_Normal_Index("Texture_7_Normal_Index", Range( -1 , 100)) = -1
		_Texture_8_Albedo_Index("Texture_8_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_7_H_AO_Index("Texture_7_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_8_Normal_Index("Texture_8_Normal_Index", Range( -1 , 100)) = -1
		_Texture_16_H_AO_Index("Texture_16_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_8_H_AO_Index("Texture_8_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_16_Albedo_Index("Texture_16_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_15_H_AO_Index("Texture_15_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_16_Normal_Index("Texture_16_Normal_Index", Range( -1 , 100)) = -1
		_Texture_15_Albedo_Index("Texture_15_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_14_H_AO_Index("Texture_14_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_15_Normal_Index("Texture_15_Normal_Index", Range( -1 , 100)) = -1
		_Texture_14_Albedo_Index("Texture_14_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_13_H_AO_Index("Texture_13_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_14_Normal_Index("Texture_14_Normal_Index", Range( -1 , 100)) = -1
		_Texture_7_Albedo_Index("Texture_7_Albedo_Index", Range( -1 , 100)) = -1
		_Texture_1_Normal_Index("Texture_1_Normal_Index", Range( -1 , 100)) = -1
		_Texture_2_Normal_Index("Texture_2_Normal_Index", Range( -1 , 100)) = -1
		_Texture_Splat_2("Texture_Splat_2", 2D) = "black" {}
		_Texture_Snow_H_AO_Index("Texture_Snow_H_AO_Index", Range( -1 , 100)) = -1
		_Texture_Snow_Normal_Index("Texture_Snow_Normal_Index", Range( -1 , 100)) = 0
		_Texture_Snow_Noise_Index("Texture_Snow_Noise_Index", Range( -1 , 100)) = -1
		_Texture_Snow_Index("Texture_Snow_Index", Range( -1 , 100)) = 0
		_Texture_Splat_3("Texture_Splat_3", 2D) = "black" {}
		_Texture_Splat_4("Texture_Splat_4", 2D) = "black" {}
		_Global_Normal_Map("Global_Normal_Map", 2D) = "bump" {}
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
		#include "Tessellation.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 4.6
		#pragma multi_compile __ _USE_AO_ON
		#pragma multi_compile __ _USE_AO_TEXTURE_ON
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
		uniform fixed _Texture_1_Tesselation_Depth;
		uniform fixed _Texture_1_H_AO_Index;
		uniform fixed _Texture_1_Triplanar;
		uniform UNITY_DECLARE_TEX2DARRAY( _Texture_Array_Albedo );
		uniform fixed _Texture_1_Tiling;
		uniform fixed _Texture_1_Far_Multiplier;
		uniform fixed _Texture_2_Tesselation_Depth;
		uniform fixed _Texture_2_H_AO_Index;
		uniform fixed _Texture_2_Triplanar;
		uniform fixed _Texture_2_Tiling;
		uniform fixed _Texture_2_Far_Multiplier;
		uniform fixed _Texture_3_Tesselation_Depth;
		uniform fixed _Texture_3_H_AO_Index;
		uniform fixed _Texture_3_Triplanar;
		uniform fixed _Texture_3_Tiling;
		uniform fixed _Texture_3_Far_Multiplier;
		uniform fixed _Texture_4_Tesselation_Depth;
		uniform fixed _Texture_4_H_AO_Index;
		uniform fixed _Texture_4_Triplanar;
		uniform fixed _Texture_4_Tiling;
		uniform fixed _Texture_4_Far_Multiplier;
		uniform fixed _Texture_5_Tesselation_Depth;
		uniform fixed _Texture_5_H_AO_Index;
		uniform fixed _Texture_5_Triplanar;
		uniform fixed _Texture_5_Tiling;
		uniform fixed _Texture_5_Far_Multiplier;
		uniform fixed _Texture_6_Tesselation_Depth;
		uniform fixed _Texture_6_H_AO_Index;
		uniform fixed _Texture_6_Triplanar;
		uniform fixed _Texture_6_Tiling;
		uniform fixed _Texture_6_Far_Multiplier;
		uniform fixed _Texture_7_Tesselation_Depth;
		uniform fixed _Texture_7_H_AO_Index;
		uniform fixed _Texture_7_Triplanar;
		uniform fixed _Texture_7_Tiling;
		uniform fixed _Texture_7_Far_Multiplier;
		uniform fixed _Texture_8_Tesselation_Depth;
		uniform fixed _Texture_8_H_AO_Index;
		uniform fixed _Texture_8_Triplanar;
		uniform fixed _Texture_8_Tiling;
		uniform fixed _Texture_8_Far_Multiplier;
		uniform fixed _Texture_9_Tesselation_Depth;
		uniform fixed _Texture_9_H_AO_Index;
		uniform fixed _Texture_9_Triplanar;
		uniform fixed _Texture_9_Tiling;
		uniform fixed _Texture_9_Far_Multiplier;
		uniform fixed _Texture_10_Tesselation_Depth;
		uniform fixed _Texture_10_H_AO_Index;
		uniform fixed _Texture_10_Triplanar;
		uniform fixed _Texture_10_Tiling;
		uniform fixed _Texture_10_Far_Multiplier;
		uniform fixed _Texture_11_Tesselation_Depth;
		uniform fixed _Texture_11_H_AO_Index;
		uniform fixed _Texture_11_Triplanar;
		uniform fixed _Texture_11_Tiling;
		uniform fixed _Texture_11_Far_Multiplier;
		uniform fixed _Texture_12_Tesselation_Depth;
		uniform fixed _Texture_12_H_AO_Index;
		uniform fixed _Texture_12_Triplanar;
		uniform fixed _Texture_12_Tiling;
		uniform fixed _Texture_12_Far_Multiplier;
		uniform fixed _Texture_13_Tesselation_Depth;
		uniform fixed _Texture_13_H_AO_Index;
		uniform fixed _Texture_13_Triplanar;
		uniform fixed _Texture_13_Tiling;
		uniform fixed _Texture_13_Far_Multiplier;
		uniform fixed _Texture_14_Tesselation_Depth;
		uniform fixed _Texture_14_H_AO_Index;
		uniform fixed _Texture_14_Triplanar;
		uniform fixed _Texture_14_Tiling;
		uniform fixed _Texture_14_Far_Multiplier;
		uniform fixed _Texture_15_Tesselation_Depth;
		uniform fixed _Texture_15_H_AO_Index;
		uniform fixed _Texture_15_Triplanar;
		uniform fixed _Texture_15_Tiling;
		uniform fixed _Texture_15_Far_Multiplier;
		uniform fixed _Texture_16_Tesselation_Depth;
		uniform fixed _Texture_16_H_AO_Index;
		uniform fixed _Texture_16_Triplanar;
		uniform fixed _Texture_16_Tiling;
		uniform fixed _Texture_16_Far_Multiplier;
		uniform fixed _Texture_Snow_H_AO_Index;
		uniform fixed _Snow_Tiling;
		uniform fixed _Snow_Tiling_Far_Multiplier;
		uniform fixed _Snow_Height_Contrast;
		uniform fixed _Snow_Heightmap_Depth;
		uniform fixed _Snow_Amount;
		uniform fixed _Snow_Noise_Tiling;
		uniform fixed _Texture_Snow_Noise_Index;
		uniform fixed _Snow_Noise_Power;
		uniform fixed _Snow_Maximum_Angle_Hardness;
		uniform fixed _Snow_Maximum_Angle;
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
		uniform fixed _Snow_Heightblend_Close;
		uniform fixed _Snow_Heightblend_Far;
		uniform fixed _Texture_13_Heightmap_Depth;
		uniform fixed _Texture_13_Height_Contrast;
		uniform fixed _Texture_13_Heightblend_Close;
		uniform fixed _Texture_13_Heightblend_Far;
		uniform fixed _Texture_14_Heightmap_Depth;
		uniform fixed _Texture_14_Height_Contrast;
		uniform fixed _Texture_14_Heightblend_Close;
		uniform fixed _Texture_14_Heightblend_Far;
		uniform fixed _Texture_15_Heightmap_Depth;
		uniform fixed _Texture_15_Height_Contrast;
		uniform fixed _Texture_15_Heightblend_Close;
		uniform fixed _Texture_15_Heightblend_Far;
		uniform fixed _Texture_16_Heightmap_Depth;
		uniform fixed _Texture_16_Height_Contrast;
		uniform fixed _Texture_16_Heightblend_Close;
		uniform fixed _Texture_16_Heightblend_Far;
		uniform fixed _Texture_9_Heightmap_Depth;
		uniform fixed _Texture_9_Height_Contrast;
		uniform fixed _Texture_9_Heightblend_Close;
		uniform fixed _Texture_9_Heightblend_Far;
		uniform fixed _Texture_10_Heightmap_Depth;
		uniform fixed _Texture_10_Height_Contrast;
		uniform fixed _Texture_10_Heightblend_Close;
		uniform fixed _Texture_10_Heightblend_Far;
		uniform fixed _Texture_11_Heightmap_Depth;
		uniform fixed _Texture_11_Height_Contrast;
		uniform fixed _Texture_11_Heightblend_Close;
		uniform fixed _Texture_11_Heightblend_Far;
		uniform fixed _Texture_12_Heightmap_Depth;
		uniform fixed _Texture_12_Height_Contrast;
		uniform fixed _Texture_12_Heightblend_Close;
		uniform fixed _Texture_12_Heightblend_Far;
		uniform fixed _Texture_5_Heightmap_Depth;
		uniform fixed _Texture_5_Height_Contrast;
		uniform fixed _Texture_5_Heightblend_Close;
		uniform fixed _Texture_5_Heightblend_Far;
		uniform fixed _Texture_6_Heightmap_Depth;
		uniform fixed _Texture_6_Height_Contrast;
		uniform fixed _Texture_6_Heightblend_Close;
		uniform fixed _Texture_6_Heightblend_Far;
		uniform fixed _Texture_7_Heightmap_Depth;
		uniform fixed _Texture_7_Height_Contrast;
		uniform fixed _Texture_7_Heightblend_Close;
		uniform fixed _Texture_7_Heightblend_Far;
		uniform fixed _Texture_8_Heightmap_Depth;
		uniform fixed _Texture_8_Height_Contrast;
		uniform fixed _Texture_8_Heightblend_Close;
		uniform fixed _Texture_8_Heightblend_Far;
		uniform fixed _Texture_1_Height_Contrast;
		uniform fixed _Texture_1_Heightmap_Depth;
		uniform fixed _Texture_1_Heightblend_Close;
		uniform fixed _Texture_1_Heightblend_Far;
		uniform fixed _Texture_2_Heightmap_Depth;
		uniform fixed _Texture_2_Height_Contrast;
		uniform fixed _Texture_2_Heightblend_Close;
		uniform fixed _Texture_2_Heightblend_Far;
		uniform fixed _Texture_3_Heightmap_Depth;
		uniform fixed _Texture_3_Height_Contrast;
		uniform fixed _Texture_3_Heightblend_Close;
		uniform fixed _Texture_3_Heightblend_Far;
		uniform fixed _Texture_4_Heightmap_Depth;
		uniform fixed _Texture_4_Height_Contrast;
		uniform fixed _Texture_4_Heightblend_Close;
		uniform fixed _Texture_4_Heightblend_Far;
		uniform fixed _Texture_1_Normal_Index;
		uniform fixed _Texture_1_Normal_Power;
		uniform fixed _Texture_2_Normal_Index;
		uniform fixed _Texture_2_Normal_Power;
		uniform fixed _Texture_3_Normal_Index;
		uniform fixed _Texture_3_Normal_Power;
		uniform fixed _Texture_4_Normal_Index;
		uniform fixed _Texture_4_Normal_Power;
		uniform fixed _Texture_5_Normal_Index;
		uniform fixed _Texture_5_Normal_Power;
		uniform fixed _Texture_6_Normal_Index;
		uniform fixed _Texture_6_Normal_Power;
		uniform fixed _Texture_7_Normal_Index;
		uniform fixed _Texture_7_Normal_Power;
		uniform fixed _Texture_8_Normal_Index;
		uniform fixed _Texture_8_Normal_Power;
		uniform fixed _Texture_9_Normal_Index;
		uniform fixed _Texture_9_Normal_Power;
		uniform fixed _Texture_10_Normal_Index;
		uniform fixed _Texture_10_Normal_Power;
		uniform fixed _Texture_11_Normal_Index;
		uniform fixed _Texture_11_Normal_Power;
		uniform fixed _Texture_12_Normal_Index;
		uniform fixed _Texture_12_Normal_Power;
		uniform fixed _Texture_13_Normal_Index;
		uniform fixed _Texture_13_Normal_Power;
		uniform fixed _Texture_14_Normal_Index;
		uniform fixed _Texture_14_Normal_Power;
		uniform fixed _Texture_15_Normal_Index;
		uniform fixed _Texture_15_Normal_Power;
		uniform fixed _Texture_16_Normal_Index;
		uniform fixed _Texture_16_Normal_Power;
		uniform fixed _Texture_Snow_Normal_Index;
		uniform fixed _Snow_Normal_Scale;
		uniform fixed _Snow_Blend_Normal;
		uniform fixed _Global_Normalmap_Power;
		uniform sampler2D _Global_Normal_Map;
		uniform fixed _Global_Color_Map_Close_Power;
		uniform fixed _Global_Color_Map_Far_Power;
		uniform sampler2D _Global_Color_Map;
		uniform fixed2 _Global_Color_Map_Offset;
		uniform fixed _Global_Color_Map_Scale;
		uniform fixed _Global_Color_Opacity_Power;
		uniform fixed _Texture_1_Albedo_Index;
		uniform fixed4 _Texture_1_Color;
		uniform fixed _Texture_2_Albedo_Index;
		uniform fixed4 _Texture_2_Color;
		uniform fixed _Texture_3_Albedo_Index;
		uniform fixed4 _Texture_3_Color;
		uniform fixed _Texture_4_Albedo_Index;
		uniform fixed4 _Texture_4_Color;
		uniform fixed _Texture_5_Albedo_Index;
		uniform fixed4 _Texture_5_Color;
		uniform fixed _Texture_6_Albedo_Index;
		uniform fixed4 _Texture_6_Color;
		uniform fixed _Texture_7_Albedo_Index;
		uniform fixed4 _Texture_7_Color;
		uniform fixed _Texture_8_Albedo_Index;
		uniform fixed4 _Texture_8_Color;
		uniform fixed _Texture_9_Albedo_Index;
		uniform fixed4 _Texture_9_Color;
		uniform fixed _Texture_10_Albedo_Index;
		uniform fixed4 _Texture_10_Color;
		uniform fixed _Texture_11_Albedo_Index;
		uniform fixed4 _Texture_11_Color;
		uniform fixed _Texture_12_Albedo_Index;
		uniform fixed4 _Texture_12_Color;
		uniform fixed _Texture_13_Albedo_Index;
		uniform fixed4 _Texture_13_Color;
		uniform fixed _Texture_14_Albedo_Index;
		uniform fixed4 _Texture_14_Color;
		uniform fixed _Texture_15_Albedo_Index;
		uniform fixed4 _Texture_15_Color;
		uniform fixed _Texture_16_Albedo_Index;
		uniform fixed4 _Texture_16_Color;
		uniform sampler2D _Texture_Geological_Map;
		uniform fixed _Geological_Map_Offset_Close;
		uniform fixed _Geological_Tiling_Close;
		uniform fixed _Geological_Map_Close_Power;
		uniform fixed _Geological_Tiling_Far;
		uniform fixed _Geological_Map_Offset_Far;
		uniform fixed _Geological_Map_Far_Power;
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
		uniform fixed _Texture_1_AO_Power;
		uniform fixed _Texture_2_AO_Power;
		uniform fixed _Texture_3_AO_Power;
		uniform fixed _Texture_4_AO_Power;
		uniform fixed _Texture_5_AO_Power;
		uniform fixed _Texture_6_AO_Power;
		uniform fixed _Texture_7_AO_Power;
		uniform fixed _Texture_8_AO_Power;
		uniform fixed _Texture_9_AO_Power;
		uniform fixed _Texture_10_AO_Power;
		uniform fixed _Texture_11_AO_Power;
		uniform fixed _Texture_12_AO_Power;
		uniform fixed _Texture_13_AO_Power;
		uniform fixed _Texture_14_AO_Power;
		uniform fixed _Texture_15_AO_Power;
		uniform fixed _Texture_16_AO_Power;
		uniform fixed _Snow_Ambient_Occlusion_Power;
		uniform sampler2D _Texture_Additional_Masks;
		uniform float4 _Texture_Additional_Masks_ST;
		uniform fixed _Remove_Vert_Height;
		uniform fixed _Snow_Tesselation_Depth;
		uniform fixed _Texture_1_Heightmap_MaxHeight;
		uniform fixed _Texture_2_Heightmap_MaxHeight;
		uniform fixed _Texture_3_Heightmap_MaxHeight;
		uniform fixed _Texture_4_Heightmap_MaxHeight;
		uniform fixed _Texture_5_Heightmap_MaxHeight;
		uniform fixed _Texture_6_Heightmap_MaxHeight;
		uniform fixed _Texture_7_Heightmap_MaxHeight;
		uniform fixed _Texture_8_Heightmap_MaxHeight;
		uniform fixed _Texture_10_Heightmap_MaxHeight;
		uniform fixed _Texture_9_Heightmap_MaxHeight;
		uniform fixed _Texture_11_Heightmap_MaxHeight;
		uniform fixed _Texture_12_Heightmap_MaxHeight;
		uniform fixed _Texture_13_Heightmap_MaxHeight;
		uniform fixed _Texture_14_Heightmap_MaxHeight;
		uniform fixed _Texture_15_Heightmap_MaxHeight;
		uniform fixed _Texture_16_Heightmap_MaxHeight;
		uniform float _Cutoff = 0.5;
		uniform fixed _TessValue;
		uniform fixed _TessMin;
		uniform fixed _TessMax;


		inline fixed MyCustomExpression8069( inout fixed3 In0 )
		{
			return UNITY_MATRIX_IT_MV[2].xyz;
		}


		float4 tessFunction( appdata_full v0, appdata_full v1, appdata_full v2 )
		{
			return UnityDistanceBasedTess( v0.vertex, v1.vertex, v2.vertex, _TessMin, _TessMax, _TessValue );
		}

		void vertexDataFunc( inout appdata_full v )
		{
			float2 uv_TexCoord8031 = v.texcoord.xy * float2( 1,1 ) + float2( 0,0 );
			fixed4 tex2DNode4371 = tex2Dlod( _Texture_Splat_4, fixed4( uv_TexCoord8031, 0, 1) );
			fixed4 tex2DNode4370 = tex2Dlod( _Texture_Splat_3, fixed4( uv_TexCoord8031, 0, 1) );
			fixed4 tex2DNode4369 = tex2Dlod( _Texture_Splat_2, fixed4( uv_TexCoord8031, 0, 1) );
			fixed4 tex2DNode4368 = tex2Dlod( _Texture_Splat_1, fixed4( uv_TexCoord8031, 0, 1) );
			float3 ase_vertex3Pos = v.vertex.xyz;
			float2 appendResult8057 = (fixed2(ase_vertex3Pos.x , ase_vertex3Pos.z));
			fixed2 Top_Bottom1999 = appendResult8057;
			float temp_output_3830_0 = ( 1 / _Texture_1_Tiling );
			float2 appendResult3284 = (fixed2(temp_output_3830_0 , temp_output_3830_0));
			float2 temp_output_3275_0 = ( Top_Bottom1999 * appendResult3284 );
			float4 texArray7323 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3275_0, _Texture_1_H_AO_Index), 0 );
			float2 appendResult7853 = (fixed2(texArray7323.y , texArray7323.w));
			float2 temp_output_3298_0 = ( temp_output_3275_0 / _Texture_1_Far_Multiplier );
			float4 texArray5491 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3298_0, _Texture_1_H_AO_Index), 0 );
			float2 appendResult7968 = (fixed2(texArray5491.y , 1));
			float3 ase_worldPos = mul( unity_ObjectToWorld, v.vertex );
			float clampResult297 = clamp( pow( ( max( max( abs( ( ase_worldPos - _WorldSpaceCameraPos ) ).x , abs( ( ase_worldPos - _WorldSpaceCameraPos ) ).y ) , abs( ( ase_worldPos - _WorldSpaceCameraPos ) ).z ) / _UV_Mix_Start_Distance ) , _UV_Mix_Power ) , 0 , 1 );
			fixed UVmixDistance636 = clampResult297;
			float2 lerpResult6611 = lerp( appendResult7853 , appendResult7968 , UVmixDistance636);
			fixed3 ase_worldNormal = UnityObjectToWorldNormal( v.normal );
			float3 clampResult6387 = clamp( pow( ( ase_worldNormal * ase_worldNormal ) , 25 ) , float3( -1,-1,-1 ) , float3( 1,1,1 ) );
			fixed3 BlendComponents91 = clampResult6387;
			float2 appendResult8055 = (fixed2(ase_vertex3Pos.z , ase_vertex3Pos.y));
			fixed2 Front_Back1991 = appendResult8055;
			float2 temp_output_3279_0 = ( Front_Back1991 * appendResult3284 );
			float4 texArray7847 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3279_0, _Texture_1_H_AO_Index), 0 );
			float2 appendResult7852 = (fixed2(texArray7847.y , texArray7847.w));
			float2 appendResult8056 = (fixed2(ase_vertex3Pos.x , ase_vertex3Pos.y));
			fixed2 Left_Right2003 = appendResult8056;
			float2 temp_output_3277_0 = ( Left_Right2003 * appendResult3284 );
			float4 texArray7324 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3277_0, _Texture_1_H_AO_Index), 0 );
			float2 appendResult7854 = (fixed2(texArray7324.y , texArray7324.w));
			float3 weightedBlendVar7327 = BlendComponents91;
			float2 weightedAvg7327 = ( ( weightedBlendVar7327.x*appendResult7852 + weightedBlendVar7327.y*appendResult7853 + weightedBlendVar7327.z*appendResult7854 )/( weightedBlendVar7327.x + weightedBlendVar7327.y + weightedBlendVar7327.z ) );
			float2 temp_output_3296_0 = ( temp_output_3279_0 / _Texture_1_Far_Multiplier );
			float4 texArray5486 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3296_0, _Texture_1_H_AO_Index), 0 );
			float2 appendResult7967 = (fixed2(texArray5486.y , 1));
			float2 temp_output_3297_0 = ( temp_output_3277_0 / _Texture_1_Far_Multiplier );
			float4 texArray5489 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3297_0, _Texture_1_H_AO_Index), 0 );
			float2 appendResult7969 = (fixed2(texArray5489.y , 1));
			float3 weightedBlendVar6394 = BlendComponents91;
			float2 weightedAvg6394 = ( ( weightedBlendVar6394.x*appendResult7967 + weightedBlendVar6394.y*appendResult7968 + weightedBlendVar6394.z*appendResult7969 )/( weightedBlendVar6394.x + weightedBlendVar6394.y + weightedBlendVar6394.z ) );
			float2 lerpResult5478 = lerp( weightedAvg7327 , weightedAvg6394 , UVmixDistance636);
			fixed2 ifLocalVar6609 = 0;
			UNITY_BRANCH 
			if( _Texture_1_Triplanar == 1 )
				ifLocalVar6609 = lerpResult5478;
			else
				ifLocalVar6609 = lerpResult6611;
			fixed2 ifLocalVar7727 = 0;
			UNITY_BRANCH 
			if( _Texture_1_H_AO_Index > -1 )
				ifLocalVar7727 = ifLocalVar6609;
			fixed2 Texture_1_H5480 = ifLocalVar7727;
			float temp_output_3831_0 = ( 1 / _Texture_2_Tiling );
			float2 appendResult3349 = (fixed2(temp_output_3831_0 , temp_output_3831_0));
			float2 temp_output_3343_0 = ( Top_Bottom1999 * appendResult3349 );
			float4 texArray7336 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3343_0, _Texture_2_H_AO_Index), 0 );
			float2 appendResult7859 = (fixed2(texArray7336.y , texArray7336.w));
			float2 temp_output_3345_0 = ( temp_output_3343_0 / _Texture_2_Far_Multiplier );
			float4 texArray5533 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3345_0, _Texture_2_H_AO_Index), 0 );
			float2 appendResult7971 = (fixed2(texArray5533.y , 1));
			float2 lerpResult6616 = lerp( appendResult7859 , appendResult7971 , UVmixDistance636);
			float2 temp_output_3344_0 = ( Front_Back1991 * appendResult3349 );
			float4 texArray7345 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3344_0, _Texture_2_H_AO_Index), 0 );
			float2 appendResult7858 = (fixed2(texArray7345.y , texArray7345.w));
			float2 temp_output_3379_0 = ( Left_Right2003 * appendResult3349 );
			float4 texArray7335 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3379_0, _Texture_2_H_AO_Index), 0 );
			float2 appendResult7860 = (fixed2(texArray7335.y , texArray7335.w));
			float3 weightedBlendVar7342 = BlendComponents91;
			float2 weightedAvg7342 = ( ( weightedBlendVar7342.x*appendResult7858 + weightedBlendVar7342.y*appendResult7859 + weightedBlendVar7342.z*appendResult7860 )/( weightedBlendVar7342.x + weightedBlendVar7342.y + weightedBlendVar7342.z ) );
			float2 temp_output_3346_0 = ( temp_output_3344_0 / _Texture_2_Far_Multiplier );
			float4 texArray5530 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3346_0, _Texture_2_H_AO_Index), 0 );
			float2 appendResult7970 = (fixed2(texArray5530.y , 1));
			float2 temp_output_3352_0 = ( temp_output_3379_0 / _Texture_2_Far_Multiplier );
			float4 texArray5532 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3352_0, _Texture_2_H_AO_Index), 0 );
			float2 appendResult7973 = (fixed2(texArray5532.y , 1));
			float3 weightedBlendVar6400 = BlendComponents91;
			float2 weightedAvg6400 = ( ( weightedBlendVar6400.x*appendResult7970 + weightedBlendVar6400.y*appendResult7971 + weightedBlendVar6400.z*appendResult7973 )/( weightedBlendVar6400.x + weightedBlendVar6400.y + weightedBlendVar6400.z ) );
			float2 lerpResult5525 = lerp( weightedAvg7342 , weightedAvg6400 , UVmixDistance636);
			fixed2 ifLocalVar6614 = 0;
			UNITY_BRANCH 
			if( _Texture_2_Triplanar == 1 )
				ifLocalVar6614 = lerpResult5525;
			else
				ifLocalVar6614 = lerpResult6616;
			fixed2 ifLocalVar7731 = 0;
			UNITY_BRANCH 
			if( _Texture_2_H_AO_Index > -1 )
				ifLocalVar7731 = ifLocalVar6614;
			fixed2 Texture_2_H5497 = ifLocalVar7731;
			float temp_output_3832_0 = ( 1 / _Texture_3_Tiling );
			float2 appendResult3415 = (fixed2(temp_output_3832_0 , temp_output_3832_0));
			float2 temp_output_3410_0 = ( Top_Bottom1999 * appendResult3415 );
			float4 texArray7352 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3410_0, _Texture_3_H_AO_Index), 0 );
			float2 appendResult7865 = (fixed2(texArray7352.y , texArray7352.w));
			float2 temp_output_3412_0 = ( temp_output_3410_0 / _Texture_3_Far_Multiplier );
			float4 texArray5586 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3412_0, _Texture_3_H_AO_Index), 0 );
			float2 appendResult7975 = (fixed2(texArray5586.y , 1));
			float2 lerpResult6622 = lerp( appendResult7865 , appendResult7975 , UVmixDistance636);
			float2 temp_output_3411_0 = ( Front_Back1991 * appendResult3415 );
			float4 texArray7353 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3411_0, _Texture_3_H_AO_Index), 0 );
			float2 appendResult7864 = (fixed2(texArray7353.y , texArray7353.w));
			float2 temp_output_3441_0 = ( Left_Right2003 * appendResult3415 );
			float4 texArray7346 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3441_0, _Texture_3_H_AO_Index), 0 );
			float2 appendResult7866 = (fixed2(texArray7346.y , texArray7346.w));
			float3 weightedBlendVar7350 = BlendComponents91;
			float2 weightedAvg7350 = ( ( weightedBlendVar7350.x*appendResult7864 + weightedBlendVar7350.y*appendResult7865 + weightedBlendVar7350.z*appendResult7866 )/( weightedBlendVar7350.x + weightedBlendVar7350.y + weightedBlendVar7350.z ) );
			float2 temp_output_3413_0 = ( temp_output_3411_0 / _Texture_3_Far_Multiplier );
			float4 texArray5560 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3413_0, _Texture_3_H_AO_Index), 0 );
			float2 appendResult7974 = (fixed2(texArray5560.y , 1));
			float2 temp_output_3418_0 = ( temp_output_3441_0 / _Texture_3_Far_Multiplier );
			float4 texArray5572 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3418_0, _Texture_3_H_AO_Index), 0 );
			float2 appendResult7976 = (fixed2(texArray5572.y , 1));
			float3 weightedBlendVar6407 = BlendComponents91;
			float2 weightedAvg6407 = ( ( weightedBlendVar6407.x*appendResult7974 + weightedBlendVar6407.y*appendResult7975 + weightedBlendVar6407.z*appendResult7976 )/( weightedBlendVar6407.x + weightedBlendVar6407.y + weightedBlendVar6407.z ) );
			float2 lerpResult5563 = lerp( weightedAvg7350 , weightedAvg6407 , UVmixDistance636);
			fixed2 ifLocalVar6620 = 0;
			UNITY_BRANCH 
			if( _Texture_3_Triplanar == 1 )
				ifLocalVar6620 = lerpResult5563;
			else
				ifLocalVar6620 = lerpResult6622;
			fixed2 ifLocalVar7735 = 0;
			UNITY_BRANCH 
			if( _Texture_3_H_AO_Index > -1 )
				ifLocalVar7735 = ifLocalVar6620;
			fixed2 Texture_3_H5581 = ifLocalVar7735;
			float temp_output_3833_0 = ( 1 / _Texture_4_Tiling );
			float2 appendResult3482 = (fixed2(temp_output_3833_0 , temp_output_3833_0));
			float2 temp_output_3477_0 = ( Top_Bottom1999 * appendResult3482 );
			float4 texArray7364 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3477_0, _Texture_4_H_AO_Index), 0 );
			float2 appendResult7871 = (fixed2(texArray7364.y , texArray7364.w));
			float2 temp_output_3479_0 = ( temp_output_3477_0 / _Texture_4_Far_Multiplier );
			float4 texArray5615 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3479_0, _Texture_4_H_AO_Index), 0 );
			float2 appendResult7978 = (fixed2(texArray5615.y , 1));
			float2 lerpResult6628 = lerp( appendResult7871 , appendResult7978 , UVmixDistance636);
			float2 temp_output_3478_0 = ( Front_Back1991 * appendResult3482 );
			float4 texArray7365 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3478_0, _Texture_4_H_AO_Index), 0 );
			float2 appendResult7870 = (fixed2(texArray7365.y , texArray7365.w));
			float2 temp_output_3508_0 = ( Left_Right2003 * appendResult3482 );
			float4 texArray7358 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3508_0, _Texture_4_H_AO_Index), 0 );
			float2 appendResult7872 = (fixed2(texArray7358.y , texArray7358.w));
			float3 weightedBlendVar7362 = BlendComponents91;
			float2 weightedAvg7362 = ( ( weightedBlendVar7362.x*appendResult7870 + weightedBlendVar7362.y*appendResult7871 + weightedBlendVar7362.z*appendResult7872 )/( weightedBlendVar7362.x + weightedBlendVar7362.y + weightedBlendVar7362.z ) );
			float2 temp_output_3480_0 = ( temp_output_3478_0 / _Texture_4_Far_Multiplier );
			float4 texArray5596 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3480_0, _Texture_4_H_AO_Index), 0 );
			float2 appendResult7977 = (fixed2(texArray5596.y , 1));
			float2 temp_output_3485_0 = ( temp_output_3508_0 / _Texture_4_Far_Multiplier );
			float4 texArray5604 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3485_0, _Texture_4_H_AO_Index), 0 );
			float2 appendResult7979 = (fixed2(texArray5604.y , 1));
			float3 weightedBlendVar6414 = BlendComponents91;
			float2 weightedAvg6414 = ( ( weightedBlendVar6414.x*appendResult7977 + weightedBlendVar6414.y*appendResult7978 + weightedBlendVar6414.z*appendResult7979 )/( weightedBlendVar6414.x + weightedBlendVar6414.y + weightedBlendVar6414.z ) );
			float2 lerpResult5629 = lerp( weightedAvg7362 , weightedAvg6414 , UVmixDistance636);
			fixed2 ifLocalVar6626 = 0;
			UNITY_BRANCH 
			if( _Texture_4_Triplanar == 1 )
				ifLocalVar6626 = lerpResult5629;
			else
				ifLocalVar6626 = lerpResult6628;
			fixed2 ifLocalVar7739 = 0;
			UNITY_BRANCH 
			if( _Texture_4_H_AO_Index > -1 )
				ifLocalVar7739 = ifLocalVar6626;
			fixed2 Texture_4_H5631 = ifLocalVar7739;
			float4 layeredBlendVar6518 = tex2DNode4368;
			float layeredBlend6518 = ( lerp( lerp( lerp( lerp( 0 , ( _Texture_1_Tesselation_Depth * Texture_1_H5480.x ) , layeredBlendVar6518.x ) , ( _Texture_2_Tesselation_Depth * Texture_2_H5497.x ) , layeredBlendVar6518.y ) , ( _Texture_3_Tesselation_Depth * Texture_3_H5581.x ) , layeredBlendVar6518.z ) , ( _Texture_4_Tesselation_Depth * Texture_4_H5631.x ) , layeredBlendVar6518.w ) );
			float temp_output_4397_0 = ( 1 / _Texture_5_Tiling );
			float2 appendResult4399 = (fixed2(temp_output_4397_0 , temp_output_4397_0));
			float2 temp_output_4416_0 = ( Top_Bottom1999 * appendResult4399 );
			float4 texArray7376 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4416_0, _Texture_5_H_AO_Index), 0 );
			float2 appendResult7877 = (fixed2(texArray7376.y , texArray7376.w));
			float2 temp_output_4440_0 = ( temp_output_4416_0 / _Texture_5_Far_Multiplier );
			float4 texArray5655 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4440_0, _Texture_5_H_AO_Index), 0 );
			float2 appendResult7981 = (fixed2(texArray5655.y , 1));
			float2 lerpResult6634 = lerp( appendResult7877 , appendResult7981 , UVmixDistance636);
			float2 temp_output_4400_0 = ( Front_Back1991 * appendResult4399 );
			float4 texArray7377 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4400_0, _Texture_5_H_AO_Index), 0 );
			float2 appendResult7876 = (fixed2(texArray7377.y , texArray7377.w));
			float2 temp_output_4413_0 = ( Left_Right2003 * appendResult4399 );
			float4 texArray7370 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4413_0, _Texture_5_H_AO_Index), 0 );
			float2 appendResult7878 = (fixed2(texArray7370.y , texArray7370.w));
			float3 weightedBlendVar7374 = BlendComponents91;
			float2 weightedAvg7374 = ( ( weightedBlendVar7374.x*appendResult7876 + weightedBlendVar7374.y*appendResult7877 + weightedBlendVar7374.z*appendResult7878 )/( weightedBlendVar7374.x + weightedBlendVar7374.y + weightedBlendVar7374.z ) );
			float2 temp_output_4436_0 = ( temp_output_4400_0 / _Texture_5_Far_Multiplier );
			float4 texArray5636 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4436_0, _Texture_5_H_AO_Index), 0 );
			float2 appendResult7980 = (fixed2(texArray5636.y , 1));
			float2 temp_output_4437_0 = ( temp_output_4413_0 / _Texture_5_Far_Multiplier );
			float4 texArray5644 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4437_0, _Texture_5_H_AO_Index), 0 );
			float2 appendResult7982 = (fixed2(texArray5644.y , 1));
			float3 weightedBlendVar6421 = BlendComponents91;
			float2 weightedAvg6421 = ( ( weightedBlendVar6421.x*appendResult7980 + weightedBlendVar6421.y*appendResult7981 + weightedBlendVar6421.z*appendResult7982 )/( weightedBlendVar6421.x + weightedBlendVar6421.y + weightedBlendVar6421.z ) );
			float2 lerpResult5669 = lerp( weightedAvg7374 , weightedAvg6421 , UVmixDistance636);
			fixed2 ifLocalVar6632 = 0;
			UNITY_BRANCH 
			if( _Texture_5_Triplanar == 1 )
				ifLocalVar6632 = lerpResult5669;
			else
				ifLocalVar6632 = lerpResult6634;
			fixed2 ifLocalVar7743 = 0;
			UNITY_BRANCH 
			if( _Texture_5_H_AO_Index > -1 )
				ifLocalVar7743 = ifLocalVar6632;
			fixed2 Texture_5_H5671 = ifLocalVar7743;
			float temp_output_4469_0 = ( 1 / _Texture_6_Tiling );
			float2 appendResult4471 = (fixed2(temp_output_4469_0 , temp_output_4469_0));
			float2 temp_output_4485_0 = ( Top_Bottom1999 * appendResult4471 );
			float4 texArray7388 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4485_0, _Texture_6_H_AO_Index), 0 );
			float2 appendResult7883 = (fixed2(texArray7388.y , texArray7388.w));
			float2 temp_output_4507_0 = ( temp_output_4485_0 / _Texture_6_Far_Multiplier );
			float4 texArray5695 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4507_0, _Texture_6_H_AO_Index), 0 );
			float2 appendResult7984 = (fixed2(texArray5695.y , 1));
			float2 lerpResult6640 = lerp( appendResult7883 , appendResult7984 , UVmixDistance636);
			float2 temp_output_4472_0 = ( Front_Back1991 * appendResult4471 );
			float4 texArray7389 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4472_0, _Texture_6_H_AO_Index), 0 );
			float2 appendResult7882 = (fixed2(texArray7389.y , texArray7389.w));
			float2 temp_output_4483_0 = ( Left_Right2003 * appendResult4471 );
			float4 texArray7382 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4483_0, _Texture_6_H_AO_Index), 0 );
			float2 appendResult7884 = (fixed2(texArray7382.y , texArray7382.w));
			float3 weightedBlendVar7386 = BlendComponents91;
			float2 weightedAvg7386 = ( ( weightedBlendVar7386.x*appendResult7882 + weightedBlendVar7386.y*appendResult7883 + weightedBlendVar7386.z*appendResult7884 )/( weightedBlendVar7386.x + weightedBlendVar7386.y + weightedBlendVar7386.z ) );
			float2 temp_output_4503_0 = ( temp_output_4472_0 / _Texture_6_Far_Multiplier );
			float4 texArray5676 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4503_0, _Texture_6_H_AO_Index), 0 );
			float2 appendResult7983 = (fixed2(texArray5676.y , 1));
			float2 temp_output_4504_0 = ( temp_output_4483_0 / _Texture_6_Far_Multiplier );
			float4 texArray5684 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4504_0, _Texture_6_H_AO_Index), 0 );
			float2 appendResult7985 = (fixed2(texArray5684.y , 1));
			float3 weightedBlendVar6428 = BlendComponents91;
			float2 weightedAvg6428 = ( ( weightedBlendVar6428.x*appendResult7983 + weightedBlendVar6428.y*appendResult7984 + weightedBlendVar6428.z*appendResult7985 )/( weightedBlendVar6428.x + weightedBlendVar6428.y + weightedBlendVar6428.z ) );
			float2 lerpResult5709 = lerp( weightedAvg7386 , weightedAvg6428 , UVmixDistance636);
			fixed2 ifLocalVar6638 = 0;
			UNITY_BRANCH 
			if( _Texture_6_Triplanar == 1 )
				ifLocalVar6638 = lerpResult5709;
			else
				ifLocalVar6638 = lerpResult6640;
			fixed2 ifLocalVar7748 = 0;
			UNITY_BRANCH 
			if( _Texture_6_H_AO_Index > -1 )
				ifLocalVar7748 = ifLocalVar6638;
			fixed2 Texture_6_H5711 = ifLocalVar7748;
			float temp_output_4543_0 = ( 1 / _Texture_7_Tiling );
			float2 appendResult4545 = (fixed2(temp_output_4543_0 , temp_output_4543_0));
			float2 temp_output_4559_0 = ( Top_Bottom1999 * appendResult4545 );
			float4 texArray7400 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4559_0, _Texture_7_H_AO_Index), 0 );
			float2 appendResult7889 = (fixed2(texArray7400.y , texArray7400.w));
			float2 temp_output_4581_0 = ( temp_output_4559_0 / _Texture_7_Far_Multiplier );
			float4 texArray5735 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4581_0, _Texture_7_H_AO_Index), 0 );
			float2 appendResult7987 = (fixed2(texArray5735.y , 1));
			float2 lerpResult6646 = lerp( appendResult7889 , appendResult7987 , UVmixDistance636);
			float2 temp_output_4546_0 = ( Front_Back1991 * appendResult4545 );
			float4 texArray7401 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4546_0, _Texture_7_H_AO_Index), 0 );
			float2 appendResult7888 = (fixed2(texArray7401.y , texArray7401.w));
			float2 temp_output_4557_0 = ( Left_Right2003 * appendResult4545 );
			float4 texArray7394 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4557_0, _Texture_7_H_AO_Index), 0 );
			float2 appendResult7890 = (fixed2(texArray7394.y , texArray7394.w));
			float3 weightedBlendVar7398 = BlendComponents91;
			float2 weightedAvg7398 = ( ( weightedBlendVar7398.x*appendResult7888 + weightedBlendVar7398.y*appendResult7889 + weightedBlendVar7398.z*appendResult7890 )/( weightedBlendVar7398.x + weightedBlendVar7398.y + weightedBlendVar7398.z ) );
			float2 temp_output_4577_0 = ( temp_output_4546_0 / _Texture_7_Far_Multiplier );
			float4 texArray5716 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4577_0, _Texture_7_H_AO_Index), 0 );
			float2 appendResult7986 = (fixed2(texArray5716.y , 1));
			float2 temp_output_4578_0 = ( temp_output_4557_0 / _Texture_7_Far_Multiplier );
			float4 texArray5724 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4578_0, _Texture_7_H_AO_Index), 0 );
			float2 appendResult7988 = (fixed2(texArray5724.y , 1));
			float3 weightedBlendVar6435 = BlendComponents91;
			float2 weightedAvg6435 = ( ( weightedBlendVar6435.x*appendResult7986 + weightedBlendVar6435.y*appendResult7987 + weightedBlendVar6435.z*appendResult7988 )/( weightedBlendVar6435.x + weightedBlendVar6435.y + weightedBlendVar6435.z ) );
			float2 lerpResult5749 = lerp( weightedAvg7398 , weightedAvg6435 , UVmixDistance636);
			fixed2 ifLocalVar6644 = 0;
			UNITY_BRANCH 
			if( _Texture_7_Triplanar == 1 )
				ifLocalVar6644 = lerpResult5749;
			else
				ifLocalVar6644 = lerpResult6646;
			fixed2 ifLocalVar7752 = 0;
			UNITY_BRANCH 
			if( _Texture_7_H_AO_Index > -1 )
				ifLocalVar7752 = ifLocalVar6644;
			fixed2 Texture_7_H5751 = ifLocalVar7752;
			float temp_output_4617_0 = ( 1 / _Texture_8_Tiling );
			float2 appendResult4619 = (fixed2(temp_output_4617_0 , temp_output_4617_0));
			float2 temp_output_4633_0 = ( Top_Bottom1999 * appendResult4619 );
			float4 texArray7412 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4633_0, _Texture_8_H_AO_Index), 0 );
			float2 appendResult7895 = (fixed2(texArray7412.y , texArray7412.w));
			float2 temp_output_4655_0 = ( temp_output_4633_0 / _Texture_8_Far_Multiplier );
			float4 texArray5775 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4655_0, _Texture_8_H_AO_Index), 0 );
			float2 appendResult7990 = (fixed2(texArray5775.y , 1));
			float2 lerpResult6652 = lerp( appendResult7895 , appendResult7990 , UVmixDistance636);
			float2 temp_output_4620_0 = ( Front_Back1991 * appendResult4619 );
			float4 texArray7413 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4620_0, _Texture_8_H_AO_Index), 0 );
			float2 appendResult7894 = (fixed2(texArray7413.y , texArray7413.w));
			float2 temp_output_4631_0 = ( Left_Right2003 * appendResult4619 );
			float4 texArray7406 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4631_0, _Texture_8_H_AO_Index), 0 );
			float2 appendResult7896 = (fixed2(texArray7406.y , texArray7406.w));
			float3 weightedBlendVar7410 = BlendComponents91;
			float2 weightedAvg7410 = ( ( weightedBlendVar7410.x*appendResult7894 + weightedBlendVar7410.y*appendResult7895 + weightedBlendVar7410.z*appendResult7896 )/( weightedBlendVar7410.x + weightedBlendVar7410.y + weightedBlendVar7410.z ) );
			float2 temp_output_4651_0 = ( temp_output_4620_0 / _Texture_8_Far_Multiplier );
			float4 texArray5756 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4651_0, _Texture_8_H_AO_Index), 0 );
			float2 appendResult7989 = (fixed2(texArray5756.y , 1));
			float2 temp_output_4652_0 = ( temp_output_4631_0 / _Texture_8_Far_Multiplier );
			float4 texArray5764 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4652_0, _Texture_8_H_AO_Index), 0 );
			float2 appendResult7991 = (fixed2(texArray5764.y , 1));
			float3 weightedBlendVar6442 = BlendComponents91;
			float2 weightedAvg6442 = ( ( weightedBlendVar6442.x*appendResult7989 + weightedBlendVar6442.y*appendResult7990 + weightedBlendVar6442.z*appendResult7991 )/( weightedBlendVar6442.x + weightedBlendVar6442.y + weightedBlendVar6442.z ) );
			float2 lerpResult5789 = lerp( weightedAvg7410 , weightedAvg6442 , UVmixDistance636);
			fixed2 ifLocalVar6650 = 0;
			UNITY_BRANCH 
			if( _Texture_8_Triplanar == 1 )
				ifLocalVar6650 = lerpResult5789;
			else
				ifLocalVar6650 = lerpResult6652;
			fixed2 ifLocalVar7756 = 0;
			UNITY_BRANCH 
			if( _Texture_8_H_AO_Index > -1 )
				ifLocalVar7756 = ifLocalVar6650;
			fixed2 Texture_8_H5791 = ifLocalVar7756;
			float4 layeredBlendVar6525 = tex2DNode4369;
			float layeredBlend6525 = ( lerp( lerp( lerp( lerp( layeredBlend6518 , ( _Texture_5_Tesselation_Depth * Texture_5_H5671.x ) , layeredBlendVar6525.x ) , ( _Texture_6_Tesselation_Depth * Texture_6_H5711.x ) , layeredBlendVar6525.y ) , ( _Texture_7_Tesselation_Depth * Texture_7_H5751.x ) , layeredBlendVar6525.z ) , ( _Texture_8_Tesselation_Depth * Texture_8_H5791.x ) , layeredBlendVar6525.w ) );
			float temp_output_4703_0 = ( 1 / _Texture_9_Tiling );
			float2 appendResult4736 = (fixed2(temp_output_4703_0 , temp_output_4703_0));
			float2 temp_output_4712_0 = ( Top_Bottom1999 * appendResult4736 );
			float4 texArray7508 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4712_0, _Texture_9_H_AO_Index), 0 );
			float2 appendResult7901 = (fixed2(texArray7508.y , texArray7508.w));
			float2 temp_output_4721_0 = ( temp_output_4712_0 / _Texture_9_Far_Multiplier );
			float4 texArray5811 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4721_0, _Texture_9_H_AO_Index), 0 );
			float2 appendResult8015 = (fixed2(texArray5811.y , 1));
			float2 lerpResult6670 = lerp( appendResult7901 , appendResult8015 , UVmixDistance636);
			float2 temp_output_4706_0 = ( Front_Back1991 * appendResult4736 );
			float4 texArray7509 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4706_0, _Texture_9_H_AO_Index), 0 );
			float2 appendResult7900 = (fixed2(texArray7509.y , texArray7509.w));
			float2 temp_output_4761_0 = ( Left_Right2003 * appendResult4736 );
			float4 texArray7502 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4761_0, _Texture_9_H_AO_Index), 0 );
			float2 appendResult7902 = (fixed2(texArray7502.y , texArray7502.w));
			float3 weightedBlendVar7506 = BlendComponents91;
			float2 weightedAvg7506 = ( ( weightedBlendVar7506.x*appendResult7900 + weightedBlendVar7506.y*appendResult7901 + weightedBlendVar7506.z*appendResult7902 )/( weightedBlendVar7506.x + weightedBlendVar7506.y + weightedBlendVar7506.z ) );
			float2 temp_output_4718_0 = ( temp_output_4706_0 / _Texture_9_Far_Multiplier );
			float4 texArray5796 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4718_0, _Texture_9_H_AO_Index), 0 );
			float2 appendResult8014 = (fixed2(texArray5796.y , 1));
			float2 temp_output_4844_0 = ( temp_output_4761_0 / _Texture_9_Far_Multiplier );
			float4 texArray5806 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4844_0, _Texture_9_H_AO_Index), 0 );
			float2 appendResult8016 = (fixed2(texArray5806.y , 1));
			float3 weightedBlendVar6449 = BlendComponents91;
			float2 weightedAvg6449 = ( ( weightedBlendVar6449.x*appendResult8014 + weightedBlendVar6449.y*appendResult8015 + weightedBlendVar6449.z*appendResult8016 )/( weightedBlendVar6449.x + weightedBlendVar6449.y + weightedBlendVar6449.z ) );
			float2 lerpResult5830 = lerp( weightedAvg7506 , weightedAvg6449 , UVmixDistance636);
			fixed2 ifLocalVar6668 = 0;
			UNITY_BRANCH 
			if( _Texture_9_Triplanar == 1 )
				ifLocalVar6668 = lerpResult5830;
			else
				ifLocalVar6668 = lerpResult6670;
			fixed2 ifLocalVar7721 = 0;
			UNITY_BRANCH 
			if( _Texture_9_H_AO_Index > -1 )
				ifLocalVar7721 = ifLocalVar6668;
			fixed2 Texture_9_H5832 = ifLocalVar7721;
			float temp_output_4734_0 = ( 1 / _Texture_10_Tiling );
			float2 appendResult4738 = (fixed2(temp_output_4734_0 , temp_output_4734_0));
			float2 temp_output_4793_0 = ( Top_Bottom1999 * appendResult4738 );
			float4 texArray7496 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4793_0, _Texture_10_H_AO_Index), 0 );
			float2 appendResult7907 = (fixed2(texArray7496.y , texArray7496.w));
			float2 temp_output_4879_0 = ( temp_output_4793_0 / _Texture_10_Far_Multiplier );
			float4 texArray5851 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4879_0, _Texture_10_H_AO_Index), 0 );
			float2 appendResult8012 = (fixed2(texArray5851.y , 1));
			float2 lerpResult6664 = lerp( appendResult7907 , appendResult8012 , UVmixDistance636);
			float2 temp_output_4742_0 = ( Front_Back1991 * appendResult4738 );
			float4 texArray7497 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4742_0, _Texture_10_H_AO_Index), 0 );
			float2 appendResult7906 = (fixed2(texArray7497.y , texArray7497.w));
			float2 temp_output_4785_0 = ( Left_Right2003 * appendResult4738 );
			float4 texArray7490 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4785_0, _Texture_10_H_AO_Index), 0 );
			float2 appendResult7908 = (fixed2(texArray7490.y , texArray7490.w));
			float3 weightedBlendVar7494 = BlendComponents91;
			float2 weightedAvg7494 = ( ( weightedBlendVar7494.x*appendResult7906 + weightedBlendVar7494.y*appendResult7907 + weightedBlendVar7494.z*appendResult7908 )/( weightedBlendVar7494.x + weightedBlendVar7494.y + weightedBlendVar7494.z ) );
			float2 temp_output_4873_0 = ( temp_output_4742_0 / _Texture_10_Far_Multiplier );
			float4 texArray5836 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4873_0, _Texture_10_H_AO_Index), 0 );
			float2 appendResult8011 = (fixed2(texArray5836.y , 1));
			float2 temp_output_4859_0 = ( temp_output_4785_0 / _Texture_10_Far_Multiplier );
			float4 texArray5846 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4859_0, _Texture_10_H_AO_Index), 0 );
			float2 appendResult8013 = (fixed2(texArray5846.y , 1));
			float3 weightedBlendVar6456 = BlendComponents91;
			float2 weightedAvg6456 = ( ( weightedBlendVar6456.x*appendResult8011 + weightedBlendVar6456.y*appendResult8012 + weightedBlendVar6456.z*appendResult8013 )/( weightedBlendVar6456.x + weightedBlendVar6456.y + weightedBlendVar6456.z ) );
			float2 lerpResult5870 = lerp( weightedAvg7494 , weightedAvg6456 , UVmixDistance636);
			fixed2 ifLocalVar6662 = 0;
			UNITY_BRANCH 
			if( _Texture_10_Triplanar == 1 )
				ifLocalVar6662 = lerpResult5870;
			else
				ifLocalVar6662 = lerpResult6664;
			fixed2 ifLocalVar7717 = 0;
			UNITY_BRANCH 
			if( _Texture_10_H_AO_Index > -1 )
				ifLocalVar7717 = ifLocalVar6662;
			fixed2 Texture_10_H5872 = ifLocalVar7717;
			float temp_output_4739_0 = ( 1 / _Texture_11_Tiling );
			float2 appendResult4741 = (fixed2(temp_output_4739_0 , temp_output_4739_0));
			float2 temp_output_4817_0 = ( Top_Bottom1999 * appendResult4741 );
			float4 texArray7484 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4817_0, _Texture_11_H_AO_Index), 0 );
			float2 appendResult7913 = (fixed2(texArray7484.y , texArray7484.w));
			float2 temp_output_4904_0 = ( temp_output_4817_0 / _Texture_11_Far_Multiplier );
			float4 texArray5891 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4904_0, _Texture_11_H_AO_Index), 0 );
			float2 appendResult8008 = (fixed2(texArray5891.y , 1));
			float2 lerpResult6658 = lerp( appendResult7913 , appendResult8008 , UVmixDistance636);
			float2 temp_output_4748_0 = ( Front_Back1991 * appendResult4741 );
			float4 texArray7485 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4748_0, _Texture_11_H_AO_Index), 0 );
			float2 appendResult7912 = (fixed2(texArray7485.y , texArray7485.w));
			float2 temp_output_4795_0 = ( Left_Right2003 * appendResult4741 );
			float4 texArray7478 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4795_0, _Texture_11_H_AO_Index), 0 );
			float2 appendResult7914 = (fixed2(texArray7478.y , texArray7478.w));
			float3 weightedBlendVar7482 = BlendComponents91;
			float2 weightedAvg7482 = ( ( weightedBlendVar7482.x*appendResult7912 + weightedBlendVar7482.y*appendResult7913 + weightedBlendVar7482.z*appendResult7914 )/( weightedBlendVar7482.x + weightedBlendVar7482.y + weightedBlendVar7482.z ) );
			float2 temp_output_4890_0 = ( temp_output_4748_0 / _Texture_11_Far_Multiplier );
			float4 texArray5876 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4890_0, _Texture_11_H_AO_Index), 0 );
			float2 appendResult8007 = (fixed2(texArray5876.y , 1));
			float2 temp_output_4892_0 = ( temp_output_4795_0 / _Texture_11_Far_Multiplier );
			float4 texArray5886 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4892_0, _Texture_11_H_AO_Index), 0 );
			float2 appendResult8010 = (fixed2(texArray5886.y , 1));
			float3 weightedBlendVar6463 = BlendComponents91;
			float2 weightedAvg6463 = ( ( weightedBlendVar6463.x*appendResult8007 + weightedBlendVar6463.y*appendResult8008 + weightedBlendVar6463.z*appendResult8010 )/( weightedBlendVar6463.x + weightedBlendVar6463.y + weightedBlendVar6463.z ) );
			float2 lerpResult5910 = lerp( weightedAvg7482 , weightedAvg6463 , UVmixDistance636);
			fixed2 ifLocalVar6656 = 0;
			UNITY_BRANCH 
			if( _Texture_11_Triplanar == 1 )
				ifLocalVar6656 = lerpResult5910;
			else
				ifLocalVar6656 = lerpResult6658;
			fixed2 ifLocalVar7715 = 0;
			UNITY_BRANCH 
			if( _Texture_11_H_AO_Index > -1 )
				ifLocalVar7715 = ifLocalVar6656;
			fixed2 Texture_11_H5912 = ifLocalVar7715;
			float temp_output_4745_0 = ( 1 / _Texture_12_Tiling );
			float2 appendResult4751 = (fixed2(temp_output_4745_0 , temp_output_4745_0));
			float2 temp_output_4849_0 = ( Top_Bottom1999 * appendResult4751 );
			float4 texArray7472 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4849_0, _Texture_12_H_AO_Index), 0 );
			float2 appendResult7919 = (fixed2(texArray7472.y , texArray7472.w));
			float2 temp_output_4932_0 = ( temp_output_4849_0 / _Texture_12_Far_Multiplier );
			float4 texArray5931 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4932_0, _Texture_12_H_AO_Index), 0 );
			float2 appendResult8005 = (fixed2(texArray5931.y , 1));
			float2 lerpResult6676 = lerp( appendResult7919 , appendResult8005 , UVmixDistance636);
			float2 temp_output_4758_0 = ( Front_Back1991 * appendResult4751 );
			float4 texArray7473 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4758_0, _Texture_12_H_AO_Index), 0 );
			float2 appendResult7918 = (fixed2(texArray7473.y , texArray7473.w));
			float2 temp_output_4830_0 = ( Left_Right2003 * appendResult4751 );
			float4 texArray7466 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4830_0, _Texture_12_H_AO_Index), 0 );
			float2 appendResult7920 = (fixed2(texArray7466.y , texArray7466.w));
			float3 weightedBlendVar7470 = BlendComponents91;
			float2 weightedAvg7470 = ( ( weightedBlendVar7470.x*appendResult7918 + weightedBlendVar7470.y*appendResult7919 + weightedBlendVar7470.z*appendResult7920 )/( weightedBlendVar7470.x + weightedBlendVar7470.y + weightedBlendVar7470.z ) );
			float2 temp_output_4916_0 = ( temp_output_4758_0 / _Texture_12_Far_Multiplier );
			float4 texArray5916 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4916_0, _Texture_12_H_AO_Index), 0 );
			float2 appendResult8004 = (fixed2(texArray5916.y , 1));
			float2 temp_output_4910_0 = ( temp_output_4830_0 / _Texture_12_Far_Multiplier );
			float4 texArray5926 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_4910_0, _Texture_12_H_AO_Index), 0 );
			float2 appendResult8006 = (fixed2(texArray5926.y , 1));
			float3 weightedBlendVar6470 = BlendComponents91;
			float2 weightedAvg6470 = ( ( weightedBlendVar6470.x*appendResult8004 + weightedBlendVar6470.y*appendResult8005 + weightedBlendVar6470.z*appendResult8006 )/( weightedBlendVar6470.x + weightedBlendVar6470.y + weightedBlendVar6470.z ) );
			float2 lerpResult5950 = lerp( weightedAvg7470 , weightedAvg6470 , UVmixDistance636);
			fixed2 ifLocalVar6674 = 0;
			UNITY_BRANCH 
			if( _Texture_12_Triplanar == 1 )
				ifLocalVar6674 = lerpResult5950;
			else
				ifLocalVar6674 = lerpResult6676;
			fixed2 ifLocalVar7708 = 0;
			UNITY_BRANCH 
			if( _Texture_12_H_AO_Index > -1 )
				ifLocalVar7708 = ifLocalVar6674;
			fixed2 Texture_12_H5952 = ifLocalVar7708;
			float4 layeredBlendVar6527 = tex2DNode4370;
			float layeredBlend6527 = ( lerp( lerp( lerp( lerp( layeredBlend6525 , ( _Texture_9_Tesselation_Depth * Texture_9_H5832.x ) , layeredBlendVar6527.x ) , ( _Texture_10_Tesselation_Depth * Texture_10_H5872.x ) , layeredBlendVar6527.y ) , ( _Texture_11_Tesselation_Depth * Texture_11_H5912.x ) , layeredBlendVar6527.z ) , ( _Texture_12_Tesselation_Depth * Texture_12_H5952.x ) , layeredBlendVar6527.w ) );
			float temp_output_5125_0 = ( 1 / _Texture_13_Tiling );
			float2 appendResult5027 = (fixed2(temp_output_5125_0 , temp_output_5125_0));
			float2 temp_output_5037_0 = ( Top_Bottom1999 * appendResult5027 );
			float4 texArray7460 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5037_0, _Texture_13_H_AO_Index), 0 );
			float2 appendResult7925 = (fixed2(texArray7460.y , texArray7460.w));
			float2 temp_output_5112_0 = ( temp_output_5037_0 / _Texture_13_Far_Multiplier );
			float4 texArray5971 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5112_0, _Texture_13_H_AO_Index), 0 );
			float2 appendResult8002 = (fixed2(texArray5971.y , 1));
			float2 lerpResult6682 = lerp( appendResult7925 , appendResult8002 , UVmixDistance636);
			float2 temp_output_5025_0 = ( Front_Back1991 * appendResult5027 );
			float4 texArray7461 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5025_0, _Texture_13_H_AO_Index), 0 );
			float2 appendResult7924 = (fixed2(texArray7461.y , texArray7461.w));
			float2 temp_output_5035_0 = ( Left_Right2003 * appendResult5027 );
			float4 texArray7454 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5035_0, _Texture_13_H_AO_Index), 0 );
			float2 appendResult7926 = (fixed2(texArray7454.y , texArray7454.w));
			float3 weightedBlendVar7458 = BlendComponents91;
			float2 weightedAvg7458 = ( ( weightedBlendVar7458.x*appendResult7924 + weightedBlendVar7458.y*appendResult7925 + weightedBlendVar7458.z*appendResult7926 )/( weightedBlendVar7458.x + weightedBlendVar7458.y + weightedBlendVar7458.z ) );
			float2 temp_output_5123_0 = ( temp_output_5025_0 / _Texture_13_Far_Multiplier );
			float4 texArray5956 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5123_0, _Texture_13_H_AO_Index), 0 );
			float2 appendResult8001 = (fixed2(texArray5956.y , 1));
			float2 temp_output_5124_0 = ( temp_output_5035_0 / _Texture_13_Far_Multiplier );
			float4 texArray5966 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5124_0, _Texture_13_H_AO_Index), 0 );
			float2 appendResult8003 = (fixed2(texArray5966.y , 1));
			float3 weightedBlendVar6477 = BlendComponents91;
			float2 weightedAvg6477 = ( ( weightedBlendVar6477.x*appendResult8001 + weightedBlendVar6477.y*appendResult8002 + weightedBlendVar6477.z*appendResult8003 )/( weightedBlendVar6477.x + weightedBlendVar6477.y + weightedBlendVar6477.z ) );
			float2 lerpResult5990 = lerp( weightedAvg7458 , weightedAvg6477 , UVmixDistance636);
			fixed2 ifLocalVar6680 = 0;
			UNITY_BRANCH 
			if( _Texture_13_Triplanar == 1 )
				ifLocalVar6680 = lerpResult5990;
			else
				ifLocalVar6680 = lerpResult6682;
			fixed2 ifLocalVar7704 = 0;
			UNITY_BRANCH 
			if( _Texture_13_H_AO_Index > -1 )
				ifLocalVar7704 = ifLocalVar6680;
			fixed2 Texture_13_H5992 = ifLocalVar7704;
			float temp_output_5006_0 = ( 1 / _Texture_14_Tiling );
			float2 appendResult5033 = (fixed2(temp_output_5006_0 , temp_output_5006_0));
			float2 temp_output_5022_0 = ( Top_Bottom1999 * appendResult5033 );
			float4 texArray7448 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5022_0, _Texture_14_H_AO_Index), 0 );
			float2 appendResult7931 = (fixed2(texArray7448.y , texArray7448.w));
			float2 temp_output_5172_0 = ( temp_output_5022_0 / _Texture_14_Far_Multiplier );
			float4 texArray6011 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5172_0, _Texture_14_H_AO_Index), 0 );
			float2 appendResult7999 = (fixed2(texArray6011.y , 1));
			float2 lerpResult6688 = lerp( appendResult7931 , appendResult7999 , UVmixDistance636);
			float2 temp_output_5009_0 = ( Front_Back1991 * appendResult5033 );
			float4 texArray7449 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5009_0, _Texture_14_H_AO_Index), 0 );
			float2 appendResult7930 = (fixed2(texArray7449.y , texArray7449.w));
			float2 temp_output_5010_0 = ( Left_Right2003 * appendResult5033 );
			float4 texArray7442 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5010_0, _Texture_14_H_AO_Index), 0 );
			float2 appendResult7932 = (fixed2(texArray7442.y , texArray7442.w));
			float3 weightedBlendVar7446 = BlendComponents91;
			float2 weightedAvg7446 = ( ( weightedBlendVar7446.x*appendResult7930 + weightedBlendVar7446.y*appendResult7931 + weightedBlendVar7446.z*appendResult7932 )/( weightedBlendVar7446.x + weightedBlendVar7446.y + weightedBlendVar7446.z ) );
			float2 temp_output_5238_0 = ( temp_output_5009_0 / _Texture_14_Far_Multiplier );
			float4 texArray5996 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5238_0, _Texture_14_H_AO_Index), 0 );
			float2 appendResult7998 = (fixed2(texArray5996.y , 1));
			float2 temp_output_5233_0 = ( temp_output_5010_0 / _Texture_14_Far_Multiplier );
			float4 texArray6006 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5233_0, _Texture_14_H_AO_Index), 0 );
			float2 appendResult8000 = (fixed2(texArray6006.y , 1));
			float3 weightedBlendVar6484 = BlendComponents91;
			float2 weightedAvg6484 = ( ( weightedBlendVar6484.x*appendResult7998 + weightedBlendVar6484.y*appendResult7999 + weightedBlendVar6484.z*appendResult8000 )/( weightedBlendVar6484.x + weightedBlendVar6484.y + weightedBlendVar6484.z ) );
			float2 lerpResult6030 = lerp( weightedAvg7446 , weightedAvg6484 , UVmixDistance636);
			fixed2 ifLocalVar6686 = 0;
			UNITY_BRANCH 
			if( _Texture_14_Triplanar == 1 )
				ifLocalVar6686 = lerpResult6030;
			else
				ifLocalVar6686 = lerpResult6688;
			fixed2 ifLocalVar7700 = 0;
			UNITY_BRANCH 
			if( _Texture_14_H_AO_Index > -1 )
				ifLocalVar7700 = ifLocalVar6686;
			fixed2 Texture_14_H6032 = ifLocalVar7700;
			float temp_output_5210_0 = ( 1 / _Texture_15_Tiling );
			float2 appendResult5212 = (fixed2(temp_output_5210_0 , temp_output_5210_0));
			float2 temp_output_5226_0 = ( Top_Bottom1999 * appendResult5212 );
			float4 texArray7436 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5226_0, _Texture_15_H_AO_Index), 0 );
			float2 appendResult7937 = (fixed2(texArray7436.y , texArray7436.w));
			float2 temp_output_5190_0 = ( temp_output_5226_0 / _Texture_15_Far_Multiplier );
			float4 texArray6051 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5190_0, _Texture_15_H_AO_Index), 0 );
			float2 appendResult7996 = (fixed2(texArray6051.y , 1));
			float2 lerpResult6694 = lerp( appendResult7937 , appendResult7996 , UVmixDistance636);
			float2 temp_output_5213_0 = ( Front_Back1991 * appendResult5212 );
			float4 texArray7437 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5213_0, _Texture_15_H_AO_Index), 0 );
			float2 appendResult7936 = (fixed2(texArray7437.y , texArray7437.w));
			float2 temp_output_5224_0 = ( Left_Right2003 * appendResult5212 );
			float4 texArray7430 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5224_0, _Texture_15_H_AO_Index), 0 );
			float2 appendResult7938 = (fixed2(texArray7430.y , texArray7430.w));
			float3 weightedBlendVar7434 = BlendComponents91;
			float2 weightedAvg7434 = ( ( weightedBlendVar7434.x*appendResult7936 + weightedBlendVar7434.y*appendResult7937 + weightedBlendVar7434.z*appendResult7938 )/( weightedBlendVar7434.x + weightedBlendVar7434.y + weightedBlendVar7434.z ) );
			float2 temp_output_5248_0 = ( temp_output_5213_0 / _Texture_15_Far_Multiplier );
			float4 texArray6036 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5248_0, _Texture_15_H_AO_Index), 0 );
			float2 appendResult7997 = (fixed2(texArray6036.y , 1));
			float2 temp_output_5249_0 = ( temp_output_5224_0 / _Texture_15_Far_Multiplier );
			float4 texArray6046 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5249_0, _Texture_15_H_AO_Index), 0 );
			float2 appendResult7995 = (fixed2(texArray6046.y , 1));
			float3 weightedBlendVar6491 = BlendComponents91;
			float2 weightedAvg6491 = ( ( weightedBlendVar6491.x*appendResult7997 + weightedBlendVar6491.y*appendResult7996 + weightedBlendVar6491.z*appendResult7995 )/( weightedBlendVar6491.x + weightedBlendVar6491.y + weightedBlendVar6491.z ) );
			float2 lerpResult6070 = lerp( weightedAvg7434 , weightedAvg6491 , UVmixDistance636);
			fixed2 ifLocalVar6692 = 0;
			UNITY_BRANCH 
			if( _Texture_15_Triplanar == 1 )
				ifLocalVar6692 = lerpResult6070;
			else
				ifLocalVar6692 = lerpResult6694;
			fixed2 ifLocalVar7696 = 0;
			UNITY_BRANCH 
			if( _Texture_15_H_AO_Index > -1 )
				ifLocalVar7696 = ifLocalVar6692;
			fixed2 Texture_15_H6072 = ifLocalVar7696;
			float temp_output_5075_0 = ( 1 / _Texture_16_Tiling );
			float2 appendResult5078 = (fixed2(temp_output_5075_0 , temp_output_5075_0));
			float2 temp_output_5083_0 = ( Top_Bottom1999 * appendResult5078 );
			float4 texArray7424 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5083_0, _Texture_16_H_AO_Index), 0 );
			float2 appendResult7943 = (fixed2(texArray7424.y , texArray7424.w));
			float2 temp_output_5153_0 = ( temp_output_5083_0 / _Texture_16_Far_Multiplier );
			float4 texArray6091 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5153_0, _Texture_16_H_AO_Index), 0 );
			float2 appendResult7993 = (fixed2(texArray6091.y , 1));
			float2 lerpResult6700 = lerp( appendResult7943 , appendResult7993 , UVmixDistance636);
			float2 temp_output_5079_0 = ( Front_Back1991 * appendResult5078 );
			float4 texArray7425 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5079_0, _Texture_16_H_AO_Index), 0 );
			float2 appendResult7942 = (fixed2(texArray7425.y , texArray7425.w));
			float2 temp_output_5085_0 = ( Left_Right2003 * appendResult5078 );
			float4 texArray7418 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5085_0, _Texture_16_H_AO_Index), 0 );
			float2 appendResult7944 = (fixed2(texArray7418.y , texArray7418.w));
			float3 weightedBlendVar7422 = BlendComponents91;
			float2 weightedAvg7422 = ( ( weightedBlendVar7422.x*appendResult7942 + weightedBlendVar7422.y*appendResult7943 + weightedBlendVar7422.z*appendResult7944 )/( weightedBlendVar7422.x + weightedBlendVar7422.y + weightedBlendVar7422.z ) );
			float2 temp_output_5147_0 = ( temp_output_5079_0 / _Texture_16_Far_Multiplier );
			float4 texArray6076 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5147_0, _Texture_16_H_AO_Index), 0 );
			float2 appendResult7992 = (fixed2(texArray6076.y , 1));
			float2 temp_output_5146_0 = ( temp_output_5085_0 / _Texture_16_Far_Multiplier );
			float4 texArray6086 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_5146_0, _Texture_16_H_AO_Index), 0 );
			float2 appendResult7994 = (fixed2(texArray6086.y , 1));
			float3 weightedBlendVar6498 = BlendComponents91;
			float2 weightedAvg6498 = ( ( weightedBlendVar6498.x*appendResult7992 + weightedBlendVar6498.y*appendResult7993 + weightedBlendVar6498.z*appendResult7994 )/( weightedBlendVar6498.x + weightedBlendVar6498.y + weightedBlendVar6498.z ) );
			float2 lerpResult6110 = lerp( weightedAvg7422 , weightedAvg6498 , UVmixDistance636);
			fixed2 ifLocalVar6698 = 0;
			UNITY_BRANCH 
			if( _Texture_16_Triplanar == 1 )
				ifLocalVar6698 = lerpResult6110;
			else
				ifLocalVar6698 = lerpResult6700;
			fixed2 ifLocalVar7693 = 0;
			UNITY_BRANCH 
			if( _Texture_16_H_AO_Index > -1 )
				ifLocalVar7693 = ifLocalVar6698;
			fixed2 Texture_16_H6112 = ifLocalVar7693;
			float4 layeredBlendVar6530 = tex2DNode4371;
			float layeredBlend6530 = ( lerp( lerp( lerp( lerp( layeredBlend6527 , ( _Texture_13_Tesselation_Depth * Texture_13_H5992.x ) , layeredBlendVar6530.x ) , ( _Texture_14_Tesselation_Depth * Texture_14_H6032.x ) , layeredBlendVar6530.y ) , ( _Texture_15_Tesselation_Depth * Texture_15_H6072.x ) , layeredBlendVar6530.z ) , ( _Texture_16_Tesselation_Depth * Texture_16_H6112.x ) , layeredBlendVar6530.w ) );
			float2 temp_output_3749_0 = ( Top_Bottom1999 * ( 1 / _Snow_Tiling ) );
			float4 texArray6267 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3749_0, _Texture_Snow_H_AO_Index), 0 );
			fixed ifLocalVar8017 = 0;
			UNITY_BRANCH 
			if( _Texture_Snow_H_AO_Index > -1 )
				ifLocalVar8017 = ( texArray6267.y * _Snow_Tesselation_Depth );
			float4 layeredBlendVar7548 = tex2DNode4368;
			float layeredBlend7548 = ( lerp( lerp( lerp( lerp( 0 , ( _Texture_1_Tesselation_Depth * _Texture_1_Heightmap_MaxHeight ) , layeredBlendVar7548.x ) , ( _Texture_2_Heightmap_MaxHeight * _Texture_2_Tesselation_Depth ) , layeredBlendVar7548.y ) , ( _Texture_3_Heightmap_MaxHeight * _Texture_3_Tesselation_Depth ) , layeredBlendVar7548.z ) , ( _Texture_4_Heightmap_MaxHeight * _Texture_4_Tesselation_Depth ) , layeredBlendVar7548.w ) );
			float4 layeredBlendVar7549 = tex2DNode4369;
			float layeredBlend7549 = ( lerp( lerp( lerp( lerp( layeredBlend7548 , ( _Texture_5_Heightmap_MaxHeight * _Texture_5_Tesselation_Depth ) , layeredBlendVar7549.x ) , ( _Texture_6_Heightmap_MaxHeight * _Texture_6_Tesselation_Depth ) , layeredBlendVar7549.y ) , ( _Texture_7_Heightmap_MaxHeight * _Texture_7_Tesselation_Depth ) , layeredBlendVar7549.z ) , ( _Texture_8_Heightmap_MaxHeight * _Texture_8_Tesselation_Depth ) , layeredBlendVar7549.w ) );
			float4 layeredBlendVar7550 = tex2DNode4371;
			float layeredBlend7550 = ( lerp( lerp( lerp( lerp( layeredBlend7549 , ( _Texture_10_Heightmap_MaxHeight * _Texture_10_Tesselation_Depth ) , layeredBlendVar7550.x ) , ( _Texture_9_Heightmap_MaxHeight * _Texture_9_Tesselation_Depth ) , layeredBlendVar7550.y ) , ( _Texture_11_Heightmap_MaxHeight * _Texture_11_Tesselation_Depth ) , layeredBlendVar7550.z ) , ( _Texture_12_Heightmap_MaxHeight * _Texture_12_Tesselation_Depth ) , layeredBlendVar7550.w ) );
			float4 layeredBlendVar7551 = tex2DNode4370;
			float layeredBlend7551 = ( lerp( lerp( lerp( lerp( layeredBlend7550 , ( _Texture_13_Heightmap_MaxHeight * _Texture_13_Tesselation_Depth ) , layeredBlendVar7551.x ) , ( _Texture_14_Heightmap_MaxHeight * _Texture_14_Tesselation_Depth ) , layeredBlendVar7551.y ) , ( _Texture_15_Heightmap_MaxHeight * _Texture_15_Tesselation_Depth ) , layeredBlendVar7551.z ) , ( _Texture_16_Heightmap_MaxHeight * _Texture_16_Tesselation_Depth ) , layeredBlendVar7551.w ) );
			float2 temp_output_3715_0 = ( Top_Bottom1999 * _Snow_Noise_Tiling );
			float4 texArray4383 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(temp_output_3715_0, _Texture_Snow_Noise_Index), 0 );
			float4 texArray4385 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(( temp_output_3715_0 * float2( 0.23,0.23 ) ), _Texture_Snow_Noise_Index), 0 );
			float4 texArray4384 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(( temp_output_3715_0 * float2( 0.53,0.53 ) ), _Texture_Snow_Noise_Index), 0 );
			float lerpResult4310 = lerp( 1.0 , ( texArray4383.w + texArray4385.w + texArray4384.w ) , ( _Snow_Noise_Power * 0.1 ));
			float clampResult1354 = clamp( ase_worldNormal.y , 0 , 0.9999 );
			float temp_output_1349_0 = ( _Snow_Maximum_Angle / 90 );
			float clampResult1347 = clamp( ( clampResult1354 - ( 1.0 - temp_output_1349_0 ) ) , 0 , 2 );
			fixed SnowSlope1352 = ( clampResult1347 * ( 1 / temp_output_1349_0 ) );
			float clampResult6569 = clamp( ( 1 - ( _Snow_Maximum_Angle_Hardness * 0.05 ) ) , 0.01 , 1 );
			float clampResult4146 = clamp( pow( ( ( _Snow_Amount * ( 0.1 - ( _Snow_Maximum_Angle_Hardness * 0.005 ) ) ) * SnowSlope1352 ) , clampResult6569 ) , 0 , 1 );
			float temp_output_3751_0 = ( ( 1.0 - _Snow_Min_Height ) + ase_worldPos.y );
			float clampResult4220 = clamp( ( temp_output_3751_0 + 1 ) , 0 , 1 );
			float clampResult4260 = clamp( ( ( 1.0 - ( ( temp_output_3751_0 + _Snow_Min_Height_Blending ) / temp_output_3751_0 ) ) + -0.5 ) , 0 , 1 );
			float clampResult4263 = clamp( ( clampResult4220 + clampResult4260 ) , 0 , 1 );
			float lerpResult3759 = lerp( 0 , ( ( _Snow_Amount * lerpResult4310 ) * clampResult4146 ) , clampResult4263);
			float clampResult4298 = clamp( lerpResult3759 , 0 , 2 );
			fixed Splat4_A2546 = tex2DNode4371.a;
			fixed Splat4_B2545 = tex2DNode4371.b;
			fixed Splat4_R2543 = tex2DNode4371.r;
			fixed Splat3_A2540 = tex2DNode4370.a;
			fixed Splat3_B2539 = tex2DNode4370.b;
			fixed Splat3_R2537 = tex2DNode4370.r;
			fixed Splat2_A2109 = tex2DNode4369.a;
			fixed Splat2_B2108 = tex2DNode4369.b;
			fixed Splat2_R2106 = tex2DNode4369.r;
			fixed Splat1_R1438 = tex2DNode4368.r;
			fixed Splat1_G1441 = tex2DNode4368.g;
			fixed Splat1_B1442 = tex2DNode4368.b;
			fixed Splat1_A1491 = tex2DNode4368.a;
			fixed Splat2_G2107 = tex2DNode4369.g;
			fixed Splat3_G2538 = tex2DNode4370.g;
			fixed Splat4_G2544 = tex2DNode4371.g;
			float temp_output_6538_0 = ( clampResult4298 * ( 1.0 - ( ( _Texture_16_Snow_Reduction * Splat4_A2546 ) + ( ( _Texture_15_Snow_Reduction * Splat4_B2545 ) + ( ( ( _Texture_13_Snow_Reduction * Splat4_R2543 ) + ( ( _Texture_12_Snow_Reduction * Splat3_A2540 ) + ( ( _Texture_11_Snow_Reduction * Splat3_B2539 ) + ( ( ( _Texture_9_Snow_Reduction * Splat3_R2537 ) + ( ( _Texture_8_Snow_Reduction * Splat2_A2109 ) + ( ( _Texture_7_Snow_Reduction * Splat2_B2108 ) + ( ( ( _Texture_5_Snow_Reduction * Splat2_R2106 ) + ( ( _Texture_1_Snow_Reduction * Splat1_R1438 ) + ( ( _Texture_2_Snow_Reduction * Splat1_G1441 ) + ( ( _Texture_3_Snow_Reduction * Splat1_B1442 ) + ( _Texture_4_Snow_Reduction * Splat1_A1491 ) ) ) ) ) + ( _Texture_6_Snow_Reduction * Splat2_G2107 ) ) ) ) ) + ( _Texture_10_Snow_Reduction * Splat3_G2538 ) ) ) ) ) + ( _Texture_14_Snow_Reduction * Splat4_G2544 ) ) ) ) ) );
			float lerpResult7568 = lerp( ( ( ifLocalVar8017 + layeredBlend7551 ) * ( _Snow_Amount * 0.5 ) ) , 0 , temp_output_6538_0);
			float4 texArray6270 = UNITY_SAMPLE_TEX2DARRAY_LOD(_Texture_Array_Albedo, float3(( temp_output_3749_0 / _Snow_Tiling_Far_Multiplier ), _Texture_Snow_H_AO_Index), 0 );
			float lerpResult7306 = lerp( texArray6267.y , texArray6270.y , UVmixDistance636);
			fixed ifLocalVar7824 = 0;
			UNITY_BRANCH 
			if( _Texture_Snow_H_AO_Index > -1 )
				ifLocalVar7824 = ( pow( lerpResult7306 , _Snow_Height_Contrast ) * _Snow_Heightmap_Depth );
			float temp_output_6545_0 = ( layeredBlend6530 + ifLocalVar7824 );
			float clampResult6546 = clamp( temp_output_6545_0 , 0 , temp_output_6545_0 );
			float clampResult7176 = clamp( clampResult6546 , 0 , 1 );
			float temp_output_6547_0 = ( 1.0 - clampResult7176 );
			float lerpResult7314 = lerp( _Snow_Heightblend_Close , _Snow_Heightblend_Far , UVmixDistance636);
			float HeightMask6539 = saturate(pow(((temp_output_6547_0*temp_output_6538_0)*4)+(temp_output_6538_0*2),lerpResult7314));
			float clampResult7583 = clamp( lerpResult7314 , 0 , 1 );
			float HeightMask7581 = saturate(pow(((temp_output_6547_0*temp_output_6538_0)*4)+(temp_output_6538_0*2),clampResult7583));
			float clampResult7590 = clamp( ( ( _Snow_Amount * 75.0 ) + ( 75.0 * -1.2 ) ) , 0 , 1 );
			float lerpResult7584 = lerp( HeightMask6539 , HeightMask7581 , clampResult7590);
			float lerpResult7580 = lerp( layeredBlend6530 , max( layeredBlend6530 , ( 0.5 * lerpResult7568 ) ) , lerpResult7584);
			v.vertex.xyz += ( lerpResult7580 * ase_worldNormal );
		}

		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float2 appendResult8057 = (fixed2(ase_vertex3Pos.x , ase_vertex3Pos.z));
			fixed2 Top_Bottom1999 = appendResult8057;
			float4 texArray6256 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(( Top_Bottom1999 / _Perlin_Normal_Tiling_Close ), (float)_Texture_Perlin_Normal_Index)  );
			float2 appendResult11_g1165 = (fixed2(texArray6256.w , texArray6256.y));
			float2 temp_output_4_0_g1165 = ( ( ( appendResult11_g1165 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Perlin_Normal_Power_Close );
			float dotResult5_g1165 = dot( temp_output_4_0_g1165 , temp_output_4_0_g1165 );
			float temp_output_9_0_g1165 = sqrt( ( 1.0 - saturate( dotResult5_g1165 ) ) );
			float3 appendResult10_g1165 = (fixed3(temp_output_4_0_g1165.x , temp_output_4_0_g1165.y , temp_output_9_0_g1165));
			float4 texArray4374 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(( Top_Bottom1999 / _Perlin_Normal_Tiling_Far ), (float)_Texture_Perlin_Normal_Index)  );
			float2 appendResult11_g1166 = (fixed2(texArray4374.w , texArray4374.y));
			float2 temp_output_4_0_g1166 = ( ( ( appendResult11_g1166 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Perlin_Normal_Power );
			float dotResult5_g1166 = dot( temp_output_4_0_g1166 , temp_output_4_0_g1166 );
			float temp_output_9_0_g1166 = sqrt( ( 1.0 - saturate( dotResult5_g1166 ) ) );
			float3 appendResult10_g1166 = (fixed3(temp_output_4_0_g1166.x , temp_output_4_0_g1166.y , temp_output_9_0_g1166));
			float3 ase_worldPos = i.worldPos;
			float clampResult297 = clamp( pow( ( max( max( abs( ( ase_worldPos - _WorldSpaceCameraPos ) ).x , abs( ( ase_worldPos - _WorldSpaceCameraPos ) ).y ) , abs( ( ase_worldPos - _WorldSpaceCameraPos ) ).z ) / _UV_Mix_Start_Distance ) , _UV_Mix_Power ) , 0 , 1 );
			fixed UVmixDistance636 = clampResult297;
			float3 lerpResult6257 = lerp( appendResult10_g1165 , appendResult10_g1166 , UVmixDistance636);
			float2 uv_TexCoord8031 = i.uv_texcoord * float2( 1,1 ) + float2( 0,0 );
			fixed4 tex2DNode4371 = tex2D( _Texture_Splat_4, uv_TexCoord8031 );
			fixed Splat4_A2546 = tex2DNode4371.a;
			fixed Splat4_B2545 = tex2DNode4371.b;
			fixed Splat4_G2544 = tex2DNode4371.g;
			fixed Splat4_R2543 = tex2DNode4371.r;
			fixed4 tex2DNode4370 = tex2D( _Texture_Splat_3, uv_TexCoord8031 );
			fixed Splat3_A2540 = tex2DNode4370.a;
			fixed Splat3_B2539 = tex2DNode4370.b;
			fixed Splat3_G2538 = tex2DNode4370.g;
			fixed Splat3_R2537 = tex2DNode4370.r;
			fixed4 tex2DNode4369 = tex2D( _Texture_Splat_2, uv_TexCoord8031 );
			fixed Splat2_A2109 = tex2DNode4369.a;
			fixed Splat2_B2108 = tex2DNode4369.b;
			fixed Splat2_G2107 = tex2DNode4369.g;
			fixed Splat2_R2106 = tex2DNode4369.r;
			fixed4 tex2DNode4368 = tex2D( _Texture_Splat_1, uv_TexCoord8031 );
			fixed Splat1_R1438 = tex2DNode4368.r;
			fixed Splat1_G1441 = tex2DNode4368.g;
			fixed Splat1_A1491 = tex2DNode4368.a;
			fixed Splat1_B1442 = tex2DNode4368.b;
			float clampResult3775 = clamp( ( ( _Texture_16_Perlin_Power * Splat4_A2546 ) + ( ( _Texture_15_Perlin_Power * Splat4_B2545 ) + ( ( _Texture_14_Perlin_Power * Splat4_G2544 ) + ( ( _Texture_13_Perlin_Power * Splat4_R2543 ) + ( ( _Texture_12_Perlin_Power * Splat3_A2540 ) + ( ( _Texture_11_Perlin_Power * Splat3_B2539 ) + ( ( _Texture_10_Perlin_Power * Splat3_G2538 ) + ( ( _Texture_9_Perlin_Power * Splat3_R2537 ) + ( ( _Texture_8_Perlin_Power * Splat2_A2109 ) + ( ( _Texture_7_Perlin_Power * Splat2_B2108 ) + ( ( _Texture_6_Perlin_Power * Splat2_G2107 ) + ( ( _Texture_5_Perlin_Power * Splat2_R2106 ) + ( ( _Texture_1_Perlin_Power * Splat1_R1438 ) + ( ( _Texture_2_Perlin_Power * Splat1_G1441 ) + ( ( _Texture_4_Perlin_Power * Splat1_A1491 ) + ( _Texture_3_Perlin_Power * Splat1_B1442 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) , 0 , 1 );
			float3 lerpResult3776 = lerp( float3( 0,0,1 ) , lerpResult6257 , clampResult3775);
			float3 lerpResult3906 = lerp( float3( 0,0,1 ) , lerpResult6257 , ( _Snow_Perlin_Power * 0.5 ));
			float temp_output_3830_0 = ( 1 / _Texture_1_Tiling );
			float2 appendResult3284 = (fixed2(temp_output_3830_0 , temp_output_3830_0));
			float2 temp_output_3275_0 = ( Top_Bottom1999 * appendResult3284 );
			float4 texArray7323 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3275_0, _Texture_1_H_AO_Index)  );
			float2 appendResult7853 = (fixed2(texArray7323.y , texArray7323.w));
			float2 temp_output_3298_0 = ( temp_output_3275_0 / _Texture_1_Far_Multiplier );
			float4 texArray5491 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3298_0, _Texture_1_H_AO_Index)  );
			float2 appendResult7968 = (fixed2(texArray5491.y , 1));
			float2 lerpResult6611 = lerp( appendResult7853 , appendResult7968 , UVmixDistance636);
			fixed3 ase_worldNormal = WorldNormalVector( i, fixed3( 0, 0, 1 ) );
			float3 clampResult6387 = clamp( pow( ( ase_worldNormal * ase_worldNormal ) , 25 ) , float3( -1,-1,-1 ) , float3( 1,1,1 ) );
			fixed3 BlendComponents91 = clampResult6387;
			float2 appendResult8055 = (fixed2(ase_vertex3Pos.z , ase_vertex3Pos.y));
			fixed2 Front_Back1991 = appendResult8055;
			float2 temp_output_3279_0 = ( Front_Back1991 * appendResult3284 );
			float4 texArray7847 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3279_0, _Texture_1_H_AO_Index)  );
			float2 appendResult7852 = (fixed2(texArray7847.y , texArray7847.w));
			float2 appendResult8056 = (fixed2(ase_vertex3Pos.x , ase_vertex3Pos.y));
			fixed2 Left_Right2003 = appendResult8056;
			float2 temp_output_3277_0 = ( Left_Right2003 * appendResult3284 );
			float4 texArray7324 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3277_0, _Texture_1_H_AO_Index)  );
			float2 appendResult7854 = (fixed2(texArray7324.y , texArray7324.w));
			float3 weightedBlendVar7327 = BlendComponents91;
			float2 weightedAvg7327 = ( ( weightedBlendVar7327.x*appendResult7852 + weightedBlendVar7327.y*appendResult7853 + weightedBlendVar7327.z*appendResult7854 )/( weightedBlendVar7327.x + weightedBlendVar7327.y + weightedBlendVar7327.z ) );
			float2 temp_output_3296_0 = ( temp_output_3279_0 / _Texture_1_Far_Multiplier );
			float4 texArray5486 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3296_0, _Texture_1_H_AO_Index)  );
			float2 appendResult7967 = (fixed2(texArray5486.y , 1));
			float2 temp_output_3297_0 = ( temp_output_3277_0 / _Texture_1_Far_Multiplier );
			float4 texArray5489 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3297_0, _Texture_1_H_AO_Index)  );
			float2 appendResult7969 = (fixed2(texArray5489.y , 1));
			float3 weightedBlendVar6394 = BlendComponents91;
			float2 weightedAvg6394 = ( ( weightedBlendVar6394.x*appendResult7967 + weightedBlendVar6394.y*appendResult7968 + weightedBlendVar6394.z*appendResult7969 )/( weightedBlendVar6394.x + weightedBlendVar6394.y + weightedBlendVar6394.z ) );
			float2 lerpResult5478 = lerp( weightedAvg7327 , weightedAvg6394 , UVmixDistance636);
			fixed2 ifLocalVar6609 = 0;
			UNITY_BRANCH 
			if( _Texture_1_Triplanar == 1 )
				ifLocalVar6609 = lerpResult5478;
			else
				ifLocalVar6609 = lerpResult6611;
			fixed2 ifLocalVar7727 = 0;
			UNITY_BRANCH 
			if( _Texture_1_H_AO_Index > -1 )
				ifLocalVar7727 = ifLocalVar6609;
			fixed2 Texture_1_H5480 = ifLocalVar7727;
			float temp_output_3831_0 = ( 1 / _Texture_2_Tiling );
			float2 appendResult3349 = (fixed2(temp_output_3831_0 , temp_output_3831_0));
			float2 temp_output_3343_0 = ( Top_Bottom1999 * appendResult3349 );
			float4 texArray7336 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3343_0, _Texture_2_H_AO_Index)  );
			float2 appendResult7859 = (fixed2(texArray7336.y , texArray7336.w));
			float2 temp_output_3345_0 = ( temp_output_3343_0 / _Texture_2_Far_Multiplier );
			float4 texArray5533 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3345_0, _Texture_2_H_AO_Index)  );
			float2 appendResult7971 = (fixed2(texArray5533.y , 1));
			float2 lerpResult6616 = lerp( appendResult7859 , appendResult7971 , UVmixDistance636);
			float2 temp_output_3344_0 = ( Front_Back1991 * appendResult3349 );
			float4 texArray7345 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3344_0, _Texture_2_H_AO_Index)  );
			float2 appendResult7858 = (fixed2(texArray7345.y , texArray7345.w));
			float2 temp_output_3379_0 = ( Left_Right2003 * appendResult3349 );
			float4 texArray7335 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3379_0, _Texture_2_H_AO_Index)  );
			float2 appendResult7860 = (fixed2(texArray7335.y , texArray7335.w));
			float3 weightedBlendVar7342 = BlendComponents91;
			float2 weightedAvg7342 = ( ( weightedBlendVar7342.x*appendResult7858 + weightedBlendVar7342.y*appendResult7859 + weightedBlendVar7342.z*appendResult7860 )/( weightedBlendVar7342.x + weightedBlendVar7342.y + weightedBlendVar7342.z ) );
			float2 temp_output_3346_0 = ( temp_output_3344_0 / _Texture_2_Far_Multiplier );
			float4 texArray5530 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3346_0, _Texture_2_H_AO_Index)  );
			float2 appendResult7970 = (fixed2(texArray5530.y , 1));
			float2 temp_output_3352_0 = ( temp_output_3379_0 / _Texture_2_Far_Multiplier );
			float4 texArray5532 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3352_0, _Texture_2_H_AO_Index)  );
			float2 appendResult7973 = (fixed2(texArray5532.y , 1));
			float3 weightedBlendVar6400 = BlendComponents91;
			float2 weightedAvg6400 = ( ( weightedBlendVar6400.x*appendResult7970 + weightedBlendVar6400.y*appendResult7971 + weightedBlendVar6400.z*appendResult7973 )/( weightedBlendVar6400.x + weightedBlendVar6400.y + weightedBlendVar6400.z ) );
			float2 lerpResult5525 = lerp( weightedAvg7342 , weightedAvg6400 , UVmixDistance636);
			fixed2 ifLocalVar6614 = 0;
			UNITY_BRANCH 
			if( _Texture_2_Triplanar == 1 )
				ifLocalVar6614 = lerpResult5525;
			else
				ifLocalVar6614 = lerpResult6616;
			fixed2 ifLocalVar7731 = 0;
			UNITY_BRANCH 
			if( _Texture_2_H_AO_Index > -1 )
				ifLocalVar7731 = ifLocalVar6614;
			fixed2 Texture_2_H5497 = ifLocalVar7731;
			float temp_output_3832_0 = ( 1 / _Texture_3_Tiling );
			float2 appendResult3415 = (fixed2(temp_output_3832_0 , temp_output_3832_0));
			float2 temp_output_3410_0 = ( Top_Bottom1999 * appendResult3415 );
			float4 texArray7352 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3410_0, _Texture_3_H_AO_Index)  );
			float2 appendResult7865 = (fixed2(texArray7352.y , texArray7352.w));
			float2 temp_output_3412_0 = ( temp_output_3410_0 / _Texture_3_Far_Multiplier );
			float4 texArray5586 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3412_0, _Texture_3_H_AO_Index)  );
			float2 appendResult7975 = (fixed2(texArray5586.y , 1));
			float2 lerpResult6622 = lerp( appendResult7865 , appendResult7975 , UVmixDistance636);
			float2 temp_output_3411_0 = ( Front_Back1991 * appendResult3415 );
			float4 texArray7353 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3411_0, _Texture_3_H_AO_Index)  );
			float2 appendResult7864 = (fixed2(texArray7353.y , texArray7353.w));
			float2 temp_output_3441_0 = ( Left_Right2003 * appendResult3415 );
			float4 texArray7346 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3441_0, _Texture_3_H_AO_Index)  );
			float2 appendResult7866 = (fixed2(texArray7346.y , texArray7346.w));
			float3 weightedBlendVar7350 = BlendComponents91;
			float2 weightedAvg7350 = ( ( weightedBlendVar7350.x*appendResult7864 + weightedBlendVar7350.y*appendResult7865 + weightedBlendVar7350.z*appendResult7866 )/( weightedBlendVar7350.x + weightedBlendVar7350.y + weightedBlendVar7350.z ) );
			float2 temp_output_3413_0 = ( temp_output_3411_0 / _Texture_3_Far_Multiplier );
			float4 texArray5560 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3413_0, _Texture_3_H_AO_Index)  );
			float2 appendResult7974 = (fixed2(texArray5560.y , 1));
			float2 temp_output_3418_0 = ( temp_output_3441_0 / _Texture_3_Far_Multiplier );
			float4 texArray5572 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3418_0, _Texture_3_H_AO_Index)  );
			float2 appendResult7976 = (fixed2(texArray5572.y , 1));
			float3 weightedBlendVar6407 = BlendComponents91;
			float2 weightedAvg6407 = ( ( weightedBlendVar6407.x*appendResult7974 + weightedBlendVar6407.y*appendResult7975 + weightedBlendVar6407.z*appendResult7976 )/( weightedBlendVar6407.x + weightedBlendVar6407.y + weightedBlendVar6407.z ) );
			float2 lerpResult5563 = lerp( weightedAvg7350 , weightedAvg6407 , UVmixDistance636);
			fixed2 ifLocalVar6620 = 0;
			UNITY_BRANCH 
			if( _Texture_3_Triplanar == 1 )
				ifLocalVar6620 = lerpResult5563;
			else
				ifLocalVar6620 = lerpResult6622;
			fixed2 ifLocalVar7735 = 0;
			UNITY_BRANCH 
			if( _Texture_3_H_AO_Index > -1 )
				ifLocalVar7735 = ifLocalVar6620;
			fixed2 Texture_3_H5581 = ifLocalVar7735;
			float temp_output_3833_0 = ( 1 / _Texture_4_Tiling );
			float2 appendResult3482 = (fixed2(temp_output_3833_0 , temp_output_3833_0));
			float2 temp_output_3477_0 = ( Top_Bottom1999 * appendResult3482 );
			float4 texArray7364 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3477_0, _Texture_4_H_AO_Index)  );
			float2 appendResult7871 = (fixed2(texArray7364.y , texArray7364.w));
			float2 temp_output_3479_0 = ( temp_output_3477_0 / _Texture_4_Far_Multiplier );
			float4 texArray5615 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3479_0, _Texture_4_H_AO_Index)  );
			float2 appendResult7978 = (fixed2(texArray5615.y , 1));
			float2 lerpResult6628 = lerp( appendResult7871 , appendResult7978 , UVmixDistance636);
			float2 temp_output_3478_0 = ( Front_Back1991 * appendResult3482 );
			float4 texArray7365 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3478_0, _Texture_4_H_AO_Index)  );
			float2 appendResult7870 = (fixed2(texArray7365.y , texArray7365.w));
			float2 temp_output_3508_0 = ( Left_Right2003 * appendResult3482 );
			float4 texArray7358 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3508_0, _Texture_4_H_AO_Index)  );
			float2 appendResult7872 = (fixed2(texArray7358.y , texArray7358.w));
			float3 weightedBlendVar7362 = BlendComponents91;
			float2 weightedAvg7362 = ( ( weightedBlendVar7362.x*appendResult7870 + weightedBlendVar7362.y*appendResult7871 + weightedBlendVar7362.z*appendResult7872 )/( weightedBlendVar7362.x + weightedBlendVar7362.y + weightedBlendVar7362.z ) );
			float2 temp_output_3480_0 = ( temp_output_3478_0 / _Texture_4_Far_Multiplier );
			float4 texArray5596 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3480_0, _Texture_4_H_AO_Index)  );
			float2 appendResult7977 = (fixed2(texArray5596.y , 1));
			float2 temp_output_3485_0 = ( temp_output_3508_0 / _Texture_4_Far_Multiplier );
			float4 texArray5604 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3485_0, _Texture_4_H_AO_Index)  );
			float2 appendResult7979 = (fixed2(texArray5604.y , 1));
			float3 weightedBlendVar6414 = BlendComponents91;
			float2 weightedAvg6414 = ( ( weightedBlendVar6414.x*appendResult7977 + weightedBlendVar6414.y*appendResult7978 + weightedBlendVar6414.z*appendResult7979 )/( weightedBlendVar6414.x + weightedBlendVar6414.y + weightedBlendVar6414.z ) );
			float2 lerpResult5629 = lerp( weightedAvg7362 , weightedAvg6414 , UVmixDistance636);
			fixed2 ifLocalVar6626 = 0;
			UNITY_BRANCH 
			if( _Texture_4_Triplanar == 1 )
				ifLocalVar6626 = lerpResult5629;
			else
				ifLocalVar6626 = lerpResult6628;
			fixed2 ifLocalVar7739 = 0;
			UNITY_BRANCH 
			if( _Texture_4_H_AO_Index > -1 )
				ifLocalVar7739 = ifLocalVar6626;
			fixed2 Texture_4_H5631 = ifLocalVar7739;
			float4 layeredBlendVar6518 = tex2DNode4368;
			float layeredBlend6518 = ( lerp( lerp( lerp( lerp( 0 , ( _Texture_1_Tesselation_Depth * Texture_1_H5480.x ) , layeredBlendVar6518.x ) , ( _Texture_2_Tesselation_Depth * Texture_2_H5497.x ) , layeredBlendVar6518.y ) , ( _Texture_3_Tesselation_Depth * Texture_3_H5581.x ) , layeredBlendVar6518.z ) , ( _Texture_4_Tesselation_Depth * Texture_4_H5631.x ) , layeredBlendVar6518.w ) );
			float temp_output_4397_0 = ( 1 / _Texture_5_Tiling );
			float2 appendResult4399 = (fixed2(temp_output_4397_0 , temp_output_4397_0));
			float2 temp_output_4416_0 = ( Top_Bottom1999 * appendResult4399 );
			float4 texArray7376 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4416_0, _Texture_5_H_AO_Index)  );
			float2 appendResult7877 = (fixed2(texArray7376.y , texArray7376.w));
			float2 temp_output_4440_0 = ( temp_output_4416_0 / _Texture_5_Far_Multiplier );
			float4 texArray5655 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4440_0, _Texture_5_H_AO_Index)  );
			float2 appendResult7981 = (fixed2(texArray5655.y , 1));
			float2 lerpResult6634 = lerp( appendResult7877 , appendResult7981 , UVmixDistance636);
			float2 temp_output_4400_0 = ( Front_Back1991 * appendResult4399 );
			float4 texArray7377 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4400_0, _Texture_5_H_AO_Index)  );
			float2 appendResult7876 = (fixed2(texArray7377.y , texArray7377.w));
			float2 temp_output_4413_0 = ( Left_Right2003 * appendResult4399 );
			float4 texArray7370 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4413_0, _Texture_5_H_AO_Index)  );
			float2 appendResult7878 = (fixed2(texArray7370.y , texArray7370.w));
			float3 weightedBlendVar7374 = BlendComponents91;
			float2 weightedAvg7374 = ( ( weightedBlendVar7374.x*appendResult7876 + weightedBlendVar7374.y*appendResult7877 + weightedBlendVar7374.z*appendResult7878 )/( weightedBlendVar7374.x + weightedBlendVar7374.y + weightedBlendVar7374.z ) );
			float2 temp_output_4436_0 = ( temp_output_4400_0 / _Texture_5_Far_Multiplier );
			float4 texArray5636 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4436_0, _Texture_5_H_AO_Index)  );
			float2 appendResult7980 = (fixed2(texArray5636.y , 1));
			float2 temp_output_4437_0 = ( temp_output_4413_0 / _Texture_5_Far_Multiplier );
			float4 texArray5644 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4437_0, _Texture_5_H_AO_Index)  );
			float2 appendResult7982 = (fixed2(texArray5644.y , 1));
			float3 weightedBlendVar6421 = BlendComponents91;
			float2 weightedAvg6421 = ( ( weightedBlendVar6421.x*appendResult7980 + weightedBlendVar6421.y*appendResult7981 + weightedBlendVar6421.z*appendResult7982 )/( weightedBlendVar6421.x + weightedBlendVar6421.y + weightedBlendVar6421.z ) );
			float2 lerpResult5669 = lerp( weightedAvg7374 , weightedAvg6421 , UVmixDistance636);
			fixed2 ifLocalVar6632 = 0;
			UNITY_BRANCH 
			if( _Texture_5_Triplanar == 1 )
				ifLocalVar6632 = lerpResult5669;
			else
				ifLocalVar6632 = lerpResult6634;
			fixed2 ifLocalVar7743 = 0;
			UNITY_BRANCH 
			if( _Texture_5_H_AO_Index > -1 )
				ifLocalVar7743 = ifLocalVar6632;
			fixed2 Texture_5_H5671 = ifLocalVar7743;
			float temp_output_4469_0 = ( 1 / _Texture_6_Tiling );
			float2 appendResult4471 = (fixed2(temp_output_4469_0 , temp_output_4469_0));
			float2 temp_output_4485_0 = ( Top_Bottom1999 * appendResult4471 );
			float4 texArray7388 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4485_0, _Texture_6_H_AO_Index)  );
			float2 appendResult7883 = (fixed2(texArray7388.y , texArray7388.w));
			float2 temp_output_4507_0 = ( temp_output_4485_0 / _Texture_6_Far_Multiplier );
			float4 texArray5695 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4507_0, _Texture_6_H_AO_Index)  );
			float2 appendResult7984 = (fixed2(texArray5695.y , 1));
			float2 lerpResult6640 = lerp( appendResult7883 , appendResult7984 , UVmixDistance636);
			float2 temp_output_4472_0 = ( Front_Back1991 * appendResult4471 );
			float4 texArray7389 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4472_0, _Texture_6_H_AO_Index)  );
			float2 appendResult7882 = (fixed2(texArray7389.y , texArray7389.w));
			float2 temp_output_4483_0 = ( Left_Right2003 * appendResult4471 );
			float4 texArray7382 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4483_0, _Texture_6_H_AO_Index)  );
			float2 appendResult7884 = (fixed2(texArray7382.y , texArray7382.w));
			float3 weightedBlendVar7386 = BlendComponents91;
			float2 weightedAvg7386 = ( ( weightedBlendVar7386.x*appendResult7882 + weightedBlendVar7386.y*appendResult7883 + weightedBlendVar7386.z*appendResult7884 )/( weightedBlendVar7386.x + weightedBlendVar7386.y + weightedBlendVar7386.z ) );
			float2 temp_output_4503_0 = ( temp_output_4472_0 / _Texture_6_Far_Multiplier );
			float4 texArray5676 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4503_0, _Texture_6_H_AO_Index)  );
			float2 appendResult7983 = (fixed2(texArray5676.y , 1));
			float2 temp_output_4504_0 = ( temp_output_4483_0 / _Texture_6_Far_Multiplier );
			float4 texArray5684 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4504_0, _Texture_6_H_AO_Index)  );
			float2 appendResult7985 = (fixed2(texArray5684.y , 1));
			float3 weightedBlendVar6428 = BlendComponents91;
			float2 weightedAvg6428 = ( ( weightedBlendVar6428.x*appendResult7983 + weightedBlendVar6428.y*appendResult7984 + weightedBlendVar6428.z*appendResult7985 )/( weightedBlendVar6428.x + weightedBlendVar6428.y + weightedBlendVar6428.z ) );
			float2 lerpResult5709 = lerp( weightedAvg7386 , weightedAvg6428 , UVmixDistance636);
			fixed2 ifLocalVar6638 = 0;
			UNITY_BRANCH 
			if( _Texture_6_Triplanar == 1 )
				ifLocalVar6638 = lerpResult5709;
			else
				ifLocalVar6638 = lerpResult6640;
			fixed2 ifLocalVar7748 = 0;
			UNITY_BRANCH 
			if( _Texture_6_H_AO_Index > -1 )
				ifLocalVar7748 = ifLocalVar6638;
			fixed2 Texture_6_H5711 = ifLocalVar7748;
			float temp_output_4543_0 = ( 1 / _Texture_7_Tiling );
			float2 appendResult4545 = (fixed2(temp_output_4543_0 , temp_output_4543_0));
			float2 temp_output_4559_0 = ( Top_Bottom1999 * appendResult4545 );
			float4 texArray7400 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4559_0, _Texture_7_H_AO_Index)  );
			float2 appendResult7889 = (fixed2(texArray7400.y , texArray7400.w));
			float2 temp_output_4581_0 = ( temp_output_4559_0 / _Texture_7_Far_Multiplier );
			float4 texArray5735 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4581_0, _Texture_7_H_AO_Index)  );
			float2 appendResult7987 = (fixed2(texArray5735.y , 1));
			float2 lerpResult6646 = lerp( appendResult7889 , appendResult7987 , UVmixDistance636);
			float2 temp_output_4546_0 = ( Front_Back1991 * appendResult4545 );
			float4 texArray7401 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4546_0, _Texture_7_H_AO_Index)  );
			float2 appendResult7888 = (fixed2(texArray7401.y , texArray7401.w));
			float2 temp_output_4557_0 = ( Left_Right2003 * appendResult4545 );
			float4 texArray7394 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4557_0, _Texture_7_H_AO_Index)  );
			float2 appendResult7890 = (fixed2(texArray7394.y , texArray7394.w));
			float3 weightedBlendVar7398 = BlendComponents91;
			float2 weightedAvg7398 = ( ( weightedBlendVar7398.x*appendResult7888 + weightedBlendVar7398.y*appendResult7889 + weightedBlendVar7398.z*appendResult7890 )/( weightedBlendVar7398.x + weightedBlendVar7398.y + weightedBlendVar7398.z ) );
			float2 temp_output_4577_0 = ( temp_output_4546_0 / _Texture_7_Far_Multiplier );
			float4 texArray5716 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4577_0, _Texture_7_H_AO_Index)  );
			float2 appendResult7986 = (fixed2(texArray5716.y , 1));
			float2 temp_output_4578_0 = ( temp_output_4557_0 / _Texture_7_Far_Multiplier );
			float4 texArray5724 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4578_0, _Texture_7_H_AO_Index)  );
			float2 appendResult7988 = (fixed2(texArray5724.y , 1));
			float3 weightedBlendVar6435 = BlendComponents91;
			float2 weightedAvg6435 = ( ( weightedBlendVar6435.x*appendResult7986 + weightedBlendVar6435.y*appendResult7987 + weightedBlendVar6435.z*appendResult7988 )/( weightedBlendVar6435.x + weightedBlendVar6435.y + weightedBlendVar6435.z ) );
			float2 lerpResult5749 = lerp( weightedAvg7398 , weightedAvg6435 , UVmixDistance636);
			fixed2 ifLocalVar6644 = 0;
			UNITY_BRANCH 
			if( _Texture_7_Triplanar == 1 )
				ifLocalVar6644 = lerpResult5749;
			else
				ifLocalVar6644 = lerpResult6646;
			fixed2 ifLocalVar7752 = 0;
			UNITY_BRANCH 
			if( _Texture_7_H_AO_Index > -1 )
				ifLocalVar7752 = ifLocalVar6644;
			fixed2 Texture_7_H5751 = ifLocalVar7752;
			float temp_output_4617_0 = ( 1 / _Texture_8_Tiling );
			float2 appendResult4619 = (fixed2(temp_output_4617_0 , temp_output_4617_0));
			float2 temp_output_4633_0 = ( Top_Bottom1999 * appendResult4619 );
			float4 texArray7412 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4633_0, _Texture_8_H_AO_Index)  );
			float2 appendResult7895 = (fixed2(texArray7412.y , texArray7412.w));
			float2 temp_output_4655_0 = ( temp_output_4633_0 / _Texture_8_Far_Multiplier );
			float4 texArray5775 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4655_0, _Texture_8_H_AO_Index)  );
			float2 appendResult7990 = (fixed2(texArray5775.y , 1));
			float2 lerpResult6652 = lerp( appendResult7895 , appendResult7990 , UVmixDistance636);
			float2 temp_output_4620_0 = ( Front_Back1991 * appendResult4619 );
			float4 texArray7413 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4620_0, _Texture_8_H_AO_Index)  );
			float2 appendResult7894 = (fixed2(texArray7413.y , texArray7413.w));
			float2 temp_output_4631_0 = ( Left_Right2003 * appendResult4619 );
			float4 texArray7406 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4631_0, _Texture_8_H_AO_Index)  );
			float2 appendResult7896 = (fixed2(texArray7406.y , texArray7406.w));
			float3 weightedBlendVar7410 = BlendComponents91;
			float2 weightedAvg7410 = ( ( weightedBlendVar7410.x*appendResult7894 + weightedBlendVar7410.y*appendResult7895 + weightedBlendVar7410.z*appendResult7896 )/( weightedBlendVar7410.x + weightedBlendVar7410.y + weightedBlendVar7410.z ) );
			float2 temp_output_4651_0 = ( temp_output_4620_0 / _Texture_8_Far_Multiplier );
			float4 texArray5756 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4651_0, _Texture_8_H_AO_Index)  );
			float2 appendResult7989 = (fixed2(texArray5756.y , 1));
			float2 temp_output_4652_0 = ( temp_output_4631_0 / _Texture_8_Far_Multiplier );
			float4 texArray5764 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4652_0, _Texture_8_H_AO_Index)  );
			float2 appendResult7991 = (fixed2(texArray5764.y , 1));
			float3 weightedBlendVar6442 = BlendComponents91;
			float2 weightedAvg6442 = ( ( weightedBlendVar6442.x*appendResult7989 + weightedBlendVar6442.y*appendResult7990 + weightedBlendVar6442.z*appendResult7991 )/( weightedBlendVar6442.x + weightedBlendVar6442.y + weightedBlendVar6442.z ) );
			float2 lerpResult5789 = lerp( weightedAvg7410 , weightedAvg6442 , UVmixDistance636);
			fixed2 ifLocalVar6650 = 0;
			UNITY_BRANCH 
			if( _Texture_8_Triplanar == 1 )
				ifLocalVar6650 = lerpResult5789;
			else
				ifLocalVar6650 = lerpResult6652;
			fixed2 ifLocalVar7756 = 0;
			UNITY_BRANCH 
			if( _Texture_8_H_AO_Index > -1 )
				ifLocalVar7756 = ifLocalVar6650;
			fixed2 Texture_8_H5791 = ifLocalVar7756;
			float4 layeredBlendVar6525 = tex2DNode4369;
			float layeredBlend6525 = ( lerp( lerp( lerp( lerp( layeredBlend6518 , ( _Texture_5_Tesselation_Depth * Texture_5_H5671.x ) , layeredBlendVar6525.x ) , ( _Texture_6_Tesselation_Depth * Texture_6_H5711.x ) , layeredBlendVar6525.y ) , ( _Texture_7_Tesselation_Depth * Texture_7_H5751.x ) , layeredBlendVar6525.z ) , ( _Texture_8_Tesselation_Depth * Texture_8_H5791.x ) , layeredBlendVar6525.w ) );
			float temp_output_4703_0 = ( 1 / _Texture_9_Tiling );
			float2 appendResult4736 = (fixed2(temp_output_4703_0 , temp_output_4703_0));
			float2 temp_output_4712_0 = ( Top_Bottom1999 * appendResult4736 );
			float4 texArray7508 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4712_0, _Texture_9_H_AO_Index)  );
			float2 appendResult7901 = (fixed2(texArray7508.y , texArray7508.w));
			float2 temp_output_4721_0 = ( temp_output_4712_0 / _Texture_9_Far_Multiplier );
			float4 texArray5811 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4721_0, _Texture_9_H_AO_Index)  );
			float2 appendResult8015 = (fixed2(texArray5811.y , 1));
			float2 lerpResult6670 = lerp( appendResult7901 , appendResult8015 , UVmixDistance636);
			float2 temp_output_4706_0 = ( Front_Back1991 * appendResult4736 );
			float4 texArray7509 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4706_0, _Texture_9_H_AO_Index)  );
			float2 appendResult7900 = (fixed2(texArray7509.y , texArray7509.w));
			float2 temp_output_4761_0 = ( Left_Right2003 * appendResult4736 );
			float4 texArray7502 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4761_0, _Texture_9_H_AO_Index)  );
			float2 appendResult7902 = (fixed2(texArray7502.y , texArray7502.w));
			float3 weightedBlendVar7506 = BlendComponents91;
			float2 weightedAvg7506 = ( ( weightedBlendVar7506.x*appendResult7900 + weightedBlendVar7506.y*appendResult7901 + weightedBlendVar7506.z*appendResult7902 )/( weightedBlendVar7506.x + weightedBlendVar7506.y + weightedBlendVar7506.z ) );
			float2 temp_output_4718_0 = ( temp_output_4706_0 / _Texture_9_Far_Multiplier );
			float4 texArray5796 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4718_0, _Texture_9_H_AO_Index)  );
			float2 appendResult8014 = (fixed2(texArray5796.y , 1));
			float2 temp_output_4844_0 = ( temp_output_4761_0 / _Texture_9_Far_Multiplier );
			float4 texArray5806 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4844_0, _Texture_9_H_AO_Index)  );
			float2 appendResult8016 = (fixed2(texArray5806.y , 1));
			float3 weightedBlendVar6449 = BlendComponents91;
			float2 weightedAvg6449 = ( ( weightedBlendVar6449.x*appendResult8014 + weightedBlendVar6449.y*appendResult8015 + weightedBlendVar6449.z*appendResult8016 )/( weightedBlendVar6449.x + weightedBlendVar6449.y + weightedBlendVar6449.z ) );
			float2 lerpResult5830 = lerp( weightedAvg7506 , weightedAvg6449 , UVmixDistance636);
			fixed2 ifLocalVar6668 = 0;
			UNITY_BRANCH 
			if( _Texture_9_Triplanar == 1 )
				ifLocalVar6668 = lerpResult5830;
			else
				ifLocalVar6668 = lerpResult6670;
			fixed2 ifLocalVar7721 = 0;
			UNITY_BRANCH 
			if( _Texture_9_H_AO_Index > -1 )
				ifLocalVar7721 = ifLocalVar6668;
			fixed2 Texture_9_H5832 = ifLocalVar7721;
			float temp_output_4734_0 = ( 1 / _Texture_10_Tiling );
			float2 appendResult4738 = (fixed2(temp_output_4734_0 , temp_output_4734_0));
			float2 temp_output_4793_0 = ( Top_Bottom1999 * appendResult4738 );
			float4 texArray7496 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4793_0, _Texture_10_H_AO_Index)  );
			float2 appendResult7907 = (fixed2(texArray7496.y , texArray7496.w));
			float2 temp_output_4879_0 = ( temp_output_4793_0 / _Texture_10_Far_Multiplier );
			float4 texArray5851 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4879_0, _Texture_10_H_AO_Index)  );
			float2 appendResult8012 = (fixed2(texArray5851.y , 1));
			float2 lerpResult6664 = lerp( appendResult7907 , appendResult8012 , UVmixDistance636);
			float2 temp_output_4742_0 = ( Front_Back1991 * appendResult4738 );
			float4 texArray7497 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4742_0, _Texture_10_H_AO_Index)  );
			float2 appendResult7906 = (fixed2(texArray7497.y , texArray7497.w));
			float2 temp_output_4785_0 = ( Left_Right2003 * appendResult4738 );
			float4 texArray7490 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4785_0, _Texture_10_H_AO_Index)  );
			float2 appendResult7908 = (fixed2(texArray7490.y , texArray7490.w));
			float3 weightedBlendVar7494 = BlendComponents91;
			float2 weightedAvg7494 = ( ( weightedBlendVar7494.x*appendResult7906 + weightedBlendVar7494.y*appendResult7907 + weightedBlendVar7494.z*appendResult7908 )/( weightedBlendVar7494.x + weightedBlendVar7494.y + weightedBlendVar7494.z ) );
			float2 temp_output_4873_0 = ( temp_output_4742_0 / _Texture_10_Far_Multiplier );
			float4 texArray5836 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4873_0, _Texture_10_H_AO_Index)  );
			float2 appendResult8011 = (fixed2(texArray5836.y , 1));
			float2 temp_output_4859_0 = ( temp_output_4785_0 / _Texture_10_Far_Multiplier );
			float4 texArray5846 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4859_0, _Texture_10_H_AO_Index)  );
			float2 appendResult8013 = (fixed2(texArray5846.y , 1));
			float3 weightedBlendVar6456 = BlendComponents91;
			float2 weightedAvg6456 = ( ( weightedBlendVar6456.x*appendResult8011 + weightedBlendVar6456.y*appendResult8012 + weightedBlendVar6456.z*appendResult8013 )/( weightedBlendVar6456.x + weightedBlendVar6456.y + weightedBlendVar6456.z ) );
			float2 lerpResult5870 = lerp( weightedAvg7494 , weightedAvg6456 , UVmixDistance636);
			fixed2 ifLocalVar6662 = 0;
			UNITY_BRANCH 
			if( _Texture_10_Triplanar == 1 )
				ifLocalVar6662 = lerpResult5870;
			else
				ifLocalVar6662 = lerpResult6664;
			fixed2 ifLocalVar7717 = 0;
			UNITY_BRANCH 
			if( _Texture_10_H_AO_Index > -1 )
				ifLocalVar7717 = ifLocalVar6662;
			fixed2 Texture_10_H5872 = ifLocalVar7717;
			float temp_output_4739_0 = ( 1 / _Texture_11_Tiling );
			float2 appendResult4741 = (fixed2(temp_output_4739_0 , temp_output_4739_0));
			float2 temp_output_4817_0 = ( Top_Bottom1999 * appendResult4741 );
			float4 texArray7484 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4817_0, _Texture_11_H_AO_Index)  );
			float2 appendResult7913 = (fixed2(texArray7484.y , texArray7484.w));
			float2 temp_output_4904_0 = ( temp_output_4817_0 / _Texture_11_Far_Multiplier );
			float4 texArray5891 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4904_0, _Texture_11_H_AO_Index)  );
			float2 appendResult8008 = (fixed2(texArray5891.y , 1));
			float2 lerpResult6658 = lerp( appendResult7913 , appendResult8008 , UVmixDistance636);
			float2 temp_output_4748_0 = ( Front_Back1991 * appendResult4741 );
			float4 texArray7485 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4748_0, _Texture_11_H_AO_Index)  );
			float2 appendResult7912 = (fixed2(texArray7485.y , texArray7485.w));
			float2 temp_output_4795_0 = ( Left_Right2003 * appendResult4741 );
			float4 texArray7478 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4795_0, _Texture_11_H_AO_Index)  );
			float2 appendResult7914 = (fixed2(texArray7478.y , texArray7478.w));
			float3 weightedBlendVar7482 = BlendComponents91;
			float2 weightedAvg7482 = ( ( weightedBlendVar7482.x*appendResult7912 + weightedBlendVar7482.y*appendResult7913 + weightedBlendVar7482.z*appendResult7914 )/( weightedBlendVar7482.x + weightedBlendVar7482.y + weightedBlendVar7482.z ) );
			float2 temp_output_4890_0 = ( temp_output_4748_0 / _Texture_11_Far_Multiplier );
			float4 texArray5876 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4890_0, _Texture_11_H_AO_Index)  );
			float2 appendResult8007 = (fixed2(texArray5876.y , 1));
			float2 temp_output_4892_0 = ( temp_output_4795_0 / _Texture_11_Far_Multiplier );
			float4 texArray5886 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4892_0, _Texture_11_H_AO_Index)  );
			float2 appendResult8010 = (fixed2(texArray5886.y , 1));
			float3 weightedBlendVar6463 = BlendComponents91;
			float2 weightedAvg6463 = ( ( weightedBlendVar6463.x*appendResult8007 + weightedBlendVar6463.y*appendResult8008 + weightedBlendVar6463.z*appendResult8010 )/( weightedBlendVar6463.x + weightedBlendVar6463.y + weightedBlendVar6463.z ) );
			float2 lerpResult5910 = lerp( weightedAvg7482 , weightedAvg6463 , UVmixDistance636);
			fixed2 ifLocalVar6656 = 0;
			UNITY_BRANCH 
			if( _Texture_11_Triplanar == 1 )
				ifLocalVar6656 = lerpResult5910;
			else
				ifLocalVar6656 = lerpResult6658;
			fixed2 ifLocalVar7715 = 0;
			UNITY_BRANCH 
			if( _Texture_11_H_AO_Index > -1 )
				ifLocalVar7715 = ifLocalVar6656;
			fixed2 Texture_11_H5912 = ifLocalVar7715;
			float temp_output_4745_0 = ( 1 / _Texture_12_Tiling );
			float2 appendResult4751 = (fixed2(temp_output_4745_0 , temp_output_4745_0));
			float2 temp_output_4849_0 = ( Top_Bottom1999 * appendResult4751 );
			float4 texArray7472 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4849_0, _Texture_12_H_AO_Index)  );
			float2 appendResult7919 = (fixed2(texArray7472.y , texArray7472.w));
			float2 temp_output_4932_0 = ( temp_output_4849_0 / _Texture_12_Far_Multiplier );
			float4 texArray5931 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4932_0, _Texture_12_H_AO_Index)  );
			float2 appendResult8005 = (fixed2(texArray5931.y , 1));
			float2 lerpResult6676 = lerp( appendResult7919 , appendResult8005 , UVmixDistance636);
			float2 temp_output_4758_0 = ( Front_Back1991 * appendResult4751 );
			float4 texArray7473 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4758_0, _Texture_12_H_AO_Index)  );
			float2 appendResult7918 = (fixed2(texArray7473.y , texArray7473.w));
			float2 temp_output_4830_0 = ( Left_Right2003 * appendResult4751 );
			float4 texArray7466 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4830_0, _Texture_12_H_AO_Index)  );
			float2 appendResult7920 = (fixed2(texArray7466.y , texArray7466.w));
			float3 weightedBlendVar7470 = BlendComponents91;
			float2 weightedAvg7470 = ( ( weightedBlendVar7470.x*appendResult7918 + weightedBlendVar7470.y*appendResult7919 + weightedBlendVar7470.z*appendResult7920 )/( weightedBlendVar7470.x + weightedBlendVar7470.y + weightedBlendVar7470.z ) );
			float2 temp_output_4916_0 = ( temp_output_4758_0 / _Texture_12_Far_Multiplier );
			float4 texArray5916 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4916_0, _Texture_12_H_AO_Index)  );
			float2 appendResult8004 = (fixed2(texArray5916.y , 1));
			float2 temp_output_4910_0 = ( temp_output_4830_0 / _Texture_12_Far_Multiplier );
			float4 texArray5926 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4910_0, _Texture_12_H_AO_Index)  );
			float2 appendResult8006 = (fixed2(texArray5926.y , 1));
			float3 weightedBlendVar6470 = BlendComponents91;
			float2 weightedAvg6470 = ( ( weightedBlendVar6470.x*appendResult8004 + weightedBlendVar6470.y*appendResult8005 + weightedBlendVar6470.z*appendResult8006 )/( weightedBlendVar6470.x + weightedBlendVar6470.y + weightedBlendVar6470.z ) );
			float2 lerpResult5950 = lerp( weightedAvg7470 , weightedAvg6470 , UVmixDistance636);
			fixed2 ifLocalVar6674 = 0;
			UNITY_BRANCH 
			if( _Texture_12_Triplanar == 1 )
				ifLocalVar6674 = lerpResult5950;
			else
				ifLocalVar6674 = lerpResult6676;
			fixed2 ifLocalVar7708 = 0;
			UNITY_BRANCH 
			if( _Texture_12_H_AO_Index > -1 )
				ifLocalVar7708 = ifLocalVar6674;
			fixed2 Texture_12_H5952 = ifLocalVar7708;
			float4 layeredBlendVar6527 = tex2DNode4370;
			float layeredBlend6527 = ( lerp( lerp( lerp( lerp( layeredBlend6525 , ( _Texture_9_Tesselation_Depth * Texture_9_H5832.x ) , layeredBlendVar6527.x ) , ( _Texture_10_Tesselation_Depth * Texture_10_H5872.x ) , layeredBlendVar6527.y ) , ( _Texture_11_Tesselation_Depth * Texture_11_H5912.x ) , layeredBlendVar6527.z ) , ( _Texture_12_Tesselation_Depth * Texture_12_H5952.x ) , layeredBlendVar6527.w ) );
			float temp_output_5125_0 = ( 1 / _Texture_13_Tiling );
			float2 appendResult5027 = (fixed2(temp_output_5125_0 , temp_output_5125_0));
			float2 temp_output_5037_0 = ( Top_Bottom1999 * appendResult5027 );
			float4 texArray7460 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5037_0, _Texture_13_H_AO_Index)  );
			float2 appendResult7925 = (fixed2(texArray7460.y , texArray7460.w));
			float2 temp_output_5112_0 = ( temp_output_5037_0 / _Texture_13_Far_Multiplier );
			float4 texArray5971 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5112_0, _Texture_13_H_AO_Index)  );
			float2 appendResult8002 = (fixed2(texArray5971.y , 1));
			float2 lerpResult6682 = lerp( appendResult7925 , appendResult8002 , UVmixDistance636);
			float2 temp_output_5025_0 = ( Front_Back1991 * appendResult5027 );
			float4 texArray7461 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5025_0, _Texture_13_H_AO_Index)  );
			float2 appendResult7924 = (fixed2(texArray7461.y , texArray7461.w));
			float2 temp_output_5035_0 = ( Left_Right2003 * appendResult5027 );
			float4 texArray7454 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5035_0, _Texture_13_H_AO_Index)  );
			float2 appendResult7926 = (fixed2(texArray7454.y , texArray7454.w));
			float3 weightedBlendVar7458 = BlendComponents91;
			float2 weightedAvg7458 = ( ( weightedBlendVar7458.x*appendResult7924 + weightedBlendVar7458.y*appendResult7925 + weightedBlendVar7458.z*appendResult7926 )/( weightedBlendVar7458.x + weightedBlendVar7458.y + weightedBlendVar7458.z ) );
			float2 temp_output_5123_0 = ( temp_output_5025_0 / _Texture_13_Far_Multiplier );
			float4 texArray5956 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5123_0, _Texture_13_H_AO_Index)  );
			float2 appendResult8001 = (fixed2(texArray5956.y , 1));
			float2 temp_output_5124_0 = ( temp_output_5035_0 / _Texture_13_Far_Multiplier );
			float4 texArray5966 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5124_0, _Texture_13_H_AO_Index)  );
			float2 appendResult8003 = (fixed2(texArray5966.y , 1));
			float3 weightedBlendVar6477 = BlendComponents91;
			float2 weightedAvg6477 = ( ( weightedBlendVar6477.x*appendResult8001 + weightedBlendVar6477.y*appendResult8002 + weightedBlendVar6477.z*appendResult8003 )/( weightedBlendVar6477.x + weightedBlendVar6477.y + weightedBlendVar6477.z ) );
			float2 lerpResult5990 = lerp( weightedAvg7458 , weightedAvg6477 , UVmixDistance636);
			fixed2 ifLocalVar6680 = 0;
			UNITY_BRANCH 
			if( _Texture_13_Triplanar == 1 )
				ifLocalVar6680 = lerpResult5990;
			else
				ifLocalVar6680 = lerpResult6682;
			fixed2 ifLocalVar7704 = 0;
			UNITY_BRANCH 
			if( _Texture_13_H_AO_Index > -1 )
				ifLocalVar7704 = ifLocalVar6680;
			fixed2 Texture_13_H5992 = ifLocalVar7704;
			float temp_output_5006_0 = ( 1 / _Texture_14_Tiling );
			float2 appendResult5033 = (fixed2(temp_output_5006_0 , temp_output_5006_0));
			float2 temp_output_5022_0 = ( Top_Bottom1999 * appendResult5033 );
			float4 texArray7448 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5022_0, _Texture_14_H_AO_Index)  );
			float2 appendResult7931 = (fixed2(texArray7448.y , texArray7448.w));
			float2 temp_output_5172_0 = ( temp_output_5022_0 / _Texture_14_Far_Multiplier );
			float4 texArray6011 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5172_0, _Texture_14_H_AO_Index)  );
			float2 appendResult7999 = (fixed2(texArray6011.y , 1));
			float2 lerpResult6688 = lerp( appendResult7931 , appendResult7999 , UVmixDistance636);
			float2 temp_output_5009_0 = ( Front_Back1991 * appendResult5033 );
			float4 texArray7449 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5009_0, _Texture_14_H_AO_Index)  );
			float2 appendResult7930 = (fixed2(texArray7449.y , texArray7449.w));
			float2 temp_output_5010_0 = ( Left_Right2003 * appendResult5033 );
			float4 texArray7442 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5010_0, _Texture_14_H_AO_Index)  );
			float2 appendResult7932 = (fixed2(texArray7442.y , texArray7442.w));
			float3 weightedBlendVar7446 = BlendComponents91;
			float2 weightedAvg7446 = ( ( weightedBlendVar7446.x*appendResult7930 + weightedBlendVar7446.y*appendResult7931 + weightedBlendVar7446.z*appendResult7932 )/( weightedBlendVar7446.x + weightedBlendVar7446.y + weightedBlendVar7446.z ) );
			float2 temp_output_5238_0 = ( temp_output_5009_0 / _Texture_14_Far_Multiplier );
			float4 texArray5996 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5238_0, _Texture_14_H_AO_Index)  );
			float2 appendResult7998 = (fixed2(texArray5996.y , 1));
			float2 temp_output_5233_0 = ( temp_output_5010_0 / _Texture_14_Far_Multiplier );
			float4 texArray6006 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5233_0, _Texture_14_H_AO_Index)  );
			float2 appendResult8000 = (fixed2(texArray6006.y , 1));
			float3 weightedBlendVar6484 = BlendComponents91;
			float2 weightedAvg6484 = ( ( weightedBlendVar6484.x*appendResult7998 + weightedBlendVar6484.y*appendResult7999 + weightedBlendVar6484.z*appendResult8000 )/( weightedBlendVar6484.x + weightedBlendVar6484.y + weightedBlendVar6484.z ) );
			float2 lerpResult6030 = lerp( weightedAvg7446 , weightedAvg6484 , UVmixDistance636);
			fixed2 ifLocalVar6686 = 0;
			UNITY_BRANCH 
			if( _Texture_14_Triplanar == 1 )
				ifLocalVar6686 = lerpResult6030;
			else
				ifLocalVar6686 = lerpResult6688;
			fixed2 ifLocalVar7700 = 0;
			UNITY_BRANCH 
			if( _Texture_14_H_AO_Index > -1 )
				ifLocalVar7700 = ifLocalVar6686;
			fixed2 Texture_14_H6032 = ifLocalVar7700;
			float temp_output_5210_0 = ( 1 / _Texture_15_Tiling );
			float2 appendResult5212 = (fixed2(temp_output_5210_0 , temp_output_5210_0));
			float2 temp_output_5226_0 = ( Top_Bottom1999 * appendResult5212 );
			float4 texArray7436 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5226_0, _Texture_15_H_AO_Index)  );
			float2 appendResult7937 = (fixed2(texArray7436.y , texArray7436.w));
			float2 temp_output_5190_0 = ( temp_output_5226_0 / _Texture_15_Far_Multiplier );
			float4 texArray6051 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5190_0, _Texture_15_H_AO_Index)  );
			float2 appendResult7996 = (fixed2(texArray6051.y , 1));
			float2 lerpResult6694 = lerp( appendResult7937 , appendResult7996 , UVmixDistance636);
			float2 temp_output_5213_0 = ( Front_Back1991 * appendResult5212 );
			float4 texArray7437 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5213_0, _Texture_15_H_AO_Index)  );
			float2 appendResult7936 = (fixed2(texArray7437.y , texArray7437.w));
			float2 temp_output_5224_0 = ( Left_Right2003 * appendResult5212 );
			float4 texArray7430 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5224_0, _Texture_15_H_AO_Index)  );
			float2 appendResult7938 = (fixed2(texArray7430.y , texArray7430.w));
			float3 weightedBlendVar7434 = BlendComponents91;
			float2 weightedAvg7434 = ( ( weightedBlendVar7434.x*appendResult7936 + weightedBlendVar7434.y*appendResult7937 + weightedBlendVar7434.z*appendResult7938 )/( weightedBlendVar7434.x + weightedBlendVar7434.y + weightedBlendVar7434.z ) );
			float2 temp_output_5248_0 = ( temp_output_5213_0 / _Texture_15_Far_Multiplier );
			float4 texArray6036 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5248_0, _Texture_15_H_AO_Index)  );
			float2 appendResult7997 = (fixed2(texArray6036.y , 1));
			float2 temp_output_5249_0 = ( temp_output_5224_0 / _Texture_15_Far_Multiplier );
			float4 texArray6046 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5249_0, _Texture_15_H_AO_Index)  );
			float2 appendResult7995 = (fixed2(texArray6046.y , 1));
			float3 weightedBlendVar6491 = BlendComponents91;
			float2 weightedAvg6491 = ( ( weightedBlendVar6491.x*appendResult7997 + weightedBlendVar6491.y*appendResult7996 + weightedBlendVar6491.z*appendResult7995 )/( weightedBlendVar6491.x + weightedBlendVar6491.y + weightedBlendVar6491.z ) );
			float2 lerpResult6070 = lerp( weightedAvg7434 , weightedAvg6491 , UVmixDistance636);
			fixed2 ifLocalVar6692 = 0;
			UNITY_BRANCH 
			if( _Texture_15_Triplanar == 1 )
				ifLocalVar6692 = lerpResult6070;
			else
				ifLocalVar6692 = lerpResult6694;
			fixed2 ifLocalVar7696 = 0;
			UNITY_BRANCH 
			if( _Texture_15_H_AO_Index > -1 )
				ifLocalVar7696 = ifLocalVar6692;
			fixed2 Texture_15_H6072 = ifLocalVar7696;
			float temp_output_5075_0 = ( 1 / _Texture_16_Tiling );
			float2 appendResult5078 = (fixed2(temp_output_5075_0 , temp_output_5075_0));
			float2 temp_output_5083_0 = ( Top_Bottom1999 * appendResult5078 );
			float4 texArray7424 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5083_0, _Texture_16_H_AO_Index)  );
			float2 appendResult7943 = (fixed2(texArray7424.y , texArray7424.w));
			float2 temp_output_5153_0 = ( temp_output_5083_0 / _Texture_16_Far_Multiplier );
			float4 texArray6091 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5153_0, _Texture_16_H_AO_Index)  );
			float2 appendResult7993 = (fixed2(texArray6091.y , 1));
			float2 lerpResult6700 = lerp( appendResult7943 , appendResult7993 , UVmixDistance636);
			float2 temp_output_5079_0 = ( Front_Back1991 * appendResult5078 );
			float4 texArray7425 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5079_0, _Texture_16_H_AO_Index)  );
			float2 appendResult7942 = (fixed2(texArray7425.y , texArray7425.w));
			float2 temp_output_5085_0 = ( Left_Right2003 * appendResult5078 );
			float4 texArray7418 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5085_0, _Texture_16_H_AO_Index)  );
			float2 appendResult7944 = (fixed2(texArray7418.y , texArray7418.w));
			float3 weightedBlendVar7422 = BlendComponents91;
			float2 weightedAvg7422 = ( ( weightedBlendVar7422.x*appendResult7942 + weightedBlendVar7422.y*appendResult7943 + weightedBlendVar7422.z*appendResult7944 )/( weightedBlendVar7422.x + weightedBlendVar7422.y + weightedBlendVar7422.z ) );
			float2 temp_output_5147_0 = ( temp_output_5079_0 / _Texture_16_Far_Multiplier );
			float4 texArray6076 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5147_0, _Texture_16_H_AO_Index)  );
			float2 appendResult7992 = (fixed2(texArray6076.y , 1));
			float2 temp_output_5146_0 = ( temp_output_5085_0 / _Texture_16_Far_Multiplier );
			float4 texArray6086 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5146_0, _Texture_16_H_AO_Index)  );
			float2 appendResult7994 = (fixed2(texArray6086.y , 1));
			float3 weightedBlendVar6498 = BlendComponents91;
			float2 weightedAvg6498 = ( ( weightedBlendVar6498.x*appendResult7992 + weightedBlendVar6498.y*appendResult7993 + weightedBlendVar6498.z*appendResult7994 )/( weightedBlendVar6498.x + weightedBlendVar6498.y + weightedBlendVar6498.z ) );
			float2 lerpResult6110 = lerp( weightedAvg7422 , weightedAvg6498 , UVmixDistance636);
			fixed2 ifLocalVar6698 = 0;
			UNITY_BRANCH 
			if( _Texture_16_Triplanar == 1 )
				ifLocalVar6698 = lerpResult6110;
			else
				ifLocalVar6698 = lerpResult6700;
			fixed2 ifLocalVar7693 = 0;
			UNITY_BRANCH 
			if( _Texture_16_H_AO_Index > -1 )
				ifLocalVar7693 = ifLocalVar6698;
			fixed2 Texture_16_H6112 = ifLocalVar7693;
			float4 layeredBlendVar6530 = tex2DNode4371;
			float layeredBlend6530 = ( lerp( lerp( lerp( lerp( layeredBlend6527 , ( _Texture_13_Tesselation_Depth * Texture_13_H5992.x ) , layeredBlendVar6530.x ) , ( _Texture_14_Tesselation_Depth * Texture_14_H6032.x ) , layeredBlendVar6530.y ) , ( _Texture_15_Tesselation_Depth * Texture_15_H6072.x ) , layeredBlendVar6530.z ) , ( _Texture_16_Tesselation_Depth * Texture_16_H6112.x ) , layeredBlendVar6530.w ) );
			float2 temp_output_3749_0 = ( Top_Bottom1999 * ( 1 / _Snow_Tiling ) );
			float4 texArray6267 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3749_0, _Texture_Snow_H_AO_Index)  );
			float4 texArray6270 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3749_0 / _Snow_Tiling_Far_Multiplier ), _Texture_Snow_H_AO_Index)  );
			float lerpResult7306 = lerp( texArray6267.y , texArray6270.y , UVmixDistance636);
			fixed ifLocalVar7824 = 0;
			UNITY_BRANCH 
			if( _Texture_Snow_H_AO_Index > -1 )
				ifLocalVar7824 = ( pow( lerpResult7306 , _Snow_Height_Contrast ) * _Snow_Heightmap_Depth );
			float temp_output_6545_0 = ( layeredBlend6530 + ifLocalVar7824 );
			float clampResult6546 = clamp( temp_output_6545_0 , 0 , temp_output_6545_0 );
			float clampResult7176 = clamp( clampResult6546 , 0 , 1 );
			float temp_output_6547_0 = ( 1.0 - clampResult7176 );
			float2 temp_output_3715_0 = ( Top_Bottom1999 * _Snow_Noise_Tiling );
			float4 texArray4383 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3715_0, _Texture_Snow_Noise_Index)  );
			float4 texArray4385 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3715_0 * float2( 0.23,0.23 ) ), _Texture_Snow_Noise_Index)  );
			float4 texArray4384 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(( temp_output_3715_0 * float2( 0.53,0.53 ) ), _Texture_Snow_Noise_Index)  );
			float lerpResult4310 = lerp( 1.0 , ( texArray4383.w + texArray4385.w + texArray4384.w ) , ( _Snow_Noise_Power * 0.1 ));
			float clampResult1354 = clamp( ase_worldNormal.y , 0 , 0.9999 );
			float temp_output_1349_0 = ( _Snow_Maximum_Angle / 90 );
			float clampResult1347 = clamp( ( clampResult1354 - ( 1.0 - temp_output_1349_0 ) ) , 0 , 2 );
			fixed SnowSlope1352 = ( clampResult1347 * ( 1 / temp_output_1349_0 ) );
			float clampResult6569 = clamp( ( 1 - ( _Snow_Maximum_Angle_Hardness * 0.05 ) ) , 0.01 , 1 );
			float clampResult4146 = clamp( pow( ( ( _Snow_Amount * ( 0.1 - ( _Snow_Maximum_Angle_Hardness * 0.005 ) ) ) * SnowSlope1352 ) , clampResult6569 ) , 0 , 1 );
			float temp_output_3751_0 = ( ( 1.0 - _Snow_Min_Height ) + ase_worldPos.y );
			float clampResult4220 = clamp( ( temp_output_3751_0 + 1 ) , 0 , 1 );
			float clampResult4260 = clamp( ( ( 1.0 - ( ( temp_output_3751_0 + _Snow_Min_Height_Blending ) / temp_output_3751_0 ) ) + -0.5 ) , 0 , 1 );
			float clampResult4263 = clamp( ( clampResult4220 + clampResult4260 ) , 0 , 1 );
			float lerpResult3759 = lerp( 0 , ( ( _Snow_Amount * lerpResult4310 ) * clampResult4146 ) , clampResult4263);
			float clampResult4298 = clamp( lerpResult3759 , 0 , 2 );
			float temp_output_6538_0 = ( clampResult4298 * ( 1.0 - ( ( _Texture_16_Snow_Reduction * Splat4_A2546 ) + ( ( _Texture_15_Snow_Reduction * Splat4_B2545 ) + ( ( ( _Texture_13_Snow_Reduction * Splat4_R2543 ) + ( ( _Texture_12_Snow_Reduction * Splat3_A2540 ) + ( ( _Texture_11_Snow_Reduction * Splat3_B2539 ) + ( ( ( _Texture_9_Snow_Reduction * Splat3_R2537 ) + ( ( _Texture_8_Snow_Reduction * Splat2_A2109 ) + ( ( _Texture_7_Snow_Reduction * Splat2_B2108 ) + ( ( ( _Texture_5_Snow_Reduction * Splat2_R2106 ) + ( ( _Texture_1_Snow_Reduction * Splat1_R1438 ) + ( ( _Texture_2_Snow_Reduction * Splat1_G1441 ) + ( ( _Texture_3_Snow_Reduction * Splat1_B1442 ) + ( _Texture_4_Snow_Reduction * Splat1_A1491 ) ) ) ) ) + ( _Texture_6_Snow_Reduction * Splat2_G2107 ) ) ) ) ) + ( _Texture_10_Snow_Reduction * Splat3_G2538 ) ) ) ) ) + ( _Texture_14_Snow_Reduction * Splat4_G2544 ) ) ) ) ) );
			float lerpResult7314 = lerp( _Snow_Heightblend_Close , _Snow_Heightblend_Far , UVmixDistance636);
			float HeightMask6539 = saturate(pow(((temp_output_6547_0*temp_output_6538_0)*4)+(temp_output_6538_0*2),lerpResult7314));
			float3 lerpResult6503 = lerp( lerpResult3776 , lerpResult3906 , HeightMask6539);
			float lerpResult7273 = lerp( _Texture_13_Heightblend_Close , _Texture_13_Heightblend_Far , UVmixDistance636);
			float HeightMask6231 = saturate(pow(((( _Texture_13_Heightmap_Depth * pow( Texture_13_H5992.x , _Texture_13_Height_Contrast ) )*Splat4_R2543)*4)+(Splat4_R2543*2),lerpResult7273));
			float lerpResult7277 = lerp( _Texture_14_Heightblend_Close , _Texture_14_Heightblend_Far , UVmixDistance636);
			float HeightMask6234 = saturate(pow(((( _Texture_14_Heightmap_Depth * pow( Texture_14_H6032.x , _Texture_14_Height_Contrast ) )*Splat4_G2544)*4)+(Splat4_G2544*2),lerpResult7277));
			float lerpResult7281 = lerp( _Texture_15_Heightblend_Close , _Texture_15_Heightblend_Far , UVmixDistance636);
			float HeightMask6237 = saturate(pow(((( _Texture_15_Heightmap_Depth * pow( Texture_15_H6072.x , _Texture_15_Height_Contrast ) )*Splat4_B2545)*4)+(Splat4_B2545*2),lerpResult7281));
			float lerpResult7285 = lerp( _Texture_16_Heightblend_Close , _Texture_16_Heightblend_Far , UVmixDistance636);
			float HeightMask6240 = saturate(pow(((( _Texture_16_Heightmap_Depth * pow( Texture_16_H6112.x , _Texture_16_Height_Contrast ) )*Splat4_A2546)*4)+(Splat4_A2546*2),lerpResult7285));
			float4 appendResult6533 = (fixed4(HeightMask6231 , HeightMask6234 , HeightMask6237 , HeightMask6240));
			float lerpResult7257 = lerp( _Texture_9_Heightblend_Close , _Texture_9_Heightblend_Far , UVmixDistance636);
			float HeightMask6219 = saturate(pow(((( _Texture_9_Heightmap_Depth * pow( Texture_9_H5832.x , _Texture_9_Height_Contrast ) )*Splat3_R2537)*4)+(Splat3_R2537*2),lerpResult7257));
			float lerpResult7261 = lerp( _Texture_10_Heightblend_Close , _Texture_10_Heightblend_Far , UVmixDistance636);
			float HeightMask6222 = saturate(pow(((( _Texture_10_Heightmap_Depth * pow( Texture_10_H5872.x , _Texture_10_Height_Contrast ) )*Splat3_G2538)*4)+(Splat3_G2538*2),lerpResult7261));
			float lerpResult7265 = lerp( _Texture_11_Heightblend_Close , _Texture_11_Heightblend_Far , UVmixDistance636);
			float HeightMask6225 = saturate(pow(((( _Texture_11_Heightmap_Depth * pow( Texture_11_H5912.x , _Texture_11_Height_Contrast ) )*Splat3_B2539)*4)+(Splat3_B2539*2),lerpResult7265));
			float lerpResult7269 = lerp( _Texture_12_Heightblend_Close , _Texture_12_Heightblend_Far , UVmixDistance636);
			float HeightMask6228 = saturate(pow(((( _Texture_12_Heightmap_Depth * pow( Texture_12_H5952.x , _Texture_12_Height_Contrast ) )*Splat3_A2540)*4)+(Splat3_A2540*2),lerpResult7269));
			float4 appendResult6529 = (fixed4(HeightMask6219 , HeightMask6222 , HeightMask6225 , HeightMask6228));
			float lerpResult7241 = lerp( _Texture_5_Heightblend_Close , _Texture_5_Heightblend_Far , UVmixDistance636);
			float HeightMask6205 = saturate(pow(((( _Texture_5_Heightmap_Depth * pow( Texture_5_H5671.x , _Texture_5_Height_Contrast ) )*Splat2_R2106)*4)+(Splat2_R2106*2),lerpResult7241));
			float lerpResult7245 = lerp( _Texture_6_Heightblend_Close , _Texture_6_Heightblend_Far , UVmixDistance636);
			float HeightMask6208 = saturate(pow(((( _Texture_6_Heightmap_Depth * pow( Texture_6_H5711.x , _Texture_6_Height_Contrast ) )*Splat2_G2107)*4)+(Splat2_G2107*2),lerpResult7245));
			float lerpResult7249 = lerp( _Texture_7_Heightblend_Close , _Texture_7_Heightblend_Far , UVmixDistance636);
			float HeightMask6211 = saturate(pow(((( _Texture_7_Heightmap_Depth * pow( Texture_7_H5751.x , _Texture_7_Height_Contrast ) )*Splat2_B2108)*4)+(Splat2_B2108*2),lerpResult7249));
			float lerpResult7253 = lerp( _Texture_8_Heightblend_Close , _Texture_8_Heightblend_Far , UVmixDistance636);
			float HeightMask6214 = saturate(pow(((( _Texture_8_Heightmap_Depth * pow( Texture_8_H5791.x , _Texture_8_Height_Contrast ) )*Splat2_A2109)*4)+(Splat2_A2109*2),lerpResult7253));
			float4 appendResult6524 = (fixed4(HeightMask6205 , HeightMask6208 , HeightMask6211 , HeightMask6214));
			float lerpResult7225 = lerp( _Texture_1_Heightblend_Close , _Texture_1_Heightblend_Far , UVmixDistance636);
			float HeightMask6196 = saturate(pow(((( pow( Texture_1_H5480.x , _Texture_1_Height_Contrast ) * _Texture_1_Heightmap_Depth )*Splat1_R1438)*4)+(Splat1_R1438*2),lerpResult7225));
			float lerpResult7229 = lerp( _Texture_2_Heightblend_Close , _Texture_2_Heightblend_Far , UVmixDistance636);
			float HeightMask6515 = saturate(pow(((( _Texture_2_Heightmap_Depth * pow( Texture_2_H5497.x , _Texture_2_Height_Contrast ) )*Splat1_G1441)*4)+(Splat1_G1441*2),lerpResult7229));
			float lerpResult7233 = lerp( _Texture_3_Heightblend_Close , _Texture_3_Heightblend_Far , UVmixDistance636);
			float HeightMask6516 = saturate(pow(((( _Texture_3_Heightmap_Depth * pow( Texture_3_H5581.x , _Texture_3_Height_Contrast ) )*Splat1_B1442)*4)+(Splat1_B1442*2),lerpResult7233));
			float lerpResult7237 = lerp( _Texture_4_Heightblend_Close , _Texture_4_Heightblend_Far , UVmixDistance636);
			float HeightMask6203 = saturate(pow(((( _Texture_4_Heightmap_Depth * pow( Texture_4_H5631.x , _Texture_4_Height_Contrast ) )*Splat1_A1491)*4)+(Splat1_A1491*2),lerpResult7237));
			float4 appendResult6517 = (fixed4(HeightMask6196 , HeightMask6515 , HeightMask6516 , HeightMask6203));
			float4 texArray3300 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3275_0, _Texture_1_Normal_Index)  );
			float2 appendResult11_g1099 = (fixed2(texArray3300.w , texArray3300.y));
			float2 temp_output_4_0_g1099 = ( ( ( appendResult11_g1099 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_1_Normal_Power );
			float dotResult5_g1099 = dot( temp_output_4_0_g1099 , temp_output_4_0_g1099 );
			float temp_output_9_0_g1099 = sqrt( ( 1.0 - saturate( dotResult5_g1099 ) ) );
			float3 appendResult10_g1099 = (fixed3(temp_output_4_0_g1099.x , temp_output_4_0_g1099.y , temp_output_9_0_g1099));
			float3 temp_output_6989_0 = appendResult10_g1099;
			float4 texArray3299 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3279_0, _Texture_1_Normal_Index)  );
			float2 appendResult11_g548 = (fixed2(texArray3299.w , texArray3299.y));
			float2 temp_output_4_0_g548 = ( ( ( appendResult11_g548 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_1_Normal_Power * -1 ) );
			float dotResult5_g548 = dot( temp_output_4_0_g548 , temp_output_4_0_g548 );
			float temp_output_9_0_g548 = sqrt( ( 1.0 - saturate( dotResult5_g548 ) ) );
			float3 appendResult19_g548 = (fixed3(temp_output_4_0_g548.y , temp_output_4_0_g548.x , temp_output_9_0_g548));
			float3 appendResult6857 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray3301 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3277_0, _Texture_1_Normal_Index)  );
			float2 appendResult11_g547 = (fixed2(texArray3301.w , texArray3301.y));
			float2 temp_output_4_0_g547 = ( ( ( appendResult11_g547 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_1_Normal_Power );
			float dotResult5_g547 = dot( temp_output_4_0_g547 , temp_output_4_0_g547 );
			float temp_output_9_0_g547 = sqrt( ( 1.0 - saturate( dotResult5_g547 ) ) );
			float3 appendResult10_g547 = (fixed3(temp_output_4_0_g547.x , temp_output_4_0_g547.y , temp_output_9_0_g547));
			float3 appendResult6860 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6393 = BlendComponents91;
			float3 weightedAvg6393 = ( ( weightedBlendVar6393.x*( appendResult19_g548 * appendResult6857 ) + weightedBlendVar6393.y*temp_output_6989_0 + weightedBlendVar6393.z*( appendResult10_g547 * appendResult6860 ) )/( weightedBlendVar6393.x + weightedBlendVar6393.y + weightedBlendVar6393.z ) );
			fixed3 ifLocalVar6606 = 0;
			UNITY_BRANCH 
			if( _Texture_1_Triplanar == 1 )
				ifLocalVar6606 = weightedAvg6393;
			else
				ifLocalVar6606 = temp_output_6989_0;
			fixed3 EmptyNRM7829 = fixed3(0,0,1);
			fixed3 ifLocalVar7726 = 0;
			UNITY_BRANCH 
			if( _Texture_1_Normal_Index <= -1 )
				ifLocalVar7726 = EmptyNRM7829;
			else
				ifLocalVar7726 = ifLocalVar6606;
			fixed3 Normal_1569 = ifLocalVar7726;
			float4 texArray3350 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3343_0, _Texture_2_Normal_Index)  );
			float2 appendResult11_g1096 = (fixed2(texArray3350.w , texArray3350.y));
			float2 temp_output_4_0_g1096 = ( ( ( appendResult11_g1096 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_2_Normal_Power );
			float dotResult5_g1096 = dot( temp_output_4_0_g1096 , temp_output_4_0_g1096 );
			float temp_output_9_0_g1096 = sqrt( ( 1.0 - saturate( dotResult5_g1096 ) ) );
			float3 appendResult10_g1096 = (fixed3(temp_output_4_0_g1096.x , temp_output_4_0_g1096.y , temp_output_9_0_g1096));
			float3 temp_output_6992_0 = appendResult10_g1096;
			float4 texArray3384 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3344_0, _Texture_2_Normal_Index)  );
			float2 appendResult11_g552 = (fixed2(texArray3384.w , texArray3384.y));
			float2 temp_output_4_0_g552 = ( ( ( appendResult11_g552 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_2_Normal_Power * -1 ) );
			float dotResult5_g552 = dot( temp_output_4_0_g552 , temp_output_4_0_g552 );
			float temp_output_9_0_g552 = sqrt( ( 1.0 - saturate( dotResult5_g552 ) ) );
			float3 appendResult19_g552 = (fixed3(temp_output_4_0_g552.y , temp_output_4_0_g552.x , temp_output_9_0_g552));
			float3 appendResult6864 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray3351 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3379_0, _Texture_2_Normal_Index)  );
			float2 appendResult11_g549 = (fixed2(texArray3351.w , texArray3351.y));
			float2 temp_output_4_0_g549 = ( ( ( appendResult11_g549 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_2_Normal_Power );
			float dotResult5_g549 = dot( temp_output_4_0_g549 , temp_output_4_0_g549 );
			float temp_output_9_0_g549 = sqrt( ( 1.0 - saturate( dotResult5_g549 ) ) );
			float3 appendResult10_g549 = (fixed3(temp_output_4_0_g549.x , temp_output_4_0_g549.y , temp_output_9_0_g549));
			float3 appendResult6867 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6401 = BlendComponents91;
			float3 weightedAvg6401 = ( ( weightedBlendVar6401.x*( appendResult19_g552 * appendResult6864 ) + weightedBlendVar6401.y*temp_output_6992_0 + weightedBlendVar6401.z*( appendResult10_g549 * appendResult6867 ) )/( weightedBlendVar6401.x + weightedBlendVar6401.y + weightedBlendVar6401.z ) );
			fixed3 ifLocalVar6613 = 0;
			UNITY_BRANCH 
			if( _Texture_2_Triplanar == 1 )
				ifLocalVar6613 = weightedAvg6401;
			else
				ifLocalVar6613 = temp_output_6992_0;
			fixed3 ifLocalVar7730 = 0;
			UNITY_BRANCH 
			if( _Texture_2_Normal_Index <= -1 )
				ifLocalVar7730 = EmptyNRM7829;
			else
				ifLocalVar7730 = ifLocalVar6613;
			fixed3 Normal_23361 = ifLocalVar7730;
			float4 texArray3416 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3410_0, _Texture_3_Normal_Index)  );
			float2 appendResult11_g1095 = (fixed2(texArray3416.w , texArray3416.y));
			float2 temp_output_4_0_g1095 = ( ( ( appendResult11_g1095 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_3_Normal_Power );
			float dotResult5_g1095 = dot( temp_output_4_0_g1095 , temp_output_4_0_g1095 );
			float temp_output_9_0_g1095 = sqrt( ( 1.0 - saturate( dotResult5_g1095 ) ) );
			float3 appendResult10_g1095 = (fixed3(temp_output_4_0_g1095.x , temp_output_4_0_g1095.y , temp_output_9_0_g1095));
			float3 temp_output_6995_0 = appendResult10_g1095;
			float4 texArray3445 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3411_0, _Texture_3_Normal_Index)  );
			float2 appendResult11_g550 = (fixed2(texArray3445.w , texArray3445.y));
			float2 temp_output_4_0_g550 = ( ( ( appendResult11_g550 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_3_Normal_Power * -1 ) );
			float dotResult5_g550 = dot( temp_output_4_0_g550 , temp_output_4_0_g550 );
			float temp_output_9_0_g550 = sqrt( ( 1.0 - saturate( dotResult5_g550 ) ) );
			float3 appendResult19_g550 = (fixed3(temp_output_4_0_g550.y , temp_output_4_0_g550.x , temp_output_9_0_g550));
			float3 appendResult6871 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray3417 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3441_0, _Texture_3_Normal_Index)  );
			float2 appendResult11_g553 = (fixed2(texArray3417.w , texArray3417.y));
			float2 temp_output_4_0_g553 = ( ( ( appendResult11_g553 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_3_Normal_Power );
			float dotResult5_g553 = dot( temp_output_4_0_g553 , temp_output_4_0_g553 );
			float temp_output_9_0_g553 = sqrt( ( 1.0 - saturate( dotResult5_g553 ) ) );
			float3 appendResult10_g553 = (fixed3(temp_output_4_0_g553.x , temp_output_4_0_g553.y , temp_output_9_0_g553));
			float3 appendResult6874 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6408 = BlendComponents91;
			float3 weightedAvg6408 = ( ( weightedBlendVar6408.x*( appendResult19_g550 * appendResult6871 ) + weightedBlendVar6408.y*temp_output_6995_0 + weightedBlendVar6408.z*( appendResult10_g553 * appendResult6874 ) )/( weightedBlendVar6408.x + weightedBlendVar6408.y + weightedBlendVar6408.z ) );
			fixed3 ifLocalVar6619 = 0;
			UNITY_BRANCH 
			if( _Texture_3_Triplanar == 1 )
				ifLocalVar6619 = weightedAvg6408;
			else
				ifLocalVar6619 = temp_output_6995_0;
			fixed3 ifLocalVar7734 = 0;
			UNITY_BRANCH 
			if( _Texture_3_Normal_Index <= -1 )
				ifLocalVar7734 = EmptyNRM7829;
			else
				ifLocalVar7734 = ifLocalVar6619;
			fixed3 Normal_33452 = ifLocalVar7734;
			float4 texArray3483 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3477_0, _Texture_4_Normal_Index)  );
			float2 appendResult11_g1094 = (fixed2(texArray3483.w , texArray3483.y));
			float2 temp_output_4_0_g1094 = ( ( ( appendResult11_g1094 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_4_Normal_Power );
			float dotResult5_g1094 = dot( temp_output_4_0_g1094 , temp_output_4_0_g1094 );
			float temp_output_9_0_g1094 = sqrt( ( 1.0 - saturate( dotResult5_g1094 ) ) );
			float3 appendResult10_g1094 = (fixed3(temp_output_4_0_g1094.x , temp_output_4_0_g1094.y , temp_output_9_0_g1094));
			float3 temp_output_6998_0 = appendResult10_g1094;
			float4 texArray3512 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3478_0, _Texture_4_Normal_Index)  );
			float2 appendResult11_g551 = (fixed2(texArray3512.w , texArray3512.y));
			float2 temp_output_4_0_g551 = ( ( ( appendResult11_g551 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_4_Normal_Power * -1 ) );
			float dotResult5_g551 = dot( temp_output_4_0_g551 , temp_output_4_0_g551 );
			float temp_output_9_0_g551 = sqrt( ( 1.0 - saturate( dotResult5_g551 ) ) );
			float3 appendResult19_g551 = (fixed3(temp_output_4_0_g551.y , temp_output_4_0_g551.x , temp_output_9_0_g551));
			float3 appendResult6878 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray3484 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3508_0, _Texture_4_Normal_Index)  );
			float2 appendResult11_g546 = (fixed2(texArray3484.w , texArray3484.y));
			float2 temp_output_4_0_g546 = ( ( ( appendResult11_g546 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_4_Normal_Power );
			float dotResult5_g546 = dot( temp_output_4_0_g546 , temp_output_4_0_g546 );
			float temp_output_9_0_g546 = sqrt( ( 1.0 - saturate( dotResult5_g546 ) ) );
			float3 appendResult10_g546 = (fixed3(temp_output_4_0_g546.x , temp_output_4_0_g546.y , temp_output_9_0_g546));
			float3 appendResult6881 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6415 = BlendComponents91;
			float3 weightedAvg6415 = ( ( weightedBlendVar6415.x*( appendResult19_g551 * appendResult6878 ) + weightedBlendVar6415.y*temp_output_6998_0 + weightedBlendVar6415.z*( appendResult10_g546 * appendResult6881 ) )/( weightedBlendVar6415.x + weightedBlendVar6415.y + weightedBlendVar6415.z ) );
			fixed3 ifLocalVar6625 = 0;
			UNITY_BRANCH 
			if( _Texture_4_Triplanar == 1 )
				ifLocalVar6625 = weightedAvg6415;
			else
				ifLocalVar6625 = temp_output_6998_0;
			fixed3 ifLocalVar7738 = 0;
			UNITY_BRANCH 
			if( _Texture_4_Normal_Index <= -1 )
				ifLocalVar7738 = EmptyNRM7829;
			else
				ifLocalVar7738 = ifLocalVar6625;
			fixed3 Normal_43519 = ifLocalVar7738;
			float4 layeredBlendVar7813 = appendResult6517;
			float3 layeredBlend7813 = ( lerp( lerp( lerp( lerp( fixed3(0,0,1) , Normal_1569 , layeredBlendVar7813.x ) , Normal_23361 , layeredBlendVar7813.y ) , Normal_33452 , layeredBlendVar7813.z ) , Normal_43519 , layeredBlendVar7813.w ) );
			float4 texArray4424 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4416_0, _Texture_5_Normal_Index)  );
			float2 appendResult11_g1128 = (fixed2(texArray4424.w , texArray4424.y));
			float2 temp_output_4_0_g1128 = ( ( ( appendResult11_g1128 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_5_Normal_Power );
			float dotResult5_g1128 = dot( temp_output_4_0_g1128 , temp_output_4_0_g1128 );
			float temp_output_9_0_g1128 = sqrt( ( 1.0 - saturate( dotResult5_g1128 ) ) );
			float3 appendResult10_g1128 = (fixed3(temp_output_4_0_g1128.x , temp_output_4_0_g1128.y , temp_output_9_0_g1128));
			float3 temp_output_7001_0 = appendResult10_g1128;
			float4 texArray4417 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4400_0, _Texture_5_Normal_Index)  );
			float2 appendResult11_g1098 = (fixed2(texArray4417.w , texArray4417.y));
			float2 temp_output_4_0_g1098 = ( ( ( appendResult11_g1098 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_5_Normal_Power * -1 ) );
			float dotResult5_g1098 = dot( temp_output_4_0_g1098 , temp_output_4_0_g1098 );
			float temp_output_9_0_g1098 = sqrt( ( 1.0 - saturate( dotResult5_g1098 ) ) );
			float3 appendResult19_g1098 = (fixed3(temp_output_4_0_g1098.y , temp_output_4_0_g1098.x , temp_output_9_0_g1098));
			float3 appendResult6885 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray4422 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4413_0, _Texture_5_Normal_Index)  );
			float2 appendResult11_g1103 = (fixed2(texArray4422.w , texArray4422.y));
			float2 temp_output_4_0_g1103 = ( ( ( appendResult11_g1103 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_5_Normal_Power );
			float dotResult5_g1103 = dot( temp_output_4_0_g1103 , temp_output_4_0_g1103 );
			float temp_output_9_0_g1103 = sqrt( ( 1.0 - saturate( dotResult5_g1103 ) ) );
			float3 appendResult10_g1103 = (fixed3(temp_output_4_0_g1103.x , temp_output_4_0_g1103.y , temp_output_9_0_g1103));
			float3 appendResult6888 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6422 = BlendComponents91;
			float3 weightedAvg6422 = ( ( weightedBlendVar6422.x*( appendResult19_g1098 * appendResult6885 ) + weightedBlendVar6422.y*temp_output_7001_0 + weightedBlendVar6422.z*( appendResult10_g1103 * appendResult6888 ) )/( weightedBlendVar6422.x + weightedBlendVar6422.y + weightedBlendVar6422.z ) );
			fixed3 ifLocalVar6631 = 0;
			UNITY_BRANCH 
			if( _Texture_5_Triplanar == 1 )
				ifLocalVar6631 = weightedAvg6422;
			else
				ifLocalVar6631 = temp_output_7001_0;
			fixed3 ifLocalVar7742 = 0;
			UNITY_BRANCH 
			if( _Texture_5_Normal_Index <= -1 )
				ifLocalVar7742 = EmptyNRM7829;
			else
				ifLocalVar7742 = ifLocalVar6631;
			fixed3 Normal_54456 = ifLocalVar7742;
			float4 texArray4493 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4485_0, _Texture_6_Normal_Index)  );
			float2 appendResult11_g1134 = (fixed2(texArray4493.w , texArray4493.y));
			float2 temp_output_4_0_g1134 = ( ( ( appendResult11_g1134 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_6_Normal_Power );
			float dotResult5_g1134 = dot( temp_output_4_0_g1134 , temp_output_4_0_g1134 );
			float temp_output_9_0_g1134 = sqrt( ( 1.0 - saturate( dotResult5_g1134 ) ) );
			float3 appendResult10_g1134 = (fixed3(temp_output_4_0_g1134.x , temp_output_4_0_g1134.y , temp_output_9_0_g1134));
			float3 temp_output_7004_0 = appendResult10_g1134;
			float4 texArray4486 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4472_0, _Texture_6_Normal_Index)  );
			float2 appendResult11_g1101 = (fixed2(texArray4486.w , texArray4486.y));
			float2 temp_output_4_0_g1101 = ( ( ( appendResult11_g1101 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_6_Normal_Power * -1 ) );
			float dotResult5_g1101 = dot( temp_output_4_0_g1101 , temp_output_4_0_g1101 );
			float temp_output_9_0_g1101 = sqrt( ( 1.0 - saturate( dotResult5_g1101 ) ) );
			float3 appendResult19_g1101 = (fixed3(temp_output_4_0_g1101.y , temp_output_4_0_g1101.x , temp_output_9_0_g1101));
			float3 appendResult6892 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray4491 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4483_0, _Texture_6_Normal_Index)  );
			float2 appendResult11_g1102 = (fixed2(texArray4491.w , texArray4491.y));
			float2 temp_output_4_0_g1102 = ( ( ( appendResult11_g1102 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_6_Normal_Power );
			float dotResult5_g1102 = dot( temp_output_4_0_g1102 , temp_output_4_0_g1102 );
			float temp_output_9_0_g1102 = sqrt( ( 1.0 - saturate( dotResult5_g1102 ) ) );
			float3 appendResult10_g1102 = (fixed3(temp_output_4_0_g1102.x , temp_output_4_0_g1102.y , temp_output_9_0_g1102));
			float3 appendResult6895 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6429 = BlendComponents91;
			float3 weightedAvg6429 = ( ( weightedBlendVar6429.x*( appendResult19_g1101 * appendResult6892 ) + weightedBlendVar6429.y*temp_output_7004_0 + weightedBlendVar6429.z*( appendResult10_g1102 * appendResult6895 ) )/( weightedBlendVar6429.x + weightedBlendVar6429.y + weightedBlendVar6429.z ) );
			fixed3 ifLocalVar6637 = 0;
			UNITY_BRANCH 
			if( _Texture_6_Triplanar == 1 )
				ifLocalVar6637 = weightedAvg6429;
			else
				ifLocalVar6637 = temp_output_7004_0;
			fixed3 ifLocalVar7746 = 0;
			UNITY_BRANCH 
			if( _Texture_6_Normal_Index <= -1 )
				ifLocalVar7746 = EmptyNRM7829;
			else
				ifLocalVar7746 = ifLocalVar6637;
			fixed3 Normal_64537 = ifLocalVar7746;
			float4 texArray4567 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4559_0, _Texture_7_Normal_Index)  );
			float2 appendResult11_g1127 = (fixed2(texArray4567.w , texArray4567.y));
			float2 temp_output_4_0_g1127 = ( ( ( appendResult11_g1127 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_7_Normal_Power );
			float dotResult5_g1127 = dot( temp_output_4_0_g1127 , temp_output_4_0_g1127 );
			float temp_output_9_0_g1127 = sqrt( ( 1.0 - saturate( dotResult5_g1127 ) ) );
			float3 appendResult10_g1127 = (fixed3(temp_output_4_0_g1127.x , temp_output_4_0_g1127.y , temp_output_9_0_g1127));
			float3 temp_output_7007_0 = appendResult10_g1127;
			float4 texArray4560 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4546_0, _Texture_7_Normal_Index)  );
			float2 appendResult11_g1097 = (fixed2(texArray4560.w , texArray4560.y));
			float2 temp_output_4_0_g1097 = ( ( ( appendResult11_g1097 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_7_Normal_Power * -1 ) );
			float dotResult5_g1097 = dot( temp_output_4_0_g1097 , temp_output_4_0_g1097 );
			float temp_output_9_0_g1097 = sqrt( ( 1.0 - saturate( dotResult5_g1097 ) ) );
			float3 appendResult19_g1097 = (fixed3(temp_output_4_0_g1097.y , temp_output_4_0_g1097.x , temp_output_9_0_g1097));
			float3 appendResult6899 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray4565 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4557_0, _Texture_7_Normal_Index)  );
			float2 appendResult11_g1100 = (fixed2(texArray4565.w , texArray4565.y));
			float2 temp_output_4_0_g1100 = ( ( ( appendResult11_g1100 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_7_Normal_Power );
			float dotResult5_g1100 = dot( temp_output_4_0_g1100 , temp_output_4_0_g1100 );
			float temp_output_9_0_g1100 = sqrt( ( 1.0 - saturate( dotResult5_g1100 ) ) );
			float3 appendResult10_g1100 = (fixed3(temp_output_4_0_g1100.x , temp_output_4_0_g1100.y , temp_output_9_0_g1100));
			float3 appendResult6902 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6436 = BlendComponents91;
			float3 weightedAvg6436 = ( ( weightedBlendVar6436.x*( appendResult19_g1097 * appendResult6899 ) + weightedBlendVar6436.y*temp_output_7007_0 + weightedBlendVar6436.z*( appendResult10_g1100 * appendResult6902 ) )/( weightedBlendVar6436.x + weightedBlendVar6436.y + weightedBlendVar6436.z ) );
			fixed3 ifLocalVar6643 = 0;
			UNITY_BRANCH 
			if( _Texture_7_Triplanar == 1 )
				ifLocalVar6643 = weightedAvg6436;
			else
				ifLocalVar6643 = temp_output_7007_0;
			fixed3 ifLocalVar7750 = 0;
			UNITY_BRANCH 
			if( _Texture_7_Normal_Index <= -1 )
				ifLocalVar7750 = EmptyNRM7829;
			else
				ifLocalVar7750 = ifLocalVar6643;
			fixed3 Normal_74615 = ifLocalVar7750;
			float4 texArray4641 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4633_0, _Texture_8_Normal_Index)  );
			float2 appendResult11_g1131 = (fixed2(texArray4641.w , texArray4641.y));
			float2 temp_output_4_0_g1131 = ( ( ( appendResult11_g1131 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_8_Normal_Power );
			float dotResult5_g1131 = dot( temp_output_4_0_g1131 , temp_output_4_0_g1131 );
			float temp_output_9_0_g1131 = sqrt( ( 1.0 - saturate( dotResult5_g1131 ) ) );
			float3 appendResult10_g1131 = (fixed3(temp_output_4_0_g1131.x , temp_output_4_0_g1131.y , temp_output_9_0_g1131));
			float3 temp_output_7010_0 = appendResult10_g1131;
			float4 texArray4634 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4620_0, _Texture_8_Normal_Index)  );
			float2 appendResult11_g1092 = (fixed2(texArray4634.w , texArray4634.y));
			float2 temp_output_4_0_g1092 = ( ( ( appendResult11_g1092 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_8_Normal_Power * -1 ) );
			float dotResult5_g1092 = dot( temp_output_4_0_g1092 , temp_output_4_0_g1092 );
			float temp_output_9_0_g1092 = sqrt( ( 1.0 - saturate( dotResult5_g1092 ) ) );
			float3 appendResult19_g1092 = (fixed3(temp_output_4_0_g1092.y , temp_output_4_0_g1092.x , temp_output_9_0_g1092));
			float3 appendResult6906 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray4639 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4631_0, _Texture_8_Normal_Index)  );
			float2 appendResult11_g1093 = (fixed2(texArray4639.w , texArray4639.y));
			float2 temp_output_4_0_g1093 = ( ( ( appendResult11_g1093 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_8_Normal_Power );
			float dotResult5_g1093 = dot( temp_output_4_0_g1093 , temp_output_4_0_g1093 );
			float temp_output_9_0_g1093 = sqrt( ( 1.0 - saturate( dotResult5_g1093 ) ) );
			float3 appendResult10_g1093 = (fixed3(temp_output_4_0_g1093.x , temp_output_4_0_g1093.y , temp_output_9_0_g1093));
			float3 appendResult6909 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6443 = BlendComponents91;
			float3 weightedAvg6443 = ( ( weightedBlendVar6443.x*( appendResult19_g1092 * appendResult6906 ) + weightedBlendVar6443.y*temp_output_7010_0 + weightedBlendVar6443.z*( appendResult10_g1093 * appendResult6909 ) )/( weightedBlendVar6443.x + weightedBlendVar6443.y + weightedBlendVar6443.z ) );
			fixed3 ifLocalVar6649 = 0;
			UNITY_BRANCH 
			if( _Texture_8_Triplanar == 1 )
				ifLocalVar6649 = weightedAvg6443;
			else
				ifLocalVar6649 = temp_output_7010_0;
			fixed3 ifLocalVar7755 = 0;
			UNITY_BRANCH 
			if( _Texture_8_Normal_Index <= -1 )
				ifLocalVar7755 = EmptyNRM7829;
			else
				ifLocalVar7755 = ifLocalVar6649;
			fixed3 Normal_84690 = ifLocalVar7755;
			float4 layeredBlendVar7815 = appendResult6524;
			float3 layeredBlend7815 = ( lerp( lerp( lerp( lerp( layeredBlend7813 , Normal_54456 , layeredBlendVar7815.x ) , Normal_64537 , layeredBlendVar7815.y ) , Normal_74615 , layeredBlendVar7815.z ) , Normal_84690 , layeredBlendVar7815.w ) );
			float4 texArray4788 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4712_0, _Texture_9_Normal_Index)  );
			float2 appendResult11_g1159 = (fixed2(texArray4788.w , texArray4788.y));
			float2 temp_output_4_0_g1159 = ( ( ( appendResult11_g1159 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_9_Normal_Power );
			float dotResult5_g1159 = dot( temp_output_4_0_g1159 , temp_output_4_0_g1159 );
			float temp_output_9_0_g1159 = sqrt( ( 1.0 - saturate( dotResult5_g1159 ) ) );
			float3 appendResult10_g1159 = (fixed3(temp_output_4_0_g1159.x , temp_output_4_0_g1159.y , temp_output_9_0_g1159));
			float3 temp_output_7034_0 = appendResult10_g1159;
			float4 texArray5285 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4706_0, _Texture_9_Normal_Index)  );
			float2 appendResult11_g1133 = (fixed2(texArray5285.w , texArray5285.y));
			float2 temp_output_4_0_g1133 = ( ( ( appendResult11_g1133 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_9_Normal_Power * -1 ) );
			float dotResult5_g1133 = dot( temp_output_4_0_g1133 , temp_output_4_0_g1133 );
			float temp_output_9_0_g1133 = sqrt( ( 1.0 - saturate( dotResult5_g1133 ) ) );
			float3 appendResult19_g1133 = (fixed3(temp_output_4_0_g1133.y , temp_output_4_0_g1133.x , temp_output_9_0_g1133));
			float3 appendResult6962 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray4783 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4761_0, _Texture_9_Normal_Index)  );
			float2 appendResult11_g1135 = (fixed2(texArray4783.w , texArray4783.y));
			float2 temp_output_4_0_g1135 = ( ( ( appendResult11_g1135 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_9_Normal_Power );
			float dotResult5_g1135 = dot( temp_output_4_0_g1135 , temp_output_4_0_g1135 );
			float temp_output_9_0_g1135 = sqrt( ( 1.0 - saturate( dotResult5_g1135 ) ) );
			float3 appendResult10_g1135 = (fixed3(temp_output_4_0_g1135.x , temp_output_4_0_g1135.y , temp_output_9_0_g1135));
			float3 appendResult6965 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6450 = BlendComponents91;
			float3 weightedAvg6450 = ( ( weightedBlendVar6450.x*( appendResult19_g1133 * appendResult6962 ) + weightedBlendVar6450.y*temp_output_7034_0 + weightedBlendVar6450.z*( appendResult10_g1135 * appendResult6965 ) )/( weightedBlendVar6450.x + weightedBlendVar6450.y + weightedBlendVar6450.z ) );
			fixed3 ifLocalVar6667 = 0;
			UNITY_BRANCH 
			if( _Texture_9_Triplanar == 1 )
				ifLocalVar6667 = weightedAvg6450;
			else
				ifLocalVar6667 = temp_output_7034_0;
			fixed3 ifLocalVar7722 = 0;
			UNITY_BRANCH 
			if( _Texture_9_Normal_Index <= -1 )
				ifLocalVar7722 = EmptyNRM7829;
			else
				ifLocalVar7722 = ifLocalVar6667;
			fixed3 Normal_94897 = ifLocalVar7722;
			float4 texArray4822 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4793_0, _Texture_10_Normal_Index)  );
			float2 appendResult11_g1158 = (fixed2(texArray4822.w , texArray4822.y));
			float2 temp_output_4_0_g1158 = ( ( ( appendResult11_g1158 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_10_Normal_Power );
			float dotResult5_g1158 = dot( temp_output_4_0_g1158 , temp_output_4_0_g1158 );
			float temp_output_9_0_g1158 = sqrt( ( 1.0 - saturate( dotResult5_g1158 ) ) );
			float3 appendResult10_g1158 = (fixed3(temp_output_4_0_g1158.x , temp_output_4_0_g1158.y , temp_output_9_0_g1158));
			float3 temp_output_7031_0 = appendResult10_g1158;
			float4 texArray4798 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4742_0, _Texture_10_Normal_Index)  );
			float2 appendResult11_g1129 = (fixed2(texArray4798.w , texArray4798.y));
			float2 temp_output_4_0_g1129 = ( ( ( appendResult11_g1129 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_10_Normal_Power * -1 ) );
			float dotResult5_g1129 = dot( temp_output_4_0_g1129 , temp_output_4_0_g1129 );
			float temp_output_9_0_g1129 = sqrt( ( 1.0 - saturate( dotResult5_g1129 ) ) );
			float3 appendResult19_g1129 = (fixed3(temp_output_4_0_g1129.y , temp_output_4_0_g1129.x , temp_output_9_0_g1129));
			float3 appendResult6955 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray4791 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4785_0, _Texture_10_Normal_Index)  );
			float2 appendResult11_g1125 = (fixed2(texArray4791.w , texArray4791.y));
			float2 temp_output_4_0_g1125 = ( ( ( appendResult11_g1125 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_10_Normal_Power );
			float dotResult5_g1125 = dot( temp_output_4_0_g1125 , temp_output_4_0_g1125 );
			float temp_output_9_0_g1125 = sqrt( ( 1.0 - saturate( dotResult5_g1125 ) ) );
			float3 appendResult10_g1125 = (fixed3(temp_output_4_0_g1125.x , temp_output_4_0_g1125.y , temp_output_9_0_g1125));
			float3 appendResult6958 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6457 = BlendComponents91;
			float3 weightedAvg6457 = ( ( weightedBlendVar6457.x*( appendResult19_g1129 * appendResult6955 ) + weightedBlendVar6457.y*temp_output_7031_0 + weightedBlendVar6457.z*( appendResult10_g1125 * appendResult6958 ) )/( weightedBlendVar6457.x + weightedBlendVar6457.y + weightedBlendVar6457.z ) );
			fixed3 ifLocalVar6661 = 0;
			UNITY_BRANCH 
			if( _Texture_10_Triplanar == 1 )
				ifLocalVar6661 = weightedAvg6457;
			else
				ifLocalVar6661 = temp_output_7031_0;
			fixed3 ifLocalVar7718 = 0;
			UNITY_BRANCH 
			if( _Texture_10_Normal_Index <= -1 )
				ifLocalVar7718 = EmptyNRM7829;
			else
				ifLocalVar7718 = ifLocalVar6661;
			fixed3 Normal_104918 = ifLocalVar7718;
			float4 texArray4856 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4817_0, _Texture_11_Normal_Index)  );
			float2 appendResult11_g1156 = (fixed2(texArray4856.w , texArray4856.y));
			float2 temp_output_4_0_g1156 = ( ( ( appendResult11_g1156 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_11_Normal_Power );
			float dotResult5_g1156 = dot( temp_output_4_0_g1156 , temp_output_4_0_g1156 );
			float temp_output_9_0_g1156 = sqrt( ( 1.0 - saturate( dotResult5_g1156 ) ) );
			float3 appendResult10_g1156 = (fixed3(temp_output_4_0_g1156.x , temp_output_4_0_g1156.y , temp_output_9_0_g1156));
			float3 temp_output_7028_0 = appendResult10_g1156;
			float4 texArray4828 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4748_0, _Texture_11_Normal_Index)  );
			float2 appendResult11_g1136 = (fixed2(texArray4828.w , texArray4828.y));
			float2 temp_output_4_0_g1136 = ( ( ( appendResult11_g1136 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_11_Normal_Power * -1 ) );
			float dotResult5_g1136 = dot( temp_output_4_0_g1136 , temp_output_4_0_g1136 );
			float temp_output_9_0_g1136 = sqrt( ( 1.0 - saturate( dotResult5_g1136 ) ) );
			float3 appendResult19_g1136 = (fixed3(temp_output_4_0_g1136.y , temp_output_4_0_g1136.x , temp_output_9_0_g1136));
			float3 appendResult6948 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray4811 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4795_0, _Texture_11_Normal_Index)  );
			float2 appendResult11_g1126 = (fixed2(texArray4811.w , texArray4811.y));
			float2 temp_output_4_0_g1126 = ( ( ( appendResult11_g1126 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_11_Normal_Power );
			float dotResult5_g1126 = dot( temp_output_4_0_g1126 , temp_output_4_0_g1126 );
			float temp_output_9_0_g1126 = sqrt( ( 1.0 - saturate( dotResult5_g1126 ) ) );
			float3 appendResult10_g1126 = (fixed3(temp_output_4_0_g1126.x , temp_output_4_0_g1126.y , temp_output_9_0_g1126));
			float3 appendResult6951 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6464 = BlendComponents91;
			float3 weightedAvg6464 = ( ( weightedBlendVar6464.x*( appendResult19_g1136 * appendResult6948 ) + weightedBlendVar6464.y*temp_output_7028_0 + weightedBlendVar6464.z*( appendResult10_g1126 * appendResult6951 ) )/( weightedBlendVar6464.x + weightedBlendVar6464.y + weightedBlendVar6464.z ) );
			fixed3 ifLocalVar6655 = 0;
			UNITY_BRANCH 
			if( _Texture_11_Triplanar == 1 )
				ifLocalVar6655 = weightedAvg6464;
			else
				ifLocalVar6655 = temp_output_7028_0;
			fixed3 ifLocalVar7712 = 0;
			UNITY_BRANCH 
			if( _Texture_11_Normal_Index <= -1 )
				ifLocalVar7712 = EmptyNRM7829;
			else
				ifLocalVar7712 = ifLocalVar6655;
			fixed3 Normal_114948 = ifLocalVar7712;
			float4 texArray4870 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4849_0, _Texture_12_Normal_Index)  );
			float2 appendResult11_g1157 = (fixed2(texArray4870.w , texArray4870.y));
			float2 temp_output_4_0_g1157 = ( ( ( appendResult11_g1157 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_12_Normal_Power );
			float dotResult5_g1157 = dot( temp_output_4_0_g1157 , temp_output_4_0_g1157 );
			float temp_output_9_0_g1157 = sqrt( ( 1.0 - saturate( dotResult5_g1157 ) ) );
			float3 appendResult10_g1157 = (fixed3(temp_output_4_0_g1157.x , temp_output_4_0_g1157.y , temp_output_9_0_g1157));
			float3 temp_output_7025_0 = appendResult10_g1157;
			float4 texArray4850 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4758_0, _Texture_12_Normal_Index)  );
			float2 appendResult11_g1130 = (fixed2(texArray4850.w , texArray4850.y));
			float2 temp_output_4_0_g1130 = ( ( ( appendResult11_g1130 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_12_Normal_Power * -1 ) );
			float dotResult5_g1130 = dot( temp_output_4_0_g1130 , temp_output_4_0_g1130 );
			float temp_output_9_0_g1130 = sqrt( ( 1.0 - saturate( dotResult5_g1130 ) ) );
			float3 appendResult19_g1130 = (fixed3(temp_output_4_0_g1130.y , temp_output_4_0_g1130.x , temp_output_9_0_g1130));
			float3 appendResult6941 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray4852 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_4830_0, _Texture_12_Normal_Index)  );
			float2 appendResult11_g1132 = (fixed2(texArray4852.w , texArray4852.y));
			float2 temp_output_4_0_g1132 = ( ( ( appendResult11_g1132 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_12_Normal_Power );
			float dotResult5_g1132 = dot( temp_output_4_0_g1132 , temp_output_4_0_g1132 );
			float temp_output_9_0_g1132 = sqrt( ( 1.0 - saturate( dotResult5_g1132 ) ) );
			float3 appendResult10_g1132 = (fixed3(temp_output_4_0_g1132.x , temp_output_4_0_g1132.y , temp_output_9_0_g1132));
			float3 appendResult6944 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6471 = BlendComponents91;
			float3 weightedAvg6471 = ( ( weightedBlendVar6471.x*( appendResult19_g1130 * appendResult6941 ) + weightedBlendVar6471.y*temp_output_7025_0 + weightedBlendVar6471.z*( appendResult10_g1132 * appendResult6944 ) )/( weightedBlendVar6471.x + weightedBlendVar6471.y + weightedBlendVar6471.z ) );
			fixed3 ifLocalVar6673 = 0;
			UNITY_BRANCH 
			if( _Texture_12_Triplanar == 1 )
				ifLocalVar6673 = weightedAvg6471;
			else
				ifLocalVar6673 = temp_output_7025_0;
			fixed3 ifLocalVar7709 = 0;
			UNITY_BRANCH 
			if( _Texture_12_Normal_Index <= -1 )
				ifLocalVar7709 = EmptyNRM7829;
			else
				ifLocalVar7709 = ifLocalVar6673;
			fixed3 Normal_124962 = ifLocalVar7709;
			float4 layeredBlendVar7816 = appendResult6529;
			float3 layeredBlend7816 = ( lerp( lerp( lerp( lerp( layeredBlend7815 , Normal_94897 , layeredBlendVar7816.x ) , Normal_104918 , layeredBlendVar7816.y ) , Normal_114948 , layeredBlendVar7816.z ) , Normal_124962 , layeredBlendVar7816.w ) );
			float4 texArray5120 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5037_0, _Texture_13_Normal_Index)  );
			float2 appendResult11_g1162 = (fixed2(texArray5120.w , texArray5120.y));
			float2 temp_output_4_0_g1162 = ( ( ( appendResult11_g1162 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_13_Normal_Power );
			float dotResult5_g1162 = dot( temp_output_4_0_g1162 , temp_output_4_0_g1162 );
			float temp_output_9_0_g1162 = sqrt( ( 1.0 - saturate( dotResult5_g1162 ) ) );
			float3 appendResult10_g1162 = (fixed3(temp_output_4_0_g1162.x , temp_output_4_0_g1162.y , temp_output_9_0_g1162));
			float3 temp_output_7022_0 = appendResult10_g1162;
			float4 texArray5127 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5025_0, _Texture_13_Normal_Index)  );
			float2 appendResult11_g1153 = (fixed2(texArray5127.w , texArray5127.y));
			float2 temp_output_4_0_g1153 = ( ( ( appendResult11_g1153 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_13_Normal_Power * -1 ) );
			float dotResult5_g1153 = dot( temp_output_4_0_g1153 , temp_output_4_0_g1153 );
			float temp_output_9_0_g1153 = sqrt( ( 1.0 - saturate( dotResult5_g1153 ) ) );
			float3 appendResult19_g1153 = (fixed3(temp_output_4_0_g1153.y , temp_output_4_0_g1153.x , temp_output_9_0_g1153));
			float3 appendResult6934 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray5109 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5035_0, _Texture_13_Normal_Index)  );
			float2 appendResult11_g1155 = (fixed2(texArray5109.w , texArray5109.y));
			float2 temp_output_4_0_g1155 = ( ( ( appendResult11_g1155 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_13_Normal_Power );
			float dotResult5_g1155 = dot( temp_output_4_0_g1155 , temp_output_4_0_g1155 );
			float temp_output_9_0_g1155 = sqrt( ( 1.0 - saturate( dotResult5_g1155 ) ) );
			float3 appendResult10_g1155 = (fixed3(temp_output_4_0_g1155.x , temp_output_4_0_g1155.y , temp_output_9_0_g1155));
			float3 appendResult6937 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6478 = BlendComponents91;
			float3 weightedAvg6478 = ( ( weightedBlendVar6478.x*( appendResult19_g1153 * appendResult6934 ) + weightedBlendVar6478.y*temp_output_7022_0 + weightedBlendVar6478.z*( appendResult10_g1155 * appendResult6937 ) )/( weightedBlendVar6478.x + weightedBlendVar6478.y + weightedBlendVar6478.z ) );
			fixed3 ifLocalVar6679 = 0;
			UNITY_BRANCH 
			if( _Texture_13_Triplanar == 1 )
				ifLocalVar6679 = weightedAvg6478;
			else
				ifLocalVar6679 = temp_output_7022_0;
			fixed3 ifLocalVar7705 = 0;
			UNITY_BRANCH 
			if( _Texture_13_Normal_Index <= -1 )
				ifLocalVar7705 = EmptyNRM7829;
			else
				ifLocalVar7705 = ifLocalVar6679;
			fixed3 Normal_135059 = ifLocalVar7705;
			float4 texArray5178 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5022_0, _Texture_14_Normal_Index)  );
			float2 appendResult11_g1163 = (fixed2(texArray5178.w , texArray5178.y));
			float2 temp_output_4_0_g1163 = ( ( ( appendResult11_g1163 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_14_Normal_Power );
			float dotResult5_g1163 = dot( temp_output_4_0_g1163 , temp_output_4_0_g1163 );
			float temp_output_9_0_g1163 = sqrt( ( 1.0 - saturate( dotResult5_g1163 ) ) );
			float3 appendResult10_g1163 = (fixed3(temp_output_4_0_g1163.x , temp_output_4_0_g1163.y , temp_output_9_0_g1163));
			float3 temp_output_7019_0 = appendResult10_g1163;
			float4 texArray5017 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5009_0, _Texture_14_Normal_Index)  );
			float2 appendResult11_g1151 = (fixed2(texArray5017.w , texArray5017.y));
			float2 temp_output_4_0_g1151 = ( ( ( appendResult11_g1151 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_14_Normal_Power * -1 ) );
			float dotResult5_g1151 = dot( temp_output_4_0_g1151 , temp_output_4_0_g1151 );
			float temp_output_9_0_g1151 = sqrt( ( 1.0 - saturate( dotResult5_g1151 ) ) );
			float3 appendResult19_g1151 = (fixed3(temp_output_4_0_g1151.y , temp_output_4_0_g1151.x , temp_output_9_0_g1151));
			float3 appendResult6927 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray5170 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5010_0, _Texture_14_Normal_Index)  );
			float2 appendResult11_g1154 = (fixed2(texArray5170.w , texArray5170.y));
			float2 temp_output_4_0_g1154 = ( ( ( appendResult11_g1154 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_14_Normal_Power );
			float dotResult5_g1154 = dot( temp_output_4_0_g1154 , temp_output_4_0_g1154 );
			float temp_output_9_0_g1154 = sqrt( ( 1.0 - saturate( dotResult5_g1154 ) ) );
			float3 appendResult10_g1154 = (fixed3(temp_output_4_0_g1154.x , temp_output_4_0_g1154.y , temp_output_9_0_g1154));
			float3 appendResult6930 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6485 = BlendComponents91;
			float3 weightedAvg6485 = ( ( weightedBlendVar6485.x*( appendResult19_g1151 * appendResult6927 ) + weightedBlendVar6485.y*temp_output_7019_0 + weightedBlendVar6485.z*( appendResult10_g1154 * appendResult6930 ) )/( weightedBlendVar6485.x + weightedBlendVar6485.y + weightedBlendVar6485.z ) );
			fixed3 ifLocalVar6685 = 0;
			UNITY_BRANCH 
			if( _Texture_14_Triplanar == 1 )
				ifLocalVar6685 = weightedAvg6485;
			else
				ifLocalVar6685 = temp_output_7019_0;
			fixed3 ifLocalVar7701 = 0;
			UNITY_BRANCH 
			if( _Texture_14_Normal_Index <= -1 )
				ifLocalVar7701 = EmptyNRM7829;
			else
				ifLocalVar7701 = ifLocalVar6685;
			fixed3 Normal_145196 = ifLocalVar7701;
			float4 texArray5246 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5226_0, _Texture_15_Normal_Index)  );
			float2 appendResult11_g1161 = (fixed2(texArray5246.w , texArray5246.y));
			float2 temp_output_4_0_g1161 = ( ( ( appendResult11_g1161 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_15_Normal_Power );
			float dotResult5_g1161 = dot( temp_output_4_0_g1161 , temp_output_4_0_g1161 );
			float temp_output_9_0_g1161 = sqrt( ( 1.0 - saturate( dotResult5_g1161 ) ) );
			float3 appendResult10_g1161 = (fixed3(temp_output_4_0_g1161.x , temp_output_4_0_g1161.y , temp_output_9_0_g1161));
			float3 temp_output_7016_0 = appendResult10_g1161;
			float4 texArray5227 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5213_0, _Texture_15_Normal_Index)  );
			float2 appendResult11_g1149 = (fixed2(texArray5227.w , texArray5227.y));
			float2 temp_output_4_0_g1149 = ( ( ( appendResult11_g1149 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_15_Normal_Power * -1 ) );
			float dotResult5_g1149 = dot( temp_output_4_0_g1149 , temp_output_4_0_g1149 );
			float temp_output_9_0_g1149 = sqrt( ( 1.0 - saturate( dotResult5_g1149 ) ) );
			float3 appendResult19_g1149 = (fixed3(temp_output_4_0_g1149.y , temp_output_4_0_g1149.x , temp_output_9_0_g1149));
			float3 appendResult6920 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray5250 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5224_0, _Texture_15_Normal_Index)  );
			float2 appendResult11_g1150 = (fixed2(texArray5250.w , texArray5250.y));
			float2 temp_output_4_0_g1150 = ( ( ( appendResult11_g1150 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_15_Normal_Power );
			float dotResult5_g1150 = dot( temp_output_4_0_g1150 , temp_output_4_0_g1150 );
			float temp_output_9_0_g1150 = sqrt( ( 1.0 - saturate( dotResult5_g1150 ) ) );
			float3 appendResult10_g1150 = (fixed3(temp_output_4_0_g1150.x , temp_output_4_0_g1150.y , temp_output_9_0_g1150));
			float3 appendResult6923 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6492 = BlendComponents91;
			float3 weightedAvg6492 = ( ( weightedBlendVar6492.x*( appendResult19_g1149 * appendResult6920 ) + weightedBlendVar6492.y*temp_output_7016_0 + weightedBlendVar6492.z*( appendResult10_g1150 * appendResult6923 ) )/( weightedBlendVar6492.x + weightedBlendVar6492.y + weightedBlendVar6492.z ) );
			fixed3 ifLocalVar6691 = 0;
			UNITY_BRANCH 
			if( _Texture_15_Triplanar == 1 )
				ifLocalVar6691 = weightedAvg6492;
			else
				ifLocalVar6691 = temp_output_7016_0;
			fixed3 ifLocalVar7697 = 0;
			UNITY_BRANCH 
			if( _Texture_15_Normal_Index <= -1 )
				ifLocalVar7697 = EmptyNRM7829;
			else
				ifLocalVar7697 = ifLocalVar6691;
			fixed3 Normal_155280 = ifLocalVar7697;
			float4 texArray5099 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5083_0, _Texture_16_Normal_Index)  );
			float2 appendResult11_g1160 = (fixed2(texArray5099.w , texArray5099.y));
			float2 temp_output_4_0_g1160 = ( ( ( appendResult11_g1160 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_16_Normal_Power );
			float dotResult5_g1160 = dot( temp_output_4_0_g1160 , temp_output_4_0_g1160 );
			float temp_output_9_0_g1160 = sqrt( ( 1.0 - saturate( dotResult5_g1160 ) ) );
			float3 appendResult10_g1160 = (fixed3(temp_output_4_0_g1160.x , temp_output_4_0_g1160.y , temp_output_9_0_g1160));
			float3 temp_output_7013_0 = appendResult10_g1160;
			float4 texArray5082 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5079_0, _Texture_16_Normal_Index)  );
			float2 appendResult11_g1152 = (fixed2(texArray5082.w , texArray5082.y));
			float2 temp_output_4_0_g1152 = ( ( ( appendResult11_g1152 * float2( 2,2 ) ) + float2( -1,-1 ) ) * ( _Texture_16_Normal_Power * -1 ) );
			float dotResult5_g1152 = dot( temp_output_4_0_g1152 , temp_output_4_0_g1152 );
			float temp_output_9_0_g1152 = sqrt( ( 1.0 - saturate( dotResult5_g1152 ) ) );
			float3 appendResult19_g1152 = (fixed3(temp_output_4_0_g1152.y , temp_output_4_0_g1152.x , temp_output_9_0_g1152));
			float3 appendResult6913 = (fixed3(ase_worldNormal.x , -1 , 1));
			float4 texArray4731 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_5085_0, _Texture_16_Normal_Index)  );
			float2 appendResult11_g1148 = (fixed2(texArray4731.w , texArray4731.y));
			float2 temp_output_4_0_g1148 = ( ( ( appendResult11_g1148 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Texture_16_Normal_Power );
			float dotResult5_g1148 = dot( temp_output_4_0_g1148 , temp_output_4_0_g1148 );
			float temp_output_9_0_g1148 = sqrt( ( 1.0 - saturate( dotResult5_g1148 ) ) );
			float3 appendResult10_g1148 = (fixed3(temp_output_4_0_g1148.x , temp_output_4_0_g1148.y , temp_output_9_0_g1148));
			float3 appendResult6916 = (fixed3(1 , ( ase_worldNormal.z * -1 ) , 1));
			float3 weightedBlendVar6499 = BlendComponents91;
			float3 weightedAvg6499 = ( ( weightedBlendVar6499.x*( appendResult19_g1152 * appendResult6913 ) + weightedBlendVar6499.y*temp_output_7013_0 + weightedBlendVar6499.z*( appendResult10_g1148 * appendResult6916 ) )/( weightedBlendVar6499.x + weightedBlendVar6499.y + weightedBlendVar6499.z ) );
			fixed3 ifLocalVar6697 = 0;
			UNITY_BRANCH 
			if( _Texture_16_Triplanar == 1 )
				ifLocalVar6697 = weightedAvg6499;
			else
				ifLocalVar6697 = temp_output_7013_0;
			fixed3 ifLocalVar7692 = 0;
			UNITY_BRANCH 
			if( _Texture_16_Normal_Index <= -1 )
				ifLocalVar7692 = EmptyNRM7829;
			else
				ifLocalVar7692 = ifLocalVar6697;
			fixed3 Normal_164696 = ifLocalVar7692;
			float4 layeredBlendVar7817 = appendResult6533;
			float3 layeredBlend7817 = ( lerp( lerp( lerp( lerp( layeredBlend7816 , Normal_135059 , layeredBlendVar7817.x ) , Normal_145196 , layeredBlendVar7817.y ) , Normal_155280 , layeredBlendVar7817.z ) , Normal_164696 , layeredBlendVar7817.w ) );
			float3 normalizeResult3900 = normalize( layeredBlend7817 );
			float4 texArray4382 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Normal, float3(temp_output_3749_0, _Texture_Snow_Normal_Index)  );
			float2 appendResult11_g1164 = (fixed2(texArray4382.w , texArray4382.y));
			float2 temp_output_4_0_g1164 = ( ( ( appendResult11_g1164 * float2( 2,2 ) ) + float2( -1,-1 ) ) * _Snow_Normal_Scale );
			float dotResult5_g1164 = dot( temp_output_4_0_g1164 , temp_output_4_0_g1164 );
			float temp_output_9_0_g1164 = sqrt( ( 1.0 - saturate( dotResult5_g1164 ) ) );
			float3 appendResult10_g1164 = (fixed3(temp_output_4_0_g1164.x , temp_output_4_0_g1164.y , temp_output_9_0_g1164));
			fixed3 ifLocalVar7819 = 0;
			UNITY_BRANCH 
			if( _Texture_Snow_Normal_Index <= 0 )
				ifLocalVar7819 = EmptyNRM7829;
			else
				ifLocalVar7819 = appendResult10_g1164;
			float3 lerpResult6554 = lerp( normalizeResult3900 , ifLocalVar7819 , _Snow_Blend_Normal);
			float3 lerpResult3741 = lerp( normalizeResult3900 , lerpResult6554 , HeightMask6539);
			float3 lerpResult939 = lerp( lerpResult3741 , UnpackScaleNormal( tex2D( _Global_Normal_Map, uv_TexCoord8031 ) ,_Global_Normalmap_Power ) , UVmixDistance636);
			float3 normalizeResult3901 = normalize( lerpResult939 );
			float3 temp_output_4100_0 = BlendNormals( lerpResult6503 , normalizeResult3901 );
			o.Normal = temp_output_4100_0;
			float lerpResult8035 = lerp( _Global_Color_Map_Close_Power , _Global_Color_Map_Far_Power , UVmixDistance636);
			fixed4 tex2DNode8036 = tex2D( _Global_Color_Map, ( _Global_Color_Map_Offset + ( _Global_Color_Map_Scale * uv_TexCoord8031 ) ) );
			float clampResult8116 = clamp( ( tex2DNode8036.a + ( 1.0 - _Global_Color_Opacity_Power ) ) , 0 , 1 );
			float2 appendResult8038 = (fixed2(1 , ( lerpResult8035 * clampResult8116 )));
			float4 texArray3292 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3275_0, _Texture_1_Albedo_Index)  );
			float4 texArray3293 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3298_0, _Texture_1_Albedo_Index)  );
			float4 lerpResult6608 = lerp( texArray3292 , texArray3293 , UVmixDistance636);
			float4 texArray3287 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3279_0, _Texture_1_Albedo_Index)  );
			float4 texArray3294 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3277_0, _Texture_1_Albedo_Index)  );
			float3 weightedBlendVar6389 = BlendComponents91;
			float4 weightedAvg6389 = ( ( weightedBlendVar6389.x*texArray3287 + weightedBlendVar6389.y*texArray3292 + weightedBlendVar6389.z*texArray3294 )/( weightedBlendVar6389.x + weightedBlendVar6389.y + weightedBlendVar6389.z ) );
			float4 texArray3291 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3296_0, _Texture_1_Albedo_Index)  );
			float4 texArray3295 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3297_0, _Texture_1_Albedo_Index)  );
			float3 weightedBlendVar6390 = BlendComponents91;
			float4 weightedAvg6390 = ( ( weightedBlendVar6390.x*texArray3291 + weightedBlendVar6390.y*texArray3293 + weightedBlendVar6390.z*texArray3295 )/( weightedBlendVar6390.x + weightedBlendVar6390.y + weightedBlendVar6390.z ) );
			float4 lerpResult1767 = lerp( weightedAvg6389 , weightedAvg6390 , UVmixDistance636);
			fixed4 ifLocalVar6607 = 0;
			UNITY_BRANCH 
			if( _Texture_1_Triplanar == 1 )
				ifLocalVar6607 = lerpResult1767;
			else
				ifLocalVar6607 = lerpResult6608;
			fixed4 ifLocalVar7725 = 0;
			UNITY_BRANCH 
			if( _Texture_1_Albedo_Index > -1 )
				ifLocalVar7725 = ( ifLocalVar6607 * _Texture_1_Color );
			fixed4 Texture_1_Final950 = ifLocalVar7725;
			float4 texArray3338 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3343_0, _Texture_2_Albedo_Index)  );
			float4 texArray3339 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3345_0, _Texture_2_Albedo_Index)  );
			float4 lerpResult6617 = lerp( texArray3338 , texArray3339 , UVmixDistance636);
			float4 texArray3355 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3344_0, _Texture_2_Albedo_Index)  );
			float4 texArray3341 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3379_0, _Texture_2_Albedo_Index)  );
			float3 weightedBlendVar6396 = BlendComponents91;
			float4 weightedAvg6396 = ( ( weightedBlendVar6396.x*texArray3355 + weightedBlendVar6396.y*texArray3338 + weightedBlendVar6396.z*texArray3341 )/( weightedBlendVar6396.x + weightedBlendVar6396.y + weightedBlendVar6396.z ) );
			float4 texArray3356 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3346_0, _Texture_2_Albedo_Index)  );
			float4 texArray3342 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3352_0, _Texture_2_Albedo_Index)  );
			float3 weightedBlendVar6398 = BlendComponents91;
			float4 weightedAvg6398 = ( ( weightedBlendVar6398.x*texArray3356 + weightedBlendVar6398.y*texArray3339 + weightedBlendVar6398.z*texArray3342 )/( weightedBlendVar6398.x + weightedBlendVar6398.y + weightedBlendVar6398.z ) );
			float4 lerpResult3333 = lerp( weightedAvg6396 , weightedAvg6398 , UVmixDistance636);
			fixed4 ifLocalVar6612 = 0;
			UNITY_BRANCH 
			if( _Texture_2_Triplanar == 1 )
				ifLocalVar6612 = lerpResult3333;
			else
				ifLocalVar6612 = lerpResult6617;
			fixed4 ifLocalVar7729 = 0;
			UNITY_BRANCH 
			if( _Texture_2_Albedo_Index > -1 )
				ifLocalVar7729 = ( ifLocalVar6612 * _Texture_2_Color );
			fixed4 Texture_2_Final3385 = ifLocalVar7729;
			float4 texArray3405 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3410_0, _Texture_3_Albedo_Index)  );
			float4 texArray3406 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3412_0, _Texture_3_Albedo_Index)  );
			float4 lerpResult6623 = lerp( texArray3405 , texArray3406 , UVmixDistance636);
			float4 texArray3419 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3411_0, _Texture_3_Albedo_Index)  );
			float4 texArray3408 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3441_0, _Texture_3_Albedo_Index)  );
			float3 weightedBlendVar6403 = BlendComponents91;
			float4 weightedAvg6403 = ( ( weightedBlendVar6403.x*texArray3419 + weightedBlendVar6403.y*texArray3405 + weightedBlendVar6403.z*texArray3408 )/( weightedBlendVar6403.x + weightedBlendVar6403.y + weightedBlendVar6403.z ) );
			float4 texArray3420 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3413_0, _Texture_3_Albedo_Index)  );
			float4 texArray3409 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3418_0, _Texture_3_Albedo_Index)  );
			float3 weightedBlendVar6405 = BlendComponents91;
			float4 weightedAvg6405 = ( ( weightedBlendVar6405.x*texArray3420 + weightedBlendVar6405.y*texArray3406 + weightedBlendVar6405.z*texArray3409 )/( weightedBlendVar6405.x + weightedBlendVar6405.y + weightedBlendVar6405.z ) );
			float4 lerpResult3400 = lerp( weightedAvg6403 , weightedAvg6405 , UVmixDistance636);
			fixed4 ifLocalVar6618 = 0;
			UNITY_BRANCH 
			if( _Texture_3_Triplanar == 1 )
				ifLocalVar6618 = lerpResult3400;
			else
				ifLocalVar6618 = lerpResult6623;
			fixed4 ifLocalVar7733 = 0;
			UNITY_BRANCH 
			if( _Texture_3_Albedo_Index > -1 )
				ifLocalVar7733 = ( ifLocalVar6618 * _Texture_3_Color );
			fixed4 Texture_3_Final3451 = ifLocalVar7733;
			float4 texArray3472 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3477_0, _Texture_4_Albedo_Index)  );
			float4 texArray3473 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3479_0, _Texture_4_Albedo_Index)  );
			float4 lerpResult6629 = lerp( texArray3472 , texArray3473 , UVmixDistance636);
			float4 texArray3486 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3478_0, _Texture_4_Albedo_Index)  );
			float4 texArray3475 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3508_0, _Texture_4_Albedo_Index)  );
			float3 weightedBlendVar6410 = BlendComponents91;
			float4 weightedAvg6410 = ( ( weightedBlendVar6410.x*texArray3486 + weightedBlendVar6410.y*texArray3472 + weightedBlendVar6410.z*texArray3475 )/( weightedBlendVar6410.x + weightedBlendVar6410.y + weightedBlendVar6410.z ) );
			float4 texArray3487 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3480_0, _Texture_4_Albedo_Index)  );
			float4 texArray3476 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3485_0, _Texture_4_Albedo_Index)  );
			float3 weightedBlendVar6412 = BlendComponents91;
			float4 weightedAvg6412 = ( ( weightedBlendVar6412.x*texArray3487 + weightedBlendVar6412.y*texArray3473 + weightedBlendVar6412.z*texArray3476 )/( weightedBlendVar6412.x + weightedBlendVar6412.y + weightedBlendVar6412.z ) );
			float4 lerpResult3467 = lerp( weightedAvg6410 , weightedAvg6412 , UVmixDistance636);
			fixed4 ifLocalVar6624 = 0;
			UNITY_BRANCH 
			if( _Texture_4_Triplanar == 1 )
				ifLocalVar6624 = lerpResult3467;
			else
				ifLocalVar6624 = lerpResult6629;
			fixed4 ifLocalVar7737 = 0;
			UNITY_BRANCH 
			if( _Texture_4_Albedo_Index > -1 )
				ifLocalVar7737 = ( ifLocalVar6624 * _Texture_4_Color );
			fixed4 Texture_4_Final3518 = ifLocalVar7737;
			float4 layeredBlendVar6512 = appendResult6517;
			float4 layeredBlend6512 = ( lerp( lerp( lerp( lerp( float4( 0,0,0,0 ) , Texture_1_Final950 , layeredBlendVar6512.x ) , Texture_2_Final3385 , layeredBlendVar6512.y ) , Texture_3_Final3451 , layeredBlendVar6512.z ) , Texture_4_Final3518 , layeredBlendVar6512.w ) );
			float4 texArray4450 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4416_0, _Texture_5_Albedo_Index)  );
			float4 texArray4445 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4440_0, _Texture_5_Albedo_Index)  );
			float4 lerpResult6635 = lerp( texArray4450 , texArray4445 , UVmixDistance636);
			float4 texArray4442 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4400_0, _Texture_5_Albedo_Index)  );
			float4 texArray4443 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4413_0, _Texture_5_Albedo_Index)  );
			float3 weightedBlendVar6417 = BlendComponents91;
			float4 weightedAvg6417 = ( ( weightedBlendVar6417.x*texArray4442 + weightedBlendVar6417.y*texArray4450 + weightedBlendVar6417.z*texArray4443 )/( weightedBlendVar6417.x + weightedBlendVar6417.y + weightedBlendVar6417.z ) );
			float4 texArray4444 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4436_0, _Texture_5_Albedo_Index)  );
			float4 texArray4439 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4437_0, _Texture_5_Albedo_Index)  );
			float3 weightedBlendVar6419 = BlendComponents91;
			float4 weightedAvg6419 = ( ( weightedBlendVar6419.x*texArray4444 + weightedBlendVar6419.y*texArray4445 + weightedBlendVar6419.z*texArray4439 )/( weightedBlendVar6419.x + weightedBlendVar6419.y + weightedBlendVar6419.z ) );
			float4 lerpResult4466 = lerp( weightedAvg6417 , weightedAvg6419 , UVmixDistance636);
			fixed4 ifLocalVar6630 = 0;
			UNITY_BRANCH 
			if( _Texture_5_Triplanar == 1 )
				ifLocalVar6630 = lerpResult4466;
			else
				ifLocalVar6630 = lerpResult6635;
			fixed4 ifLocalVar7741 = 0;
			UNITY_BRANCH 
			if( _Texture_5_Albedo_Index > -1 )
				ifLocalVar7741 = ( ifLocalVar6630 * _Texture_5_Color );
			fixed4 Texture_5_Final4396 = ifLocalVar7741;
			float4 texArray4517 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4485_0, _Texture_6_Albedo_Index)  );
			float4 texArray4512 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4507_0, _Texture_6_Albedo_Index)  );
			float4 lerpResult6641 = lerp( texArray4517 , texArray4512 , UVmixDistance636);
			float4 texArray4509 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4472_0, _Texture_6_Albedo_Index)  );
			float4 texArray4510 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4483_0, _Texture_6_Albedo_Index)  );
			float3 weightedBlendVar6424 = BlendComponents91;
			float4 weightedAvg6424 = ( ( weightedBlendVar6424.x*texArray4509 + weightedBlendVar6424.y*texArray4517 + weightedBlendVar6424.z*texArray4510 )/( weightedBlendVar6424.x + weightedBlendVar6424.y + weightedBlendVar6424.z ) );
			float4 texArray4511 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4503_0, _Texture_6_Albedo_Index)  );
			float4 texArray4506 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4504_0, _Texture_6_Albedo_Index)  );
			float3 weightedBlendVar6426 = BlendComponents91;
			float4 weightedAvg6426 = ( ( weightedBlendVar6426.x*texArray4511 + weightedBlendVar6426.y*texArray4512 + weightedBlendVar6426.z*texArray4506 )/( weightedBlendVar6426.x + weightedBlendVar6426.y + weightedBlendVar6426.z ) );
			float4 lerpResult4532 = lerp( weightedAvg6424 , weightedAvg6426 , UVmixDistance636);
			fixed4 ifLocalVar6636 = 0;
			UNITY_BRANCH 
			if( _Texture_6_Triplanar == 1 )
				ifLocalVar6636 = lerpResult4532;
			else
				ifLocalVar6636 = lerpResult6641;
			fixed4 ifLocalVar7745 = 0;
			UNITY_BRANCH 
			if( _Texture_6_Albedo_Index > -1 )
				ifLocalVar7745 = ( ifLocalVar6636 * _Texture_6_Color );
			fixed4 Texture_6_Final4536 = ifLocalVar7745;
			float4 texArray4591 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4559_0, _Texture_7_Albedo_Index)  );
			float4 texArray4586 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4581_0, _Texture_7_Albedo_Index)  );
			float4 lerpResult6647 = lerp( texArray4591 , texArray4586 , UVmixDistance636);
			float4 texArray4583 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4546_0, _Texture_7_Albedo_Index)  );
			float4 texArray4584 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4557_0, _Texture_7_Albedo_Index)  );
			float3 weightedBlendVar6431 = BlendComponents91;
			float4 weightedAvg6431 = ( ( weightedBlendVar6431.x*texArray4583 + weightedBlendVar6431.y*texArray4591 + weightedBlendVar6431.z*texArray4584 )/( weightedBlendVar6431.x + weightedBlendVar6431.y + weightedBlendVar6431.z ) );
			float4 texArray4585 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4577_0, _Texture_7_Albedo_Index)  );
			float4 texArray4580 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4578_0, _Texture_7_Albedo_Index)  );
			float3 weightedBlendVar6433 = BlendComponents91;
			float4 weightedAvg6433 = ( ( weightedBlendVar6433.x*texArray4585 + weightedBlendVar6433.y*texArray4586 + weightedBlendVar6433.z*texArray4580 )/( weightedBlendVar6433.x + weightedBlendVar6433.y + weightedBlendVar6433.z ) );
			float4 lerpResult4606 = lerp( weightedAvg6431 , weightedAvg6433 , UVmixDistance636);
			fixed4 ifLocalVar6642 = 0;
			UNITY_BRANCH 
			if( _Texture_7_Triplanar == 1 )
				ifLocalVar6642 = lerpResult4606;
			else
				ifLocalVar6642 = lerpResult6647;
			fixed4 ifLocalVar7749 = 0;
			UNITY_BRANCH 
			if( _Texture_7_Albedo_Index > -1 )
				ifLocalVar7749 = ( ifLocalVar6642 * _Texture_7_Color );
			fixed4 Texture_7_Final4614 = ifLocalVar7749;
			float4 texArray4665 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4633_0, _Texture_8_Albedo_Index)  );
			float4 texArray4660 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4655_0, _Texture_8_Albedo_Index)  );
			float4 lerpResult6653 = lerp( texArray4665 , texArray4660 , UVmixDistance636);
			float4 texArray4657 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4620_0, _Texture_8_Albedo_Index)  );
			float4 texArray4658 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4631_0, _Texture_8_Albedo_Index)  );
			float3 weightedBlendVar6438 = BlendComponents91;
			float4 weightedAvg6438 = ( ( weightedBlendVar6438.x*texArray4657 + weightedBlendVar6438.y*texArray4665 + weightedBlendVar6438.z*texArray4658 )/( weightedBlendVar6438.x + weightedBlendVar6438.y + weightedBlendVar6438.z ) );
			float4 texArray4659 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4651_0, _Texture_8_Albedo_Index)  );
			float4 texArray4654 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4652_0, _Texture_8_Albedo_Index)  );
			float3 weightedBlendVar6440 = BlendComponents91;
			float4 weightedAvg6440 = ( ( weightedBlendVar6440.x*texArray4659 + weightedBlendVar6440.y*texArray4660 + weightedBlendVar6440.z*texArray4654 )/( weightedBlendVar6440.x + weightedBlendVar6440.y + weightedBlendVar6440.z ) );
			float4 lerpResult4680 = lerp( weightedAvg6438 , weightedAvg6440 , UVmixDistance636);
			fixed4 ifLocalVar6648 = 0;
			UNITY_BRANCH 
			if( _Texture_8_Triplanar == 1 )
				ifLocalVar6648 = lerpResult4680;
			else
				ifLocalVar6648 = lerpResult6653;
			fixed4 ifLocalVar7754 = 0;
			UNITY_BRANCH 
			if( _Texture_8_Albedo_Index > -1 )
				ifLocalVar7754 = ( ifLocalVar6648 * _Texture_8_Color );
			fixed4 Texture_8_Final4689 = ifLocalVar7754;
			float4 layeredBlendVar6520 = appendResult6524;
			float4 layeredBlend6520 = ( lerp( lerp( lerp( lerp( layeredBlend6512 , Texture_5_Final4396 , layeredBlendVar6520.x ) , Texture_6_Final4536 , layeredBlendVar6520.y ) , Texture_7_Final4614 , layeredBlendVar6520.z ) , Texture_8_Final4689 , layeredBlendVar6520.w ) );
			float4 texArray4723 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4712_0, _Texture_9_Albedo_Index)  );
			float4 texArray4889 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4721_0, _Texture_9_Albedo_Index)  );
			float4 lerpResult6671 = lerp( texArray4723 , texArray4889 , UVmixDistance636);
			float4 texArray5286 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4706_0, _Texture_9_Albedo_Index)  );
			float4 texArray4858 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4761_0, _Texture_9_Albedo_Index)  );
			float3 weightedBlendVar6445 = BlendComponents91;
			float4 weightedAvg6445 = ( ( weightedBlendVar6445.x*texArray5286 + weightedBlendVar6445.y*texArray4723 + weightedBlendVar6445.z*texArray4858 )/( weightedBlendVar6445.x + weightedBlendVar6445.y + weightedBlendVar6445.z ) );
			float4 texArray4719 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4718_0, _Texture_9_Albedo_Index)  );
			float4 texArray4865 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4844_0, _Texture_9_Albedo_Index)  );
			float3 weightedBlendVar6447 = BlendComponents91;
			float4 weightedAvg6447 = ( ( weightedBlendVar6447.x*texArray4719 + weightedBlendVar6447.y*texArray4889 + weightedBlendVar6447.z*texArray4865 )/( weightedBlendVar6447.x + weightedBlendVar6447.y + weightedBlendVar6447.z ) );
			float4 lerpResult4976 = lerp( weightedAvg6445 , weightedAvg6447 , UVmixDistance636);
			fixed4 ifLocalVar6666 = 0;
			UNITY_BRANCH 
			if( _Texture_9_Triplanar == 1 )
				ifLocalVar6666 = lerpResult4976;
			else
				ifLocalVar6666 = lerpResult6671;
			fixed4 ifLocalVar7724 = 0;
			UNITY_BRANCH 
			if( _Texture_9_Albedo_Index > -1 )
				ifLocalVar7724 = ( ifLocalVar6666 * _Texture_9_Color );
			fixed4 Texture_9_Final4987 = ifLocalVar7724;
			float4 texArray4899 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4793_0, _Texture_10_Albedo_Index)  );
			float4 texArray4913 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4879_0, _Texture_10_Albedo_Index)  );
			float4 lerpResult6665 = lerp( texArray4899 , texArray4913 , UVmixDistance636);
			float4 texArray4886 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4742_0, _Texture_10_Albedo_Index)  );
			float4 texArray4877 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4785_0, _Texture_10_Albedo_Index)  );
			float3 weightedBlendVar6452 = BlendComponents91;
			float4 weightedAvg6452 = ( ( weightedBlendVar6452.x*texArray4886 + weightedBlendVar6452.y*texArray4899 + weightedBlendVar6452.z*texArray4877 )/( weightedBlendVar6452.x + weightedBlendVar6452.y + weightedBlendVar6452.z ) );
			float4 texArray4894 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4873_0, _Texture_10_Albedo_Index)  );
			float4 texArray4878 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4859_0, _Texture_10_Albedo_Index)  );
			float3 weightedBlendVar6454 = BlendComponents91;
			float4 weightedAvg6454 = ( ( weightedBlendVar6454.x*texArray4894 + weightedBlendVar6454.y*texArray4913 + weightedBlendVar6454.z*texArray4878 )/( weightedBlendVar6454.x + weightedBlendVar6454.y + weightedBlendVar6454.z ) );
			float4 lerpResult4983 = lerp( weightedAvg6452 , weightedAvg6454 , UVmixDistance636);
			fixed4 ifLocalVar6660 = 0;
			UNITY_BRANCH 
			if( _Texture_10_Triplanar == 1 )
				ifLocalVar6660 = lerpResult4983;
			else
				ifLocalVar6660 = lerpResult6665;
			fixed4 ifLocalVar7719 = 0;
			UNITY_BRANCH 
			if( _Texture_10_Albedo_Index > -1 )
				ifLocalVar7719 = ( ifLocalVar6660 * _Texture_10_Color );
			fixed4 Texture_10_Final4994 = ifLocalVar7719;
			float4 texArray4928 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4817_0, _Texture_11_Albedo_Index)  );
			float4 texArray4923 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4904_0, _Texture_11_Albedo_Index)  );
			float4 lerpResult6659 = lerp( texArray4928 , texArray4923 , UVmixDistance636);
			float4 texArray4917 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4748_0, _Texture_11_Albedo_Index)  );
			float4 texArray4911 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4795_0, _Texture_11_Albedo_Index)  );
			float3 weightedBlendVar6459 = BlendComponents91;
			float4 weightedAvg6459 = ( ( weightedBlendVar6459.x*texArray4917 + weightedBlendVar6459.y*texArray4928 + weightedBlendVar6459.z*texArray4911 )/( weightedBlendVar6459.x + weightedBlendVar6459.y + weightedBlendVar6459.z ) );
			float4 texArray4898 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4890_0, _Texture_11_Albedo_Index)  );
			float4 texArray4914 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4892_0, _Texture_11_Albedo_Index)  );
			float3 weightedBlendVar6461 = BlendComponents91;
			float4 weightedAvg6461 = ( ( weightedBlendVar6461.x*texArray4898 + weightedBlendVar6461.y*texArray4923 + weightedBlendVar6461.z*texArray4914 )/( weightedBlendVar6461.x + weightedBlendVar6461.y + weightedBlendVar6461.z ) );
			float4 lerpResult4988 = lerp( weightedAvg6459 , weightedAvg6461 , UVmixDistance636);
			fixed4 ifLocalVar6654 = 0;
			UNITY_BRANCH 
			if( _Texture_11_Triplanar == 1 )
				ifLocalVar6654 = lerpResult4988;
			else
				ifLocalVar6654 = lerpResult6659;
			fixed4 ifLocalVar7713 = 0;
			UNITY_BRANCH 
			if( _Texture_11_Albedo_Index > -1 )
				ifLocalVar7713 = ( ifLocalVar6654 * _Texture_11_Color );
			fixed4 Texture_11_Final4996 = ifLocalVar7713;
			float4 texArray4954 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4849_0, _Texture_12_Albedo_Index)  );
			float4 texArray4952 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4932_0, _Texture_12_Albedo_Index)  );
			float4 lerpResult6677 = lerp( texArray4954 , texArray4952 , UVmixDistance636);
			float4 texArray4926 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4758_0, _Texture_12_Albedo_Index)  );
			float4 texArray4927 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4830_0, _Texture_12_Albedo_Index)  );
			float3 weightedBlendVar6466 = BlendComponents91;
			float4 weightedAvg6466 = ( ( weightedBlendVar6466.x*texArray4926 + weightedBlendVar6466.y*texArray4954 + weightedBlendVar6466.z*texArray4927 )/( weightedBlendVar6466.x + weightedBlendVar6466.y + weightedBlendVar6466.z ) );
			float4 texArray4919 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4916_0, _Texture_12_Albedo_Index)  );
			float4 texArray4931 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_4910_0, _Texture_12_Albedo_Index)  );
			float3 weightedBlendVar6468 = BlendComponents91;
			float4 weightedAvg6468 = ( ( weightedBlendVar6468.x*texArray4919 + weightedBlendVar6468.y*texArray4952 + weightedBlendVar6468.z*texArray4931 )/( weightedBlendVar6468.x + weightedBlendVar6468.y + weightedBlendVar6468.z ) );
			float4 lerpResult4993 = lerp( weightedAvg6466 , weightedAvg6468 , UVmixDistance636);
			fixed4 ifLocalVar6672 = 0;
			UNITY_BRANCH 
			if( _Texture_12_Triplanar == 1 )
				ifLocalVar6672 = lerpResult4993;
			else
				ifLocalVar6672 = lerpResult6677;
			fixed4 ifLocalVar7710 = 0;
			UNITY_BRANCH 
			if( _Texture_12_Albedo_Index > -1 )
				ifLocalVar7710 = ( ifLocalVar6672 * _Texture_12_Color );
			fixed4 Texture_12_Final4997 = ifLocalVar7710;
			float4 layeredBlendVar6528 = appendResult6529;
			float4 layeredBlend6528 = ( lerp( lerp( lerp( lerp( layeredBlend6520 , Texture_9_Final4987 , layeredBlendVar6528.x ) , Texture_10_Final4994 , layeredBlendVar6528.y ) , Texture_11_Final4996 , layeredBlendVar6528.z ) , Texture_12_Final4997 , layeredBlendVar6528.w ) );
			float4 texArray5043 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5037_0, _Texture_13_Albedo_Index)  );
			float4 texArray5034 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5112_0, _Texture_13_Albedo_Index)  );
			float4 lerpResult6683 = lerp( texArray5043 , texArray5034 , UVmixDistance636);
			float4 texArray5128 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5025_0, _Texture_13_Albedo_Index)  );
			float4 texArray5129 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5035_0, _Texture_13_Albedo_Index)  );
			float3 weightedBlendVar6473 = BlendComponents91;
			float4 weightedAvg6473 = ( ( weightedBlendVar6473.x*texArray5128 + weightedBlendVar6473.y*texArray5043 + weightedBlendVar6473.z*texArray5129 )/( weightedBlendVar6473.x + weightedBlendVar6473.y + weightedBlendVar6473.z ) );
			float4 texArray5130 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5123_0, _Texture_13_Albedo_Index)  );
			float4 texArray5121 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5124_0, _Texture_13_Albedo_Index)  );
			float3 weightedBlendVar6475 = BlendComponents91;
			float4 weightedAvg6475 = ( ( weightedBlendVar6475.x*texArray5130 + weightedBlendVar6475.y*texArray5034 + weightedBlendVar6475.z*texArray5121 )/( weightedBlendVar6475.x + weightedBlendVar6475.y + weightedBlendVar6475.z ) );
			float4 lerpResult5054 = lerp( weightedAvg6473 , weightedAvg6475 , UVmixDistance636);
			fixed4 ifLocalVar6678 = 0;
			UNITY_BRANCH 
			if( _Texture_13_Triplanar == 1 )
				ifLocalVar6678 = lerpResult5054;
			else
				ifLocalVar6678 = lerpResult6683;
			fixed4 ifLocalVar7706 = 0;
			UNITY_BRANCH 
			if( _Texture_13_Albedo_Index > -1 )
				ifLocalVar7706 = ( ifLocalVar6678 * _Texture_13_Color );
			fixed4 Texture_13_Final5058 = ifLocalVar7706;
			float4 texArray5202 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5022_0, _Texture_14_Albedo_Index)  );
			float4 texArray5171 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5172_0, _Texture_14_Albedo_Index)  );
			float4 lerpResult6689 = lerp( texArray5202 , texArray5171 , UVmixDistance636);
			float4 texArray5168 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5009_0, _Texture_14_Albedo_Index)  );
			float4 texArray5239 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5010_0, _Texture_14_Albedo_Index)  );
			float3 weightedBlendVar6480 = BlendComponents91;
			float4 weightedAvg6480 = ( ( weightedBlendVar6480.x*texArray5168 + weightedBlendVar6480.y*texArray5202 + weightedBlendVar6480.z*texArray5239 )/( weightedBlendVar6480.x + weightedBlendVar6480.y + weightedBlendVar6480.z ) );
			float4 texArray5205 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5238_0, _Texture_14_Albedo_Index)  );
			float4 texArray5241 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5233_0, _Texture_14_Albedo_Index)  );
			float3 weightedBlendVar6482 = BlendComponents91;
			float4 weightedAvg6482 = ( ( weightedBlendVar6482.x*texArray5205 + weightedBlendVar6482.y*texArray5171 + weightedBlendVar6482.z*texArray5241 )/( weightedBlendVar6482.x + weightedBlendVar6482.y + weightedBlendVar6482.z ) );
			float4 lerpResult5197 = lerp( weightedAvg6480 , weightedAvg6482 , UVmixDistance636);
			fixed4 ifLocalVar6684 = 0;
			UNITY_BRANCH 
			if( _Texture_14_Triplanar == 1 )
				ifLocalVar6684 = lerpResult5197;
			else
				ifLocalVar6684 = lerpResult6689;
			fixed4 ifLocalVar7702 = 0;
			UNITY_BRANCH 
			if( _Texture_14_Albedo_Index > -1 )
				ifLocalVar7702 = ( ifLocalVar6684 * _Texture_14_Color );
			fixed4 Texture_14_Final5163 = ifLocalVar7702;
			float4 texArray5259 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5226_0, _Texture_15_Albedo_Index)  );
			float4 texArray5272 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5190_0, _Texture_15_Albedo_Index)  );
			float4 lerpResult6695 = lerp( texArray5259 , texArray5272 , UVmixDistance636);
			float4 texArray5182 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5213_0, _Texture_15_Albedo_Index)  );
			float4 texArray5189 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5224_0, _Texture_15_Albedo_Index)  );
			float3 weightedBlendVar6487 = BlendComponents91;
			float4 weightedAvg6487 = ( ( weightedBlendVar6487.x*texArray5182 + weightedBlendVar6487.y*texArray5259 + weightedBlendVar6487.z*texArray5189 )/( weightedBlendVar6487.x + weightedBlendVar6487.y + weightedBlendVar6487.z ) );
			float4 texArray5188 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5248_0, _Texture_15_Albedo_Index)  );
			float4 texArray5247 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5249_0, _Texture_15_Albedo_Index)  );
			float3 weightedBlendVar6489 = BlendComponents91;
			float4 weightedAvg6489 = ( ( weightedBlendVar6489.x*texArray5188 + weightedBlendVar6489.y*texArray5272 + weightedBlendVar6489.z*texArray5247 )/( weightedBlendVar6489.x + weightedBlendVar6489.y + weightedBlendVar6489.z ) );
			float4 lerpResult5279 = lerp( weightedAvg6487 , weightedAvg6489 , UVmixDistance636);
			fixed4 ifLocalVar6690 = 0;
			UNITY_BRANCH 
			if( _Texture_15_Triplanar == 1 )
				ifLocalVar6690 = lerpResult5279;
			else
				ifLocalVar6690 = lerpResult6695;
			fixed4 ifLocalVar7698 = 0;
			UNITY_BRANCH 
			if( _Texture_15_Albedo_Index > -1 )
				ifLocalVar7698 = ( ifLocalVar6690 * _Texture_15_Color );
			fixed4 Texture_15_Final5270 = ifLocalVar7698;
			float4 texArray5139 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5083_0, _Texture_16_Albedo_Index)  );
			float4 texArray5143 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5153_0, _Texture_16_Albedo_Index)  );
			float4 lerpResult6701 = lerp( texArray5139 , texArray5143 , UVmixDistance636);
			float4 texArray5150 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5079_0, _Texture_16_Albedo_Index)  );
			float4 texArray5145 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5085_0, _Texture_16_Albedo_Index)  );
			float3 weightedBlendVar6494 = BlendComponents91;
			float4 weightedAvg6494 = ( ( weightedBlendVar6494.x*texArray5150 + weightedBlendVar6494.y*texArray5139 + weightedBlendVar6494.z*texArray5145 )/( weightedBlendVar6494.x + weightedBlendVar6494.y + weightedBlendVar6494.z ) );
			float4 texArray5144 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5147_0, _Texture_16_Albedo_Index)  );
			float4 texArray5154 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_5146_0, _Texture_16_Albedo_Index)  );
			float3 weightedBlendVar6496 = BlendComponents91;
			float4 weightedAvg6496 = ( ( weightedBlendVar6496.x*texArray5144 + weightedBlendVar6496.y*texArray5143 + weightedBlendVar6496.z*texArray5154 )/( weightedBlendVar6496.x + weightedBlendVar6496.y + weightedBlendVar6496.z ) );
			float4 lerpResult5104 = lerp( weightedAvg6494 , weightedAvg6496 , UVmixDistance636);
			fixed4 ifLocalVar6696 = 0;
			UNITY_BRANCH 
			if( _Texture_16_Triplanar == 1 )
				ifLocalVar6696 = lerpResult5104;
			else
				ifLocalVar6696 = lerpResult6701;
			fixed4 ifLocalVar7691 = 0;
			UNITY_BRANCH 
			if( _Texture_16_Albedo_Index > -1 )
				ifLocalVar7691 = ( ifLocalVar6696 * _Texture_16_Color );
			fixed4 Texture_16_Final5094 = ifLocalVar7691;
			float4 layeredBlendVar6532 = appendResult6533;
			float4 layeredBlend6532 = ( lerp( lerp( lerp( lerp( layeredBlend6528 , Texture_13_Final5058 , layeredBlendVar6532.x ) , Texture_14_Final5163 , layeredBlendVar6532.y ) , Texture_15_Final5270 , layeredBlendVar6532.z ) , Texture_16_Final5094 , layeredBlendVar6532.w ) );
			float3 appendResult3857 = (fixed3(layeredBlend6532.x , layeredBlend6532.y , layeredBlend6532.z));
			float3 appendResult8037 = (fixed3(tex2DNode8036.r , tex2DNode8036.g , tex2DNode8036.b));
			float2 weightedBlendVar8039 = appendResult8038;
			float3 weightedAvg8039 = ( ( weightedBlendVar8039.x*appendResult3857 + weightedBlendVar8039.y*appendResult8037 )/( weightedBlendVar8039.x + weightedBlendVar8039.y ) );
			fixed2 temp_cast_2 = (( _Geological_Map_Offset_Close + ( ase_worldPos.y / _Geological_Tiling_Close ) )).xx;
			fixed4 tex2DNode8032 = tex2D( _Texture_Geological_Map, temp_cast_2 );
			float3 appendResult6970 = (fixed3(tex2DNode8032.r , tex2DNode8032.g , tex2DNode8032.b));
			fixed2 temp_cast_3 = (( ( ase_worldPos.y / _Geological_Tiling_Far ) + _Geological_Map_Offset_Far )).xx;
			fixed4 tex2DNode6969 = tex2D( _Texture_Geological_Map, temp_cast_3 );
			float3 appendResult6971 = (fixed3(tex2DNode6969.r , tex2DNode6969.g , tex2DNode6969.b));
			float3 lerpResult1315 = lerp( ( ( appendResult6970 + float3( -0.3,-0.3,-0.3 ) ) * _Geological_Map_Close_Power ) , ( ( appendResult6971 + float3( -0.3,-0.3,-0.3 ) ) * _Geological_Map_Far_Power ) , UVmixDistance636);
			fixed3 blendOpSrc4362 = weightedAvg8039;
			fixed3 blendOpDest4362 = ( lerpResult1315 * ( ( _Texture_16_Geological_Power * Splat4_A2546 ) + ( ( _Texture_15_Geological_Power * Splat4_B2545 ) + ( ( _Texture_14_Geological_Power * Splat4_G2544 ) + ( ( _Texture_13_Geological_Power * Splat4_R2543 ) + ( ( _Texture_12_Geological_Power * Splat3_A2540 ) + ( ( _Texture_11_Geological_Power * Splat3_B2539 ) + ( ( _Texture_10_Geological_Power * Splat3_G2538 ) + ( ( _Texture_9_Geological_Power * Splat3_R2537 ) + ( ( _Texture_8_Geological_Power * Splat2_A2109 ) + ( ( _Texture_7_Geological_Power * Splat2_B2108 ) + ( ( _Texture_6_Geological_Power * Splat2_G2107 ) + ( ( _Texture_5_Geological_Power * Splat2_R2106 ) + ( ( _Texture_1_Geological_Power * Splat1_R1438 ) + ( ( _Texture_2_Geological_Power * Splat1_G1441 ) + ( ( _Texture_4_Geological_Power * Splat1_A1491 ) + ( _Texture_3_Geological_Power * Splat1_B1442 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) );
			float4 texArray4378 = UNITY_SAMPLE_TEX2DARRAY(_Texture_Array_Albedo, float3(temp_output_3749_0, _Texture_Snow_Index)  );
			float4 lerpResult1416 = lerp( texArray4378 , _Texture_Snow_Average , UVmixDistance636);
			fixed4 ifLocalVar7821 = 0;
			UNITY_BRANCH 
			if( _Texture_Snow_Index > 1 )
				ifLocalVar7821 = ( lerpResult1416 * _Snow_Color );
			float3 appendResult1410 = (fixed3(ifLocalVar7821.x , ifLocalVar7821.y , ifLocalVar7821.z));
			fixed3 In08069 = float3( 0,0,0 );
			fixed localMyCustomExpression8069 = MyCustomExpression8069( In08069 );
			float temp_output_8073_0 = ( _Glitter_Refreshing_Speed * ( ( localMyCustomExpression8069 * 10 ) + ( _WorldSpaceCameraPos.x + _WorldSpaceCameraPos.y + _WorldSpaceCameraPos.z ) ) );
			float temp_output_8076_0 = ( 0 + temp_output_8073_0 );
			float clampResult8088 = clamp( sin( ( temp_output_8076_0 * 0.1 ) ) , 0 , 1 );
			float2 temp_output_8079_0 = ( Top_Bottom1999 * ( 1 / _Glitter_Tiling ) );
			float2 appendResult8111 = (fixed2(temp_output_8079_0.y , temp_output_8079_0.x));
			fixed4 tex2DNode8090 = tex2D( _Texture_Glitter, ( appendResult8111 + float2( 0.37,0.67 ) ) );
			float2 panner8080 = ( temp_output_8079_0 + ( temp_output_8073_0 * 0.01 ) * float2( 1,1 ));
			float cos8082 = cos( sin( ( temp_output_8076_0 * 0.0001 ) ) );
			float sin8082 = sin( sin( ( temp_output_8076_0 * 0.0001 ) ) );
			float2 rotator8082 = mul( panner8080 - float2( 0.5,0.5 ) , float2x2( cos8082 , -sin8082 , sin8082 , cos8082 )) + float2( 0.5,0.5 );
			float clampResult8092 = clamp( pow( tex2D( _Texture_Glitter, ( ( rotator8082 + temp_output_8079_0 ) * float2( 0.2,0.2 ) ) ).r , ( 1.0 - _Glitter_Noise_Threshold ) ) , 0 , 1 );
			float lerpResult8093 = lerp(  ( clampResult8088 - 0.2 > 0 ? tex2D( _Texture_Glitter, temp_output_8079_0 ).r : clampResult8088 - 0.2 <= 0 && clampResult8088 + 0.2 >= 0 ? tex2DNode8090.r : tex2DNode8090.r )  , 0.6 , clampResult8092);
			float clampResult8095 = clamp( pow( lerpResult8093 , 100.0 ) , 0 , 1 );
			float temp_output_8096_0 = ( _Gliter_Color_Power * clampResult8095 );
			float3 lerpResult1356 = lerp( ( saturate( ( blendOpSrc4362 + blendOpDest4362 ) )) , ( appendResult1410 + temp_output_8096_0 ) , HeightMask6539);
			o.Albedo = lerpResult1356;
			float3 clampResult6245 = clamp( appendResult1410 , float3( 0,0,0 ) , float3( 0.5,0.5,0.5 ) );
			fixed3 temp_cast_4 = (_Glitter_Specular).xxx;
			float clampResult8097 = clamp( temp_output_8096_0 , 0 , 1 );
			float3 lerpResult8099 = lerp( ( clampResult6245 * _Snow_Specular ) , temp_cast_4 , clampResult8097);
			float3 lerpResult4040 = lerp( ( ( appendResult3857 * float3( 0.3,0.3,0.3 ) ) * _Terrain_Specular ) , lerpResult8099 , HeightMask6539);
			o.Specular = lerpResult4040;
			float lerpResult8098 = lerp( ifLocalVar7821.w , _Glitter_Smoothness , clampResult8097);
			float lerpResult3951 = lerp( ( layeredBlend6532.w * _Terrain_Smoothness ) , lerpResult8098 , HeightMask6539);
			o.Smoothness = lerpResult3951;
			float temp_output_6501_0 = ( 1 - _Ambient_Occlusion_Power );
			float clampResult6709 = clamp( ( ( 1 + temp_output_4100_0.y ) * 0.5 ) , temp_output_6501_0 , 1 );
			float clampResult6284 = clamp( Texture_1_H5480.y , ( 1 - _Texture_1_AO_Power ) , 1 );
			float clampResult6290 = clamp( Texture_2_H5497.y , ( 1 - _Texture_2_AO_Power ) , 1 );
			float clampResult6295 = clamp( Texture_3_H5581.y , ( 1 - _Texture_3_AO_Power ) , 1 );
			float clampResult6300 = clamp( Texture_4_H5631.y , ( 1 - _Texture_4_AO_Power ) , 1 );
			float4 layeredBlendVar7765 = appendResult6517;
			float layeredBlend7765 = ( lerp( lerp( lerp( lerp( 1 , clampResult6284 , layeredBlendVar7765.x ) , clampResult6290 , layeredBlendVar7765.y ) , clampResult6295 , layeredBlendVar7765.z ) , clampResult6300 , layeredBlendVar7765.w ) );
			float clampResult6305 = clamp( Texture_5_H5671.y , ( 1 - _Texture_5_AO_Power ) , 1 );
			float clampResult6310 = clamp( Texture_6_H5711.y , ( 1 - _Texture_6_AO_Power ) , 1 );
			float clampResult6315 = clamp( Texture_7_H5751.y , ( 1 - _Texture_7_AO_Power ) , 1 );
			float clampResult6320 = clamp( Texture_8_H5791.y , ( 1 - _Texture_8_AO_Power ) , 1 );
			float4 layeredBlendVar7806 = appendResult6524;
			float layeredBlend7806 = ( lerp( lerp( lerp( lerp( layeredBlend7765 , clampResult6305 , layeredBlendVar7806.x ) , clampResult6310 , layeredBlendVar7806.y ) , clampResult6315 , layeredBlendVar7806.z ) , clampResult6320 , layeredBlendVar7806.w ) );
			float clampResult6325 = clamp( Texture_9_H5832.y , ( 1 - _Texture_9_AO_Power ) , 1 );
			float clampResult6330 = clamp( Texture_10_H5872.y , ( 1 - _Texture_10_AO_Power ) , 1 );
			float clampResult6335 = clamp( Texture_11_H5912.y , ( 1 - _Texture_11_AO_Power ) , 1 );
			float clampResult6340 = clamp( Texture_12_H5952.y , ( 1 - _Texture_12_AO_Power ) , 1 );
			float4 layeredBlendVar7807 = appendResult6529;
			float layeredBlend7807 = ( lerp( lerp( lerp( lerp( layeredBlend7806 , clampResult6325 , layeredBlendVar7807.x ) , clampResult6330 , layeredBlendVar7807.y ) , clampResult6335 , layeredBlendVar7807.z ) , clampResult6340 , layeredBlendVar7807.w ) );
			float clampResult6345 = clamp( Texture_13_H5992.y , ( 1 - _Texture_13_AO_Power ) , 1 );
			float clampResult6350 = clamp( Texture_14_H6032.y , ( 1 - _Texture_14_AO_Power ) , 1 );
			float clampResult6355 = clamp( Texture_15_H6072.y , ( 1 - _Texture_15_AO_Power ) , 1 );
			float clampResult6360 = clamp( Texture_16_H6112.y , ( 1 - _Texture_16_AO_Power ) , 1 );
			float4 layeredBlendVar7808 = appendResult6533;
			float layeredBlend7808 = ( lerp( lerp( lerp( lerp( layeredBlend7807 , clampResult6345 , layeredBlendVar7808.x ) , clampResult6350 , layeredBlendVar7808.y ) , clampResult6355 , layeredBlendVar7808.z ) , clampResult6360 , layeredBlendVar7808.w ) );
			float clampResult6536 = clamp( texArray6267.w , ( 1 - _Snow_Ambient_Occlusion_Power ) , 1 );
			float lerpResult6362 = lerp( clampResult6536 , 1 , UVmixDistance636);
			fixed ifLocalVar7802 = 0;
			UNITY_BRANCH 
			if( _Texture_Snow_H_AO_Index > -1 )
				ifLocalVar7802 = lerpResult6362;
			float lerpResult6364 = lerp( layeredBlend7808 , ifLocalVar7802 , HeightMask6539);
			float clampResult6502 = clamp( lerpResult6364 , temp_output_6501_0 , 1 );
			#ifdef _USE_AO_TEXTURE_ON
				float staticSwitch7761 = clampResult6502;
			#else
				float staticSwitch7761 = clampResult6709;
			#endif
			#ifdef _USE_AO_ON
				float staticSwitch7762 = staticSwitch7761;
			#else
				float staticSwitch7762 = 1.0;
			#endif
			o.Occlusion = staticSwitch7762;
			o.Alpha = 1;
			float2 uv_Texture_Additional_Masks = i.uv_texcoord * _Texture_Additional_Masks_ST.xy + _Texture_Additional_Masks_ST.zw;
			float clampResult8047 = clamp( ( ase_worldPos.y + ( 0 - _Remove_Vert_Height ) ) , 0 , 1 );
			clip( ( tex2D( _Texture_Additional_Masks, uv_Texture_Additional_Masks ).a * clampResult8047 ) - _Cutoff );
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf StandardSpecular keepalpha fullforwardshadows vertex:vertexDataFunc tessellate:tessFunction 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 4.6
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
				vertexDataFunc( v );
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