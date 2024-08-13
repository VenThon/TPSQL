<script>
    import { Button, Modal ,Toggle,Tabs, TabItem } from 'flowbite-svelte'
  let defaultModal = false;
  let clickOutsideModal = false;
</script>
<style>
    
</style>
<div class="bg-[#f4f4f4] rounded-lg p-4">
    <div class="flex justify-between pt-1">
        <h3 class=" text-[#004e80] text-2xl font-bold"> Repearts weekly</h3>
        <Button class="bg-[#004e80] rounded-full " on:click={() => defaultModal = true}>
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                <path stroke-linecap="round" stroke-linejoin="round" d="m16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L6.832 19.82a4.5 4.5 0 0 1-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 0 1 1.13-1.897L16.863 4.487Zm0 0L19.5 7.125" />
            </svg>      
        </Button>
        <Modal title="Horus" bind:open={defaultModal} autoclose>
            <div class="relative overflow-x-auto">
                <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                    <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                        <tr>
                            <th scope="col" class="px-6 py-3">
                                Day
                            </th>
                            <th scope="col" class="px-6 py-3">
                                Status
                            </th>
                            <th scope="col" class="px-6 py-3">
                                Start Time
                            </th>
                            <th scope="col" class="px-6 py-3">
                                End Time
                            </th>
                            <th scope="col" class="px-6 py-3">
                                Action
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                Monday
                            </th>
                            <td class="px-6 py-4">
                                <Toggle class="h-2">Open</Toggle> 
                            </td>
                            <td class="px-6 py-4">
                                <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                                    <p>08:30AM</p>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                    </svg>     
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                                    <p>08:30AM</p>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5 " >
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>     
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="m14.74 9-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 0 1-2.244 2.077H8.084a2.25 2.25 0 0 1-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 0 0-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 0 1 3.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 0 0-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 0 0-7.5 0" />
                                </svg>
                            </td>
                        </tr>
                        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                Tuesday
                            </th>
                            <td class="px-6 py-4">
                                <Toggle class="h-2">Open</Toggle> 
                            </td>
                            <td class="px-6 py-4">
                                <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                                    <p>08:30AM</p>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                    </svg>     
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                                    <p>08:30AM</p>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5 " >
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>     
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="m14.74 9-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 0 1-2.244 2.077H8.084a2.25 2.25 0 0 1-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 0 0-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 0 1 3.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 0 0-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 0 0-7.5 0" />
                                </svg>
                            </td>
                        </tr>
                        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                Wednesday
                            </th>
                            <td class="px-6 py-4">
                                <Toggle class="h-2">Open</Toggle> 
                            </td>
                            <td class="px-6 py-4">
                                <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                                    <p>08:30AM</p>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                    </svg>     
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                                    <p>08:30AM</p>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5 " >
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>     
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="m14.74 9-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 0 1-2.244 2.077H8.084a2.25 2.25 0 0 1-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 0 0-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 0 1 3.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 0 0-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 0 0-7.5 0" />
                                </svg>
                            </td>
                        </tr>
                        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                Thursday
                            </th>
                            <td class="px-6 py-4">
                                <Toggle class="h-2">Open</Toggle> 
                            </td>
                            <td class="px-6 py-4">
                                <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                                    <p>08:30AM</p>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                    </svg>     
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                                    <p>08:30AM</p>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5 " >
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>     
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="m14.74 9-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 0 1-2.244 2.077H8.084a2.25 2.25 0 0 1-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 0 0-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 0 1 3.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 0 0-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 0 0-7.5 0" />
                                </svg>
                            </td>
                        </tr>
                        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                Fiday
                            </th>
                            <td class="px-6 py-4">
                                <Toggle class="h-2">Open</Toggle> 
                            </td>
                            <td class="px-6 py-4">
                                <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                                    <p>08:30AM</p>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                    </svg>     
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                                    <p>08:30AM</p>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5 " >
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>     
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="m14.74 9-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 0 1-2.244 2.077H8.084a2.25 2.25 0 0 1-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 0 0-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 0 1 3.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 0 0-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 0 0-7.5 0" />
                                </svg>
                            </td>
                        </tr>
                        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                Saturday
                            </th>
                            <td class="px-6 py-4">
                                <Toggle class="h-2">Open</Toggle> 
                            </td>
                            <td class="px-6 py-4">
                                <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                                    <p>08:30AM</p>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                    </svg>     
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                                    <p>08:30AM</p>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5 " >
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>     
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="m14.74 9-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 0 1-2.244 2.077H8.084a2.25 2.25 0 0 1-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 0 0-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 0 1 3.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 0 0-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 0 0-7.5 0" />
                                </svg>
                            </td>
                        </tr>
                        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                Sunday
                            </th>
                            <td class="px-6 py-4">
                                <Toggle class="h-2">Open</Toggle> 
                            </td>
                            <td class="px-6 py-4">
                                <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                                    <p>08:30AM</p>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                    </svg>     
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                                    <p>08:30AM</p>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5 " >
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>     
                                </div>
                            </td>
                            <td class="px-6 py-4">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="m14.74 9-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 0 1-2.244 2.077H8.084a2.25 2.25 0 0 1-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 0 0-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 0 1 3.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 0 0-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 0 0-7.5 0" />
                                </svg>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
          <svelte:fragment slot='footer'>
            <Button class="bg-[#006eb2]" on:click={() => alert('Handle "success"')}>Update</Button>
            <Button class="bg-[#efefef] text-[#686868] ">Cancel</Button>
          </svelte:fragment>
        </Modal>   
    </div>
    <div>
        

    <div class="relative overflow-x-auto mt-5">
        <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                <tr>
                    <th scope="col" class="px-6 py-3">
                        Day of week
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Start Time
                    </th>
                    <th scope="col" class="px-6 py-3">
                        End Time
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Add hours
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        Monday
                    </th>
                    <td class="px-6 py-4">
                        <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                            <p>08:30AM</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                            </svg>     
                        </div>
                    </td>
                    <td class="px-6 py-4">
                        <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                            <p>08:30AM</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5 " >
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                        </svg>     
                        </div>
                    </td>
                    <td class="px-6 py-4">
                        <Button on:click={() => (clickOutsideModal = true)}>
                            <div class="flex rounded-lg bg-[#004e80] w-24 justify-center border border-[#e6e6e6]">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-5" style="color: white;">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 9v6m3-3H9m12 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>   
                                <p class="text-white text-xs mt-0.5">Add Hours</p>     
                            </div>
                        </Button>
                        <Modal title="Select an Hours" bind:open={clickOutsideModal} autoclose outsideclose>
                            <div>
                                <div class="flex justify-around">
                                    <h3>Start Time</h3>
                                    <h3>End Time</h3>
                                </div>
                                <div class=" flex justify-around mt-2">
                                        <div class="flex">
                                            <div class="">
                                                <button class="w-9 h-6 flex justify-center ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center mt-1">
                                                    09
                                                </p>
                                                <button class=" ml-1.5 flex justify-center mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <p>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-7">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 12.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 18.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5Z" />
                                                </svg>                                      
                                            </p>
                                            <div class="">
                                                <button>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center">
                                                    30
                                                </p>
                                                <button class="mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <div class="pl-4 mt-2">
                                                <button class="w-9 h-7 bg-[#4d84a7] text-white rounded-sm">AM</button><br>
                                                <button class="w-9 h-7 mt-1 bg-[#d9d9d9] rounded-sm">PM</button>
                                            </div>
                                        </div>
                                        <div class="flex">
                                            <div class="">
                                                <button class="w-9 h-6 flex justify-center ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center mt-1">
                                                    09
                                                </p>
                                                <button class=" ml-1.5 flex justify-center mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <p>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-7">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 12.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 18.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5Z" />
                                                </svg>                                      
                                            </p>
                                            <div class="">
                                                <button>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center">
                                                    30
                                                </p>
                                                <button class="mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <div class="pl-4 mt-2">
                                                <button class="w-9 h-7 bg-[#4d84a7] text-white rounded-sm">AM</button><br>
                                                <button class="w-9 h-7 mt-1 bg-[#d9d9d9] rounded-sm">PM</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                            <svelte:fragment slot="footer">
                              <Button class="bg-[#006eb2]" on:click={() => alert('Edit "success"')}>I Apply</Button>
                              <Button class="bg-[#efefef] text-[#686868] ">Cancel</Button>
                            </svelte:fragment>
                          </Modal>
                    </td>
                </tr>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        Tuesday
                    </th>
                    <td class="px-6 py-4">
                        <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                            <p>08:30AM</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                            </svg>     
                        </div>
                    </td>
                    <td class="px-6 py-4">
                        <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                            <p>08:30AM</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5 " >
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                        </svg>     
                        </div>
                    </td>
                    <td class="px-6 py-4">
                        <Button on:click={() => (clickOutsideModal = true)}>
                            <div class="flex rounded-lg bg-[#004e80] w-24 justify-center border border-[#e6e6e6]">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-5" style="color: white;">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 9v6m3-3H9m12 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>   
                                <p class="text-white text-xs mt-0.5">Add Hours</p>     
                            </div>
                        </Button>
                        <Modal title="Select an Hours" bind:open={clickOutsideModal} autoclose outsideclose>
                            <div>
                                <div class="flex justify-around">
                                    <h3>Start Time</h3>
                                    <h3>End Time</h3>
                                </div>
                                <div class=" flex justify-around mt-2">
                                        <div class="flex">
                                            <div class="">
                                                <button class="w-9 h-6 flex justify-center ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center mt-1">
                                                    09
                                                </p>
                                                <button class=" ml-1.5 flex justify-center mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <p>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-7">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 12.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 18.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5Z" />
                                                </svg>                                      
                                            </p>
                                            <div class="">
                                                <button>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center">
                                                    30
                                                </p>
                                                <button class="mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <div class="pl-4 mt-2">
                                                <button class="w-9 h-7 bg-[#4d84a7] text-white rounded-sm">AM</button><br>
                                                <button class="w-9 h-7 mt-1 bg-[#d9d9d9] rounded-sm">PM</button>
                                            </div>
                                        </div>
                                        <div class="flex">
                                            <div class="">
                                                <button class="w-9 h-6 flex justify-center ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center mt-1">
                                                    09
                                                </p>
                                                <button class=" ml-1.5 flex justify-center mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <p>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-7">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 12.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 18.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5Z" />
                                                </svg>                                      
                                            </p>
                                            <div class="">
                                                <button>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center">
                                                    30
                                                </p>
                                                <button class="mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <div class="pl-4 mt-2">
                                                <button class="w-9 h-7 bg-[#4d84a7] text-white rounded-sm">AM</button><br>
                                                <button class="w-9 h-7 mt-1 bg-[#d9d9d9] rounded-sm">PM</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                            <svelte:fragment slot="footer">
                              <Button class="bg-[#006eb2]" on:click={() => alert('Edit "success"')}>Apply</Button>
                              <Button class="bg-[#efefef] text-[#686868] ">Cancel</Button>
                            </svelte:fragment>
                          </Modal>
                    </td>
                </tr>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        Wednesday
                    </th>
                    <td class="px-6 py-4">
                        <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                            <p>08:30AM</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                            </svg>     
                        </div>
                    </td>
                    <td class="px-6 py-4">
                        <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                            <p>08:30AM</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5 " >
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                        </svg>     
                        </div>
                    </td>
                    <td class="px-6 py-4">
                        <Button on:click={() => (clickOutsideModal = true)}>
                            <div class="flex rounded-lg bg-[#004e80] w-24 justify-center border border-[#e6e6e6]">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-5" style="color: white;">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 9v6m3-3H9m12 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>   
                                <p class="text-white text-xs mt-0.5">Add Hours</p>     
                            </div>
                        </Button>
                        <Modal title="Select an Hours" bind:open={clickOutsideModal} autoclose outsideclose>
                            <div>
                                <div class="flex justify-around">
                                    <h3>Start Time</h3>
                                    <h3>End Time</h3>
                                </div>
                                <div class=" flex justify-around mt-2">
                                        <div class="flex">
                                            <div class="">
                                                <button class="w-9 h-6 flex justify-center ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center mt-1">
                                                    09
                                                </p>
                                                <button class=" ml-1.5 flex justify-center mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <p>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-7">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 12.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 18.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5Z" />
                                                </svg>                                      
                                            </p>
                                            <div class="">
                                                <button>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center">
                                                    30
                                                </p>
                                                <button class="mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <div class="pl-4 mt-2">
                                                <button class="w-9 h-7 bg-[#4d84a7] text-white rounded-sm">AM</button><br>
                                                <button class="w-9 h-7 mt-1 bg-[#d9d9d9] rounded-sm">PM</button>
                                            </div>
                                        </div>
                                        <div class="flex">
                                            <div class="">
                                                <button class="w-9 h-6 flex justify-center ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center mt-1">
                                                    09
                                                </p>
                                                <button class=" ml-1.5 flex justify-center mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <p>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-7">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 12.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 18.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5Z" />
                                                </svg>                                      
                                            </p>
                                            <div class="">
                                                <button>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center">
                                                    30
                                                </p>
                                                <button class="mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <div class="pl-4 mt-2">
                                                <button class="w-9 h-7 bg-[#4d84a7] text-white rounded-sm">AM</button><br>
                                                <button class="w-9 h-7 mt-1 bg-[#d9d9d9] rounded-sm">PM</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                            <svelte:fragment slot="footer">
                              <Button class="bg-[#006eb2]" on:click={() => alert('Edit "success"')}>Apply</Button>
                              <Button class="bg-[#efefef] text-[#686868] ">Cancel</Button>
                            </svelte:fragment>
                          </Modal>
                    </td>
                </tr>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        Thursday
                    </th>
                    <td class="px-6 py-4">
                        <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                            <p>08:30AM</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                            </svg>     
                        </div>
                    </td>
                    <td class="px-6 py-4">
                        <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                            <p>08:30AM</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5 " >
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                        </svg>     
                        </div>
                    </td>
                    <td class="px-6 py-4">
                        <Button on:click={() => (clickOutsideModal = true)}>
                            <div class="flex rounded-lg bg-[#004e80] w-24 justify-center border border-[#e6e6e6]">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-5" style="color: white;">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 9v6m3-3H9m12 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>   
                                <p class="text-white text-xs mt-0.5">Add Hours</p>     
                            </div>
                        </Button>
                        <Modal title="Select an Hours" bind:open={clickOutsideModal} autoclose outsideclose>
                            <div>
                                <div class="flex justify-around">
                                    <h3>Start Time</h3>
                                    <h3>End Time</h3>
                                </div>
                                <div class=" flex justify-around mt-2">
                                        <div class="flex">
                                            <div class="">
                                                <button class="w-9 h-6 flex justify-center ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center mt-1">
                                                    09
                                                </p>
                                                <button class=" ml-1.5 flex justify-center mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <p>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-7">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 12.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 18.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5Z" />
                                                </svg>                                      
                                            </p>
                                            <div class="">
                                                <button>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center">
                                                    30
                                                </p>
                                                <button class="mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <div class="pl-4 mt-2">
                                                <button class="w-9 h-7 bg-[#4d84a7] text-white rounded-sm">AM</button><br>
                                                <button class="w-9 h-7 mt-1 bg-[#d9d9d9] rounded-sm">PM</button>
                                            </div>
                                        </div>
                                        <div class="flex">
                                            <div class="">
                                                <button class="w-9 h-6 flex justify-center ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center mt-1">
                                                    09
                                                </p>
                                                <button class=" ml-1.5 flex justify-center mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <p>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-7">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 12.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 18.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5Z" />
                                                </svg>                                      
                                            </p>
                                            <div class="">
                                                <button>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center">
                                                    30
                                                </p>
                                                <button class="mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <div class="pl-4 mt-2">
                                                <button class="w-9 h-7 bg-[#4d84a7] text-white rounded-sm">AM</button><br>
                                                <button class="w-9 h-7 mt-1 bg-[#d9d9d9] rounded-sm">PM</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                            <svelte:fragment slot="footer">
                              <Button class="bg-[#006eb2]" on:click={() => alert('Edit "success"')}>Apply</Button>
                              <Button class="bg-[#efefef] text-[#686868] ">Cancel</Button>
                            </svelte:fragment>
                          </Modal>
                    </td>
                </tr>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        Friday
                    </th>
                    <td class="px-6 py-4">
                        <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                            <p>08:30AM</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                            </svg>     
                        </div>
                    </td>
                    <td class="px-6 py-4">
                        <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                            <p>08:30AM</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5 " >
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                        </svg>     
                        </div>
                    </td>
                    <td class="px-6 py-4">
                        <Button on:click={() => (clickOutsideModal = true)}>
                            <div class="flex rounded-lg bg-[#004e80] w-24 justify-center border border-[#e6e6e6]">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-5" style="color: white;">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 9v6m3-3H9m12 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>   
                                <p class="text-white text-xs mt-0.5">Add Hours</p>     
                            </div>
                        </Button>
                        <Modal title="Select an Hours" bind:open={clickOutsideModal} autoclose outsideclose>
                            <div>
                                <div class="flex justify-around">
                                    <h3>Start Time</h3>
                                    <h3>End Time</h3>
                                </div>
                                <div class=" flex justify-around mt-2">
                                        <div class="flex">
                                            <div class="">
                                                <button class="w-9 h-6 flex justify-center ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center mt-1">
                                                    09
                                                </p>
                                                <button class=" ml-1.5 flex justify-center mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <p>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-7">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 12.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 18.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5Z" />
                                                </svg>                                      
                                            </p>
                                            <div class="">
                                                <button>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center">
                                                    30
                                                </p>
                                                <button class="mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <div class="pl-4 mt-2">
                                                <button class="w-9 h-7 bg-[#4d84a7] text-white rounded-sm">AM</button><br>
                                                <button class="w-9 h-7 mt-1 bg-[#d9d9d9] rounded-sm">PM</button>
                                            </div>
                                        </div>
                                        <div class="flex">
                                            <div class="">
                                                <button class="w-9 h-6 flex justify-center ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center mt-1">
                                                    09
                                                </p>
                                                <button class=" ml-1.5 flex justify-center mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <p>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-7">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 12.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 18.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5Z" />
                                                </svg>                                      
                                            </p>
                                            <div class="">
                                                <button>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center">
                                                    30
                                                </p>
                                                <button class="mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <div class="pl-4 mt-2">
                                                <button class="w-9 h-7 bg-[#4d84a7] text-white rounded-sm">AM</button><br>
                                                <button class="w-9 h-7 mt-1 bg-[#d9d9d9] rounded-sm">PM</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                            <svelte:fragment slot="footer">
                              <Button class="bg-[#006eb2]" on:click={() => alert('Edit "success"')}>Apply</Button>
                              <Button class="bg-[#efefef] text-[#686868] ">Cancel</Button>
                            </svelte:fragment>
                          </Modal>
                    </td>
                </tr>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        Saturday
                    </th>
                    <td class="px-6 py-4">
                        <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                            <p>08:30AM</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                            </svg>     
                        </div>
                    </td>
                    <td class="px-6 py-4">
                        <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                            <p>08:30AM</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5 " >
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                        </svg>     
                        </div>
                    </td>
                    <td class="px-6 py-4">
                        <Button on:click={() => (clickOutsideModal = true)}>
                            <div class="flex rounded-lg bg-[#004e80] w-24 justify-center border border-[#e6e6e6]">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-5" style="color: white;">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 9v6m3-3H9m12 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>   
                                <p class="text-white text-xs mt-0.5">Add Hours</p>     
                            </div>
                        </Button>
                        <Modal title="Select an Hours" bind:open={clickOutsideModal} autoclose outsideclose>
                            <div>
                                <div class="flex justify-around">
                                    <h3>Start Time</h3>
                                    <h3>End Time</h3>
                                </div>
                                <div class=" flex justify-around mt-2">
                                        <div class="flex">
                                            <div class="">
                                                <button class="w-9 h-6 flex justify-center ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center mt-1">
                                                    09
                                                </p>
                                                <button class=" ml-1.5 flex justify-center mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <p>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-7">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 12.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 18.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5Z" />
                                                </svg>                                      
                                            </p>
                                            <div class="">
                                                <button>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center">
                                                    30
                                                </p>
                                                <button class="mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <div class="pl-4 mt-2">
                                                <button class="w-9 h-7 bg-[#4d84a7] text-white rounded-sm">AM</button><br>
                                                <button class="w-9 h-7 mt-1 bg-[#d9d9d9] rounded-sm">PM</button>
                                            </div>
                                        </div>
                                        <div class="flex">
                                            <div class="">
                                                <button class="w-9 h-6 flex justify-center ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center mt-1">
                                                    09
                                                </p>
                                                <button class=" ml-1.5 flex justify-center mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <p>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-7">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 12.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 18.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5Z" />
                                                </svg>                                      
                                            </p>
                                            <div class="">
                                                <button>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center">
                                                    30
                                                </p>
                                                <button class="mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <div class="pl-4 mt-2">
                                                <button class="w-9 h-7 bg-[#4d84a7] text-white rounded-sm">AM</button><br>
                                                <button class="w-9 h-7 mt-1 bg-[#d9d9d9] rounded-sm">PM</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                            <svelte:fragment slot="footer">
                              <Button class="bg-[#006eb2]" on:click={() => alert('Edit "success"')}>Apply</Button>
                              <Button class="bg-[#efefef] text-[#686868] ">Cancel</Button>
                            </svelte:fragment>
                          </Modal>
                    </td>
                </tr>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        Sunday
                    </th>
                    <td class="px-6 py-4">
                        <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                            <p>08:30AM</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                            </svg>     
                        </div>
                    </td>
                    <td class="px-6 py-4">
                        <div class="flex rounded-sm bg-white w-24 justify-center border border-[#e6e6e6]">
                            <p>08:30AM</p>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mt-0.5 " >
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                        </svg>     
                        </div>
                    </td>
                    <td class="px-6 py-4">
                        <Button on:click={() => (clickOutsideModal = true)}>
                            <div class="flex rounded-lg bg-[#004e80] w-24 justify-center border border-[#e6e6e6]">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-5" style="color: white;">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 9v6m3-3H9m12 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>   
                                <p class="text-white text-xs mt-0.5">Add Hours</p>     
                            </div>
                        </Button>
                        <Modal title="Select an Hours" bind:open={clickOutsideModal} autoclose outsideclose>
                            <div>
                                <div class="flex justify-around">
                                    <h3>Start Time</h3>
                                    <h3>End Time</h3>
                                </div>
                                <div class=" flex justify-around mt-2">
                                        <div class="flex">
                                            <div class="">
                                                <button class="w-9 h-6 flex justify-center ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center mt-1">
                                                    09
                                                </p>
                                                <button class=" ml-1.5 flex justify-center mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <p>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-7">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 12.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 18.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5Z" />
                                                </svg>                                      
                                            </p>
                                            <div class="">
                                                <button>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center">
                                                    30
                                                </p>
                                                <button class="mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <div class="pl-4 mt-2">
                                                <button class="w-9 h-7 bg-[#4d84a7] text-white rounded-sm">AM</button><br>
                                                <button class="w-9 h-7 mt-1 bg-[#d9d9d9] rounded-sm">PM</button>
                                            </div>
                                        </div>
                                        <div class="flex">
                                            <div class="">
                                                <button class="w-9 h-6 flex justify-center ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 ">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center mt-1">
                                                    09
                                                </p>
                                                <button class=" ml-1.5 flex justify-center mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <p>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mt-7">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 12.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5ZM12 18.75a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5Z" />
                                                </svg>                                      
                                            </p>
                                            <div class="">
                                                <button>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
                                                    </svg>                                          
                                                </button>
                                                <p class="flex justify-center">
                                                    30
                                                </p>
                                                <button class="mt-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                                                      </svg>                                          
                                                </button>
                                            </div>
                                            <div class="pl-4 mt-2">
                                                <button class="w-9 h-7 bg-[#4d84a7] text-white rounded-sm">AM</button><br>
                                                <button class="w-9 h-7 mt-1 bg-[#d9d9d9] rounded-sm">PM</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                            <svelte:fragment slot="footer">
                              <Button class="bg-[#006eb2]" on:click={() => alert('Edit "success"')}>Apply</Button>
                              <Button class="bg-[#efefef] text-[#686868] ">Cancel</Button>
                            </svelte:fragment>
                          </Modal>
                    </td>
                </tr>
                
            </tbody>
        </table>
    </div>

    </div>
</div>

    

