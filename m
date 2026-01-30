Return-Path: <devicetree+bounces-261155-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CQCHpOIfGmbNgIAu9opvQ
	(envelope-from <devicetree+bounces-261155-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:31:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6726FB9618
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:31:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4B45300CC27
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CB67369202;
	Fri, 30 Jan 2026 10:31:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B9E6258CE7;
	Fri, 30 Jan 2026 10:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769769104; cv=none; b=kNa3iD8Cp1Yf9vnO5Ro03ePyfnbo+5iQ9Rjdbdpg/M34YOkqI+gn+aqNZYJ0socqFzFM84liy8wWd5soss02RMwEggF6WseILlIr+0Jlv0wsupCUdcZY0ahP0ohCKEkjSZlXPSBBh4BP26XB12ZxkavtKKgfEy+7vHHLrcdxfz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769769104; c=relaxed/simple;
	bh=GoaB1xxwIzCQsyep8H2a/ectfp8x05iyIQiJ9TzhyEc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JbtF5t2BPv0notG4LKJ4ck7SpJepmnq4ExuHE6JbCVS6UrxcP6ONHAxpoegpLV0z60E+mbHr7Quw1KfmLRGVN/R3UtpiXi20riySXFijoMFBYitHGcqT9pMZsPu5jROYRJEST6gJeuUUYh55VK8MLvkWMqorjWtaMxycA67pQcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA1DD153B;
	Fri, 30 Jan 2026 02:31:27 -0800 (PST)
Received: from [10.33.50.63] (e142021.arm.com [10.33.50.63])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 636A63F632;
	Fri, 30 Jan 2026 02:31:32 -0800 (PST)
Message-ID: <8c343e6d-14f8-4f55-8218-bc3f0813e8cf@arm.com>
Date: Fri, 30 Jan 2026 11:31:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: zena: Add support for Zena CSS
To: Debbie Horsfall <debbie.horsfall@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20260123-zena-css-v1-0-34adb95cdf89@arm.com>
 <20260123-zena-css-v1-2-34adb95cdf89@arm.com>
 <20260127132206.036892e4@donnerap.manchester.arm.com>
 <c1259bad-be4d-4489-840d-4ab2f4e466f2@arm.com>
Content-Language: en-US
From: Andre Przywara <andre.przywara@arm.com>
In-Reply-To: <c1259bad-be4d-4489-840d-4ab2f4e466f2@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261155-lists,devicetree=lfdr.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[2.99.68.96:email,1.202.95.192:email,2.98.168.32:email];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1.202.17.160:email,1a400000:email,0.0.0.0:email,0.0.0.100:email,300d0000:email,0.0.0.13:email,1a420000:email,arm.com:mid,arm.com:email,1.61.98.0:email,1.202.56.176:email,0.0.78.32:email,0.1.150.64:email]
X-Rspamd-Queue-Id: 6726FB9618
X-Rspamd-Action: no action

Hi Debbie,

