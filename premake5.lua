project "ImGui"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	IncludeDir["ImGuizmo"]="ImGuizmo"

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
		"backends/imgui_impl_opengl3.cpp",
		"backends/imgui_impl_opengl3.h",
		"backends/imgui_impl_glfw.cpp",
		"backends/imgui_impl_glfw.h",
		"%{IncludeDir.ImGuizmo}/ImCurveEdit.cpp",
		"%{IncludeDir.ImGuizmo}/ImCurveEdit.h",
		"%{IncludeDir.ImGuizmo}/ImGradient.cpp",
		"%{IncludeDir.ImGuizmo}/ImGradient.h",
		"%{IncludeDir.ImGuizmo}/ImGuizmo.cpp",
		"%{IncludeDir.ImGuizmo}/ImGuizmo.h",
		"%{IncludeDir.ImGuizmo}/ImSequencer.cpp",
		"%{IncludeDir.ImGuizmo}/ImSequencer.h"

	}

	includedirs
	{
		"../imgui",
		"../glfw/include",
		"ImGuizmo"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
