Return-Path: <devicetree+bounces-243917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D35C9E646
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:06:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 37009344510
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A6512D7386;
	Wed,  3 Dec 2025 09:05:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC641271A6D
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 09:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764752735; cv=none; b=Jcl6sAFIuC5BtTaZmGe+0xU32JdHyc5fUoOsTEq8IwTa52GPViSgjZdy4wPyVJjD3gX1IZ82u43tyQdxKxZ6GcsvIBP4KioOyj/pxDGO67LRsgoSmIYKwXAYSfgrLkTVDriNkiuSQeoMqHi24QRHUTPVMMsNrF30XzDT5P+B01A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764752735; c=relaxed/simple;
	bh=W3FY/D/cZGyZSgCYHq4F+rBt157PMYCGaHDcetWn60s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n4ZxbSfii5bQjgoWc+pWbPW/0m5UFmgc0+iUXLGnnqpsLCZ6vHo1w5H/Q2lqMe3i/GEeZs9LDhjcz5NLZK8KAxkDLmQjC+YcR3AfEMq4BTnbGgiXRq/uD5zOKSAH3hlc0nA1As9xyE+apB4VgzohSJUYEVm+Yi7cJH05jpSsrWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpgz4t1764752703t6bb3ae5e
X-QQ-Originating-IP: ozyxiVaJsyDx4C6XVn/8S9kkp/HFmQMG+Mu99kZVj2Q=
Received: from [192.168.254.128] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 03 Dec 2025 17:04:59 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12596096618840039990
Message-ID: <8E97C01894171FA1+2dbe948a-cf89-4090-b1b5-5404f4a2b748@radxa.com>
Date: Wed, 3 Dec 2025 18:04:58 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND2 PATCH v5 3/3] arm64: dts: rockchip: Add support for CM5
 IO carrier
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
 kever.yang@rock-chips.com, honyuenkwun@gmail.com, inindev@gmail.com,
 michael.opdenacker@rootcommit.com, dsimic@manjaro.org, pbrobinson@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 heiko@sntech.de
References: <20251202084052.1517-1-naoki@radxa.com>
 <20251202084052.1517-4-naoki@radxa.com>
 <69a3de19-2aa2-48a7-8d8d-abc6efa3f2ce@rock-chips.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <69a3de19-2aa2-48a7-8d8d-abc6efa3f2ce@rock-chips.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MQ+wLuVvI2LQLWElDZ3uB38P3e9kX0n/QyAVh7DU3Bx4g/1XveOfkc9A
	Hi6/kXvJfjdplrT0FSjbnfzctY6xbje2/8i7I6R38LEGVXh+WKghMQL5cgzAXztVzY80jx+
	Dqk6sb7Z87zC0OCfMi6TzxDZsW0wonvllgr7TdX0Ufvb6BJWTZRof0J7tjdYMZGWwvysSrZ
	09qh5zSRIhTgluVk4s2S8EhIVYsFRhrkYDVterT5SDDAiS/FZic4x4Ste7gDItL+B1Op8PD
	XFhZWSOC7N+Yeaut1j/u9+BGy6N1Td2YWAGCn78FzE+5doR97N6KVISWj4U7XjC+4eHa/Io
	yn0BVVBEnsnU2ns5cLJp3+J8gYpLBNDYWJ5a2dj4gFhkPMDv1Qe5Jdf7xYvsnAXUN/t7WeU
	blk7HpO42on2inHkC44H5oRPThYsW1Io1zwLodx0vAJ8Vlvzq5GgNqgN+DmjR4fOVM2eb17
	sQgjDd6fUsqiXrEWafbnCIEgpT9RSHEQV4Uplt0X5nX9Vt5v5NzdNTPyWKiyweg0CtR+iLo
	+fDrubOt6oUeHnmG4eAasdfNvMvDyiNYJ+rfAwKLIHVRygssBiFRcBjZWqsvwYxlooem0m4
	56VHX2yA3sMGSTUiUls7IE1uublszhw22/Mmbi0fcPgXuFz7pPbPHqczgAiUkATJ9T4f0p3
	wbs6Xe4OhjDeghPKADmCQPHl+dQKsZeTo5mmx+fJc/ff7udTAaYwR42kIZa9VQRWbEHFG0/
	uMbqw/kLYdlcUkBe4mL9jtSPqnKusAkB+GuqRefJH0wR8kSXcwf25NZ6Q+JXFwvbu8q1tHx
	cB/3i5/yYh/JGAvmy0E7ZC4OH16o54SCtrcE8trobnbQiynPGas37UwA7Qr/OUX5C/OCnz3
	EDef7Go8jbJNFaHTe9Xrgl8igXjooaJeRecCC0oMwH/Xyc/27ilfCWoVakO5oXvf0wb9CY/
	+PK/YKlkSmmwjPx8ml9jL7WWgrY+l6JWWy775sv+ozMbXQN3eixyKvOKB
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

Hi Shawn,

Thanks for your review!

