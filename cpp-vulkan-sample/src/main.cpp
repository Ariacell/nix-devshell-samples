#include <vulkan/vulkan.h>
#include <iostream>

int main()
{
    uint32_t version = 0;
    VkResult result = vkEnumerateInstanceVersion(&version);

    if (result != VK_SUCCESS)
    {
        std::cerr << "Failed to get Vulkan instance version." << std::endl;
        return 1;
    }

    uint32_t major = VK_VERSION_MAJOR(version);
    uint32_t minor = VK_VERSION_MINOR(version);
    uint32_t patch = VK_VERSION_PATCH(version);

    std::cout << "Vulkan supported version: "
              << major << "." << minor << "." << patch << std::endl;

    return 0;
}