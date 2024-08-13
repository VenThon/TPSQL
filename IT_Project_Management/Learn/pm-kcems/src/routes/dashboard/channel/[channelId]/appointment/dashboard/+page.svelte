<script>
    import Calendar from "$components/icons/Calendar.svelte";
    import History from "$components/icons/History.svelte";
    import DashboardCard from "$components/elements/appointment/DashboardCard.svelte";
    import Users from "$components/icons/Users.svelte";
    import AppointmentList from "$components/elements/appointment/appointment-list/AppointmentList.svelte";
    import Modal from "$components/elements/modals/Modal.svelte";
    import HistoryCard from "$components/elements/appointment/HistoryCard.svelte";
    import CalendarCard from "$components/elements/appointment/CalendarCard.svelte";
    import Pending from "$components/icons/Pending.svelte";
    import CalendarAccepted from "$components/icons/CalendarAccepted.svelte";

    let showHistory = false;
    let showCalendar = false;

    let selectedCategory = "all"
</script>

<div>
    <div class="flex justify-between mb-4">
        <h2 class=" font-bold text-lg text-[#666666]">Upcoming Appointments</h2>
        <div class=" flex justify-between w-[18%] flex-col lg:flex-row">
            <button on:click={()=>{showCalendar=true}} class="text-sm border-2 border-[#004E80] text-[#004E80] py-[2px] px-[6px] rounded-md flex items-center duration-100 hover:bg-[#004E80] hover:text-white overflow-hidden"><Calendar />  Calendar</button>
            <Modal shown={showCalendar}>
                <CalendarCard on:close={()=>{showCalendar=false}}/>
            </Modal>
            <button on:click={()=>{showHistory=true}} class="text-sm border-2 bg-[#004E80] border-[#004E80] text-white py-[2px] px-[6px] rounded-md flex items-center duration-100 hover:bg-white hover:text-[#004E80] overflow-hidden"><History stroke_width="0.7"/>  History</button>
            <Modal shown={showHistory}>
                <HistoryCard on:close={()=>{showHistory=false}}/>
            </Modal>
        </div>
    </div>
    <div class="flex justify-between mb-4">
        <DashboardCard selected={selectedCategory == "all"} type="all" on:click={()=>{selectedCategory="all"}}/>
        <DashboardCard selected={selectedCategory == "accepted"} type="accepted" on:click={()=>{selectedCategory="accepted"}}/>
        <DashboardCard selected={selectedCategory == "pending"} type="pending" on:click={()=>{selectedCategory="pending"}}/>
    </div>
    <div class="rounded-lg bg-[#F4F4F4] p-[1vw] h-fit">
        <div class="flex items-center text-[#004E80] mb-3">
            {#if selectedCategory == "all"}
            <Users height="23" width="23"/>
            {:else if selectedCategory == 'pending'}
            <Pending height="23" width="23"/>
            {:else if selectedCategory == 'accepted'}
            <CalendarAccepted height="23" width="23"/>
            {/if}
            <span class="w-3"></span>
            <h2 class="font-bold text-xl">{selectedCategory.charAt(0).toUpperCase() + selectedCategory.slice(1)} Appointments</h2>
        </div>

        <AppointmentList type={selectedCategory}/>
    </div>
    
</div>