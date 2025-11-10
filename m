Return-Path: <devicetree+bounces-236491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22974C44D2F
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 04:19:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D35813AF840
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 03:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 868662773D8;
	Mon, 10 Nov 2025 03:19:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86DBD27703A
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 03:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762744787; cv=none; b=fniJkEnjkV6KLZ4+0hwEmfC9N3JAqAbRMZH/Gk9bkAoRhlfVYeTK9zgznU7/raqBBUq0rQTmOaxgBGHsPUE3V26sQ3s5HH8ROHSS59OO7DWK82LUw0yD9/8uX79BdYM2z4vHq7aEVbXZF7up4xkBJkeDaEbka1Wai+wuM9X9ocA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762744787; c=relaxed/simple;
	bh=cxxy+9G8zDwKqKaLUL74Xz3Lo6RrcTqTFrKsKRokBac=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I+6jN5NzRmGKULlATHrwEiQHZwMK5bhlSnGLo+Dqbiuwou+e9D6EFSXtO4Xvyo8tlwlXdlRffMiel0ymS1g16TSFpqfGYp+yNQ+iZRtaj0Ll6A//lj8KszXMcK4gEktEZJj4vjV9iUWIX3soV34xWNTBwMl53Eo12B47mmK5TcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip4t1762744600tf9445d23
X-QQ-Originating-IP: owwxmhWvzJquoC49KOn5l2eFLSs+hUY9atpzzmoUgXY=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 11:16:37 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3529179017162153807
Message-ID: <EECF7629320EEEDD+03c6ee06-4351-4150-b1b0-957d5cfc3d6d@radxa.com>
Date: Mon, 10 Nov 2025 12:16:37 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Fix microSD card detect for
 Radxa ROCK 5 ITX
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251110030036.825150-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251110030036.825150-1-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Nt0knubC5sw3w+gZN9coIRRDP4taGYaL1KEMr7lxB6Ke7vuGCwNxP/+k
	H5I4zO5zB3cV1vTndxCiJjt1KV5wMGd6UVzBBegPA1o6BgoqbyGLYyspPBEVcVUHWmwM9R+
	UDa6V1mIZJ1EQTZ60SHK8IvgEkYUvP06orLkNIBzU31cpBA80Qxt3tARXYuiqJEQiZPqHBp
	N+qss4LQ7bZJJ+fTITbwWcpz2LCGdUrfUxpLX1JexwT6hjaP2G8/tsVjiEFZuEaa92BmG/Y
	kegqbkXCZKmb88xWmJ/15npoonT93m1tANOwoNIZngwW9kSUifgUbN+yZS6bC4DC3W5pd0N
	ViAG2f1lOCFb5pRxJJwEEOmcTc6otvC00iNlnjqcCohuPygjpA+oGMxsw8h46g40CL0Lk5d
	/Giiai8qwN8M299P1Wync255F5RjfE95GMjuvvKWml8YfqknncNCpBpY4WRLYBCaY5YRnq0
	6k5eEsLlYKoAazueQjUFTatdvooQ30kBAXJ2+x4XUKHe85AWMG9yeKf4khBOVbas0vq0x/l
	xQA78xXYakOdtjvbwU+tywn7xPeB4T1/l4UpYXh55V+hgq35au1jiTmXhj38JS13fiGL9YP
	/dX4XdZYBcIlD8wIdXVNh+s2sBd5oiy7LvfTJbm03eQP45Ngq8swRo7diNogAwH7bgniK7H
	23CuT7grLoYtfiRjCfUVwrVOlL1nfVt8C9TSzkUQPOtOFyal8eBGXejVdFiSMedjdpigdL6
	ZASTpKwLj+0t/ryi41aSDiMK1sXhmExzGMlw+A7IZU+tc/Bidj9ihF81F+wcOnsXZsTII2E
	WplYZYcZLiv8GjatW8PyZHqCHkYjSzY8vEna4u7mUs+plT2zcHhTGRAAM1FWD2s7Ef1m1AE
	FcJbtZIpnq+yhmNzcMu33BhK/82FupSnW9s9gnQRYNIEJMQY/VhydnfLFzUw6QIgKIvXfk6
	x35G4p3XNpSD3uRhKw03arh+uqKlxtyYXnFuHHoHgx9gCzrOK5innvZb7
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0

Hi,

On 11/10/25 12:00, FUKAUMI Naoki wrote:
> Due to the discussion about cd-gpios and sdmmmc_det pin
> functionality[1], it would be better to use cd-gpios for now.
> 
> [1] https://lore.kernel.org/linux-rockchip/20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid/T/#u
> 
> Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> index bc8140883de47..391c6482e8ee3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> @@ -670,6 +670,12 @@ led_pins: led-pins {
>   		};
>   	};
>   
> +	mmc {
> +		sdmmc_det_gpio: sdmmc-det-gpio {
> +			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +

I got following error:

$ make CHECK_DTBS=y rockchip/rk3588-rock-5-itx.dtb
   UPD     include/config/kernel.release
   DTC [C] arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb
/home/radxa/linux/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb: 
mmc: sdmmc-det-gpio: {'rockchip,pins': [[0, 4, 0, 270]], 'phandle': 145} 
is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#

What's wrong?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>   	pcie {
>   		pcie20x1_2_perstn: pcie20x1-2-perstn {
>   			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
> @@ -795,12 +801,13 @@ &sdmmc {
>   	bus-width = <4>;
>   	cap-mmc-highspeed;
>   	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>   	disable-wp;
>   	max-frequency = <200000000>;
>   	no-sdio;
>   	no-mmc;
>   	pinctrl-names = "default";
> -	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
> +	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det_gpio>;
>   	sd-uhs-sdr104;
>   	vmmc-supply = <&vcc_3v3_s3>;
>   	vqmmc-supply = <&vccio_sd_s0>;



