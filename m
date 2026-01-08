Return-Path: <devicetree+bounces-252730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9808D0245D
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 12:02:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 889A230478E8
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F1563D1CB2;
	Thu,  8 Jan 2026 10:18:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979893ECBF5;
	Thu,  8 Jan 2026 10:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767867519; cv=none; b=sr9NDDwpx32rYiJN+qg2Lrzw8HZ3Mh4Us1zvPbBFmXKcsjZU7zufp3OI8+shq1PqkUht+Q9bGYXLsGmeeHKu0ug5NSkx+eg3EA/CBj/qpdaBw7IgFtmejY3Ht0qJ2gjcX5Z4u7WTZICCZjm+uBw/ctRZcmNCpk4WVqkeRUFotbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767867519; c=relaxed/simple;
	bh=ZUZ0+hxfgtRIecRf0/5Ugc245wF3q8B7OXoxLAIHmU8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NH3vMSPcHMp9Wl6H+IAsoxGAhPAkC6AeaSNu2yetVSQz2/YlQ6qjIY7oSTUclJolnyv319cI9/Vowkbz/+NdG0Ffokt6wdx7xaueop4dMvj/fkkv0i4M52yjVp55U4l51L8y+pvqrQ0jqEBTs285pqhp0BTLNvB1UfAmNl6iNj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: esmtpgz11t1767867447t17b301d6
X-QQ-Originating-IP: iimORQ95rju0zXekm8eBvwFRScDDDgqOrWF9LwG6wVM=
Received: from [192.168.254.128] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 08 Jan 2026 18:17:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14971943080650209670
Message-ID: <6547200DD4E67155+b1fb1848-2f11-4b3e-b556-9386373d23f1@radxa.com>
Date: Thu, 8 Jan 2026 19:17:23 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: remove RTC for Radxa E52C
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260108100000.110354-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20260108100000.110354-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OBDSLDo3By90tSlGmy9itwqN9NO9G4orDi6CCHIg+yJu1ZI4NLnO+pE6
	NihuOgs14xcpbS1S5UCs1HA/ODBaPOzxPS6t2YPv8tQDyqo3FmsLq0d+iEX0+pqORjABZzk
	B/1emMPqePZOBq8uz7ewvv4sBMaP7S/p3pwI83dV7wVzznaZj/JF8DuhC+emESvtUjlvw/5
	dI05lask40L/IjXWuA5sdf0sgWaQtfUh0JXsojyqWm31/polJvQMmWxzv9XjvI47pjv5gSS
	DBRWnYhsEqOac5hwq10xVDBmVCAqZ265iotQGPffMrPKICoX9OCwLoDig83x44d8giBTEyg
	HsnXzmQM5SEFqTXAlYCmyK4hVLtDohU3OeBYEaYjZygj/rS2jLmBs4+JE4szLFGixhKXLxl
	64yAO6tRJXQUnnjQsTIGHlhda2qV2tRmSVIB2/ZAnRL8mW/wDmAoS3q5iSJ/n00MHsqvKN7
	M2Jd/MX8ICxsdjPiIo/+PmhktKCTCp64N8sZfRm/dPFTSx/6arEeIcjvkauCJ0rcAwWGP/q
	g5QzNXxPVLiCepEyeKKwu2418tarr3AG22bVdDrjmgrdpckAleU5IhNvsrze9FdLQ/dsb3I
	/3xEOTgsOutj0sUTVCD+/sOqtjK0kPGb+yZCCziwqpVOJDJcHHVJ7r7byRIICehJKq+ZU9M
	rZN+vCt7E5tSrKbC3QPUXw6Ftent63p+kIwDaamIoWcvZHzoJ2UG4WzrHhMfib7joU2Zodh
	zGGcwL1OdWrTkyvvY0W776uxvdr4H+Wpht/Iqfj57IZcjAe28TgVYwBo8KS7zRc1sxaMv8U
	/M9MM4tOyHqVv4fxtuvC03qJfkNOezc+LQUSSkrtHCdcAhyOoHraG31Mls/QaI6PurBWZLK
	sGlX5ork/5hPmV7AYQb1nrY0YLdOU8XvYTVwEJcdkriGe67+2kqZQn20sjL7/xIHIvTrNNY
	OcFa9tTyxn2Uxg4S8tB8D/JoQO2vDPVKlXPVzp1tt/OFgrw==
X-QQ-XMRINFO: Nq+8W0+stu50tPAe92KXseR0ZZmBTk3gLg==
X-QQ-RECHKSPAM: 0

Hi Chukun,

On 1/8/26 19:00, Chukun Pan wrote:
> According to the Radxa E52C Schematic [1], both the i2c5 bus and the
> hym8563 chip are marked as NC. Remove them to avoid the following log:
> 
> rtc-hym8563 5-0051: could not init device, -110
> rtc-hym8563 5-0051: probe with driver rtc-hym8563 failed with error -110
> 
> [1] https://dl.radxa.com/e/e52c/hw/radxa_e52c_v1.2_schematic.pdf

V1.209 and later should have RTC. What version do you have?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Fixes: 9be4171219b6 ("arm64: dts: rockchip: Add Radxa E52C")
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>   .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 24 -------------------
>   1 file changed, 24 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> index 854c118418eb..c24ff264cae2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> @@ -266,24 +266,6 @@ regulator-state-mem {
>   	};
>   };
>   
> -&i2c5 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&i2c5m2_xfer>;
> -	status = "okay";
> -
> -	rtc@51 {
> -		compatible = "haoyu,hym8563";
> -		reg = <0x51>;
> -		#clock-cells = <0>;
> -		clock-output-names = "rtcic_32kout";
> -		interrupt-parent = <&gpio0>;
> -		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&rtc_int_l>;
> -		wakeup-source;
> -	};
> -};
> -
>   &pcie2x1l1 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pcie20x1_1_perstn_m1>;
> @@ -329,12 +311,6 @@ vcc_5v0_pwren_h: vcc-5v0-pwren-h {
>   		};
>   	};
>   
> -	rtc {
> -		rtc_int_l: rtc-int-l {
> -			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
>   	usb {
>   		usb_otg_pwren_h: usb-otg-pwren-h {
>   			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;


