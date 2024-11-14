Return-Path: <devicetree+bounces-121900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 824E89C8C27
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 14:50:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4316C2857E2
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 13:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2FEE22331;
	Thu, 14 Nov 2024 13:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="qkw68SgZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B32120B20
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 13:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731592222; cv=none; b=JhddLVmZu1J4e8Kl8mineWGCRDTnE/+EFESUG6+fgO22aD7d+NMwljUFoeYZMq/XZqgvwzZcYyRCz35du44CPvrOYmJnXq4a0Y5z88U6NltU7vpc70ervvQMMdeJH3Os4w2saMiVOhe3Es8nIpCAmFR1+NTnH9efQVkc54uvtX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731592222; c=relaxed/simple;
	bh=APcnk5ZMKvEXFMdalBXGnzEMd+iho/XuXvn4fchYtS8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RToZp3TObaU5MyKwQylrws9KbB7v/rNn9ViIuiKpgQSgRHzFez3yRWFB7P1ocqh8jIbB9+O314srwmmBV2v3FkaI8k5N6HxmHBLQQmOi+5j1fdAvCtABOOr+Mf9hll3nQ4TB5Lp6d43stWh3KO4LA9elqUs2GePA3eetn/qVY3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=qkw68SgZ; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4315eac969aso3824755e9.1
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 05:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1731592216; x=1732197016; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gRwLxVVOikcpu0xJcXEwFtC/CwhN4Tc4RzOrhjz2HYY=;
        b=qkw68SgZqHEahM0BVQLJLoPfMEWc/meSU9/MpwKI3Ci2XoGZhA4tC/uEInEA8qZZ3k
         ovHOTFPDeA6iyX/k62S0KVo92pKl6NvyReW5p4gdcq2g637mQ9ejXuYIjfgXjK5NM8mG
         MaGuokZS5rRoUG9UgPSTQ80XHHUSNhdXeIhjw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731592216; x=1732197016;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gRwLxVVOikcpu0xJcXEwFtC/CwhN4Tc4RzOrhjz2HYY=;
        b=sW7nkpzqtwn0jf4+GsOVqSA0hiTw/xSi3JsbKRTkvkGVAfzo7kO8pr8cOtA9FMF+wf
         /bGIvxYnDVytzdRCsG1zHSYE0Xt5pazyvTCm0/7WHCMcVqGJ6Ks5oENvjcF/1JjNmWOU
         MqSWJcdeaWnmnIo6SdZGnyLnNz/Jtz0fDJ18zfS1acn3Q6TfpvOT3vsZ65K6Wh1HU58Q
         6KRp57t8oTNya9fTDphX65PhXR1C8/THI0i4Cu1yzLqDV/iCa4kmzZNpACk/Ayva9s/s
         6il3JGfm47D0+fwgQs8Z+BqpauwMgNB1zm16CMDsfDPU/SSYU1CMpgpVOV3LJvJSbSu8
         uIsA==
X-Forwarded-Encrypted: i=1; AJvYcCVrKwpqA6bGgdOlJoxWpPXLTjxfEJHnHiVeOJ4ZgW0OB2JAyG8FWAmQYUSl35+z4KeJYUakG+7zhYjh@vger.kernel.org
X-Gm-Message-State: AOJu0YwElGEXZcTh2NvzZIV3r4/PmIUKP516U0EVXAipgJI9uMDrwtpV
	TirZEgHyHeZHfaXHQoL8hglXU2aGDnK2SZyxkyAmYD1RkY5VtLjg4+S7qYf/Acw=
X-Google-Smtp-Source: AGHT+IEtLmszdD8WXDnbZOwcZTTum9g1Zl8eCmPSfMCvtxFv43wZUU5YJUaWUE0Eb8EeeOLUimMLzA==
X-Received: by 2002:a05:600c:40c4:b0:426:5e32:4857 with SMTP id 5b1f17b1804b1-432d95b4c54mr29744505e9.0.1731592216450;
        Thu, 14 Nov 2024 05:50:16 -0800 (PST)
Received: from ?IPV6:2a01:cb05:949d:5800:e3ef:2d7a:4131:71f? (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432dab72141sm21153705e9.1.2024.11.14.05.50.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 05:50:15 -0800 (PST)
Message-ID: <2f715724-31c1-4228-b140-55aefb14af5c@smile.fr>
Date: Thu, 14 Nov 2024 14:50:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/15] ARM: dts: Configure interconnect target module for
 dra7 sata
