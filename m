Return-Path: <devicetree+bounces-252558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B5142D01070
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 06:00:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2E96230069B3
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 05:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 401722D238F;
	Thu,  8 Jan 2026 05:00:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181C021B9D2
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 05:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767848454; cv=none; b=s0FK6fVoQA800FhNo/ooziNdhWA6KezNgGAKbtEq3AqSdddU4RSnk95dYo0Wtx5gaJryXysCQTXAvjnubId8ujvXmd38C9NFSJqm+uItFQxcnCiLIA6gf01vON0v+cz3WGT1q0mFWVZ/mDARq2roLfGKHk56J9Mj3M2Gbj6ANgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767848454; c=relaxed/simple;
	bh=m9jJcP8x6kSXd3zGPacNVOXxAu/nAtYr8Rvh10Ql0mU=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=MeN4rVGOT2w9b/XB901UfiQFw1ISR6dzAi1ytclGbdAJKmpmzv4e7aigt005B2b8tt9dGzsk2zaL68adzJ1doOgJJTASqXvzC0azVTWXaw4/0TeLk5uY+1FXo3Vlq544/YoJxNSdQD9Gs01UyTRSQgw5sg4YKEljGJ5WiO7bPn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: esmtpgz10t1767848366t380234cf
X-QQ-Originating-IP: Il+nqK26MN++nD+eiWo6w3hFI1vDFAbym7dppZwuP+Q=
Received: from [192.168.254.128] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 08 Jan 2026 12:59:22 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18009929890084094893
Message-ID: <25ABBFB38A06ED21+174e4e9b-4d7b-48cf-8382-b807b883cf80@radxa.com>
Date: Thu, 8 Jan 2026 13:59:21 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 2/3] arm64: dts: rockchip: Add Radxa CM3J
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, kever.yang@rock-chips.com,
 jonas@kwiboo.se, michael.opdenacker@rootcommit.com, honyuenkwun@gmail.com,
 quentin.schulz@cherry.de, dsimic@manjaro.org, alchark@gmail.com,
 pbrobinson@gmail.com, ziyao@disroot.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251229073840.25516-1-naoki@radxa.com>
 <20251229073840.25516-2-naoki@radxa.com>
 <A7ADEB12E25ED346+00048ee9-c4d6-442d-a02c-cefbdc6be353@radxa.com>
Content-Language: en-US
In-Reply-To: <A7ADEB12E25ED346+00048ee9-c4d6-442d-a02c-cefbdc6be353@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MLyssK0sPeZUZ+73bLnmJM+rZlVgbTwjrKTZjAWZILLXHLIFonsC0B3r
	L/jigPYCiCtkiHW79eNj2UgnA93y/iERzy72R83HgIUNb+fKojbt2kFaLGsS+z/iRTBlXNS
	eCtgRSV7ueu27FW5WKq6JA7YFU6qW4tSSxEmOEcrncS4FKXH5zNdXcUQPA9yvC5E9+GTywc
	3L8DfCC27xxEPO8Cs40iUrcT7HiNY+4G5RO5r7SaNnyPesDK0uWR5Ic640pb1RlLDv57UEs
	r8cVFSMdfvWMuvwy3Yh4L/sGcEXjqWW1AeOzS+vsZty7RZBfqceo18sA0RX4PqCu6HNkCee
	PBoiACxYK3x7wUChEv/lA7CKVrn1X5dwdxFa/Fyfoai7qlePf6/9ZQDEyqfplAmbXn/ciPk
	7Hr53tovwTw/5YUu2+9k2IGswX73eTa7lIaIlltHGBCAJiHvMY4h6M3Ts9Y/cNu9SDhIup0
	D/parG3TS9awCK7YZRGIKHMIe5HvJTUl7VbR8NCV4goWp4rQC5JHYvSkhs9OK4r1kZwee+k
	EPTK1tNueBQ7lEA5GaHaklxpSF6kw1WsmiIb8ooj46/9aqc2tyPxN72GDhBPuHIHYWFeBGI
	SOWLY0g74Q4bWT5PV9bTEvL3odRTWILfhEWV1xrihSASm9+I3dZDcsvpvGFWBdGV68UgNXH
	Cen9Sg33do9yF4ID//bAtpuuyPs6ww0zdcYhirs1i9A15lr4Sdz9kznrOQ1z0T01vIIlVEU
	i/Pn0WZBI5i3IPQNoY5LzR5A+wg4p1v95v10zWrn8lK0LL/kti17goGh8nDFGDAJHu4aUoO
	iuy9Ew8fOdN0+Hmkih6toS8WMD7kxKwBYqY61Tmye5TL4PQslqIEYTmpIDM3jEjKecEkisB
	Thhaxe50HxxD61EG3RkNzbIY+7n/B8ztn4WrxFuZMAouJVLWKCgDXmT5BBwa5EKXQ2w99MI
	CKVsiDeu7n1hSu+3BWCt2rRtRxbVxk/tKzIM=
