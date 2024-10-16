vim.lsp.handlers["wgsl-analyzer/requestConfiguration"] = function(err, result, ctx, config)
	return {
		success = true,
		customImports = {
			["bevy_core_pipeline::fullscreen_vertex_shader"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_core_pipeline/src/fullscreen_vertex_shader/fullscreen.wgsl",
			["bevy_core_pipeline::tonemapping"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_core_pipeline/src/tonemapping/tonemapping_shared.wgsl",
			["bevy_pbr::pbr_deferred_functions"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/deferred/pbr_deferred_functions.wgsl",
			["bevy_pbr::pbr_deferred_types"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/deferred/pbr_deferred_types.wgsl",
			["bevy_pbr::environment_map"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/environment_map/environment_map.wgsl",
			["bevy_pbr::prepass_bindings"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/prepass/prepass_bindings.wgsl",
			["bevy_pbr::prepass_io"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/prepass/prepass_io.wgsl",
			["bevy_pbr::prepass_utils"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/prepass/prepass_utils.wgsl",
			["bevy_pbr::clustered_forward"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/clustered_forward.wgsl",
			["bevy_pbr::fog"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/fog.wgsl",
			["bevy_pbr::forward_io"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/forward_io.wgsl",
			["bevy_pbr::mesh_bindings"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/mesh_bindings.wgsl",
			["bevy_pbr::mesh_functions"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/mesh_functions.wgsl",
			["bevy_pbr::mesh_types"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/mesh_types.wgsl",
			["bevy_pbr::mesh_view_bindings"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/mesh_view_bindings.wgsl",
			["bevy_pbr::mesh_view_types"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/mesh_view_types.wgsl",
			["bevy_pbr::morph"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/morph.wgsl",
			["bevy_pbr::parallax_mapping"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/parallax_mapping.wgsl",
			["bevy_pbr::ambient"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/pbr_ambient.wgsl",
			["bevy_pbr::pbr_bindings"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/pbr_bindings.wgsl",
			["bevy_pbr::pbr_fragment"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/pbr_fragment.wgsl",
			["bevy_pbr::pbr_functions"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/pbr_functions.wgsl",
			["bevy_pbr::lighting"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/pbr_lighting.wgsl",
			["bevy_pbr::pbr_prepass_functions"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/pbr_prepass_functions.wgsl",
			["bevy_pbr::transmission"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/pbr_transmission.wgsl",
			["bevy_pbr::pbr_types"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/pbr_types.wgsl",
			["bevy_pbr::rgb9e5"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/rgb9e5.wgsl",
			["bevy_pbr::shadow_sampling"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/shadow_sampling.wgsl",
			["bevy_pbr::shadows"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/shadows.wgsl",
			["bevy_pbr::skinning"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/skinning.wgsl",
			["bevy_pbr::utils"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/utils.wgsl",
			["bevy_pbr::view_transformations"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/render/view_transformations.wgsl",
			["bevy_pbr::gtao_utils"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_pbr/src/ssao/gtao_utils.wgsl",
			["bevy_render::globals"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_render/src/globals.wgsl",
			["bevy_render::instance_index"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_render/src/instance_index.wgsl",
			["bevy_render::maths"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_render/src/maths.wgsl",
			["bevy_render::view"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_render/src/view/view.wgsl",
			["bevy_sprite::mesh2d_bindings"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_sprite/src/mesh2d/mesh2d_bindings.wgsl",
			["bevy_sprite::mesh2d_functions"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_sprite/src/mesh2d/mesh2d_functions.wgsl",
			["bevy_sprite::mesh2d_types"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_sprite/src/mesh2d/mesh2d_types.wgsl",
			["bevy_sprite::mesh2d_vertex_output"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_sprite/src/mesh2d/mesh2d_vertex_output.wgsl",
			["bevy_sprite::mesh2d_view_bindings"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_sprite/src/mesh2d/mesh2d_view_bindings.wgsl",
			["bevy_sprite::mesh2d_view_types"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_sprite/src/mesh2d/mesh2d_view_types.wgsl",
			["bevy_ui::ui_vertex_output"] =
			"https://raw.githubusercontent.com/bevyengine/bevy/v0.12.0/crates/bevy_ui/src/render/ui_vertex_output.wgsl",
		},
		shaderDefs = {},
		trace = {
			extension = false,
			server = false,
		},
		inlayHints = {
			enabled = true,
			typeHints = true,
			parameterHints = true,
			structLayoutHints = false,
			typeVerbosity = "inner",
		},
		diagnostics = {
			typeErrors = true,
			nagaParsingErrors = true,
			nagaValidationErrors = true,
			nagaVersion = "main",
		}
	}
end
return {}
