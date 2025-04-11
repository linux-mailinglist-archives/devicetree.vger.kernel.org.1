Return-Path: <devicetree+bounces-165712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED5CA8526D
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 06:12:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED4A61736D8
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 04:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5690D27C85B;
	Fri, 11 Apr 2025 04:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="FW62hLXS"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1F027BF7B;
	Fri, 11 Apr 2025 04:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744344751; cv=none; b=lbLwOppaJ/gVVoSK2DcfMdBoUlBLSFf63q4ULo/j+7OF7s1aubtQvv/JD/jKEsOBtsDliUN9D/2EOjgpL9cHfInhsg9BMOwWO7rQnAzwYO522yRe7D7NJ/9Acs2jSkBM87N7lPeWGXiKUDkTyEoiOPzggCLncAYVUj4KPGAzj1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744344751; c=relaxed/simple;
	bh=ySMsdsrcT7K4/6KzeJdBUXGq0fyIokY6Q83+X3lzHbk=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=VPdg52UyWUjM9n1yRDY1gVgilWPeYrRAoNnGcCin7RLKWySatdV7tMpkE85p+gUQucyK8m8OV46ZlpAECA0v/t4zHZA6xQvPvyeAVRnY/PB7KOVIibm1ii3zNCnLBkUBmTLI5b3AE96zeRfVBNPGfqlxi5OuDKRSWAhqJ+rgczE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=FW62hLXS; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 53B4CE3b1473638
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 10 Apr 2025 23:12:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1744344734;
	bh=8XC15NhKFd0PY+4Z1N+K5fXmaFufMv7nE++wOrKWixg=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=FW62hLXSq91mU6OGMd3X4DNS6b8tOBLV2Ej0PjEUI4JNcmnPg7v7oMT9LIW3VGzlp
	 BlysRAJWkSR33YVTOfv6PAsCDBUIm9cEE31V2YoC0YH3Dv0cSh6L9/zfX6XQI+HpLK
	 xOiLCKjwbYokjiHWtqj1gU2V75jZ5dUhKVZf0Wpk=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 53B4CES5068987
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 10 Apr 2025 23:12:14 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 10
 Apr 2025 23:12:14 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 10 Apr 2025 23:12:13 -0500
Received: from [172.24.227.151] (uda0510294.dhcp.ti.com [172.24.227.151])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 53B4C9am074277;
	Thu, 10 Apr 2025 23:12:10 -0500
Message-ID: <7629a496-4495-4333-9a90-829e53e9ea84@ti.com>
Date: Fri, 11 Apr 2025 09:42:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 06/11] arm64: dts: ti: k3-am62a7-sk: Enable IPC with
 remote processors
To: Andrew Davis <afd@ti.com>, Judith Mendez <jm@ti.com>,
        Devarsh Thakkar
	<devarsht@lewv0571a.ent.ti.com>,
        Nishanth Menon <nm@ti.com>, Hari Nagalla
	<hnagalla@ti.com>
CC: Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
        Markus
 Schneider-Pargmann <msp@baylibre.com>
References: <20250405001518.1315273-1-jm@ti.com>
 <20250405001518.1315273-7-jm@ti.com>
 <6868f593-0728-4e92-a57b-87db6a0037f6@ti>
 <f42607f5-e39d-48a1-89c0-11d4982a2426@ti.com>
 <f8f1d877-3d13-4ba7-90e1-455923458c11@ti.com>
 <fe735242-4643-432a-adaf-27e29719948a@ti.com>
 <bffd8489-1556-425d-b3f9-8fde8a7d34a7@ti.com>
 <b97c1eaa-f34c-4731-8e9e-b51faa4619c4@ti.com>
Content-Language: en-US
From: Beleswar Prasad Padhi <b-padhi@ti.com>
In-Reply-To: <b97c1eaa-f34c-4731-8e9e-b51faa4619c4@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Andrew,