I'll reflect your suggestions in v6.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/2/25 18:00, Shawn Lin wrote:
> Hi Fukaumi
> 
> 在 2025/12/02 星期二 16:40, FUKAUMI Naoki 写道:
>> From: Joseph Kogut <joseph.kogut@gmail.com>
>>
>> Specification:
>> - 1x HDMI
>> - 2x MIPI DSI
>> - 2x MIPI CSI
>> - 1x eDP
>> - 1x M.2 E key
>> - 1x USB 3.0 Host
>> - 1x USB 3.0 OTG
>> - 2x USB 2.0 Host
>> - Headphone jack w/ microphone
>> - Gigabit Ethernet w/ PoE
>> - microSD slot
>> - 40-pin expansion header
>> - 12V DC
>>
>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> Rebased on linux-next 20251201, no change.
>> ---
>>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>   .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 486 ++++++++++++++++++
>>   2 files changed, 487 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5- 
>> io.dts
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/ 
>> dts/rockchip/Makefile
>> index dbdda9783e93..699ed38235fe 100644
>> --- a/arch/arm64/boot/dts/rockchip/Makefile
> 
> ...
> 
>> +        regulator-max-microvolt = <5000000>;
>> +        vin-supply = <&vcc5v0_sys>;
>> +    };
>> +
>> +    vcc3v3_pcie: regulator-3v3-vcc-pcie {
>> +        compatible = "regulator-fixed";
>> +        regulator-name = "vcc3v3_pcie2x1l0";
>> +        regulator-min-microvolt = <3300000>;
>> +        regulator-max-microvolt = <3300000>;
>> +        enable-active-high;
>> +        regulator-boot-on;
>> +        regulator-always-on;
> 
> Don't set pcie slot power as boot-on/always-on unless
> you have special reasons. Because the power/PERST#/clock
> is controlled by pcie host driver to make sure the timing
> fit PCIe CEM spec for better compatibility.
> 
>> +        gpios = <&gpio1 RK_PD3 GPIO_ACTIVE_HIGH>;
>> +        startup-delay-us = <50000>;
>> +        vin-supply = <&vcc5v0_sys>;
>> +    };
>> +
>> +    vcc_3v3_s0: pldo-reg4 {
>> +        compatible = "regulator-fixed";
>> +        regulator-name = "vcc_3v3_s0";
>> +        regulator-always-on;
>> +        regulator-boot-on;
>> +        regulator-min-microvolt = <3300000>;
>> +        regulator-max-microvolt = <3300000>;
> 
> ...
> 
>> +};
>> +
>> +&sdmmc {
>> +    bus-width = <4>;
>> +    cap-mmc-highspeed;
>> +    cap-sd-highspeed;
>> +    disable-wp;
>> +    max-frequency = <200000000>;
> 
> Could be removed from board's dts unless you want to lower it.
> 
>> +    no-sdio;
>> +    no-mmc;
>> +    sd-uhs-sdr104;
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
>> +    vmmc-supply = <&vcc_3v3_s3>;
>> +    vqmmc-supply = <&vccio_sd_s0>;
>> +    status = "okay";
>> +};
>> +
>> +&spi2 {
>> +    assigned-clocks = <&cru CLK_SPI2>;
>> +    assigned-clock-rates = <200000000>;
>> +    num-cs = <1>;
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
>> +    status = "okay";
>> +
>> +    pmic@0 {
>> +        compatible = "rockchip,rk806";
>> +        reg = <0x0>;
>> +        interrupt-parent = <&gpio0>;
>> +        interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
>> +        pinctrl-names = "default";
>> +        pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
>> +                <&rk806_dvs2_null>, <&rk806_dvs3_null>;
>> +        spi-max-frequency = <1000000>;
>> +        system-power-controller;
>> +
>> +        vcc1-supply = <&vcc5v0_sys>;
>> +        vcc2-supply = <&vcc5v0_sys>;
>> +        vcc3-supply = <&vcc5v0_sys>;
>> +        vcc4-supply = <&vcc5v0_sys>;
>> +        vcc5-supply = <&vcc5v0_sys>;
>> +        vcc6-supply = <&vcc5v0_sys>;
>> +        vcc7-supply = <&vcc5v0_sys>;
>> +        vcc8-supply = <&vcc5v0_sys>;
>> +        vcc9-supply = <&vcc5v0_sys>;
>> +        vcc10-supply = <&vcc5v0_sys>;
>> +        vcc11-supply = <&vcc_2v0_pldo_s3>;
>> +        vcc12-supply = <&vcc5v0_sys>;
>> +        vcc13-supply = <&vdd2_ddr_s3>;
>> +        vcc14-supply = <&vdd2_ddr_s3>;
>> +        vcca-supply = <&vcc5v0_sys>;
>> +
>> +        gpio-controller;
>> +        #gpio-cells = <2>;
>> +
>> +        rk806_dvs1_null: dvs1-null-pins {
>> +            pins = "gpio_pwrctrl1";
>> +            function = "pin_fun0";
>> +        };
>> +
>> +        rk806_dvs2_null: dvs2-null-pins {
>> +            pins = "gpio_pwrctrl2";
>> +            function = "pin_fun0";
>> +        };
>> +
>> +        rk806_dvs3_null: dvs3-null-pins {
>> +            pins = "gpio_pwrctrl3";
>> +            function = "pin_fun0";
>> +        };
>> +
>> +        regulators {
>> +            vdd_gpu_s0: dcdc-reg1 {
>> +                regulator-name = "vdd_gpu_s0";
>> +                regulator-boot-on;
>> +                regulator-enable-ramp-delay = <400>;
>> +                regulator-min-microvolt = <550000>;
>> +                regulator-max-microvolt = <950000>;
>> +                regulator-ramp-delay = <12500>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +
>> +            vdd_cpu_lit_s0: dcdc-reg2 {
>> +                regulator-name = "vdd_cpu_lit_s0";
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +                regulator-min-microvolt = <550000>;
>> +                regulator-max-microvolt = <950000>;
>> +                regulator-ramp-delay = <12500>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +
>> +            vccio_sd_s0: pldo-reg5 {
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +                regulator-min-microvolt = <1800000>;
>> +                regulator-max-microvolt = <3300000>;
>> +                regulator-name = "vccio_sd_s0";
>> +
>> +                regulator-state-mem {
>> +                    regulator-off-in-suspend;
>> +                };
>> +            };
>> +
>> +            vdd2_ddr_s3: dcdc-reg6 {
>> +                regulator-name = "vdd2_ddr_s3";
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +
>> +                regulator-state-mem {
>> +                    regulator-on-in-suspend;
>> +                };
>> +            };
>> +
>> +            vcc_2v0_pldo_s3: dcdc-reg7 {
>> +                regulator-name = "vdd_2v0_pldo_s3";
>> +                regulator-always-on;
>> +                regulator-boot-on;
>> +                regulator-min-microvolt = <2000000>;
>> +                regulator-max-microvolt = <2000000>;
>> +                regulator-ramp-delay = <12500>;
>> +
>> +                regulator-state-mem {
>> +                    regulator-on-in-suspend;
>> +                    regulator-suspend-microvolt = <2000000>;
>> +                };
>> +            };
>> +
>> +            vcc_3v3_s3: dcdc-reg8 {
>> +                regulator-name = "vcc_3v3_s3";
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
>> +        };
>> +    };
>> +};
>> +
>> +&u2phy0 {
>> +    status = "okay";
>> +};
>> +
>> +&u2phy0_otg {
>> +    status = "okay";
>> +};
>> +
>> +&u2phy2 {
>> +    status = "okay";
>> +};
>> +
>> +&u2phy2_host {
>> +    status = "okay";
>> +};
>> +
>> +&u2phy3 {
>> +    status = "okay";
>> +};
>> +
>> +&u2phy3_host {
>> +    status = "okay";
>> +};
>> +
>> +&uart2 {
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&uart2m0_xfer>;
>> +    status = "okay";
>> +};
>> +
>> +&usb_host0_ehci {
>> +    status = "okay";
>> +};
>> +
>> +&usb_host0_ohci {
>> +    status = "okay";
>> +};
>> +
>> +&usb_host0_xhci {
>> +    dr_mode = "otg";
>> +    usb-role-switch;
>> +    status = "okay";
>> +
>> +    port {
>> +        usb_host0_xhci_role_switch: endpoint {
>> +            remote-endpoint = <&usbc0_role_switch>;
>> +        };
>> +    };
>> +};
>> +
>> +&usb_host1_ehci {
>> +    status = "okay";
>> +};
>> +
>> +&usb_host1_ohci {
>> +    status = "okay";
>> +};
>> +
>> +&usb_host2_xhci {
>> +    status = "okay";
>> +};
>> +
>> +&usbdp_phy0 {
>> +    mode-switch;
>> +    orientation-switch;
>> +    sbu1-dc-gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
>> +    sbu2-dc-gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_HIGH>;
>> +    status = "okay";
>> +
>> +    port {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        usbdp_phy0_orientation_switch: endpoint@0 {
>> +            reg = <0>;
>> +            remote-endpoint = <&usbc0_orientation_switch>;
>> +        };
>> +
>> +        usbdp_phy0_dp_altmode_mux: endpoint@1 {
>> +            reg = <1>;
>> +            remote-endpoint = <&usbc0_dp_altmode_mux>;
>> +        };
>> +    };
>> +};
>> +
>> +&vop {
>> +    status = "okay";
>> +};
>> +
>> +&vop_mmu {
>> +    status = "okay";
>> +};
>> +
>> +&vp0 {
>> +    vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
>> +        reg = <ROCKCHIP_VOP2_EP_HDMI0>;
>> +        remote-endpoint = <&hdmi0_in_vp0>;
>> +    };
>> +};
> 
> 