On 1/30/26 10:58, Debbie Horsfall wrote:
> On 27/01/2026 13:22, Andre Przywara wrote:
>> On Fri, 23 Jan 2026 17:37:47 +0000
>> Debbie Horsfall <debbie.horsfall@arm.com> wrote:
>>
>> Hi Debbie,
>>
>> thanks for taking the time to send this upstream!
>>
> 
> Thank you for reviewing it! I have responded to all of your points and 
> will send a v2 patch set.
> 
> 
>>> Introduce the Zena CSS Fixed Virtual Platform (FVP) dts. This is
>>> currently the only Zena CSS variant, however the common definitions are
>>> included in a common dtsi for extensibility.
>>>
>>> Signed-off-by: Debbie Horsfall <debbie.horsfall@arm.com>
>>> ---
>>>   MAINTAINERS                              |   1 +
>>>   arch/arm64/boot/dts/arm/Makefile         |   1 +
>>>   arch/arm64/boot/dts/arm/zena-css-fvp.dts |  55 ++
>>>   arch/arm64/boot/dts/arm/zena-css.dtsi    | 826 ++++++++++++++++++++ 
>>> +++++++++++
>>>   4 files changed, 883 insertions(+)
>>>
>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>> index 90d88137adf1..d1d2dae6a71e 100644
>>> --- a/MAINTAINERS
>>> +++ b/MAINTAINERS
>>> @@ -3727,6 +3727,7 @@ ARM/ZENA CSS PLATFORM
>>>   M:    Debbie Horsfall <debbie.horsfall@arm.com>
>>>   S:    Maintained
>>>   F:    Documentation/devicetree/bindings/arm/arm,zena-css.yaml
>>> +F:    arch/arm64/boot/dts/arm/zena-css*
>>>   ARM/ZYNQ ARCHITECTURE
>>>   M:    Michal Simek <michal.simek@amd.com>
>>> diff --git a/arch/arm64/boot/dts/arm/Makefile b/arch/arm64/boot/dts/ 
>>> arm/Makefile
>>> index f30ee045dc95..770fb145b4a9 100644
>>> --- a/arch/arm64/boot/dts/arm/Makefile
>>> +++ b/arch/arm64/boot/dts/arm/Makefile
>>> @@ -8,3 +8,4 @@ dtb-$(CONFIG_ARCH_VEXPRESS) += vexpress-v2f-1xv7- 
>>> ca53x2.dtb
>>>   dtb-$(CONFIG_ARCH_VEXPRESS) += fvp-base-revc.dtb
>>>   dtb-$(CONFIG_ARCH_VEXPRESS) += corstone1000-fvp.dtb corstone1000- 
>>> mps3.dtb
>>>   dtb-$(CONFIG_ARCH_VEXPRESS) += morello-sdp.dtb morello-fvp.dtb
>>> +dtb-$(CONFIG_ARCH_VEXPRESS) += zena-css-fvp.dtb
>>> diff --git a/arch/arm64/boot/dts/arm/zena-css-fvp.dts b/arch/arm64/ 
>>> boot/dts/arm/zena-css-fvp.dts
>>> new file mode 100644
>>> index 000000000000..d3c649e894d1
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/arm/zena-css-fvp.dts
>>> @@ -0,0 +1,55 @@
>>> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>>> +/*
>>> + * Copyright (c) 2025, Arm Limited. All rights reserved.
>>> + */
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include "zena-css.dtsi"
>>> +
>>> +/ {
>>> +    model = "Zena CSS Fixed Virtual Platform";
>>> +    compatible = "arm,zena-css-fvp", "arm,zena-css";
>>> +
>>> +    chosen {
>>> +        stdout-path = &soc_serial0;
>>> +    };
>>> +};
>>> +
>>> +&soc {
>>> +    virtio@30060000 {
>>> +        compatible = "virtio,mmio";
>>> +        reg = <0x0 0x30060000 0x0 0x10000>;
>>> +        interrupts = <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>;
>>> +    };
>>> +
>>> +    virtio@30020000 {
>>
>> I think the nodes should be ordered by their address. Do you make any
>> assumptions about naming of devices (/dev/vda, /dev/vdb) in your setup?
>>
> 
> I will move virtio@30060000 into order. I don't think there are any 
> assumptions on device naming dependent on ordering but I will run all of 
> our tests with them in address order to check.

Thanks, that's good to know. I was afraid there was some cheeky 
assumption about /dev/vda pointing to a certain image or something ...

>>> +        compatible = "virtio,mmio";
>>> +        reg = <0x0 0x30020000 0x0 0x10000>;
>>> +        interrupts = <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH>;
>>> +    };
>>> +
>>> +    virtio@30030000 {
>>> +        compatible = "virtio,mmio";
>>> +        reg = <0x0 0x30030000 0x0 0x10000>;
>>> +        interrupts = <GIC_SPI 258 IRQ_TYPE_LEVEL_HIGH>;
>>> +    };
>>> +
>>> +    virtio@30040000 {
>>> +        compatible = "virtio,mmio";
>>> +        reg = <0x0 0x30040000 0x0 0x10000>;
>>> +        interrupts = <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>;
>>> +    };
>>> +
>>> +    virtio@30050000 {
>>> +        compatible = "virtio,mmio";
>>> +        reg = <0x0 0x30050000 0x0 0x10000>;
>>> +        interrupts = <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>;
>>> +    };
>>> +
>>
>> Do you know if there is something at 0x30070000? Maybe something that
>> needs explicit enablement on the model command line? In this case we 
>> might
>> want a comment here.
>>
> 
> The memory map documentation says there is no device there.

Good, thanks for checking.

> 
>>> +    virtio@30080000 {
>>> +        compatible = "virtio,mmio";
>>> +        reg = <0x0 0x30080000 0x0 0x10000>;
>>> +        interrupts = <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>;
>>> +    };
>>> +};
>>> diff --git a/arch/arm64/boot/dts/arm/zena-css.dtsi b/arch/arm64/boot/ 
>>> dts/arm/zena-css.dtsi
>>> new file mode 100644
>>> index 000000000000..7825e93df0a6
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/arm/zena-css.dtsi
>>> @@ -0,0 +1,826 @@
>>> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>>> +/*
>>> + * Copyright (c) 2025, Arm Limited. All rights reserved.
>>> + */