On 10/04/25 23:20, Andrew Davis wrote:
> On 4/10/25 3:55 AM, Beleswar Prasad Padhi wrote:
>> Hi Judith,
>>
>> On 10/04/25 04:02, Judith Mendez wrote:
>>> Hi Beleswar,
>>>
>>> On 4/7/25 11:00 PM, Beleswar Prasad Padhi wrote:
>>>> Hi Judith, Andrew,
>>>>
>>>> On 07/04/25 19:43, Judith Mendez wrote:
>>>>> Hi Devarsh,
>>>>>
>>>>> On 4/7/25 8:54 AM, Devarsh Thakkar wrote:
>>>>>> Hi Judith,
>>>>>>
>>>>>> On 05/04/25 05:45, Judith Mendez wrote:
>>>>>>  > From: Devarsh Thakkar <devarsht@ti.com>
>>>>>>>
>>>>>>
>>>>>> Thanks for the patch.
>>>>>>
>>>>>>> For each remote proc, reserve memory for IPC and bind the mailbox
>>>>>>> assignments. Two memory regions are reserved for each remote 
>>>>>>> processor.
>>>>>>> The first region of 1MB of memory is used for Vring shared buffers
>>>>>>> and the second region is used as external memory to the remote 
>>>>>>> processor
>>>>>>> for the resource table and for tracebuffer allocations.
>>>>>>>
>>>>>>> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
>>>>>>> Signed-off-by: Hari Nagalla <hnagalla@ti.com>
>>>>>>> Signed-off-by: Judith Mendez <jm@ti.com>
>>>>>>> ---
>>>>>>>   arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 96 
>>>>>>> +++++++++++++++++++++++--
>>>>>>>   1 file changed, 90 insertions(+), 6 deletions(-)
>>>>>>>
>>>>>>> diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts 
>>>>>>> b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
>>>>>>> index 1c9d95696c839..7d817b447c1d0 100644
>>>>>>> --- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
>>>>>>> +++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
>>>>>>> @@ -52,6 +52,42 @@ linux,cma {
>>>>>>>               linux,cma-default;
>>>>>>>           };
>>>>>>> +        c7x_0_dma_memory_region: c7x-dma-memory@99800000 {
>>>>>>> +            compatible = "shared-dma-pool";
>>>>>>> +            reg = <0x00 0x99800000 0x00 0x100000>;
>>>>>>> +            no-map;
>>>>>>> +        };
>>>>>>> +
>>>>>>> +        c7x_0_memory_region: c7x-memory@99900000 {
>>>>>>> +            compatible = "shared-dma-pool";
>>>>>>> +            reg = <0x00 0x99900000 0x00 0xf00000>;
>>>>>>> +            no-map;
>>>>>>> +        };
>>>>>>> +
>>>>>>> +        mcu_r5fss0_core0_dma_memory_region: 
>>>>>>> r5f-dma-memory@9b800000 {
>>>>>>> +            compatible = "shared-dma-pool";
>>>>>>> +            reg = <0x00 0x9b800000 0x00 0x100000>;
>>>>>>> +            no-map;
>>>>>>> +        };
>>>>>>> +
>>>>>>> +        mcu_r5fss0_core0_memory_region: r5f-dma-memory@9b900000 {
>>>>>>> +            compatible = "shared-dma-pool";
>>>>>>> +            reg = <0x00 0x9b900000 0x00 0xf00000>;
>>>>>>> +            no-map;
>>>>>>> +        };
>>>>>>> +
>>>>>>> +        wkup_r5fss0_core0_dma_memory_region: 
>>>>>>> r5f-dma-memory@9c800000 {
>>>>>>> +            compatible = "shared-dma-pool";
>>>>>>> +            reg = <0x00 0x9c800000 0x00 0x100000>;
>>>>>>> +            no-map;
>>>>>>> +        };
>>>>>>> +
>>>>>>> +        wkup_r5fss0_core0_memory_region: r5f-dma-memory@9c900000 {
>>>>>>> +            compatible = "shared-dma-pool";
>>>>>>> +            reg = <0x00 0x9c900000 0x00 0xf00000>;
>>>>>>> +            no-map;
>>>>>>> +        };
>>>>>>> +
>>>>>>>           secure_tfa_ddr: tfa@9e780000 {
>>>>>>>               reg = <0x00 0x9e780000 0x00 0x80000>;
>>>>>>>               alignment = <0x1000>;
>>>>>>> @@ -63,12 +99,6 @@ secure_ddr: optee@9e800000 {
>>>>>>>               alignment = <0x1000>;
>>>>>>>               no-map;
>>>>>>>           };
>>>>>>> -
>>>>>>> -        wkup_r5fss0_core0_memory_region: r5f-dma-memory@9c900000 {
>>>>>>> -            compatible = "shared-dma-pool";
>>>>>>> -            reg = <0x00 0x9c900000 0x00 0x01e00000>;
>>>>>>> -            no-map;
>>>>>>> -        };
>>>>>>>       };
>>>>>>
>>>>>> This is missing the edgeAI specific remote-core carveouts and 
>>>>>> RTOS-to-RTOS IPC memory regions [1] being used by edgeAI 
>>>>>> firmwares which come as pre-packaged in the official SDK release 
>>>>>> for AM62A.
>>>>>>
>>>>>> There is only one official SDK release for AM62A (which is edgeAI 
>>>>>> based) [2] which packages these edgeAI remoteproc firmwares and 
>>>>>> in my view it is a fair expectation that remote core careveouts 
>>>>>> in device-tree should align with firmwares released in SDK.
>>>>>>
>>>>>> This is because most developers (including me) and vendors 
>>>>>> download this official SDK release and use it with latest 
>>>>>> upstream kernel and modules (right now we are applying required 
>>>>>> patches locally) and this patch won't suffice for this, in-fact 
>>>>>> it won't work since the remoteproc firmwares are already using 
>>>>>> regions beyond the reserved-regions from this patch.
>>>>>
>>>>> I understand your point, currently with this patch remoteproc loading
>>>>> will not work for some cores. However, the goal here is to 
>>>>> standardize
>>>>> as much as possible the memory carveout sizes, push the "demo 
>>>>> firmware"
>>>>> to request resources the correct way from resource table, 
>>>>
>>>>
>>>> It is indeed more suitable if the memory carveouts are called out 
>>>> in the resource table of the firmware. But you will still need to 
>>>> reserve that memory sections in the Device Tree so that Kernel does 
>>>> not map that memory for anything else. So I am thinking how moving 
>>>> to resource table will help solve this problem?
>>>
>>> The point is that our default FW is doing things incorrectly. We 
>>> want to
>>> push the existing FW to
>>> 1. Request resources via resource table.
>>> 2. Fix their memory requirements (recent offline discussion proved that
>>> FW is requesting more than it needs)
>>> 3. FW should adapt to Linux not Linux adapt to FW
>>
>>
>> Thanks. I also agree with you on all of the above points for a 
>> standard firmware.
>>
>> However, I was referring to this problem:
>> Can we get rid of static reserved memory carveouts in DT?
>> People using a custom firmware will have to patch the Device Tree to 
>> reserve larger/different memory regions. Is there some way where the 
>> firmware can dictate the "reserved" memory carveouts at runtime? 
>> Memory carveouts can be announced through Resource Table, but there 
>> is no guarantee we will be able to allocate it (it could be mapped by 
>> the Kernel for some other alloc), unless its pre-reserved in DT.
>
> That's the neat thing about the RSC_CARVEOUT item in the resource table,
> it works both ways. The firmware can request a static address, or it can
> use FW_RSC_ADDR_ANY for the address and Linux will go and dynamically
> allocate it a region. Then it passes this info back to the firmware by
> updating the resource table in memory. Firmware can then simply read this
> carveout address from its resource table and start using it.


