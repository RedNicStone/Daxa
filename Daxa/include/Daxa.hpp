#pragma once

#include "../src/Application.hpp"
#include "../src/gpu/Device.hpp"
#include "../src/gpu/Instance.hpp"
#include "../src/DearImGuiImpl.hpp"

namespace daxa {
	void initialize();

	void cleanup();
}