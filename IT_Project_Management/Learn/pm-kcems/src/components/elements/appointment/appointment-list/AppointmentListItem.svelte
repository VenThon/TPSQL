<script>
    import Clock from "$components/icons/Clock.svelte";
    import Eye from "$components/icons/Eye.svelte";
    import CancelRounded from "$components/icons/Cancel/CancelRounded.svelte";
    import Check from "$components/icons/Check.svelte";

    export let appointmentInfo;

</script>

<tr class="bg-white flex items-center justify-between rounded-xl border w-full my-1">
    <th scope="row" class="px-6 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
        <div>
            <div>{appointmentInfo.date}</div>
            <div class="flex items-center text-gray-500 text-sm mt-1"><Clock />{appointmentInfo.time}</div>
        </div>
    </th>
    <td class="px-6 py-3">
        <div class="flex items-center">
            <img src="https://placehold.co/400" alt="" class="h-10 rounded-full mr-2">
            <div>
                <div class="text-gray-900">{appointmentInfo.name}</div>
                <div class="flex items-center text-gray-500 text-sm mt-1">{appointmentInfo.username}</div>
            </div>
        </div>
    </td>
    <td class="px-6 py-3">
        <button class="whitespace-nowrap flex items-center text-sm text-[#004E80] border-2 border-[#004E80] rounded-md px-1 duration-100 hover:bg-[#004E80] hover:text-white overflow-hidden">
            <Eye/>View Detail
        </button>
    </td>
    <td class="px-6 py-3 ml-12">
        {#if appointmentInfo.status == "accepted"}
            <div class=" flex items-center w-32 justify-end">
                <button class="text-[#004E80] text-sm text-end focus:ring-4 focus:outline-none focus:ring-blue-300">Accepted</button>
            </div>
            <!-- <div id="dropdownHover" class="z-10 absolute bg-white divide-y divide-gray-100 rounded-lg shadow w-32 dark:bg-gray-700">
                <ul class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownHoverButton">
                  <li>
                    <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">Dashboard</a>
                  </li>
                  <li>
                    <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white border-t">Sign out</a>
                  </li>
                </ul>
            </div> -->
        {:else if appointmentInfo.status == "rejected"}
            <div class="text-[#DE5757] text-sm w-32 text-end">Rejected</div>
        {:else if appointmentInfo.status == "pending"}
            <div class=" flex items-center w-32 justify-end">
                <button class="text-[#DE5757] mx-1"><CancelRounded /></button>
                <button class="text-[#004E80] mx-1"><Check /></button>
            </div>
        {/if}
    </td>
</tr>