Return-Path: <devicetree+bounces-252588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 466B0D013F5
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 07:32:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB2B3300B826
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 06:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44EF027FD44;
	Thu,  8 Jan 2026 06:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="aZK1wVdk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3284.qiye.163.com (mail-m3284.qiye.163.com [220.197.32.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168C8145B3F;
	Thu,  8 Jan 2026 06:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767853962; cv=none; b=rG+0XKROJ16xZ+gAdvy51S/iBs0hOWU61Rb9cdeFXlJTkS3RSbX2toNCaQsiyr0KkYMYzi+8fMUiGcyyVaJl64A1DuxcYsSg04jL/HRIt+kLgPOjgujwVQMihV8GwRRPpFxQWbLRxJcblZS8aSPbsAYOMRUrZjn8tnLagfHCCcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767853962; c=relaxed/simple;
	bh=VSMRQJYs5DOZVuzOuD9AUnzn26LrsSulpIwnY5sNpwI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KilIBmuFDOWLtE8qxswfifQfQv1vIibghnfOnCKRdF88XBjIhGxuGpYAoUXojC8P1aQNRYr1ZamS3cnjfEcBq8RCwY3YcwD3skQhIgqgu9U/05XKIA7FKMFfWBH8BLr/uBnKeD3FiO/Z5JYIG1dBVx91rs3xD3ybziN0EbB0rTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=aZK1wVdk; arc=none smtp.client-ip=220.197.32.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2fea03d59;
	Thu, 8 Jan 2026 14:27:20 +0800 (GMT+08:00)
Message-ID: <1b08bc47-70be-48fb-a05e-1101e633a776@rock-chips.com>
Date: Thu, 8 Jan 2026 14:27:19 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Quentin Schulz <quentin.schulz@cherry.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Alexey Charkov <alchark@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, Chaoyi Chen <kernel@airkyi.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
 <afe968a0-f14b-423d-81a7-c1046d2b32bb@cherry.de>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <afe968a0-f14b-423d-81a7-c1046d2b32bb@cherry.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9b9c49c8ed03abkunmfe778030ebf77
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRlCTlZKTUIeHUJNTEtJSkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=aZK1wVdki3vfr9Gb+FStVNLUDkwwMA5FUxhIXh9HWzZ871Uaf5baRRzdlHmqXpWkvZL9TcjzVWEVlp8P5RVIFHTaL7Uy5u4s9op6cGSEley9gDvgAUuaRBQbqGlcjFPPxS/7bGmBHRmrOtTl0g/yaBua34YEjTgPiuaJ5Yju/uE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=PA0ZRp3mMiXfFfOj49OZWwMDNa5NJNq38qEHy6g70W4=;
	h=date:mime-version:subject:message-id:from;

Hi Quentin,

Thank you for your patient review.

