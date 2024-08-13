<script>
	import { goto } from "$app/navigation";
	import { page } from "$app/stores";
	import SignOutIcon from "$components/icons/SignOut.svelte";
	import CheckSelector from "$components/materials/check-radio/CheckSelector.svelte";
	import SMFBLoading from "$components/materials/spinners/fbLoading/SMFBLoading.svelte";
	import { signOut } from "$providers/actions/kauth/auth";
	import { getChannels } from "$providers/actions/kchannel/channel/channel";
	import { user } from "$providers/stores/kauth/user";
	import { createEventDispatcher, onMount } from "svelte";
	import { fade } from "svelte/transition";
	import ChProfileItem from "./ChProfileItem.svelte";
	const dispatch = createEventDispatcher();

	$: channelId = $page.params.channelId;

	let isOpen = false;
	let selectedChannel;
	let element;

	const onSignOut = async () => {
		const data = await signOut.load(fetch);
		if (data.success) goto("/auth");
	};
	let loadChannelState = {
		channels: null,
		loading: false,
		errMsg: "",
		loaded: false,
	};
	const onLoadAChannel = async () => {
		try {
			loadChannelState.errMsg = "";
			loadChannelState.loading = true;
			loadChannelState.loaded = false;
			const res = await getChannels.load();
			loadChannelState.channels = res.data;

			selectedChannel = loadChannelState.channels.find(
				(ch) => ch.id === channelId
			);

			loadChannelState.loaded = true;
		} catch (err) {
			loadChannelState.errMsg = err?.message;
		} finally {
			loadChannelState.loading = false;
		}
	};

	onMount(() => {
		onLoadAChannel();
	});

	function toggleDropdown() {
		isOpen = !isOpen;
	}

	function selectOption(channel) {
		selectedChannel = channel;
		dispatch("optionSelected", { channel });
		goto(`/dashboard/channel/${channel.id}/`);
	}

	function handleClickOutside(event) {
		if (isOpen && !event.target.closest(".dropdown-container")) {
			toggleDropdown();
		}
	}

	onMount(() => {
		document.addEventListener("click", handleClickOutside);
	});
</script>

<div class="relative" bind:this={element}>
	<div
		class="flex justify-end text-gray-700 w-72 focus:outline-none"
		on:click={toggleDropdown}
	>
		{#if loadChannelState.loaded}
			<button
				in:fade={{ duration: 200 }}
				class="flex items-center justify-end p-1 pl-4 space-x-2 rounded-full dropdown-container bg-background-1"
			>
				{#if !!selectedChannel}
					<div
						class="truncate hover:text-clip max-w-[230px] text-lg font-medium"
					>
						{selectedChannel?.name || "Choose a channel"}
					</div>
					<div class="">
						<img
							class=" min-w-[40px] h-10 rounded-full border border-background-2 object-cover"
							src="https://cdn3d.iconscout.com/3d/premium/thumb/food-and-drink-5727926-4800418.png"
							alt=""
						/>
					</div>
				{:else}
					<div
						class="truncate hover:text-clip max-w-[230px] text-lg font-medium py-1 px-2"
					>
						{"Choose a channel"}
					</div>
				{/if}
			</button>
		{:else if loadChannelState.loading}
			<div
				in:fade={{ duration: 100 }}
				class="flex items-center justify-center w-40 h-12 rounded-full dropdown-container bg-background-1"
			>
				<SMFBLoading color="gray" />
			</div>
		{/if}
		{#if !loadChannelState.loading && loadChannelState.errMsg}
			<div class="p-5 font-semibold text-center text-subtitle-2">
				{loadChannelState.errMsg}
			</div>
		{/if}
	</div>

	{#if isOpen}
		<!-- {#if isOpen} -->
		<div
			class="absolute z-20 w-full px-2 pt-2 mt-2 border-2 rounded-md shadow-lg dropdown-options bg-background border-background-1"
		>
			<div class="p-4 bg-white rounded-lg">
				<div class="flex items-center pb-4 space-x-4">
					<img
						class="object-cover w-16 h-16 border rounded-full"
						src="https://w5b2c9z3.rocketcdn.me/wp-content/uploads/sites/20/2020/04/indiano.png"
						alt=""
					/>
					<div class="font-medium">
						{$user.firstName + " " + $user.lastName}
						<div class="text-sm text-subtitle-2">@{$user.username}</div>
					</div>
				</div>
				<div class="w-full space-y-2 overflow-auto">
					{#if loadChannelState.loaded}
						{#each loadChannelState.channels as channel}
							<ChProfileItem
								bind:channel
								on:select={() => {
									selectOption(channel);
								}}
							/>
						{/each}
					{:else if loadChannelState.loading}
						<div class="flex items-center justify-center w-full h-full">
							<SMFBLoading color="gray" />
						</div>
					{/if}
					{#if !loadChannelState.loading && loadChannelState.errMsg}
						<div class="p-5 font-semibold text-center text-subtitle-2">
							{loadChannelState.errMsg}
						</div>
					{/if}
				</div>
			</div>
			<div class="w-full py-2 m-auto text-center">
				<button on:click={onSignOut}>
					<div class="flex py-2 text-gray-500 hover:text-gray-700">
						<SignOutIcon /> Sign out
					</div>
				</button>
			</div>
		</div>
	{/if}
</div>
