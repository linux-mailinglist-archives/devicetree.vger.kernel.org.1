Return-Path: <devicetree+bounces-237158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA9AC4D7E1
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:49:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B8DF3AD0C1
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30392358D04;
	Tue, 11 Nov 2025 11:44:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bg1.exmail.qq.com (bg1.exmail.qq.com [114.132.58.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E33357A23
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.132.58.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762861492; cv=none; b=aqakr61rAMERNH9iaIV3CwyGCfbblwOyX8GmksmlLkdmhJ39iZttGqUoGeQcKuzS/h9Pa7f355WOiK/vfJEl3u5MDW0OG3mw9lcWaPX7fgqe6VBGE8VjE1CJKy2GK3BFheM0pvsx+lQNws9pyTkrxoywSIE88nfHY0CidyzdHF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762861492; c=relaxed/simple;
	bh=7o758JrkMt6UJjfUGo5uIpYzpQJJXg4mCYVABaxxmiQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TGgENcj7H/+ULI8JTSa8DgyaaIZeG82cEjacc7wbOVzlcnbr6JEYkCvJ7omJjtHbh/KLW5eDqg26/TSxeUckGAbkYHU2vVWl1z9icM5UhyyDMUGZWTstB4rK6D3VuyzdbNoTJOWOzLbYX2huHoPz/GPsrxLi2h3k0HrkpG977fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=114.132.58.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip4t1762861389t225b1ad2
X-QQ-Originating-IP: CnFKXworqreyPgjtRRUIGo1/7hlQ0Xqt6xU26RYKeDs=
Received: from [IPV6:240f:10b:7440:1:62e3:2c99 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 11 Nov 2025 19:43:06 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4623093854345164356
Message-ID: <FC06F2D88D1A6D6B+2515ff82-cd34-4f1d-8078-feb669912e41@radxa.com>
Date: Tue, 11 Nov 2025 20:43:05 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 04/14] arm64: dts: rockchip: Fix microSD card detect
 for Radxa ROCK 5C
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251109141859.206835-1-naoki@radxa.com>
 <20251109141859.206835-5-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251109141859.206835-5-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NPR7uEA6bBho2vyFxAH/44d4hURMFkoPr9g1+PLwALB+a7Ud/0lJRJx1
	NZwsWxLd892O/pChgcAklYB/010wj7p4lOmBZz6e+7cjV3dX7eVt5UJ8y11ygUlIwu1QpLU
	UTDMwGslSMcAU3PKx8SlP5XZGBPvRcRZPPh+UgUVkPoE9BApcom72HCBkm7aNfqIx+7BXWC
	KEEhSFCVJiv9Uzf+/fFf5v9FX3PWRTaOxaU/Y8Tc+aFQIGcqah3boThwqTnbZ5oQ/efRajH
	TMB32oMcG1cgz5/5ymdGTYbfcvV7Emyg/2V1+Ug6G8zU8x1Xgm3PzNbS2Tv4noLCkWdmEUd
	7NiI+eUL+AABv3a6LNx2aWhh1ald6aRPhiWpEIhzrzMjhAd/1YtGqLi67+EEZogM6KYfrAv
	SmUgUsytc8vn9hB/3qiqcUd2F8tVqvRts5gGUHH51KItF0VoT3OD8RKbNqwQhNHAOtyg9Fb
	gMgox5fnYDDHbROnFHGArz8hfL4fW7uMNFcLLhOmHhQgJcYfA4VGM0QbwMDeUSR0fyiHY5D
	gHv/Anaq9U1nLScK+b1knAlAfoaRdKOBComRf12BYpgJzxjA5rUGAS+5UX2grA5k2vjiOjE
	9TkaG1JtQEDYxpm3XgmlJ9h1o0yxuibkS04U/UfRHYB7RgFrAdOExnMqbkqXTlvGSwVBhBG
	h+6P1AzCfDquWWtQRQOptIav+mB1vW21Oe27uEzXGRuPmUs4XHq0PoDRlyCHFMmrnmXOvuX
	tjWk0/uSHxH065KLVbXEVornJgh3HwoTycKJkKd0h4szGGnNV2eHJcSqmck2JcbOXOkqGZT
	wSiOp9Jf5PWF+he7eVWJlS36hqOFlakgSa4/Z66B7Oz81+ATdfqk2lwN4cTJnWLo4JtzA0X
	jct/BSmu463nlUFlJhAcdO6p23v3T8mXtz/tqe8zNOmQSSTGzde+jwabKzgc0rA/ikZ6HHe
	OXNx22+SkMLTk+V4HEAR40TFw8OQvumoSM+zdKPqtJkLxxfM2j4U0FIpc
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0

Hi,

I'll drop this on v8. This will be handled in
  https://lore.kernel.org/linux-rockchip/20251111071730.126238-1-naoki@radxa.com/

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 11/9/25 23:18, FUKAUMI Naoki wrote:
> Due to the discussion about cd-gpios and sdmmmc_det pin
> functionality[1], it would be better to use cd-gpios for now.
> 
> [1] https://lore.kernel.org/linux-rockchip/20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid/T/#u
> 
> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v7:
> - Add pinctrl-*
> - Reword commit message
> Changes in v6:
> - Reword commit message
> Changes in v5:
> - Reword commit message
> Changes in v4:
> - None
> Changes in v3:
> - None
> Changes in v2:
> - None
> ---
>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 9a9430b2494b7..1257aaac8f350 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -510,9 +510,12 @@ &sdmmc {
>   	bus-width = <4>;
>   	cap-mmc-highspeed;
>   	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>   	disable-wp;
>   	no-sdio;
>   	no-mmc;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
>   	sd-uhs-sdr104;
>   	vmmc-supply = <&vcc_3v3_s3>;
>   	vqmmc-supply = <&vccio_sd_s0>;



