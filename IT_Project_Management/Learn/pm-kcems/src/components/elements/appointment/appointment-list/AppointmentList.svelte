<script>
    import { onMount } from "svelte";
    import AppointmentListItem from "./AppointmentListItem.svelte";

    export let type;

    let list;
    let appointments;


    let allAppointments = [
        {
            date: "12 January 2024",
            time: "10:30",
            name: "Nop Phearum",
            username: "@nopphearum",
            status: "pending"
        },
        {
            date: "12 January 2024",
            time: "10:30",
            name: "Nop Phearum",
            username: "@nopphearum",
            status: "accepted"
        },
        {
            date: "12 January 2024",
            time: "10:30",
            name: "Nop Phearum",
            username: "@nopphearum",
            status: "pending"
        },
        {
            date: "12 January 2024",
            time: "10:30",
            name: "Nop Phearum",
            username: "@nopphearum",
            status: "rejected"
        },
    ]

let pendingAppointments = [
    {
        date: "12 January 2024",
        time: "10:30",
        name: "Nop Phearum",
        username: "@nopphearum",
        status: "pending"
    },
    {
        date: "12 January 2024",
        time: "10:30",
        name: "Nop Phearum",
        username: "@nopphearum",
        status: "pending"
    },
]

    let acceptedAppointments = [
        {
            date: "12 January 2024",
            time: "10:30",
            name: "Nop Phearum",
            username: "@nopphearum",
            status: "accepted"
        },
    ]
    
    function checkType(type){
        if (type == "all") {
            appointments = allAppointments
        }
        else if (type == "accepted") {
            appointments = acceptedAppointments
        } 
        else if(type == "pending") {
            appointments = pendingAppointments
        }
        else if(type == "history") {
            appointments = allAppointments
        }
    }

    onMount(() => {
        checkType(type)
    })

    $: {
        checkType(type);
    }
</script>
<div class="h-fit ">
    <div class="flex justify-between">
        <div class="flex items-end">
            <div class="w-12 border-t-2 border-l-2 rounded-tl-lg h-4 border-[#004E80]"></div>
            <div class="text-[#004E80] font-bold px-2 flex items-center">
                <span class="text-2xl">&lt</span>
                <span class="mx-4">January 2024</span>
                <span class="text-2xl">&gt</span>
            </div>
        </div>
        <div class="flex text-white text-sm">
            <button class="bg-[#004E80] px-6 rounded-l-lg h-fit py-1">
                All
            </button>
            <button class="bg-[#006EB2] px-6 rounded-r-lg h-fit py-1">
                Today
            </button>
        </div>
    </div>
    <div class="relative overflow-x-auto sm:rounded-bl-lg border-b-2 border-l-2 border-[#004E80] rounded-bl-lg p-[1vw] h-[65vh] overflow-scroll">
        <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
            <tbody class="rounded-lg">
                {#each appointments as appointment}
                    <AppointmentListItem appointmentInfo={appointment}/>
                {/each}
            </tbody>
        </table>
    </div>
</div>