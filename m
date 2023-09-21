Return-Path: <devicetree+bounces-1956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1E07A93E0
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 13:37:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6DA6B209AF
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 11:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29BBEA95E;
	Thu, 21 Sep 2023 11:37:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FC5A956
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:37:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B630C4AF78;
	Thu, 21 Sep 2023 11:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695296254;
	bh=sLJ/l/n2ptddnatCSsMBpdcrW0dHjKWvBZR46GW7NXU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hoaZm/IxFhL5Qc7SzxCvw1a/BwOV0idneO6HYD8sekXuXT5sltwsCosABftZ0SOFs
	 CzbOgBQmOlSffpzZrVjpHoBvWK120MFC4WW0o4zeWHvleGyeIgnidTnne8ch7AgWHs
	 TJanr6xGnnVUs15YI0qHgW8HsPYvGXXnLa4tAurEmIn3Wh6WszUDPC3G/WhFnedyxp
	 hNLD3vpddL2+QXSXaA5WMFC1FHqgwtEAqXsP5O9aMbkJEe8GMo9swz0DMV31iPWkny
	 LySGFguK6lz00gux5IDKVdydoEe47DGjOLErKtX0r+T/WFeeJhv84zOZspK66hDdDW
	 fjuA3Sn8PHrfg==
Message-ID: <6f2b38f8-1962-46f2-a095-b1eaf99ed407@kernel.org>
Date: Thu, 21 Sep 2023 14:37:29 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: ti: am642-evm: Add overlay for NAND
 expansion card
Content-Language: en-US
To: Andrew Davis <afd@ti.com>, Nishanth Menon <nm@ti.com>
Cc: vigneshr@ti.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, srk@ti.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Siddharth Vadapalli <s-vadapalli@ti.com>
References: <20230920133450.54226-1-rogerq@kernel.org>
 <20230920133450.54226-3-rogerq@kernel.org>
 <20230920135802.3ej2wcuaruqjidel@uncouth>
 <e8f26137-1284-4f45-a74d-a0a5f2aa2f93@kernel.org>
 <20230920164424.rrjvm6nvtv4ysyrw@unreal>
 <c7ec6ccd-37de-244d-0b3b-cb5d13bae539@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <c7ec6ccd-37de-244d-0b3b-cb5d13bae539@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 20/09/2023 20:06, Andrew Davis wrote:
> On 9/20/23 11:44 AM, Nishanth Menon wrote:
>> On 18:18-20230920, Roger Quadros wrote:
>>>
>>>
>>> On 20/09/2023 16:58, Nishanth Menon wrote:
>>>> On 16:34-20230920, Roger Quadros wrote:
>>>>> The NAND expansion card plugs in over the HSE (High Speed Expansion)
>>>>> connector. Add support for it.
>>>>>
>>>>> Signed-off-by: Roger Quadros <rogerq@kernel.org>
>>>>> ---
>>>>>   arch/arm64/boot/dts/ti/Makefile               |   1 +
>>>>>   arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso | 140 ++++++++++++++++++
>>>>>   2 files changed, 141 insertions(+)
>>>>>   create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
>>>>> index 06d6f264f292..ece74085a6be 100644
>>>>> --- a/arch/arm64/boot/dts/ti/Makefile
>>>>> +++ b/arch/arm64/boot/dts/ti/Makefile
>>>>> @@ -29,6 +29,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-am62p5-sk.dtb
>>>>>     # Boards with AM64x SoC
>>>>>   dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
>>>>> +dtb-$(CONFIG_ARCH_K3) += k3-am642-evm-nand.dtbo
>>>>>   dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-rdk.dtb
>>>>>   dtb-$(CONFIG_ARCH_K3) += k3-am642-sk.dtb
>>>>>   dtb-$(CONFIG_ARCH_K3) += k3-am642-tqma64xxl-mbax4xxl.dtb
>>>>
>>>> Also see https://lore.kernel.org/all/20230911165610.GA1362932-robh@kernel.org/
>>>>
>>>> you may not get the dtbo installed when doing make dtbs_install
>>>>
>>>> [...]
>>>>
>>>
>>> $ v8make dtbs_install INSTALL_DTBS_PATH=/tmp
>>>    INSTALL /tmp/ti/k3-am625-beagleplay.dtb
>>>    INSTALL /tmp/ti/k3-am625-phyboard-lyra-rdk.dtb
>>>    INSTALL /tmp/ti/k3-am625-sk.dtb
>>>    INSTALL /tmp/ti/k3-am625-verdin-nonwifi-dahlia.dtb
>>>    INSTALL /tmp/ti/k3-am625-verdin-nonwifi-dev.dtb
>>>    INSTALL /tmp/ti/k3-am625-verdin-nonwifi-yavia.dtb
>>>    INSTALL /tmp/ti/k3-am625-verdin-wifi-dahlia.dtb
>>>    INSTALL /tmp/ti/k3-am625-verdin-wifi-dev.dtb
>>>    INSTALL /tmp/ti/k3-am625-verdin-wifi-yavia.dtb
>>>    INSTALL /tmp/ti/k3-am62-lp-sk.dtb
>>>    INSTALL /tmp/ti/k3-am62x-sk-hdmi-audio.dtbo
>>>    INSTALL /tmp/ti/k3-am62a7-sk.dtb
>>>    INSTALL /tmp/ti/k3-am62p5-sk.dtb
>>>    INSTALL /tmp/ti/k3-am642-evm.dtb
>>>    INSTALL /tmp/ti/k3-am642-evm-nand.dtbo
>>> ^^^^
>>>    INSTALL /tmp/ti/k3-am642-phyboard-electra-rdk.dtb
>>>    INSTALL /tmp/ti/k3-am642-sk.dtb
>>>
>>>
>>> What did I miss?
>>
>> I missed it, actually. See Rob's comment:
>> https://lore.kernel.org/all/CAL_Jsq+GR3hP6hFvFn2z5aXvSXnh9butD3aKZ-y_XJgx0_YPTw@mail.gmail.com/
>>
>> Having orphan dtbo is apparently frowned upon
>>
> 
> And if you apply these overlays to the base DTB then it gets
> symbols added automatically, no need for your patch [1/2] here.
> 

Is this OK?

	k3-am642-evm-nand-dtbs := k3-am642-evm.dtb k3-am642-evm-nand.dtbo
	dtb-$(CONFIG_ARCH_K3) += k3-am642-evm-nand.dtb

So patch 1 is not required in this case but we have an
extra dtb file which is not really required.

I have 2 more issues to point out

1)
With existing examples e.g. J7200 EVM
wouldn't  k3-j7200-evm.dtb include the k3-j7200-evm-quad-port-eth-exp.dtbo?
Is this what we really want?

likewise for k3-j721e-evm.dtb and k3-am654-gp-evm.dtb

2)
Another issue (unrelated to this change) is the below warning:

	arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso:65.8-140.3: Warning (avoid_default_addr_size): /fragment@3/__overlay__: Relying on default #address-cells value
	arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso:65.8-140.3: Warning (avoid_default_addr_size): /fragment@3/__overlay__: Relying on default #size-cells value

This is because we use the 'ranges' property in the gpmc0 node
and the compiler doesn't know the #address/size-cells of the
parent node.

Is there a trick to specify it in the dtso file?

-- 
cheers,
-roger

