<script>
    import QuestionAnswerCard from "./QuestionAnswerCard.svelte";
    import Close from "$components/icons/Close/Close.svelte";

    let showProfile = false
</script>

<div class="flex items-center justify-center w-full h-full">
    <div class=" w-[50%] bg-white rounded-lg shadow p-[1vw] min-h-1/2">
        <div class="flex justify-end">
            <button>
                <Close />
            </button>
        </div>
        <ul class=" w-full my-[1.3vw] font-medium text-center text-gray-500 rounded-lg shadow sm:flex dark:divide-gray-700 dark:text-gray-400">
            <li class="w-full">
                <button on:click={()=>{showProfile=false}} class="{!showProfile ? "text-white bg-[#004E80]" : "text-[#004E80] bg-[#fbfbfb]"} duration-150 w-full p-4 border-r border-gray-200 dark:border-gray-700 flex items-center justify-center ">Form Answers</button>
            </li>
            <li class="w-full">
                <button on:click={()=>{showProfile=true}} class="{showProfile ? "text-white bg-[#004E80]" : "text-[#004E80] bg-[#fbfbfb]"} duration-150 w-full p-4 border-r border-gray-200 dark:border-gray-700 flex items-center justify-center ">Profile</button>
            </li>
        </ul>
        <QuestionAnswerCard question="What are your systoms?" answer="My symptoms are a runny nose, sore throat, and a bit of coughing."/>
        <QuestionAnswerCard question="What are your systoms?" answer="My symptoms are a runny nose, sore throat, and a bit of coughing."/>
    </div>
</div>