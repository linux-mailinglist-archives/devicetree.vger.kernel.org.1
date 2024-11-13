Return-Path: <devicetree+bounces-121499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A03F59C6F55
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 13:43:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 31C6BB2BE60
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 12:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45944200CAF;
	Wed, 13 Nov 2024 12:25:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727D9200CA7
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 12:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.16.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731500753; cv=none; b=crNA5tYEYsyCyp8Zlcw3f5ipwo+rBSJB1zJl0IskjdDWJ5eE2DJWsPkl8QYzzvQMdEu/33pi+oGuAhSjSC8g5Z0NrhUMVB/lkcM+Fw0oHyZfejQWpBIU4fVCpUuuqqENzSMG5kvw3H0Bm/YqPUUwYrds8EQg4QHOr9xsFhVQadU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731500753; c=relaxed/simple;
	bh=mCVUqKcrQ+pngKHX9qidp+MGxA8eu9YQJr/jqPDKEaI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oURB3H4smJ7nmbRz+lVGDfCCFj93/G5AeBqtdmWCvR7/AfwRXC8eIk7gMMw6QZ+rYYFkrwPVg7QaEF4dlxs6FC7WFUWmtmftc6S8+kyExcgLtxbOulTuj+seV+oggVuiDihruQG7osXxMjiKb4Af+xXl714QWkDWtNSEK9Ai0q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.206.16.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1731500523tjk1ooz
X-QQ-Originating-IP: XWngibuMDvg8U1yUdhLwje9nLR1oZ7nJY4Hsfh0Wj10=
Received: from [IPV6:240f:10b:7440:1:290:9858: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 13 Nov 2024 20:21:58 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18288062523072362147
Message-ID: <0898AF7003499F15+cae4d484-39ee-489b-a697-2da021458b92@radxa.com>
Date: Wed, 13 Nov 2024 21:21:57 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] arm64: dts: rockchip: fix eeprom for Radxa ROCK 5A
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 jbx6244@gmail.com, krzk+dt@kernel.org, dsimic@manjaro.org
References: <20241113081258.2745-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241113081258.2745-1-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OCYbvBDBNb9rA/xylsjiMSKMmsiDPS1AporEtPO2/r8KF4ri4Yll3mFr
	HgI85cBgdMgseUpLrFKuUTmrE4f17TEP3i4ZEv40p8srdBQkwqrLSsRtXNrvjxSSx8mj6R4
	COJbURZ/YReg6buujEtfgiRxE4l612tIDv17Sadft9zG4tq2+W7haBsqqZAq7Nx7286WBB1
	1R4BWmazb403c5XsDGHdgzyIPK6W5f6zGwPEzj2EqLGdQUaO+Q2mGeKAYVRlEoHrRrKV3IV
	BkZNCxyJ2sd7qBtHtLb2QSTR4Oy8z2JXQrPhS3G4tAbdOWMU62sZJaxE2Aa8+S+vUF1+a5/
	YgnfKN0IC+7VCVzB5FXGX+0Un5nHSaKmpBuCyoql1rHJLi0ZX++++6mwHI9IM9A2wfASVkL
	Q/X7XuaPrWS0LAtEwybCTE3xd0iLisPTOALzRw0xAO8v+U3ZpJARXzsAEjH8RusgCRAYa34
	Q5K/4wkFSK81m5l8asxpey3nSmya2WQqFEwOWc/u8z7hbF+z9jzEXiNpD8NDmdaSLVXSGVe
	Op5/4RyyAAkj2MiAPDL6SwNM/xhEX5Qffkjgy+ZqEV5+voaiE3jUb7q/oFRuk5NoUfZicZ0
	WU1KACzM/FYYoin8NIkzSOCRoENhWXlvljnKhs+VgB2lqYX3fEiTh2jLpnxHb/ONgqQ0U4A
	94imfpWElEdR6QBeaXhjJA66nMs7j2FdgOo6Pz3Q3yyuYDE1TgdLdStmXEAr+4gd24A9knW
	D8IKoILutmes0kTHvS3IjjGFkHlpcJJLytdq0fTnaWKD0ESJmH3aFQpcuffU5Iiw1yr7450
	cYF8/VuTi5h55FdfoRTivCEaOs/FZPYTib2cMzxmJP+pQcE6nRD5i7bfcS1lppakv/SwA7s
	VB0588vvLqN/Je6EkPqIbSnSYBDz0qCv6L/ueAxDat639XxkMCyjvfu51n3xUncUMjJERGC
	GxuiXiQiHXIN4aw==
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0

Hi,

please ignore this patchset for Radxa ROCK 5A.

ROCK 5C is slightly updated version of ROCK 5A, and they are 99% 
identical from the perspective of device tree.

(if you want, you can use rk3588s-rock-5c.dts(dtb) for ROCK 5A)

I'll update ROCK 5C patchset to make commin .dtsi, then convert both 
ROCK 5A and 5C dts to use common (and up-to-date) .dtsi.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 11/13/24 17:12, FUKAUMI Naoki wrote:
> - move eeprom from i2c2 to i2c0 to match with schematic[1]
> - add vcc_3v3_pmu regulator and use it as vcc-supply for eeprom
> 
> [1] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 23 ++++++++++++++-----
>   1 file changed, 17 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 70a43432bdc5..56c818c45dc0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -113,6 +113,16 @@ vcc5v0_sys: regulator-vcc5v0-sys {
>   		vin-supply = <&vcc12v_dcin>;
>   	};
>   
> +	vcc_3v3_pmu: regulator-vcc-3v3-pmu {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_3v3_pmu";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_3v3_s3>;
> +	};
> +
>   	vcc_5v0: regulator-vcc-5v0 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "vcc_5v0";
> @@ -221,6 +231,13 @@ regulator-state-mem {
>   			regulator-off-in-suspend;
>   		};
>   	};
> +
> +	eeprom: eeprom@50 {
> +		compatible = "belling,bl24c16a", "atmel,24c16";
> +		reg = <0x50>;
> +		pagesize = <16>;
> +		vcc-supply = <&vcc_3v3_pmu>;
> +	};
>   };
>   
>   &i2c2 {
> @@ -242,12 +259,6 @@ regulator-state-mem {
>   			regulator-off-in-suspend;
>   		};
>   	};
> -
> -	eeprom: eeprom@50 {
> -		compatible = "belling,bl24c16a", "atmel,24c16";
> -		reg = <0x50>;
> -		pagesize = <16>;
> -	};
>   };
>   
>   &i2c3 {