On 1/7/2026 11:46 PM, Quentin Schulz wrote:
> Hi Chaoyi,
> 
> On 1/7/26 8:03 AM, Chaoyi Chen wrote:
> [...]
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts
>> new file mode 100644
>> index 000000000000..52788c514ec0
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts
>> @@ -0,0 +1,997 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2025 Rockchip Electronics Co., Ltd.
>> + *
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>> +#include <dt-bindings/pinctrl/rockchip.h>
>> +#include <dt-bindings/soc/rockchip,vop2.h>
>> +#include "rk3576.dtsi"
>> +
>> +/ {
>> +    model = "Rockchip RK3576 EVB2 V10 Board";
>> +    compatible = "rockchip,rk3576-evb2-v10", "rockchip,rk3576";
>> +
>> +    aliases {
>> +        ethernet0 = &gmac0;
>> +        ethernet1 = &gmac1;
>> +    };
>> +
>> +    chosen: chosen {
> 
> Why a label here?
> 
> There are also many other instances of nodes being labelled but whose label is never used. I would understand for some if you want to have DTSOs working with this DTB, but here chosen really doesn't make much sense to me?
> 

Hmm, I will delete them in v3.

>> +        stdout-path = "serial0:1500000n8";
>> +    };
>> +
>> +    adc_keys: adc-keys {
> 
> Are we expecting to extend this node from another DT? Why the label?
> 
> Won't comment on all other labeled-but-no-phandle-use instances, please check.
>

I think one exception is the regulator labels. Even though their
phandles are unused, they match the names on the schematic, so it
seems meaningful to keep them.

>> +    vcc3v3_rtc_s5: regulator-vcc3v3-rtc-s5 {
>> +        compatible = "regulator-fixed";
>> +        regulator-name = "vcc3v3_rtc_s5";
>> +        regulator-boot-on;
>> +        regulator-always-on;
>> +        regulator-min-microvolt = <3300000>;
>> +        regulator-max-microvolt = <3300000>;
>> +        vin-supply = <&vcc_sys>;
> 
> If this is for the rtc, shouldn't we declare this dependency in the RTC device node and not have it always-on?
>

I checked other boards that use the hym8563 device and couldn't find
a similar approach. Could you give an example?

>> +    };
>> +
>> +    vcc3v3_sata_pwren: vcc3v3-sata-pwren {
>> +        compatible = "regulator-fixed";
>> +        regulator-name = "vcc3v3_sata_pwren";
>> +        enable-active-high;
>> +        regulator-boot-on;
>> +        regulator-always-on;
> 
> Why do we have this always-on? Seems like we're missing a dependency on this regulator in the SATA controller?
>

In v1 we set the pinctrl inside the SATA node. To keep the pins from
being reused by mistake we added this regulator in v2.

>> +        gpio = <&gpio4 RK_PC7 GPIO_ACTIVE_HIGH>;
>> +        pinctrl-names = "default";
>> +        pinctrl-0 = <&satapm_pwren>;
>> +    };
>> +
>> +    vcc5v0_device: regulator-vcc5v0-device {
>> +        compatible = "regulator-fixed";
>> +        regulator-name = "vcc5v0_device";
>> +        regulator-always-on;
>> +        regulator-boot-on;
>> +        regulator-min-microvolt = <5000000>;
>> +        regulator-max-microvolt = <5000000>;
>> +        vin-supply = <&vcc12v_dcin>;
>> +    };
>> +
>> +    vcc5v0_host: regulator-vcc5v0-host {
>> +        compatible = "regulator-fixed";
>> +        regulator-name = "vcc5v0_host";
>> +        regulator-boot-on;
>> +        regulator-always-on;
>> +        regulator-min-microvolt = <5000000>;
>> +        regulator-max-microvolt = <5000000>;
>> +        enable-active-high;
>> +        gpio = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
>> +        vin-supply = <&vcc5v0_device>;
>> +        pinctrl-names = "default";
>> +        pinctrl-0 = <&usb_host_pwren>;
>> +    };
>> +
> 
> I assume both of the above are related to USB operating in host or device mode? Maybe there's a way to have something more useful to the user in regulator-name (and possibly the regulator node name) so that they have an idea what this pertains to?

It's a good idea. Actually, we have two regulators here, one for USB0
and another for USB1. I'll try to rename them in v2.

> 
> Additionally, why is this always-on? I would assume the USB controller is capable of controlling its regulator(s)?
> 

Oh, it should be remove.

> [...]
> 
>> +    vcc_ufs_s0: regulator-vcc-ufs-s0 {
> 
> We also have another regulator for UFS that is mentioned in the UFS controller node but not this one, why?

I rechecked the schematic, and found that this regulator should be set
to vcc-supply. You are right, thank you!

> 
>> +        compatible = "regulator-fixed";
>> +        regulator-name = "vcc_ufs_s0";
>> +        regulator-boot-on;
>> +        regulator-always-on;
> 
> Why always on?
> 
> [...]
> 

This is related to the hardware design. The power rail is always on
in hardware.

>> +&mdio0 {
>> +    rgmii_phy0: ethernet-phy@1 {
>> +        compatible = "ethernet-phy-id4f51.e91b";
> 
> Is MDIO auto-detection broken such that you need to specify the PHY vendor and product id? Which PHY is that? Why can't you use c22 or c45 compatible? A comment would be nice.
>

No, c22 compatible also works. I will use it in v3.

>> +        reg = <0x1>;
>> +        pinctrl-names = "default";
>> +        pinctrl-0 = <&rgmii_phy0_rst>;
>> +        reset-assert-us = <20000>;
>> +        reset-deassert-us = <100000>;
>> +        reset-gpios = <&gpio3 RK_PD3 GPIO_ACTIVE_LOW>;
>> +    };
>> +};
>> +
>> +&mdio1 {
>> +    rgmii_phy1: ethernet-phy@1 {
>> +        compatible = "ethernet-phy-id4f51.e91b";
> 
> Ditto.
> 
> [...]
> 
>> +&sdhci {
>> +    bus-width = <8>;
>> +    full-pwr-cycle-in-suspend;
>> +    max-frequency = <200000000>;
> 
> Already that value in rk3576.dtsi.
>

I will drop them in v3.

>> +    mmc-hs400-1_8v;
>> +    mmc-hs400-enhanced-strobe;
>> +    no-sdio;
>> +    no-sd;
>> +    non-removable;
>> +    status = "okay";
>> +};
>> +
>> +&sdmmc {
>> +    bus-width = <4>;
>> +    cap-sd-highspeed;
>> +    disable-wp;
>> +    max-frequency = <200000000>;
> 
> Already that value in rk3576.dtsi.
>

I will drop them in v3.

>> +    no-sdio;
>> +    no-mmc;
>> +    sd-uhs-sdr104;
>> +    vqmmc-supply = <&vccio_sd_s0>;
>> +    status = "okay";
>> +};
>> +
>> +&saradc {
> 
> This is not alphabetically sorted, it should be before &sata0.
> 
> [...]
>

Oh, that's true. I will fix it in v3.

>> +    bluetooth {
>> +        compatible = "brcm,bcm43438-bt";
>> +        clocks = <&hym8563>;
>> +        clock-names = "lpo";
>> +        device-wakeup-gpios = <&gpio1 RK_PD4 GPIO_ACTIVE_HIGH>;
>> +        interrupt-parent = <&gpio0>;
>> +        interrupts = <RK_PB1 IRQ_TYPE_LEVEL_HIGH>;
>> +        pinctrl-0 = <&bt_reg_on &bt_wake_host &host_wake_bt>;
>> +        pinctrl-names = "default";
>> +        shutdown-gpios = <&gpio1 RK_PC7 GPIO_ACTIVE_HIGH>;
> 
> Is this GPIO only controlling Bluetooth or also WiFi? I've seen a few combo chips where there's a common GPIO that controls both WiFi and Bluetooth. Making this bluetooth-specific means we need Bluetooth on for WiFi to work, a bit unexpected and should probably be modeled another way.

No. BT and Wi-Fi functions are controlled by two separate sets of GPIOs.

-- 
Best, 
Chaoyi