Ah yes, I forgot about that. We already use FW_RSC_ADDR_ANY for VRING
allocations. We can scale it to memory carveouts in the similar way. Thanks.

>
> The only time we need a static addresses would be for code sections as
> they are not relocatable (yet). And that is the reason we have the
> minimal carveouts we are adding in this patch. Code goes here. And
> these carveouts are 15MB! No firmware I know of has 15MB of *code*
> section.
>
> As we found in the offline discussion, even our largest firmware
> doesn't use near that much space. What that firmware is doing is picking
> some spots in DRAM for its heap and buffer areas, and without 
> coordinating
> with Linux, just starts using that memory. We have to then go into DT and
> carveout all these ranges to avoid stepping on the firmware heaps from
> Linux.


Yeah I have found this as well. All of those heap/buffer areas should be 
moved
to the resource table now.

>
> With these firmware heap/buffer memory static carveouts we have to 
> account
> for the worst case and statically carve out enough memory for the largest
> possible amount of memory a firmware could ever use. In some firmware
> we ship today this is +2GB! So why should every user of this board lose
> all this memory when they might happen to be using a more sane firmware
> that doesn't use so much (like my Zephyr firmware), or if their firmware
> doesn't need any heap at all (like some other firmware we have).


Agreed on your point.

Thanks,
Beleswar