To: Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 linux-omap@vger.kernel.org
Cc: =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 devicetree@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, linux-pci@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, Robin Murphy <robin.murphy@arm.com>
References: <20210126124004.52550-1-tony@atomide.com>
 <20210126124004.52550-8-tony@atomide.com>
 <c583e1bb-f56b-4489-8012-ce742e85f233@smile.fr>
 <45e6b7d4-706e-4f91-b452-4fa80c25b944@kernel.org>
Content-Language: fr
From: Romain Naour <romain.naour@smile.fr>
In-Reply-To: <45e6b7d4-706e-4f91-b452-4fa80c25b944@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Roger, Robin, All,

Le 14/11/2024 à 12:02, Roger Quadros a écrit :
> Hi Romain,
> 
> On 12/11/2024 16:15, Romain Naour wrote:
>> Hello Tony, Roger, All,
>>
>> Le 26/01/2021 à 13:39, Tony Lindgren a écrit :
>>> We can now probe devices with device tree only configuration using
>>> ti-sysc interconnect target module driver. Let's configure the
>>> module, but keep the legacy "ti,hwmods" peroperty to avoid new boot
>>> time warnings. The legacy property will be removed in later patches
>>> together with the legacy platform data.
>>>
>>> Note that the old sysc register offset is wrong, the real offset is at
>>> 0x1100 as listed in TRM for SATA_SYSCONFIG register. Looks like we've been
>>> happily using sata on the bootloader configured sysconfig register and
>>> nobody noticed. Also the old register range for SATAMAC_wrapper registers
>>> is wrong at 7 while it should be 8. But that too seems harmless.
>>>
>>> There is also an L3 parent interconnect range that we don't seem to be
>>> using. That can be added as needed later on.
>>
>> Since the switch from a kernel 5.10 to 6.1, the dra7 (AM574x) sata interface
>> doesn't work as expected.
>>
>> Using a kernel 6.1 with a preformated ext4 SATA disc, any copied file will be
>> corrupted when the filesystem is umounted.
>>
>> mount /dev/sda1 /mnt
>> cp /<test_file> /mnt/
>> sync
>> sha256sum /mnt/<test_file> /<test_file>
>> <same hash>
>> umount /mnt
>>
>> mount /dev/sda1 /mnt
>> sha256sum /mnt/<test_file> /<test_file>
>> /mnt/<test_file> is corrupted.
>>
>> git bisect report 8af15365a368 ("ARM: dts: Configure interconnect target module
>> for dra7 sata") as the first bad commit [1] (merged in 5.13).
>>
>> While looking for existing SATA issue on dra7 SoC, I found this old patch:
>>
>> "On TI Platforms using LPAE, SATA breaks with 64-bit DMA. Restrict it to
>> 32-bit." [2].
>>
>> Even if it's not the correct fix, disabling 64-bit DMA allows to use the sata
>> disc correctly. The discussion about this issue seems to have stopped [3] and
>> the suggested change was never merged.
> 
> If I remember right the following commit fixed the issue back then.
> 
> cfb5d65f2595 ARM: dts: dra7: Add bus_dma_limit for L3 bus
> 
> But, when commit [1] moved the SATA node from L3 bus to L4_cfg it lost the bus_dma_limit
> that we added at the L3 bus and hence the regression.
> 
> I think we should add the same 2GB dma ranges limit into l4_cfg bus so all modules
> can inherit it.

Thanks for your reply!

It seems l4_cfg can inherit dma-ranges property from ocp node using
"dma-ranges;". But then segment@100000 node (0x4a100000) needs "dma-ranges;" too.

With the following patch applied, the SATA drive works correctly.

diff --git a/arch/arm/boot/dts/dra7-l4.dtsi b/arch/arm/boot/dts/dra7-l4.dtsi
index 1aaffd034c39..3ac770298844 100644
--- a/arch/arm/boot/dts/dra7-l4.dtsi
+++ b/arch/arm/boot/dts/dra7-l4.dtsi
@@ -12,6 +12,7 @@ &l4_cfg {                                             /*
0x4a000000 */
        ranges = <0x00000000 0x4a000000 0x100000>,      /* segment 0 */
                 <0x00100000 0x4a100000 0x100000>,      /* segment 1 */
                 <0x00200000 0x4a200000 0x100000>;      /* segment 2 */
+       dma-ranges;

        segment@0 {                                     /* 0x4a000000 */
                compatible = "simple-pm-bus";
@@ -557,6 +558,7 @@ segment@100000 {                                    /*
0x4a100000 */
                         <0x0007e000 0x0017e000 0x001000>,      /* ap 124 */
                         <0x00059000 0x00159000 0x001000>,      /* ap 125 */
                         <0x0005a000 0x0015a000 0x001000>;      /* ap 126 */
+               dma-ranges;

                target-module@2000 {                    /* 0x4a102000, ap 27 3c.0 */
                        compatible = "ti,sysc";


Sorry, I'm not familliar with property inheritance between devicetree nodes,
especially with dma-ranges. Does this change seem correct to you?

Best regards,
Romain


> 
>>
>> The SATA port is unlikely not available on TI AM57 EVM boards or the beaglebone-AI.
>>
>> Any suggestion?
>>
>> [1]
>> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=8af15365a36845c4c15d4c8046ddccff331d5263
>> [2] https://lore.kernel.org/all/20200206111728.6703-1-rogerq@ti.com/T/
>> [3] https://lore.kernel.org/lkml/c753a232-403d-6ed2-89fd-09476c887391@ti.com/
>>
>> Best regards,
>> Romain
>>
>>
>>>
>>> Signed-off-by: Tony Lindgren <tony@atomide.com>
>>> ---
>>>  arch/arm/boot/dts/dra7-l4.dtsi | 29 ++++++++++++++++++++++++++---
>>>  arch/arm/boot/dts/dra7.dtsi    | 12 ------------
>>>  2 files changed, 26 insertions(+), 15 deletions(-)
>>>
>>> diff --git a/arch/arm/boot/dts/dra7-l4.dtsi b/arch/arm/boot/dts/dra7-l4.dtsi
>>> --- a/arch/arm/boot/dts/dra7-l4.dtsi
>>> +++ b/arch/arm/boot/dts/dra7-l4.dtsi
>>> @@ -572,11 +572,34 @@ target-module@8000 {			/* 0x4a108000, ap 29 1e.0 */
>>>  		};
>>>  
>>>  		target-module@40000 {			/* 0x4a140000, ap 31 06.0 */
>>> -			compatible = "ti,sysc";
>>> -			status = "disabled";
>>> -			#address-cells = <1>;
>>> +			compatible = "ti,sysc-omap4", "ti,sysc";
>>> +			ti,hwmods = "sata";
>>> +			reg = <0x400fc 4>,
>>> +			      <0x41100 4>;
>>> +			reg-names = "rev", "sysc";
>>> +			ti,sysc-midle = <SYSC_IDLE_FORCE>,
>>> +					<SYSC_IDLE_NO>,
>>> +					<SYSC_IDLE_SMART>;
>>> +			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
>>> +					<SYSC_IDLE_NO>,
>>> +					<SYSC_IDLE_SMART>,
>>> +					<SYSC_IDLE_SMART_WKUP>;
>>> +			power-domains = <&prm_l3init>;
>>> +			clocks = <&l3init_clkctrl DRA7_L3INIT_SATA_CLKCTRL 0>;
>>> +			clock-names = "fck";
>>>  			#size-cells = <1>;
>>> +			#address-cells = <1>;
>>>  			ranges = <0x0 0x40000 0x10000>;
>>> +
>>> +			sata: sata@0 {
>>> +				compatible = "snps,dwc-ahci";
>>> +				reg = <0 0x1100>, <0x1100 0x8>;
>>> +				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
>>> +				phys = <&sata_phy>;
>>> +				phy-names = "sata-phy";
>>> +				clocks = <&l3init_clkctrl DRA7_L3INIT_SATA_CLKCTRL 8>;
>>> +				ports-implemented = <0x1>;
>>> +			};
>>>  		};
>>>  
>>>  		target-module@51000 {			/* 0x4a151000, ap 33 50.0 */
>>> diff --git a/arch/arm/boot/dts/dra7.dtsi b/arch/arm/boot/dts/dra7.dtsi
>>> --- a/arch/arm/boot/dts/dra7.dtsi
>>> +++ b/arch/arm/boot/dts/dra7.dtsi
>>> @@ -785,18 +785,6 @@ qspi: spi@0 {
>>>  			};
>>>  		};
>>>  
>>> -		/* OCP2SCP3 */
>>> -		sata: sata@4a141100 {
>>> -			compatible = "snps,dwc-ahci";
>>> -			reg = <0x4a140000 0x1100>, <0x4a141100 0x7>;
>>> -			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
>>> -			phys = <&sata_phy>;
>>> -			phy-names = "sata-phy";
>>> -			clocks = <&l3init_clkctrl DRA7_L3INIT_SATA_CLKCTRL 8>;
>>> -			ti,hwmods = "sata";
>>> -			ports-implemented = <0x1>;
>>> -		};
>>> -
>>>  		/* OCP2SCP1 */
>>>  		/* IRQ for DWC3_3 and DWC3_4 need IRQ crossbar */
>>>  
> 


