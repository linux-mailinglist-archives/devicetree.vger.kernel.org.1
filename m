Return-Path: <devicetree+bounces-16883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F00F17F0425
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 04:05:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 60A1A1F220FD
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 03:05:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0E351852;
	Sun, 19 Nov 2023 03:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="LExbs8DH";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="qSpOKIV1"
X-Original-To: devicetree@vger.kernel.org
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 216F812B
	for <devicetree@vger.kernel.org>; Sat, 18 Nov 2023 19:05:33 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 3C26F3200920;
	Sat, 18 Nov 2023 22:05:29 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sat, 18 Nov 2023 22:05:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1700363128; x=1700449528; bh=PpsFfFSNPUPHay4RnH2xZcaes
	VPMLMaNoafz7K2FrBQ=; b=LExbs8DHfGssoP+5hWg2b91HiWDGSS3DHejHEiBLJ
	DA7trRJ1PXF0GwrRS760IY4GmL2xAqcDd22+ZNFVYVeBYXf4XlNN6VNn2IeEVrFR
	uCOX5PcVo2m08YAn+sx0+TlH5DY/5jyndCZ9eHocORjDHD7TpsMrFpdXKpnvby4z
	xIQoPjBmaFbStc4CEg2mdVVuYW+dGFBKV76MaXfWVCS/XLI4eO1J1OOVauNyB+TN
	tmMb0iWkCeeoQ08wynoScGTBJutXplBDTSxA4wiQqpEaIO8tikefpLKQiaSfAwk9
	Cd0Cp+ygXc0yCjEy17UL4XuDRfpghfkExSIuS6UKiRSGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1700363128; x=1700449528; bh=PpsFfFSNPUPHay4RnH2xZcaesVPMLMaNoaf
	z7K2FrBQ=; b=qSpOKIV1t4HgztMpj63aVmm48rAcmOu6hxpmm6YlWdN1v9/x0Cn
	YFWIHuz8XNC4Ndseir/ZmFjitbhwFyakeRg4oCSXe5lgyoig/stAqgpRmeX3LNY3
	zcZPtzrD+ge/JTowlAr7uEg8cFhxyxypFPjKbQ3cqsDtuak5DO5hu+kpiXaHxDC7
	wzJbpl+PVutVrr72w4X9bkR5KG6wvz1/oyo8JZqeUZMH7PEpl8ccsqFmx1ped9pr
	UDqWOfVTysmCeM3Wv0YK2ccNh7i98juwrwv2Th8UTCnsriKQeTW8rZD1kW3d8M8p
	EPOi8FcLUCBJb+qsE6bXcYw4AnwaEiTd/tg==
X-ME-Sender: <xms:eHtZZRVVavCGcAzA3yrnmSvd5xlC9OLAcdd3YSOhPKp00DpKuOv6Mg>
    <xme:eHtZZRk0CdOp6JlaNbKlCsxHeChwJDhZ1y8DNsCdGown8lWCsmqW5iLiE_dSFFZxD
    M2VSn06BA>
X-ME-Received: <xmr:eHtZZdb8JcwarsuaVqYKCxdC6B9D2SqA70L78QYqr8ZAbMuv1-1A-pMktKTI5xZVUrgGmsSzQV6uOcQqqBw384ZvlGIpxn_viPGjJw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudegfedgheehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepueegfefgveeuiedtheffgfefveejkeetiefhhfdvjeevlefhueekudeuleeghfek
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:eHtZZUVXgPt9tj8GWo_YhIBsso2-IFig548YteZUENSLaSCMOmUsSw>
    <xmx:eHtZZbnq7OnwTg6ZNW0HyIc50BAZID-yP_aTFTeej3azsTgpa1CXOw>
    <xmx:eHtZZRfDNMYMRYHXXeOVfGAduk8of-5pWrWMl58MLHnlSAt_REnd5A>
    <xmx:eHtZZZYpm_iatg93-3TDGfPR9x4xm6ZBNkvOtTRZrfWqJyDwHp76Cg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 18 Nov 2023 22:05:25 -0500 (EST)
Message-ID: <38f2c4a8-2b80-44f1-b9a5-29c3e86be56f@feathertop.org>
Date: Sun, 19 Nov 2023 14:05:20 +1100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] ARM: dts: Add Sonoff iHost Smart Home Hub
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>
References: <20231113120705.1647498-1-tim@feathertop.org>
 <20231113120705.1647498-8-tim@feathertop.org> <4921575.Y6S9NjorxK@diego>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <4921575.Y6S9NjorxK@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Heiko,

On 11/18/23 23:09, Heiko Stübner wrote:
> Hi Tim,
>
> Am Montag, 13. November 2023, 13:07:04 CET schrieb Tim Lunn:
>> Sonoff iHost is gateway device designed to provide a Smart Home Hub,
>> it is based on Rockchip RV1126. There is also a version with 2GB RAM
>> based off the RV1109 dual core SoC.
>>
>> Features:
>> - Rockchip RV1126
>> - 4GB DDR4
>> - 8GB eMMC
>> - microSD slot
>> - RMII Ethernet PHY
>> - 1x USB 2.0 Host
>> - 1x USB 2.0 OTG
>> - Realtek RTL8723DS WiFi/BT
>> - EFR32MG21 Silabs Zigbee radio
>> - Speaker/Microphone
>>
>> This patch adds the initial device tree for this device, it is largely
>> based off the device trees for mainline Edgeble Neu2 and downstream
>> Rockchip rv1126-evb-v13 configs. It has been adapted with relevant
>> peripheral and GPIO pins for the iHost.
>>
>> Signed-off-by: Tim Lunn <tim@feathertop.org>
>
>> diff --git a/arch/arm/boot/dts/rockchip/rv1109.dtsi b/arch/arm/boot/dts/rockchip/rv1109.dtsi
>> new file mode 100644
>> index 000000000000..9cbaa08ab1b8
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/rockchip/rv1109.dtsi
>> @@ -0,0 +1,23 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "rv1126.dtsi"
>> +
>> +/ {
>> +	compatible = "rockchip,rv1109";
>> +
>> +	cpus {
>> +		/delete-node/ cpu@f02;
>> +		/delete-node/ cpu@f03;
>> +	};
>> +
>> +	arm-pmu {
>> +		interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
>> +			     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
>> +		interrupt-affinity = <&cpu0>, <&cpu1>;
>> +	};
>> +};
> this definitly wants to be its own patch ;-) .
>
> I.e. you add support for the rv1109, which seems to be the same as rv1126, just
> with 2 instead of 4 cpu cores.
I will split this out. Yes, rv1109 is identical to the rv1126 apart from 
the number of cores.

I initially hoped rv1109 could just use the same device tree, but having 
the extra cores enabled ends
up causing panics.

>
>
>
>> +&sdio {
>> +	bus-width = <4>;
>> +	cap-sd-highspeed;
>> +	cap-sdio-irq;
>> +	keep-power-in-suspend;
>> +	max-frequency = <100000000>;
>> +	mmc-pwrseq = <&sdio_pwrseq>;
>> +	non-removable;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
>> +	rockchip,default-sample-phase = <90>;
>> +	sd-uhs-sdr104;
>> +	vmmc-supply = <&vcc3v3_sys>;
>> +	vqmmc-supply = <&vcc_1v8>;
>> +	status = "okay";
>> +	#address-cells = <1>;
>> +	#size-cells = <0>;
> I don't think the *-cells are needed here
>
Ok, i will check and remove.

Regards
    Tim

>
> Thanks
> Heiko
>
>

