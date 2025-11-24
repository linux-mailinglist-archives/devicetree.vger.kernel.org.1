Return-Path: <devicetree+bounces-241785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D32CBC829C6
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 22:57:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 509133AF083
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 21:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17F2B33030A;
	Mon, 24 Nov 2025 21:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="KAhKzYgx"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80FB532FA2F;
	Mon, 24 Nov 2025 21:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764021409; cv=none; b=iZIyZgJ5KEFiHOjNSWRIudha2NgAnp7NzqtooWbyROy/rOJmN0i0cdHgJ43F8DDgtXYnPKEL1xHmbp7FKUaExN9X5JS0Fc3DkTLmaYHCuyxuzh0M26MCrKtK3vk1t0DHrbAvmiLWed2q5D56tztOedO4XpuyUMcx3HQbWYT9E7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764021409; c=relaxed/simple;
	bh=S7Pdfj0uacu6G+1iNVhD8iig+758fO5YyQC7S96qKX4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gB1w03ZKXQaRF1hbosfF4t6GGCK7HEsQQ3W+10T1U3lW8id2XZL/yhRhIz8KQbRg7kzruPU+60fqkGpTMdgaoqLtiasAGurqfsTQMbKqPQOWfZzAi6g9hLjreE5FTGxYEsSFgAm3mHuWnbn3BjV6oYJXbZz4WmhajZmCnPes/CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=KAhKzYgx; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1764021372;
	bh=IogZAiLVt6R+hCevN7TZTHbRJ2oEAgxLGiKwPAZZ5+8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KAhKzYgxqU3byTZDCJq5kmvYJ049KTH7QPvKM4VBWm1jOVrECZLSdvcZ2l6TNW/jt
	 HQ1qipVTtMNtBwHCbiNoJR50wnzrKPsc5Cmms642Z8itrLrnFQ8l3Zd45nomcnB34T
	 HTJCCAYueraAkdnbPvWSFY7Bw+rMcIDHJVoVTCXiBy1Zp4Zx/M+5eTvzvOJqGqS7Dh
	 8r3oaIVYezf+ntgOZdFjLUw97jvkttUMTLO6BqoeckWrpa9vIf2fpfBygm2VyDgtNH
	 h8IV4qVGU8GCYWPlb9x9tri0rZe4DWMsZv9S5OOaGeQoulUuJtPQqhbECIdTZZwzIE
	 9kqb6QcklSvrw==
Received: from [192.168.2.54] (unknown [143.105.119.236])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 4A332B22102C;
	Mon, 24 Nov 2025 22:56:10 +0100 (CET)
Message-ID: <1a6ddd61-f6ad-4ed8-b554-22a0377689a3@freeshell.de>
Date: Mon, 24 Nov 2025 13:56:08 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] riscv: dts: starfive: add Orange Pi RV
To: Conor Dooley <conor@kernel.org>, Icenowy Zheng <uwu@icenowy.me>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>
References: <20251123225059.49665-1-e@freeshell.de>
 <20251123225059.49665-3-e@freeshell.de>
 <20251124-blaming-duplicity-fb1311864b3f@spud>
 <1f0885a31e8fd9f4cd667c05fef818c8a38203e7.camel@icenowy.me>
 <20251124-emit-monument-380beaa6c394@spud>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <20251124-emit-monument-380beaa6c394@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit


On 11/24/25 05:21, Conor Dooley wrote:
> On Mon, Nov 24, 2025 at 07:08:55PM +0800, Icenowy Zheng wrote:
>> 在 2025-11-24星期一的 11:07 +0000，Conor Dooley写道：
>>> On Sun, Nov 23, 2025 at 02:50:45PM -0800, E Shattow wrote:
>>>> From: Icenowy Zheng <uwu@icenowy.me>
>>>>
>>>> Orange Pi RV is a SBC based on the StarFive VisionFive 2 board.
>>>>
>>>> Orange Pi RV features:
>>>>
>>>> - StarFive JH7110 SoC
>>>> - GbE port connected to JH7110 GMAC0 via YT8531 PHY
>>>> - 4x USB ports via VL805 PCIe USB controller connected to JH7110
>>>> pcie0
>>>> - M.2 M-key slot connected to JH7110 pcie1
>>>> - HDMI video output
>>>> - 3.5mm audio output

>>>> - Ampak AP6256 SDIO Wi-Fi/Bluetooth module on mmc0

Discussion below about TODO comment and out-of-band IRQ applies to the
above featured device named in the commit message. I don't have this
board and so I reformat the commit message without adding statements
about what is working or not working compared to the VisionFive 2 common
features. There is certainly not a complete devicetree in this series to
enable the wireless connectivity features. I don't know about other
features, for example the audio and HDMI video output.