>
> Andrew
>
>>
>> Thanks,
>> Beleswar
>>
>>>
>>> If not, then then we should try to move to Zephyr firmware or other/
>>> better options.
>>>
>>> Hope I am able to explain myself better this time around.
>>>
>>> ~ Judith
>>>
>>>>
>>>> Thanks,
>>>> Beleswar
>>>>
>>>>> and move away
>>>>> from this dependency and limitations that we have with our 
>>>>> firmware. We
>>>>> should soon be able to generate our own firmware using Zephyr, which
>>>>> Andrew is pioneering, so with this firmware we should move to the
>>>>> correct direction upstream. Downstream we are still using the memory
>>>>> carveout sizes that the firmware folk want so desperately to keep, 
>>>>> for
>>>>> now..
>>>>>
>>>>> ~ Judith
>>>>>
>>>>>>
>>>>>> [1]: 
>>>>>> https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/tree/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts?h=ti-linux-6.6.y-cicd#n103
>>>>>> [2]: https://www.ti.com/tool/PROCESSOR-SDK-AM62A
>>>>>>
>>>>>> Regards
>>>>>> Devarsh
>>>>>>
>>>>>>>       opp-table {
>>>>>>> @@ -741,3 +771,57 @@ dpi1_out: endpoint {
>>>>>>>           };
>>>>>>>       };
>>>>>>>   };
>>>>>>> +
>>>>>>> +&mailbox0_cluster0 {
>>>>>>> +    status = "okay";
>>>>>>> +
>>>>>>> +    mbox_r5_0: mbox-r5-0 {
>>>>>>> +        ti,mbox-rx = <0 0 0>;
>>>>>>> +        ti,mbox-tx = <1 0 0>;
>>>>>>> +    };
>>>>>>> +};
>>>>>>> +
>>>>>>> +&mailbox0_cluster1 {
>>>>>>> +    status = "okay";
>>>>>>> +
>>>>>>> +    mbox_c7x_0: mbox-c7x-0 {
>>>>>>> +        ti,mbox-rx = <0 0 0>;
>>>>>>> +        ti,mbox-tx = <1 0 0>;
>>>>>>> +    };
>>>>>>> +};
>>>>>>> +
>>>>>>> +&mailbox0_cluster2 {
>>>>>>> +    status = "okay";
>>>>>>> +
>>>>>>> +    mbox_mcu_r5_0: mbox-mcu-r5-0 {
>>>>>>> +        ti,mbox-rx = <0 0 0>;
>>>>>>> +        ti,mbox-tx = <1 0 0>;
>>>>>>> +    };
>>>>>>> +};
>>>>>>> +
>>>>>>> +&wkup_r5fss0 {
>>>>>>> +    status = "okay";
>>>>>>> +};
>>>>>>> +
>>>>>>> +&wkup_r5fss0_core0 {
>>>>>>> +    mboxes = <&mailbox0_cluster0>, <&mbox_r5_0>;
>>>>>>> +    memory-region = <&wkup_r5fss0_core0_dma_memory_region>,
>>>>>>> + <&wkup_r5fss0_core0_memory_region>;
>>>>>>> +};
>>>>>>> +
>>>>>>> +&mcu_r5fss0 {
>>>>>>> +    status = "okay";
>>>>>>> +};
>>>>>>> +
>>>>>>> +&mcu_r5fss0_core0 {
>>>>>>> +    mboxes = <&mailbox0_cluster2>, <&mbox_mcu_r5_0>;
>>>>>>> +    memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
>>>>>>> + <&mcu_r5fss0_core0_memory_region>;
>>>>>>> +};
>>>>>>> +
>>>>>>> +&c7x_0 {
>>>>>>> +    mboxes = <&mailbox0_cluster1>, <&mbox_c7x_0>;
>>>>>>> +    memory-region = <&c7x_0_dma_memory_region>,
>>>>>>> +            <&c7x_0_memory_region>;
>>>>>>> +    status = "okay";
>>>>>>> +};
>>>>>>
>>>>>
>>>