[ ... ]

>>> +
>>> +    soc: soc {
>>> +        compatible = "simple-bus";
>>> +        #address-cells = <2>;
>>> +        #size-cells = <2>;
>>> +        ranges;
>>> +
>>> +        timer@1a810000 {
>>> +            compatible = "arm,armv7-timer-mem";
>>> +            reg = <0x0 0x1a810000 0 0x10000>;
>>> +            #address-cells = <1>;
>>> +            #size-cells = <1>;
>>> +            /* Map child space [0x0..0x30000) to parent @ 0x1a810000 */
>>> +            ranges = <0x0 0x0 0x1a810000 0x00030000>;
>>> +
>>> +            frame@20000 {
>>> +                frame-number = <0>;
>>> +                interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
>>> +                reg = <0x20000 0x10000>;
>>> +            };
>>> +        };
>>> +
>>> +        gic: interrupt-controller@20800000 {
>>> +            compatible = "arm,gic-v3";
>>> +            #redistributor-regions = <16>;
>>> +            reg = <0x0 0x20800000 0x0 0x10000>,    /* GICD */
>>> +                <0x0 0x20880000 0x0 0x40000>,    /* 16 * GICR */
>>> +                <0x0 0x208c0000 0x0 0x40000>,
>>
>> Those look as if they are all contiguous, aren't they?
>> Then you wouldn't need the #redistributor-regions property above, and can
>> just go with one big GICR region.
>>
> 
> This is a workaround for the AP GIC Multiview. Is it acceptable?

Ah, right, sorry, I now remember, that's some automotive GIC, and this 
multiview feature causes the GICR_TYPER.Last bit not being correct, right?
In this case this is indeed a workaround, but you should add a comment 
here. Mention the GIC model (GIC-720AE?), and that its multiview feature 
causes the GICR_TYPER.Last bit not being as expected, so each core needs 
to gets its own redist region.

>>> +                <0x0 0x20900000 0x0 0x40000>,
>>> +                <0x0 0x20940000 0x0 0x40000>,
>>> +                <0x0 0x20980000 0x0 0x40000>,
>>> +                <0x0 0x209c0000 0x0 0x40000>,
>>> +                <0x0 0x20a00000 0x0 0x40000>,
>>> +                <0x0 0x20a40000 0x0 0x40000>,
>>> +                <0x0 0x20a80000 0x0 0x40000>,
>>> +                <0x0 0x20ac0000 0x0 0x40000>,
>>> +                <0x0 0x20b00000 0x0 0x40000>,
>>> +                <0x0 0x20b40000 0x0 0x40000>,
>>> +                <0x0 0x20b80000 0x0 0x40000>,
>>> +                <0x0 0x20bc0000 0x0 0x40000>,
>>> +                <0x0 0x20c00000 0x0 0x40000>,
>>> +                <0x0 0x20c40000 0x0 0x40000>;
>>> +            #interrupt-cells = <3>;
>>> +            #address-cells = <2>;
>>> +            #size-cells = <2>;
>>> +            ranges;
>>> +            interrupt-controller;
>>> +            interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>>> +
>>> +            its1: msi-controller@20840000 {
>>
>> Are there multiple ITSes, and some are just not shown here?
>> If not, please just use "its" as the label name.
>>
> 
> There's only one so I'll rename it.
> 
>>> +                compatible = "arm,gic-v3-its";
>>> +                reg = <0x0 0x20840000 0x0 0x40000>;
>>> +                msi-controller;
>>> +                #msi-cells = <1>;
>>> +            };
>>> +        };
>>> +
>>> +        /* UART is fixed as 24MHz, both UARTCLK and PCLK */
>>> +        soc_serial0: serial@1a400000 {
>>> +            compatible = "arm,pl011", "arm,primecell";
>>> +            reg = <0x0 0x1a400000 0x0 0x10000>;
>>> +            interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
>>> +            clocks = <&soc_clk24mhz>, <&soc_clk24mhz>;
>>> +            clock-names = "uartclk", "apb_pclk";
>>> +        };
>>> +
>>> +        watchdog@1a420000 {
>>> +            compatible = "arm,sbsa-gwdt";
>>> +            reg = <0x0 0x1a420000 0x0 0x10000>,
>>> +                  <0x0 0x1a430000 0x0 0x10000>;
>>> +            interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
>>> +        };
>>> +
>>> +        rtc@300d0000 {
>>> +            compatible = "arm,pl031", "arm,primecell";
>>> +            reg = <0x0 0x300d0000 0x0 0x10000>;
>>> +            interrupts = <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
>>
>> Can you please double check this interrupt ID? The IRQ mapping document
>> just lists some "expansion range" here, but I cannot verify if this is
>> using the SPI offset of 32 or not.
>>
> 
> I have confirmed with our interrupt map.
> 
>>> +            clocks = <&soc_clk24mhz>;
>>> +            clock-names = "apb_pclk";
>>> +        };
>>> +
>>> +    };
>>> +
>>> +    psci {
>>> +        compatible = "arm,psci-1.0", "arm,psci-0.2", "arm,psci";
>>
>> You don't need compatibility to the pre 0.2 PSCI standard, so drop the
>> last compatible name.
>>
> 
> I will remove this.
> 
>>> +        method = "smc";
>>> +        cpu_suspend = <0xc4000001>;
>>> +        cpu_off = <0x84000002>;
>>> +        cpu_on = <0xc4000003>;
>>
>> And those three function IDs are only needed for this pre-0.2 name, so 
>> you
>> can remove them.
>>
> 
> I will remove them.
> 
>>> +    };
>>> +
>>> +    sram: sram@104000 {
>>> +        compatible = "mmio-sram";
>>> +        reg = <0x0 0x104000 0x0 0x00001000>;
>>> +        #address-cells = <1>;
>>> +        #size-cells = <1>;
>>> +        ranges = <0 0x0 0x104000 0x00001000>;
>>> +
>>> +        scmi_shmem_tx: scpshmem-sram-section@0 {
>>> +            compatible = "arm,scmi-shmem";
>>> +            reg = <0x0 0x100>;
>>> +        };
>>> +        scmi_shmem_rx: scpshmem-sram-section@100 {
>>> +            compatible = "arm,scmi-shmem";
>>> +            reg = <0x100 0x100>;
>>> +        };
>>> +    };
>>> +
>>> +    mbox_db_tx: mailbox@40020000 {
>>> +        compatible = "arm,mhuv3";
>>> +        reg = <0x0 0x40020000 0x0 0x30000>;
>>> +        clocks = <&soc_clk24mhz>;
>>> +        #mbox-cells = <3>;
>>> +        interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
>>> +        interrupt-names = "combined";
>>> +    };
>>> +
>>> +    mbox_db_rx: mailbox@40060000 {
>>> +        compatible = "arm,mhuv3";
>>> +        reg = <0x0 0x40060000 0x0 0x30000>;
>>> +        clocks = <&soc_clk24mhz>;
>>> +        #mbox-cells = <3>;
>>> +        interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>;
>>> +        interrupt-names = "combined";
>>> +    };
>>> +
>>> +    firmware {
>>> +        scmi {
>>> +            compatible = "arm,scmi";
>>> +            mbox-names = "tx", "rx";
>>> +            mboxes = <&mbox_db_tx 0 0 0 &mbox_db_rx 0 0 0 
>>> &mbox_db_rx 0 0 2>;
>>
>> What is this third mailbox about? I think this would have to match
>> mbox-names also? I guess this is not needed?
>>
> 
> The team is confirming which mbox names are appropriate. To pass the 
> Devicetree validation the only valid combination of three is: "tx", 
> "tx_reply", "rx". However, the second mbox needs to be rx else the SCMI 
> communication fails. I'll investigate further and make sure the names 
> match.

So do you need just one "tx", but "rx" plus "rx_reply"? Which isn't 
valid in the current binding?
If that's the case, then we would need a patch to relax the binding and 
allowing this combination as well.
Looking into the kernel code it looks like the SCMI driver doesn't use 
mbox-names, but explicitly expects assignments depending on the number 
of mboxes? Somewhat confusing ...

Cheers,
Andre

> 
>> Cheers,
>> Andre
>>
>>> +            shmem = <&scmi_shmem_tx &scmi_shmem_rx>;
>>> +            #address-cells = <1>;
>>> +            #size-cells = <0>;
>>> +
>>> +            scmi_dvfs: protocol@13 {
>>> +                reg = <0x13>;
>>> +                #clock-cells = <1>;
>>> +            };
>>> +        };
>>> +    };
>>> +};
>>>
>>
> 
> 