>>>> - microSD slot on mmc1
>>>> - SPI NOR flash memory
>>>> - 24c02 EEPROM (read only by default)
>>>>
>>>> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
>>>> Signed-off-by: E Shattow <e@freeshell.de>
>>>> ---
>>>>  arch/riscv/boot/dts/starfive/Makefile         |  1 +
>>>>  .../boot/dts/starfive/jh7110-orangepi-rv.dts  | 76
>>>> +++++++++++++++++++
>>>>  2 files changed, 77 insertions(+)
>>>>  create mode 100644 arch/riscv/boot/dts/starfive/jh7110-orangepi-
>>>> rv.dts
>>>>
>>>> diff --git a/arch/riscv/boot/dts/starfive/Makefile
>>>> b/arch/riscv/boot/dts/starfive/Makefile
>>>> index 62b659f89ba7..d34c8c79bc10 100644
>>>> --- a/arch/riscv/boot/dts/starfive/Makefile
>>>> +++ b/arch/riscv/boot/dts/starfive/Makefile
>>>> @@ -12,6 +12,7 @@ dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-
>>>> deepcomputing-fml13v01.dtb
>>>>  dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-milkv-mars.dtb
>>>>  dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-milkv-marscm-emmc.dtb
>>>>  dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-milkv-marscm-lite.dtb
>>>> +dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-orangepi-rv.dtb
>>>>  dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-pine64-star64.dtb
>>>>  dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-starfive-visionfive-2-
>>>> v1.2a.dtb
>>>>  dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-starfive-visionfive-2-
>>>> v1.3b.dtb
>>>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-orangepi-rv.dts
>>>> b/arch/riscv/boot/dts/starfive/jh7110-orangepi-rv.dts
>>>> new file mode 100644
>>>> index 000000000000..16ec2767134e
>>>> --- /dev/null
>>>> +++ b/arch/riscv/boot/dts/starfive/jh7110-orangepi-rv.dts
>>>> @@ -0,0 +1,76 @@
>>>> +// SPDX-License-Identifier: GPL-2.0 OR MIT
>>>> +/*
>>>> + * Copyright (C) 2025 Icenowy Zheng <uwu@icenowy.me>
>>>> + */
>>>> +
>>>> +/dts-v1/;
>>>> +#include "jh7110-common.dtsi"
>>>> +
>>>> +/ {
>>>> +       model = "Xunlong Orange Pi RV";
>>>> +       compatible = "xunlong,orangepi-rv", "starfive,jh7110";
>>>> +
>>>> +       /* This regulator is always on by hardware */
>>>> +       reg_vcc3v3_pcie: regulator-vcc3v3-pcie {
>>>> +               compatible = "regulator-fixed";
>>>> +               regulator-name = "vcc3v3-pcie";
>>>> +               regulator-min-microvolt = <3300000>;
>>>> +               regulator-max-microvolt = <3300000>;
>>>> +               regulator-always-on;
>>>> +       };
>>>> +
>>>> +       wifi_pwrseq: wifi-pwrseq {
>>>> +               compatible = "mmc-pwrseq-simple";
>>>> +               reset-gpios = <&sysgpio 62 GPIO_ACTIVE_LOW>;
>>>> +       };
>>>> +};
>>>> +
>>>> +&gmac0 {
>>>> +       assigned-clocks = <&aoncrg JH7110_AONCLK_GMAC0_TX>;
>>>> +       assigned-clock-parents = <&aoncrg
>>>> JH7110_AONCLK_GMAC0_RMII_RTX>;
>>>> +       starfive,tx-use-rgmii-clk;
>>>> +       status = "okay";
>>>> +};
>>>> +
>>>> +&mmc0 {
>>>> +       #address-cells = <1>;
>>>> +       #size-cells = <0>;
>>>> +       cap-sd-highspeed;
>>>> +       mmc-pwrseq = <&wifi_pwrseq>;
>>>> +       vmmc-supply = <&reg_vcc3v3_pcie>;
>>>> +       vqmmc-supply = <&vcc_3v3>;
>>>> +       status = "okay";
>>>> +
>>>> +       ap6256: wifi@1 {
>>>> +               compatible = "brcm,bcm43456-fmac", "brcm,bcm4329-
>>>> fmac";
>>>> +               reg = <1>;
>>>> +               /* TODO: out-of-band IRQ on GPIO21 */
>>>
>>> What's up with this TODO? Why's the gpio not here? Missing binding
>>> support, missing driver support?
>>
>> Missing driver support in the pinctrl driver.
> 
> Provided Emil is okay with the patchset, I'll probably modify the
> comment to mention what the todo depends on then.
> 

Conor, amending the TODO comment and/or commit message sounds good to me
if you want to.

The need for out-of-band IRQ also applies to Milk-V Mars CM of the same
AP6256 chipset SDIO functionality, where however, it does not appear to
me to be the same use of GPIO21.

Milk-V vendor board support package has compatible = "bcmdhd_wlan" for
an Android driver on the 5.15 kernel not present in mainline Linux today:

https://github.com/milkv-mars/mars-buildroot-sdk/blob/dev/linux/arch/riscv/boot/dts/starfive/jh7110-milkv-mars-cm.dtsi

So it's a different driver now than the vendor stuff and can likely be
improved to be functional but I'm not sure what to do. When Icenowy or
anyone will make suggestions I can test for Milk-V Mars CM, and add the
remaining devicetree description there too when it is known what to do.

-E

>>
>>>
>>>> +       };
>>>> +};
>>>> +
>>>> +&mmc1 {
>>>> +       cd-gpios = <&sysgpio 41 GPIO_ACTIVE_HIGH>;
>>>> +};
>>>> +
>>>> +&pcie0 {
>>>> +       status = "okay";
>>>> +};
>>>> +
>>>> +&pcie1 {
>>>> +       status = "okay";
>>>> +};
>>>> +
>>>> +&phy0 {
>>>> +       rx-internal-delay-ps = <1500>;
>>>> +       tx-internal-delay-ps = <1500>;
>>>> +       motorcomm,rx-clk-drv-microamp = <3970>;
>>>> +       motorcomm,rx-data-drv-microamp = <2910>;
>>>> +       motorcomm,tx-clk-adj-enabled;
>>>> +       motorcomm,tx-clk-10-inverted;
>>>> +       motorcomm,tx-clk-100-inverted;
>>>> +       motorcomm,tx-clk-1000-inverted;
>>>> +};
>>>> +
>>>> +&pwmdac {
>>>> +       status = "okay";
>>>> +};
>>>> -- 
>>>> 2.50.0
>>>>
>>


