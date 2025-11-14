Return-Path: <devicetree+bounces-238733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D938C5DA52
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C3E43A14C4
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0F7A320CA9;
	Fri, 14 Nov 2025 14:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b="sYY+2DUp"
X-Original-To: devicetree@vger.kernel.org
Received: from dog.elm.relay.mailchannels.net (dog.elm.relay.mailchannels.net [23.83.212.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E95C831AF21;
	Fri, 14 Nov 2025 14:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.212.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763131289; cv=pass; b=PdZ/GRTnbA6eZCRLQLwyol+C65AC9l53IewVIns891UKnNaMPM+GP45w2/5yBtZ1s6vOf6+7oHbCPbdxqHMsER9v4AANzVaxfWzQBGvnwOzFGiQKCKm/5p3mc1eLQZOI289r2kCNO6pzNmzzs8CsoRmu2/LjZbMsJGvmuk+UsNs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763131289; c=relaxed/simple;
	bh=dfpevwfSQm+5ePUf9cjWNFDjwcCqSDAQYexaYo++q8s=;
	h=Message-ID:MIME-Version:Cc:Subject:To:References:From:In-Reply-To:
	 Content-Type:Date; b=k8Qzo7WQcPHlghrOLNusQQ8qgPCsToK7VzFugyHNIk2qjtktqtiy39Lazh5Y6ugKYG+XJRPq12qndqDmvBclD+25vP9rweTIu0hDI8tQjZcbdeJgmkRQizqqkkf4JgGGexeuCyjhI64ztcCl584kHKgwbWT/XLhbLBmXML5xLMs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com; spf=pass smtp.mailfrom=rootcommit.com; dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b=sYY+2DUp; arc=pass smtp.client-ip=23.83.212.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 03BA17209BB;
	Fri, 14 Nov 2025 14:31:28 +0000 (UTC)
Received: from fr-int-smtpout25.hostinger.io (100-98-23-226.trex-nlb.outbound.svc.cluster.local [100.98.23.226])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id CF6F17215AC;
	Fri, 14 Nov 2025 14:31:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763130687;
	b=j2Xd1eETHQIS1/pUwSBTgVYMIjEYwjUIdBSaNw2yTC/KMxzJq9ef1/qNZioQ3ikibvIHlU
	hdCRGzL6VfB034mEucKduS9Jz1+ybZ4ZWX0XDdVr0P++Peo1gQgFR05lP8PiZbsJQvjS+1
	bqIFtoKZuWGFd4Ky5KHA7yrWchblrMkg/OjRmInB6cVzSW3XfsXTB/sk9Au/GNQlRM0ER8
	ynLheV3UcKua3ZJ5KZcGn3wGQuNRxvqIspwo5et0Jc0iF6qrnRPLrCHt6bRnLcWmhb9hEt
	bY4CR1rA5Jl+Dgj6nyDqvbCp8YPqUC+WYaOwNjqHyOCd7Rt/YCCS32e/1fKBZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763130687;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=il5I2yAbj139BfkiCbdhTQ/d4/OE8/U6mDrW8QnzXAA=;
	b=m4siiYgwDRhmb3DaiVumIuE9oAOsCxFnZzPifZbUZaHL81Jm3kvcPLfauL0BN15TgkAAn6
	t4lC7kSrlF0YkodnZqdJkCE8rnDdzpEbCjPnunDip3RUpeMVkaG/ryTJQ3MOWI4s6T40lW
	wmzfVSCky7aC1kQgc/zp1OdUxaES/h9rXS6Ii1JtCsh5gRyHoZk74NPmNPo3ZQULZ50BBq
	CbMcEuikFjnZfrzN/mh3uCfjSzZxd0m/0FJI/2EbFxQQGP1WA+x5+4uDUt8LcuyDuzs0GE
	v9zgMcVKgpGzTA0QKlUICQPsYOjeBaw27KzgbZF1WaokZZlNf0kpu8eunNC3lQ==
ARC-Authentication-Results: i=1;
	rspamd-dd986fb9b-ccxbz;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId:
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Skirt-Quick: 0887cbb27111b2e8_1763130687686_4141335080
X-MC-Loop-Signature: 1763130687686:900645440
X-MC-Ingress-Time: 1763130687686
Received: from fr-int-smtpout25.hostinger.io (fr-int-smtpout25.hostinger.io
 [148.222.54.38])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.98.23.226 (trex/7.1.3);
	Fri, 14 Nov 2025 14:31:27 +0000
Received: from [IPV6:2a04:cec0:1227:4eff:55c6:1200:95e4:1a9a] (unknown [IPv6:2a04:cec0:1227:4eff:55c6:1200:95e4:1a9a])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4d7KM93PQRz1y86;
	Fri, 14 Nov 2025 14:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763130679;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=il5I2yAbj139BfkiCbdhTQ/d4/OE8/U6mDrW8QnzXAA=;
	b=sYY+2DUpTYdAdp99X6T+jyo6soz1A6X73YJxHx/bno2/wmtdWn8wjdkELIv+VHuJBqEL0w
	zQ+TrmxcftGicW0XpIjkLBAsKC00qZuQN2t9qj62yTJ6GGtQpQ2Jpd3p4iEYQ7emRexOva
	Lmi5IbcpqgB2wg5f8DOzRsxtUOPANHERhiDqS19gxjGTI38HUNiJtfm4K8oABfInIld0yS
	AIW/W3SG8o5KdY+xRxmvs6p3hNrmlFscZH5r2WFj07XBYNjROvk5mjd2q0yhjCb3rxbwJ2
	/xVYwNKTnK7y2/55Ny9x/DdZj7Z5nB77WzCWP3xBnrDzDOv3JKV8eqsUW+kXRw==
Message-ID: <8ad09a33-6464-4429-a58f-2769b78ada93@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add Tinkerboard 3 and 3S device
 tree
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20251111172003.2324525-1-michael.opdenacker@rootcommit.com>
 <20251111172003.2324525-3-michael.opdenacker@rootcommit.com>
 <3310785.5fSG56mABF@diego>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <3310785.5fSG56mABF@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Date: Fri, 14 Nov 2025 14:31:17 +0000 (UTC)
X-CM-Envelope: MS4xfMTWSdvcUwlWZ9Q9csUpnXvQelUJQs6K5ZjKFijmo7Y1NEtIdW0htQ8j/DgJjLDKou6/FEscxJFwsLVl/9GviAF9Kd89g/xlMIlibGkikIjrIe9UEXyp A/PH24lR7FWGuBGs/QO6HOb3xeEg8QLirPbMAPyh2uISFpDi7FwDnaiZF7iGm0FKEDva4OUCSMdwzKRgJpETiABraa3CF3/vRb2YXXF+f8RuNrvuHUNZ8t6a VXoh4CAiemM1VQeg+5wCxLEGB+4Xd3NqW/8hiSsK1FYOxgU8BNyZfpF7zTv8w/8T5Ks4pxNSuLT37wNvepmfANhHpLwPXGy7HTywTxWEjTXRaCgCKpoPOovV 2o4U6LKK3vKOVVf8I3wmE1kFqwaPhus/hSIvAcXWyZgEgw8+LE6daQvE2xmVmSnnMsgHkBFKrOAvb5KMKrnMOei7bvZvDR/SzjQtqxrSAnh8s4mps7Y3W4o0 7YEmZNXSpWRXGtYKYQJfsUAYD0x4pmuoF2UPmVsBV4HKloRQNKpIoqfH3Z5rO7zl7zIDFxN6eL7Wr58eeIqEtR+ze1za9bVmLCImsCaXRoIqhwZOt0Bs8TEw Zaj5u7Rm5qLfEMDy7JGJpeafc7D58ciDu4aO3zq0H2klMw==
X-CM-Analysis: v=2.4 cv=GbNFnhXL c=1 sm=1 tr=0 ts=69173d37 a=oqLoe7gRze/BHyD1ircVJQ==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=-Yt9tNsTAAAA:8 a=VwQbUJbxAAAA:8 a=d70CFdQeAAAA:8 a=xWdKMzntkUUiUo5u4OIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=qPQde0g9OtMA:10 a=HTceBwxjnJgA:10 a=5XHQ0vS7sDUA:10 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com

Hi Heiko

Thanks a lot for the review!

On 11/13/25 23:35, Heiko Stübner wrote:
> Hi Michael,
>
> Am Dienstag, 11. November 2025, 18:20:23 Mitteleuropäische Normalzeit schrieb michael.opdenacker@rootcommit.com:
>> From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
>>
>> Add initial device tree support for Asus Tinkerboard 3 [1] and 3S [2],
>> which are SBCs based on the Rockchip 3566 SoC.
>>
>> The "3S" version ("S" for "storage") just adds a 16 GB eMMC
>> and a "mask ROM" DIP switch (to mask the eMMC and enter "Mask ROM"
>> mode for recovery) to the "3" version.
>>
>> This adds support for:
>> - Debug UART (/dev/ttyS2)
>> - SD card (/dev/mmcblk1)
>> - eMMC (/dev/mmcblk0, only on Tinkerboard 3S)
>> - I2C:
>>    - i2c0 (internal bus with a PMIC and regulators)
>>    - i2c2 (internal bus with an at24 eeprom and an RTC device)
>> - USB 2.0 ports
>> - 2 GPIO LEDS
>>
>> Link: https://tinker-board.asus.com/series/tinker-board-3.html [1]
>> Link: https://tinker-board.asus.com/series/tinker-board-3s.html [2]
>> Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
>> ---
> please follow the DTS coding style
> https://docs.kernel.org/devicetree/bindings/dts-coding-style.html
Great, I was looking for such a document :)
>
>
>> +/ {
>> +	aliases {
>> +		serial2 = &uart2;
>> +		mmc1 = &sdmmc0;
>> +		i2c0 = &i2c0;
>> +		i2c2 = &i2c2;
> alphabetical property order
Fixed.
>
>
>> +	};
>> +
>> +	chosen {
>> +		stdout-path = "serial2:1500000n8";
>> +	};
>> +
>> +	vcc3v3_sys: regulator-3v3-vcc-sys {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc3v3_sys";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		vin-supply = <&vcc5v0_sys>;
>> +	};
>> +
>> +	vcc5v0_sys: regulator-5v0-vcc-sys {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc5v0_sys";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <5000000>;
>> +		regulator-max-microvolt = <5000000>;
>> +	};
>> +
>> +	vcc5v0_usb_host: regulator-5v0-vcc-usb-host {
>> +		compatible = "regulator-fixed";
>> +		enable-active-high;
>> +		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&usb_host_pwren_h>;
>> +		regulator-name = "vcc5v0_usb_host";
>> +		regulator-min-microvolt = <5000000>;
>> +		regulator-max-microvolt = <5000000>;
>> +		vin-supply = <&vcc5v0_sys>;
>> +	};
>> +
>> +	gpio_leds: gpio-leds {
> gpio-foo before regulator-bar
Done
>
>> +		compatible = "gpio-leds";
>> +
>> +		act-led {
>> +			gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
>> +			linux,default-trigger="mmc1";
>> +};
> missing indentation
Oops, fixed.
>
>> +
>> +		rsv-led {
>> +			gpios = <&gpio0 RK_PD6 GPIO_ACTIVE_HIGH>;
>> +			linux,default-trigger="none";
>> +		};
>> +	};
>> +};
>>
>>
>>> Heiko
>>>
>>>
>> +
>> +&uart2 {
> alphabetical ordering of phandles please (uart2 definitly somewhere after i2c0)
Indeed. Done.
>
>> +	status = "okay";
>> +};
>> +
>> +&i2c0 {
>> +	status = "okay";
>> +
>> +	rk809: pmic@20 {
>> +		compatible = "rockchip,rk809";
>> +		reg = <0x20>;
>> +		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
>> +		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
>> +		#clock-cells = <1>;
>> +		clocks = <&cru I2S1_MCLKOUT_TX>;
>> +		clock-names = "mclk";
>> +		clock-output-names = "rk809-clkout1", "rk809-clkout2";
>> +		interrupt-parent = <&gpio0>;
>> +		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
>> +		#sound-dai-cells = <0>;
>> +		system-power-controller;
>> +		wakeup-source;
>> +
>> +		vcc1-supply = <&vcc3v3_sys>;
>> +		vcc2-supply = <&vcc3v3_sys>;
>> +		vcc3-supply = <&vcc3v3_sys>;
>> +		vcc4-supply = <&vcc3v3_sys>;
>> +		vcc5-supply = <&vcc3v3_sys>;
>> +		vcc6-supply = <&vcc3v3_sys>;
>> +		vcc7-supply = <&vcc3v3_sys>;
>> +		vcc8-supply = <&vcc3v3_sys>;
>> +		vcc9-supply = <&vcc3v3_sys>;
>> +
>> +		regulators {
>> +			vcc_1v8: DCDC_REG5 {
>> +				regulator-name = "vcc_1v8";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc3v3_sd: SWITCH_REG2 {
>> +				regulator-name = "vcc3v3_sd";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vccio_sd: LDO_REG5 {
>> +				regulator-name = "vccio_sd";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <3300000>;
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc_3v3: SWITCH_REG1 {
>> +				regulator-name = "vcc_3v3";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +		};
>> +	};
>> +
>> +	vdd_cpu: regulator@40 {
> you probably need &cpu0 phandles to set this regulator-supply?


Oh, you're the maintainer on this one :)
Good catch. I was imitating the Orange Pi 3B DT, and since the board 
seemed to boot fine, I didn't pay attention to the fact that vdd_cpu was 
needed elsewhere.
Fixed.

>
>> +		compatible = "silergy,syr827";
>> +		reg = <0x40>;
>> +		fcs,suspend-voltage-selector = <1>;
>> +		regulator-name = "vdd_cpu";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <830000>;
>> +		regulator-max-microvolt = <1200000>;
>> +		regulator-ramp-delay = <2300>;
>> +		vin-supply = <&vcc3v3_sys>;
>> +
>> +		regulator-state-mem {
>> +			regulator-off-in-suspend;
>> +		};
>> +	};
>> +};
>> +
>> +&i2c2 {
>> +	status = "okay";
>> +
>> +	m24c08@50 {
> I guess eeprom@50 ?

Indeed. Fixed too.
Thanks again,
Michael.

-- 
Michael Opdenacker
Root Commit
Embedded Linux Training and Consulting
https://rootcommit.com


