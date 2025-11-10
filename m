Return-Path: <devicetree+bounces-236533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6517DC45317
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 08:21:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E4AC188B508
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 07:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08169233149;
	Mon, 10 Nov 2025 07:21:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast3.qq.com (smtpbguseast3.qq.com [54.243.244.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76794239E6F
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 07:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.243.244.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762759272; cv=none; b=EDDiy6KKoUbWx+L/ON4XsHqM+bJ69nj+WQFat3LsVPBSTNqoYnQ5ZVA1++DSWG+9EDzU934NSvRJbdctvYwnhCHxyD2Oej3kB/S0BhQxxDQLwVi+mx78nKzpLBKY3e0JNF+FHhnHmt6wPzNmcNQVFaYXUA5LKCfZoMi+orLpcUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762759272; c=relaxed/simple;
	bh=wCTiOKZYAyh3qtxZBKMB1MYhkFkdrNYzPt0k0prajoE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HxPfUb9fVJW9dbqFbKkAsvyCBoTYhCY0O4BORJIjZ82U53qXVrdHjCGPjFhawZdtIsvDtGHU4KJLWRZq7ae3rQzHLEGD/C5CE7veZMJCkCMklRKiHYkcEKeb8KEnZoS79yJzOMACmSL3l13it64Kk8Zrqh7RxpM+QDWtuQrKqNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.243.244.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1762759258t3733c2d8
X-QQ-Originating-IP: 5RQj6u7itzzYBGLyTFn3CtvI8oam3E+7Aeatxqe+KAI=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 15:20:52 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2291220406888787485
EX-QQ-RecipientCnt: 25
Message-ID: <6A1E6DDCEB1C076D+69dd1564-cc49-4f61-9834-97e78dc5d793@radxa.com>
Date: Mon, 10 Nov 2025 16:20:52 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Turn all LEDs on at boot for Radxa
 boards
To: heiko@sntech.de
Cc: stephen@radxa.com, amadeus@jmu.edu.cn, dsimic@manjaro.org,
 ziyao@disroot.org, robh@kernel.org, sebastian.reichel@collabora.com,
 linux-rockchip@lists.infradead.org, pbrobinson@gmail.com,
 dmitry.osipenko@collabora.com, devicetree@vger.kernel.org,
 conor+dt@kernel.org, pgwipeout@gmail.com, jonas@kwiboo.se,
 kylepzak@projectinitiative.io, damon.ding@rock-chips.com, jbx6244@gmail.com,
 wens@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
 liujianfeng1994@gmail.com, detlev.casanova@collabora.com,
 didi.debian@cknow.org, andy.yan@rock-chips.com, krzk+dt@kernel.org,
 nicolas.frattaroli@collabora.com
References: <20251110022732.809145-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251110022732.809145-1-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Ndw/mc8X39ObmgZRzXUlFkoqifAOkFD+tXHCOTmJ81i9lvINCHLIgPho
	aTgwAZnRdmScEURCnCKdrU3Wht8i1IiVZwCFZP5PYZZvoQid3QXle0witrMSZYpLRT9tgGL
	T348oTqlUQC2PbQxusaLHLr4cfTEE24OxMf8IxAOHVlLt3fMImVtdWNkUXiI/qCisgVs+M3
	37v8Wrf1iNJNo+GilZZO5Mm+BOBxGCc1C+J4dpIHZMlRUkZT5pEbKB9I7Qx7lQ7fvkHM1zh
	bPh2Owcu28ce/+rnjY1iG9JI6WTGQ7LkyxKunfVxJOXfqWr26u4eRbegycNkhYbLTeTaJUw
	Hh8+tIB+dz4VV1qppyaQT0M1Zw2JtRuXHguxRRDaQ7ZtGzLP2EHmVTlPqqKCBBPE3eCG7A4
	dgJk6/Ae1oc5Sph7PhYRtojafT0wnEvZPrP9scqg8/NkuM8smxavRWZR0hHng/cu5A7Gpjt
	zUpDYQrvYjtcrXMUhv/gNosDfBtTnQKRBsz+KHmij9Qet5vceSjVb2ORyne2ib/xQ4NcVJM
	IPBzU49dUoL/5pTtEPn9W6AUkc2PV8B/qZd5hUiyzVe1rBz+KKf5ikPTtf4GW8zS+UQ7xO9
	GMlFD4mLdCGV81SRqAQgjLqxaT/2R6edxWg2B8ilD7Uy5tCy/fh1fpZKPB63WtW7WBaW08e
	q+qiTjeZyk9b4QTQsLgKPcmDIxyLET80hi0oMvxo0V8JNJWPvrav4PNhFZYAbu/8++p4fUm
	6GBc9kW1IZ7wtkuEwL2XZqiV0UipnJExzsX7ozPAQeHJB7j7ZG1HNAUXw+VX0D4uBtxpR5L
	Fv4aKoM0/tHNTqcV1nTbsd+o0b8idkEfVKDxqQbmHnSjp4hIRVezuWiPQq7CZvgE6i7kPla
	HqPZnA3VdPlG6+q6v44Hh3tTdjnyY0i761+e0rq0wAF6i9eK3J1NpmjHC0EU98/b+M/bszF
	4sVjzVUee7EUkYuvsQhfMKSHtJmrKFrPd6eFNnv5tla8jPIAYl2qU0RqGH6RzOPArf90=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

Hi,

On 11/10/25 11:27, FUKAUMI Naoki wrote:
> Radxa's boards turn all LEDs on at boot(loader), but some boards, e.g.
> ROCK Pi E don't have `default-state` property in Linux kernel tree but
> have it in U-Boot tree[1] instead.
> 
> This patch adds `default-state = "on"` for (almost) all LEDs (with a
> few exceptions which should be "off" such as RGB LEDs on E25 and LAN/
> WAN LEDs on E20C/E52C).
> 
> Also, remove following redundant properties:
>   linux,default-trigger = "default-on"; // use default-state = "on"
>   default-state = "off"; // default is "off"
> 
> [1] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3328-rock-pi-e-base-u-boot.dtsi#L11

I'll add the following as a reference:

https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399-rock-4c-plus-u-boot.dtsi#L11-17
https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi#L11-13
https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566-radxa-cm3-io-u-boot.dtsi#L10-12
https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566-rock-3c-u-boot.dtsi#L14-16
https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568-radxa-e25-u-boot.dtsi#L7-24
https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568-rock-3a-u-boot.dtsi#L11-13
https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588-rock-5b-u-boot.dtsi#L11-13
https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588-rock-5b-u-boot.dtsi#L11-13

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 1 -
>   arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts    | 1 +
>   arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 3 ++-
>   arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 1 +
>   arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts   | 2 --
>   arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts      | 1 -
>   arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 1 +
>   arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts      | 1 +
>   arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 1 +
>   arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 1 +
>   arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts      | 3 ++-
>   arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts   | 2 --
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts   | 3 ++-
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi     | 1 +
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts      | 1 +
>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 3 ++-
>   16 files changed, 16 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> index 7a32972bc2496..c1e3098b9a7bc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> @@ -35,7 +35,6 @@ green-led {
>   			function = LED_FUNCTION_POWER;
>   			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
>   			label = "rockpis:green:power";
> -			linux,default-trigger = "default-on";
>   		};
>   
>   		blue-led {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> index a4bdd87d0729f..d3d6f34b66fb0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> @@ -59,6 +59,7 @@ leds {
>   
>   		led-0 {
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
>   			linux,default-trigger = "heartbeat";
>   		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> index 962b8b231c960..a83ffbef22a7b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> @@ -39,14 +39,15 @@ leds {
>   		led-0 {
>   			function = LED_FUNCTION_POWER;
>   			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
>   			gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
> -			linux,default-trigger = "default-on";
>   		};
>   
>   		/* USER_LED2 */
>   		led-1 {
>   			function = LED_FUNCTION_STATUS;
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "heartbeat";
>   		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> index 046dbe3290178..ef434c23fe85c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> @@ -35,6 +35,7 @@ leds {
>   		led-0 {
>   			function = LED_FUNCTION_STATUS;
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "heartbeat";
>   		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> index b324527561558..79d316a1d8495 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> @@ -62,7 +62,6 @@ leds {
>   
>   		led-lan {
>   			color = <LED_COLOR_ID_GREEN>;
> -			default-state = "off";
>   			function = LED_FUNCTION_LAN;
>   			gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "netdev";
> @@ -78,7 +77,6 @@ led-sys {
>   
>   		led-wan {
>   			color = <LED_COLOR_ID_GREEN>;
> -			default-state = "off";
>   			function = LED_FUNCTION_WAN;
>   			gpios = <&gpio4 RK_PC0 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "netdev";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts b/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
> index c03ae1dd34560..0b696d49b71fa 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
> @@ -45,7 +45,6 @@ led-1 {
>   		default-state = "on";
>   		function = LED_FUNCTION_STATUS;
>   		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> -		linux,default-trigger = "default-on";
>   	};
>   };
>   
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
> index b5b253f04cdf5..9e7212b70e3f1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
> @@ -46,6 +46,7 @@ leds {
>   		led-1 {
>   			gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_LOW>;
>   			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
>   			function = LED_FUNCTION_ACTIVITY;
>   			linux,default-trigger = "heartbeat";
>   			pinctrl-names = "default";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> index 6224d72813e59..3ec108bcf89a1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> @@ -47,6 +47,7 @@ led-0 {
>   			gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
>   			function = LED_FUNCTION_HEARTBEAT;
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			linux,default-trigger = "heartbeat";
>   			pinctrl-names = "default";
>   			pinctrl-0 = <&user_led2>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> index 729e38b9f620e..140582f8e1034 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> @@ -23,6 +23,7 @@ led_user: led-0 {
>   			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
>   			function = LED_FUNCTION_HEARTBEAT;
>   			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
>   			linux,default-trigger = "heartbeat";
>   			pinctrl-names = "default";
>   			pinctrl-0 = <&led_user_en>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index 44cfdfeed6681..e6c18df0fa582 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -47,6 +47,7 @@ led_user: led-0 {
>   			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
>   			function = LED_FUNCTION_HEARTBEAT;
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			linux,default-trigger = "heartbeat";
>   			pinctrl-names = "default";
>   			pinctrl-0 = <&led_user_en>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> index 9bc33422ced50..99d3a8be8f18c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> @@ -52,13 +52,14 @@ leds: leds {
>   
>   		power-led {
>   			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
>   			function = LED_FUNCTION_STATUS;
>   			gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "default-on";
>   		};
>   
>   		user-led {
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			function = LED_FUNCTION_HEARTBEAT;
>   			gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
>   			linux,default-trigger = "heartbeat";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> index 854c118418eb8..f737769d4a007 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> @@ -71,7 +71,6 @@ leds-1 {
>   
>   		led-1 {
>   			color = <LED_COLOR_ID_GREEN>;
> -			default-state = "off";
>   			function = LED_FUNCTION_LAN;
>   			linux,default-trigger = "netdev";
>   			pwms = <&pwm14 0 1000000 PWM_POLARITY_INVERTED>;
> @@ -80,7 +79,6 @@ led-1 {
>   
>   		led-2 {
>   			color = <LED_COLOR_ID_GREEN>;
> -			default-state = "off";
>   			function = LED_FUNCTION_WAN;
>   			linux,default-trigger = "netdev";
>   			pwms = <&pwm11 0 1000000 PWM_POLARITY_INVERTED>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> index bc8140883de47..86477346c3f5a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> @@ -88,11 +88,12 @@ gpio-leds {
>   		pinctrl-0 = <&led_pins>;
>   
>   		power-led1 {
> +			default-state = "on";
>   			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "default-on";
>   		};
>   
>   		hdd-led2 {
> +			default-state = "on";
>   			gpios = <&gpio0 RK_PC0 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "disk-activity";
>   		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi
> index e5c474e4d02a6..8c4a4270f9f93 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi
> @@ -30,6 +30,7 @@ leds {
>   		led_rgb_b {
>   			function = LED_FUNCTION_STATUS;
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "heartbeat";
>   		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
> index 0dd90c744380b..87e9d4b86dad4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
> @@ -33,6 +33,7 @@ leds {
>   		led_rgb_b {
>   			function = LED_FUNCTION_STATUS;
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "heartbeat";
>   		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 19a08f7794e67..46c81e796b100 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -54,6 +54,7 @@ leds {
>   
>   		io-led {
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			function = LED_FUNCTION_STATUS;
>   			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "heartbeat";
> @@ -61,9 +62,9 @@ io-led {
>   
>   		power-led {
>   			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
>   			function = LED_FUNCTION_POWER;
>   			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "default-on";
>   		};
>   	};
>   