X-QQ-XMRINFO: OD9hHCdaPRBwH5bRRRw8tsiH4UAatJqXfg==
X-QQ-RECHKSPAM: 0

On 12/29/25 16:55, FUKAUMI Naoki wrote:
> Hi all,
> 
> On 12/29/25 16:38, FUKAUMI Naoki wrote:
>> The Radxa CM3J is a feature rich industrial compute module based on
>> the Rockchip RK3568J SoC. [1]
>>
>> Specification:
>> - Quad-core Cortex-A55 CPU
>> - Mali-G52 2EE GPU
>> - 1TOPS NPU
>> - Up to 8GB LPDDR4x RAM
>> - Up to 32GB eMMC (optional)
>> - 16MB SPI flash (optional)
>> - Wi-Fi 5 / BT 5.0 with external antenna connector
>> - Gigabit Ethernet PHY
>> - RK809 PMIC
>> - Green (power) LED
>>
>> [1] https://dl.radxa.com/cm3j/docs/hw/ 
>> radxa_cm3j_schematic_v1.2_20250115.pdf
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   .../boot/dts/rockchip/rk3568-radxa-cm3j.dtsi  | 570 ++++++++++++++++++
>>   arch/arm64/configs/linux.radxa.config         |   1 +
>>   2 files changed, 571 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j.dtsi
>>   create mode 120000 arch/arm64/configs/linux.radxa.config
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j.dtsi b/ 
>> arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j.dtsi
>> new file mode 100644
>> index 000000000000..c503e876bcfd
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j.dtsi
>> @@ -0,0 +1,570 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2025 Radxa Computer (Shenzhen) Co., Ltd.
>> + */
>> +
>> +#include <dt-bindings/leds/common.h>
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/pinctrl/rockchip.h>
>> +#include <dt-bindings/soc/rockchip,vop2.h>
>> +#include "rk3568.dtsi"
>> +
>> +/ {
>> +    aliases {
>> +        mmc0 = &sdhci;
>> +        mmc2 = &sdmmc2;
>> +    };
>> +
>> +    gmac1_clkin: clock-125m {
>> +        compatible = "fixed-clock";
>> +        clock-frequency = <125000000>;
>> +        clock-output-names = "gmac1_clkin";
>> +        #clock-cells = <0>;
>> +    };
>> +
>> +    leds-0 {
>> +        compatible = "gpio-leds";
>> +
>> +        led-0 {
>> +            color = <LED_COLOR_ID_GREEN>;
>> +            default-state = "on";
>> +            function = LED_FUNCTION_POWER;
>> +            gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
>> +            pinctrl-names = "default";
>> +            pinctrl-0 = <&gpio0_b4_led>;
>> +        };
>> +    };
>> +
>> +    vcc3v3_sys: regulator-3v3-0 {
>> +        compatible = "regulator-fixed";
>> +        regulator-name = "vcc3v3_sys";
>> +        regulator-always-on;
>> +        regulator-boot-on;
>> +        regulator-min-microvolt = <3300000>;
>> +        regulator-max-microvolt = <3300000>;
>> +        vin-supply = <&dc5v>;
>> +    };
>> +
>> +    vcc_3v3_1: regulator-3v3-1 {
>> +        compatible = "regulator-fixed";
>> +        regulator-name = "vcc_3v3_1";
>> +        regulator-always-on;
>> +        regulator-boot-on;
>> +        regulator-min-microvolt = <3300000>;
>> +        regulator-max-microvolt = <3300000>;
>> +        vin-supply = <&vcc3v3_sys>;
>> +    };
>> +
>> +    sdio_pwrseq: sdio-pwrseq {
>> +        compatible = "mmc-pwrseq-simple";
>> +        clocks = <&rk809 1>;
>> +        clock-names = "ext_clock";
>> +        pinctrl-names = "default";
>> +        pinctrl-0 = <&wifi_reg_on_h_gpio3_d4>;
>> +        reset-gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
>> +    };
>> +};
>> +
>> +&cpu0 {
>> +    cpu-supply = <&vdd_cpu>;
>> +};
>> +
>> +&cpu1 {
>> +    cpu-supply = <&vdd_cpu>;
>> +};
>> +
>> +&cpu2 {
>> +    cpu-supply = <&vdd_cpu>;
>> +};
>> +
>> +&cpu3 {
>> +    cpu-supply = <&vdd_cpu>;
>> +};
>> +
>> +&gmac1 {
>> +    assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
>> +    assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, 
>> <&gmac1_clkin>;
>> +    clock_in_out = "input";
>> +    phy-handle = <&rgmii_phy1>;
>> +    phy-mode = "rgmii-id";
>> +    phy-supply = <&vcc_3v3_1>;
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&gmac1m1_miim
>> +             &gmac1m1_clkinout
>> +             &gmac1m1_rx_bus2
>> +             &gmac1m1_tx_bus2
>> +             &gmac1m1_rgmii_clk
>> +             &gmac1m1_rgmii_bus>;
>> +};
> 
> During a cold boot, it does not work in U-Boot:
> 
> => setenv ipaddr 192.168.0.99
> => ping 192.168.0.1
> ethernet@fe010000 Waiting for PHY auto negotiation to complete....... done
> Using ethernet@fe010000 device
> 
> ARP Retry count exceeded; starting again
> ping failed; host 192.168.0.1 is not alive
> 
> However, it works fine in Linux, and also in U-Boot after a warm reboot.
> 
>> +&gpu {
>> +    mali-supply = <&vdd_gpu>;
>> +    status = "okay";
>> +};
>> +
>> +&hdmi {
>> +    avdd-0v9-supply = <&vdda0v9_image>;
>> +    avdd-1v8-supply = <&vcca1v8_image>;
>> +};
>> +
>> +&hdmi_in {
>> +    hdmi_in_vp0: endpoint {
>> +        remote-endpoint = <&vp0_out_hdmi>;
>> +    };
>> +};
>> +
>> +&hdmi_out {
>> +    hdmi_out_con: endpoint {
>> +        remote-endpoint = <&hdmi_con_in>;
>> +    };
>> +};
>> +
>> +&i2c0 {
>> +    status = "okay";
>> +
>> +    rk809: pmic@20 {
>> +        compatible = "rockchip,rk809";
>> +        reg = <0x20>;
>> +        #clock-cells = <1>;
>> +        clock-output-names = "rk809-clkout1", "rk809-clkout2";
>> +        interrupt-parent = <&gpio0>;
>> +        interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
>> +        pinctrl-names = "default";
>> +        pinctrl-0 = <&pmic_int_l>;
>> +        system-power-controller;
>> +        vcc1-supply = <&vcc3v3_sys>;
>> +        vcc2-supply = <&vcc3v3_sys>;
>> +        vcc3-supply = <&vcc3v3_sys>;
>> +        vcc4-supply = <&vcc3v3_sys>;
>> +        vcc5-supply = <&vcc3v3_sys>;
>> +        vcc6-supply = <&vcc3v3_sys>;
>> +        vcc7-supply = <&vcc3v3_sys>;
>> +        vcc8-supply = <&vcc3v3_sys>;
>> +        vcc9-supply = <&vcc3v3_sys>;
>> +        wakeup-source;
>> +
>> +        regulators {
>> +            vdd_logic: DCDC_REG1 {
>> +                regulator-name = "vdd_logic";
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +                regulator-initial-mode = <0x2>;
>> +                regulator-min-microvolt = <500000>;
>> +                regulator-max-microvolt = <1350000>;
>> +                regulator-ramp-delay = <6001>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +
>> +            vdd_gpu: DCDC_REG2 {
>> +                regulator-name = "vdd_gpu";
>> +                regulator-initial-mode = <0x2>;
>> +                regulator-min-microvolt = <500000>;
>> +                regulator-max-microvolt = <1350000>;
>> +                regulator-ramp-delay = <6001>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +
>> +            vcc_ddr: DCDC_REG3 {
>> +                regulator-name = "vcc_ddr";
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +                regulator-initial-mode = <0x2>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-on-in-suspend;
>> +                };
>> +            };
>> +
>> +            vdd_npu: DCDC_REG4 {
>> +                regulator-name = "vdd_npu";
>> +                regulator-initial-mode = <0x2>;
>> +                regulator-min-microvolt = <500000>;
>> +                regulator-max-microvolt = <1350000>;
>> +                regulator-ramp-delay = <6001>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +
>> +            dc1v8: vccio_flash: vcc_1v8: DCDC_REG5 {
> 
> It's labeled as '+1.8v' in the schematic. Do you have any other 
> suggestions for the name?

I found several DTSes with regulators whose names(labels) begin with 
'dc'. Therefore, this should be acceptable.

>> +                regulator-name = "vcc_1v8";
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +                regulator-min-microvolt = <1800000>;
>> +                regulator-max-microvolt = <1800000>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +
>> +            vdda0v9_image: LDO_REG1 {
>> +                regulator-name = "vdda0v9_image";
>> +                regulator-min-microvolt = <900000>;
>> +                regulator-max-microvolt = <900000>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +
>> +            vdda_0v9: LDO_REG2 {
>> +                regulator-name = "vdda_0v9";
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +                regulator-min-microvolt = <900000>;
>> +                regulator-max-microvolt = <900000>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +
>> +            vdda0v9_pmu: LDO_REG3 {
>> +                regulator-name = "vdda0v9_pmu";
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +                regulator-min-microvolt = <900000>;
>> +                regulator-max-microvolt = <900000>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-on-in-suspend;
>> +                    regulator-suspend-microvolt = <900000>;
>> +                };
>> +            };
>> +
>> +            vccio_acodec: LDO_REG4 {
>> +                regulator-name = "vccio_acodec";
>> +                regulator-min-microvolt = <3300000>;
>> +                regulator-max-microvolt = <3300000>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +
>> +            vccio_sd: LDO_REG5 {
>> +                regulator-name = "vccio_sd";
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +                regulator-min-microvolt = <1800000>;
>> +                regulator-max-microvolt = <3300000>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +
>> +            vcc3v3_pmu: LDO_REG6 {
>> +                regulator-name = "vcc3v3_pmu";
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +                regulator-min-microvolt = <3300000>;
>> +                regulator-max-microvolt = <3300000>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-on-in-suspend;
>> +                    regulator-suspend-microvolt = <3300000>;
>> +                };
>> +            };
>> +
>> +            vcca_1v8: LDO_REG7 {
>> +                regulator-name = "vcca_1v8";
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +                regulator-min-microvolt = <1800000>;
>> +                regulator-max-microvolt = <1800000>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +
>> +            vcca1v8_pmu: LDO_REG8 {
>> +                regulator-name = "vcca1v8_pmu";
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +                regulator-min-microvolt = <1800000>;
>> +                regulator-max-microvolt = <1800000>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-on-in-suspend;
>> +                    regulator-suspend-microvolt = <1800000>;
>> +                };
>> +            };
>> +
>> +            vcca1v8_image: LDO_REG9 {
>> +                regulator-name = "vcca1v8_image";
>> +                regulator-min-microvolt = <1800000>;
>> +                regulator-max-microvolt = <1800000>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +
>> +            dc3v3: vcc_3v3: SWITCH_REG1 {
> 
> It's labeled as '+3.3v' in the schematic. Do you have any other 
> suggestions for the name?
> 
>> +                regulator-name = "vcc_3v3";
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +
>> +            vcc3v3_sd: SWITCH_REG2 {
>> +                regulator-name = "vcc3v3_sd";
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +        };
>> +    };
>> +
>> +    vdd_cpu: regulator@40 {
>> +        compatible = "silergy,syr827";
>> +        reg = <0x40>;
>> +        fcs,suspend-voltage-selector = <1>;
>> +        regulator-name = "vdd_cpu";
>> +        regulator-always-on;
>> +        regulator-boot-on;
>> +        regulator-min-microvolt = <712500>;
>> +        regulator-max-microvolt = <1390000>;
>> +        regulator-ramp-delay = <2300>;
>> +        vin-supply = <&dc5v>;
>> +    };
>> +};
>> +
>> +&i2c2 {
>> +    status = "okay";
>> +
>> +    eeprom@50 {
>> +        compatible = "belling,bl24c16a", "atmel,24c16";
>> +        reg = <0x50>;
>> +        pagesize = <16>;
>> +        read-only;
>> +        vcc-supply = <&gpio_vref>;
>> +    };
>> +};
>> +
>> +&mdio1 {
>> +    rgmii_phy1: ethernet-phy@0 {
>> +        compatible = "ethernet-phy-id001c.c916";
>> +        reg = <0x0>;
>> +        pinctrl-names = "default";
>> +        pinctrl-0 = <&gmac1_rstn_gpio3_b0>; // GPIO4_C3
>> +        reset-assert-us = <20000>;
>> +        reset-deassert-us = <100000>;
>> +        reset-gpios = <&gpio4 RK_PC3 GPIO_ACTIVE_LOW>;
>> +    };
>> +};
>> +
>> +&pinctrl {
>> +    bluetooth {
>> +        bt_reg_on_h_gpio4_b2: bt-reg-on-h-gpio4-b2 {
>> +            rockchip,pins = <4 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
>> +        };
>> +
>> +        bt_wake_host_h_gpio4_b4: bt-wake-host-h-gpio4-b4 {
>> +            rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
>> +        };
>> +
>> +        host_wake_bt_h_gpio4_b5: host-wake-bt-h-gpio4-b5 {
>> +            rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
>> +        };
>> +    };
>> +
>> +    ethernet {
>> +        gmac1_rstn_gpio3_b0: gmac1-rstn-gpio3-b0 {
>> +            rockchip,pins = <4 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
>> +        };
>> +    };
>> +
>> +    leds {
>> +        gpio0_b4_led: gpio0-b4-led {
>> +            rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
>> +        };
>> +    };
>> +
>> +    pcie {
>> +        pcie20_clkreqnm2: pcie20_clkreqnm2 {
>> +            rockchip,pins = <1 RK_PB0 4 &pcfg_pull_none>;
>> +        };
>> +
>> +        pcie_nrst: pcie-nrst {
>> +            rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
>> +        };
>> +    };
>> +
>> +    pmic {
>> +        pmic_int_l: pmic-int-l {
>> +            rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
>> +        };
>> +    };
>> +
>> +    wifi {
>> +        wifi_reg_on_h_gpio3_d4: wifi-reg-on-h-gpio3-d4 {
>> +            rockchip,pins = <3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
>> +        };
>> +
>> +        wifi_wake_host_h_gpio3_d5: wifi-wake-host-h-gpio3-d5 {
>> +            rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_down>;
>> +        };
>> +    };
>> +};
>> +
>> +&pcie2x1 {
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&pcie20_clkreqnm2 &pcie_nrst>;
>> +    reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
>> +    supports-clkreq;
>> +};
>> +
>> +&pmu_io_domains {
>> +    pmuio1-supply = <&vcc3v3_pmu>;
>> +    pmuio2-supply = <&vcc_3v3>;
>> +    vccio1-supply = <&vccio_acodec>;
>> +    vccio2-supply = <&vccio_flash>;
>> +    vccio3-supply = <&vccio_sd>;
>> +    vccio4-supply = <&vcc_1v8>;
>> +    vccio5-supply = <&vcc_3v3>;
>> +    vccio6-supply = <&vcc_1v8>;
>> +    vccio7-supply = <&vcc_3v3>;
>> +    status = "okay";
>> +};
>> +
>> +&saradc {
>> +    vref-supply = <&vcca_1v8>;
>> +    status = "okay";
>> +};
>> +
>> +&sdhci {
>> +    bus-width = <8>;
>> +    cap-mmc-highspeed;
>> +    mmc-hs200-1_8v;
>> +    max-frequency = <200000000>;
>> +    no-sd;
>> +    no-sdio;
>> +    non-removable;
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
>> +    vmmc-supply = <&vcc_3v3>;
>> +    vqmmc-supply = <&vccio_flash>;
>> +    status = "okay";
>> +};
>> +
>> +&sdmmc2 {
>> +    #address-cells = <1>;
>> +    bus-width = <4>;
>> +    cap-sd-highspeed;
>> +    cap-sdio-irq;
>> +    disable-wp;
>> +    keep-power-in-suspend;
>> +    max-frequency = <200000000>;
>> +    mmc-pwrseq = <&sdio_pwrseq>;
>> +    no-mmc;
>> +    no-sd;
>> +    non-removable;
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&sdmmc2m0_bus4 &sdmmc2m0_clk &sdmmc2m0_cmd>;
>> +    sd-uhs-sdr104;
>> +    #size-cells = <0>;
>> +    status = "okay";
>> +
>> +    wifi@1 {
>> +        compatible = "brcm,bcm43456-fmac", "brcm,bcm4329-fmac";
>> +        reg = <1>;
>> +#if 0
>> +        // brcmfmac: brcmf_sdio_bus_rxctl: resumed on timeout
>> +        interrupt-parent = <&gpio3>;
>> +        interrupts = <RK_PD5 IRQ_TYPE_LEVEL_HIGH>;
>> +        interrupt-names = "host-wake";
>> +#endif
> 
> It doesn't work if interrupt is enabled. Any ideas?

I found that there are no issues with the firmware blobs from
  https://github.com/radxa-pkg/radxa-firmware/tree/main/firmware/brcm

But I will drop these lines in v2 to ensure compatibility with various 
userland configurations.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
>> +        pinctrl-names = "default";
>> +        pinctrl-0 = <&wifi_wake_host_h_gpio3_d5>;
>> +    };
>> +};
>> +
>> +&sfc {
>> +    #address-cells = <1>;
>> +    #size-cells = <0>;
>> +    status = "okay";
>> +
>> +    flash@0 {
>> +        compatible = "jedec,spi-nor";
>> +        reg = <0>;
>> +        spi-max-frequency = <104000000>;
>> +        spi-rx-bus-width = <4>;
>> +        spi-tx-bus-width = <4>;
>> +        vcc-supply = <&vccio_flash>;
>> +    };
>> +};
>> +
>> +&tsadc {
>> +    rockchip,hw-tshut-mode = <1>;
>> +    rockchip,hw-tshut-polarity = <0>;
>> +    status = "okay";
>> +};
>> +
>> +&uart2 {
>> +    status = "okay";
>> +};
>> +
>> +&uart8 {
>> +    dma-names = "tx", "rx";
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&uart8m0_xfer &uart8m0_ctsn &uart8m0_rtsn>;
>> +    uart-has-rtscts;
>> +    status = "okay";
>> +
>> +    bluetooth {
>> +        compatible = "brcm,bcm4345c5";
>> +        clocks = <&rk809 1>;
>> +        clock-names = "lpo";
>> +        device-wakeup-gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
>> +        host-wakeup-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
>> +        max-speed = <1500000>;
>> +        pinctrl-names = "default";
>> +        pinctrl-0 = <&bt_reg_on_h_gpio4_b2
>> +                 &bt_wake_host_h_gpio4_b4
>> +                 &host_wake_bt_h_gpio4_b5>;
>> +        shutdown-gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_HIGH>;
>> +        vbat-supply = <&vcc_3v3_1>;
>> +        vddio-supply = <&vcc_1v8>;
>> +    };
>> +};
>> +
>> +&usb_host0_xhci {
>> +    extcon = <&usb2phy0>;
>> +    maximum-speed = "high-speed";
>> +    phys = <&usb2phy0_otg>;
>> +    phy-names = "usb2-phy";
>> +};
>> +
>> +&vop {
>> +    assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
>> +    assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
>> +    status = "okay";
>> +};
>> +
>> +&vop_mmu {
>> +    status = "okay";
>> +};
>> +
>> +&vp0 {
>> +    vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
>> +        reg = <ROCKCHIP_VOP2_EP_HDMI0>;
>> +        remote-endpoint = <&hdmi_in_vp0>;
>> +    };
>> +};
>> diff --git a/arch/arm64/configs/linux.radxa.config b/arch/arm64/ 
>> configs/linux.radxa.config
>> new file mode 120000
>> index 000000000000..8af66a0e7a96
>> --- /dev/null
>> +++ b/arch/arm64/configs/linux.radxa.config
>> @@ -0,0 +1 @@
>> +/home/radxa/linux.radxa.config
>> \ No newline at end of file
> 


