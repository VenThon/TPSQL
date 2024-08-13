<script>
    import Users from "$components/icons/Users.svelte";
    import CalendarAccepted from "$components/icons/CalendarAccepted.svelte";
    import Pending from "$components/icons/Pending.svelte";
    import { onMount } from "svelte";
    import { createEventDispatcher } from 'svelte';

    const dispatch = createEventDispatcher();

    export let selected = false;
    export let type;

    let text;
    let icon;
    let number;
    
    function handleClick() {
        dispatch('click')
    }
    
    onMount(() => {

        if (!['all', 'pending', 'accepted'].includes(type)) {
            console.error('Invalid icon. Please provide one of: option1, option2, option3');
            type = 'all';
        }
    
        if (type == "all"){
            text = "All"
            icon = "all"
            number = 125
        }
        else if (type == "pending") {
            text = "Pending"
            icon = "pending"
            number = 25
        }
        else if (type == "accepted") {
            text = "Accepted"
            icon = "accepted"
            number = 100
        }
    })

</script>

<button on:click={handleClick} class="{selected ? "text-white bg-[#004E80]" : "text-[#004E80]"} duration-150 flex flex-col items-start border-[4px] border-[#004E80] rounded-xl w-[30%] px-[1rem] py-[0.5rem] overflow-hidden">
    <div class=" flex items-center">
        {#if icon == "all"}
        <Users height="23" width="23"/>
        {:else if icon == 'pending'}
        <Pending height="23" width="23"/>
        {:else if icon == 'accepted'}
        <CalendarAccepted height="23" width="23"/>
        {/if}
        <span class="md:text-2xl sm:text-lg font-bold ml-3">{text}</span>
    </div>
    <h1 class="text-4xl font-bold">{number}</h1>
</button>