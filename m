Return-Path: <devicetree+bounces-237202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EF6C4E05C
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 14:07:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F3881348FEC
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F6553246F4;
	Tue, 11 Nov 2025 13:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="O0vbCUVv"
X-Original-To: devicetree@vger.kernel.org
Received: from out-170.mta0.migadu.com (out-170.mta0.migadu.com [91.218.175.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163E9F513
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 13:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762866457; cv=none; b=sC141mbNKC3YdWPKpc3U8KUqRtcmxHTC73sd+zEMIRR1ywYbMtbGznz7pjPRt8GHUawwBS35HGhPqjze1SXYCjAWjStXYIb10WlPOWMxBywqGXqcA02SDdwsw/jlKzodxoHvN1fIhu2HC9vS7aHDAlE1xrhMXQU5GC2HwUqP6r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762866457; c=relaxed/simple;
	bh=kl7qjafbhbvtodybLN8XmzLMryFLXxEFTiK0ACkcTig=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=TK1YM4W8pNmoizRH3dZJ1issEXtnODx1rM/kKBB0wkZFRrt6Rru+R289ITDsa+AqLL70uQOGUa/dpnuJqcNT1kVVD8rWJfJsZzFJ/Feud+pB7nkngBQ6g4GpLqawy3Am3RSraT0afUr4THrgUaMSTrHTyAi/EOUNXXfYuMPpPrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=O0vbCUVv; arc=none smtp.client-ip=91.218.175.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1762866449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hp9j1SamJ8X7GVph6JpG3EZJam2gMiRDcakI0IBlJ0g=;
	b=O0vbCUVvvSCKSx+8Oo2TtZ3GndYBeySbL28Gm3Szor5oLFbeyKNRCHm0qnvLps7fgQhAdZ
	NwAQFLj8RkSvepyetwvGrVWnVMXoAZvr6B1eZpRdprzAw6R/hLSN0GW8aC6+blEXDszr+z
	5wg9/ATGIfWUQtwdZkeC1OGceZR51ObH+d59FuDCSQDldjNeFKwrZxvbmxF1F/vW/cPqfG
	NP3vBbCPWqYEBFnaZCKDFdh10NEO+l+bgI54KH4OK6BK770k5BdjAgBo9RTtnk2AL7dLsp
	5sy8T51w3hX1GhA+rX1tGMVSxnJS73tI2wkS8l14X+aQ8Eqa+Dq1bw7doBnlfg==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 11 Nov 2025 14:07:25 +0100
Message-Id: <DE5W0143QGG2.3C7SW89IJKZ4P@cknow-tech.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Turn all LEDs on at boot for
 Radxa boards
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "FUKAUMI Naoki" <naoki@radxa.com>, <heiko@sntech.de>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <jbx6244@gmail.com>, <dsimic@manjaro.org>, <pgwipeout@gmail.com>,
 <jonas@kwiboo.se>, <ziyao@disroot.org>, <amadeus@jmu.edu.cn>,
 <nicolas.frattaroli@collabora.com>, <pbrobinson@gmail.com>,
 <wens@kernel.org>, <detlev.casanova@collabora.com>, <stephen@radxa.com>,
 <sebastian.reichel@collabora.com>, <liujianfeng1994@gmail.com>,
 <andy.yan@rock-chips.com>, <damon.ding@rock-chips.com>,
 <kylepzak@projectinitiative.io>, <devicetree@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>
References: <20251111054112.55505-1-naoki@radxa.com>
In-Reply-To: <20251111054112.55505-1-naoki@radxa.com>
X-Migadu-Flow: FLOW_OUT

On Tue Nov 11, 2025 at 6:41 AM CET, FUKAUMI Naoki wrote:
> Radxa's boards turn all LEDs on at boot(loader), but some boards don't
> have `default-state` property in Linux kernel tree but have it in
> U-Boot tree instead[1].
>
> This patch adds `default-state =3D "on"` for (almost) all LEDs (with a
> few exceptions which should be "off" such as RGB LEDs on E25 and LAN/
> WAN LEDs on E20C/E52C).

I'm missing the *why* these changes would be an improvement.

Personally, for both 'heartbeat' and 'netdev' triggers, I want them to
be off by default and once it gets a 'heartbeat' or a 'netdev' trigger,
THEN I want the LED to be on/blinking.

> Also, remove following redundant properties:
>  linux,default-trigger =3D "default-on"; // use default-state =3D "on"
>  default-state =3D "off"; // default is "off"
>
> [1]
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3328=
-rock-pi-e-base-u-boot.dtsi#L10-12
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399=
-rock-4c-plus-u-boot.dtsi#L11-17
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399=
-rock-pi-4-u-boot.dtsi#L11-13
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566=
-radxa-cm3-io-u-boot.dtsi#L10-12
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566=
-rock-3c-u-boot.dtsi#L14-16
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568=
-radxa-e25-u-boot.dtsi#L7-24
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568=
-rock-3a-u-boot.dtsi#L11-13
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588=
-rock-5b-u-boot.dtsi#L11-13

That the *bootloader* turns them on, is fine by me as it signals the
board has received power and the bootloader has started.
I don't think that that automatically means that Linux must do the same.

Not a Radxa board, but the PineTab2's keyboard LEDs are turned on. I
find that useful wrt the bootloader, but (actually) annoying that it is
on by default with Linux. When I want/need backlight on the keyboard,
I'll turn it on myself. Now I need to turn it off in 90% of cases.

My 0.02

>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588=
s-rock-5a-u-boot.dtsi#L10-12
>
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - Add more URLs for reference
> - Reword commit message
> ---
>  arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 1 -
>  arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts    | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 3 ++-
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 1 +
>  arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts   | 2 --
>  arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts      | 1 -
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 1 +
>  arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 1 +
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts      | 3 ++-
>  arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts   | 2 --
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts   | 3 ++-
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi     | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 3 ++-
>  16 files changed, 16 insertions(+), 10 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm=
64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> index 7a32972bc2496..c1e3098b9a7bc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> @@ -35,7 +35,6 @@ green-led {
>  			function =3D LED_FUNCTION_POWER;
>  			gpios =3D <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
>  			label =3D "rockpis:green:power";
> -			linux,default-trigger =3D "default-on";
>  		};
> =20
>  		blue-led {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm=
64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> index a4bdd87d0729f..d3d6f34b66fb0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> @@ -59,6 +59,7 @@ leds {
> =20
>  		led-0 {
>  			color =3D <LED_COLOR_ID_BLUE>;
> +			default-state =3D "on";
>  			gpios =3D <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
>  			linux,default-trigger =3D "heartbeat";
>  		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/=
arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> index 962b8b231c960..a83ffbef22a7b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> @@ -39,14 +39,15 @@ leds {
>  		led-0 {
>  			function =3D LED_FUNCTION_POWER;
>  			color =3D <LED_COLOR_ID_GREEN>;
> +			default-state =3D "on";
>  			gpios =3D <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
> -			linux,default-trigger =3D "default-on";
>  		};
> =20
>  		/* USER_LED2 */
>  		led-1 {
>  			function =3D LED_FUNCTION_STATUS;
>  			color =3D <LED_COLOR_ID_BLUE>;
> +			default-state =3D "on";
>  			gpios =3D <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger =3D "heartbeat";
>  		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/ar=
m64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> index 046dbe3290178..ef434c23fe85c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> @@ -35,6 +35,7 @@ leds {
>  		led-0 {
>  			function =3D LED_FUNCTION_STATUS;
>  			color =3D <LED_COLOR_ID_BLUE>;
> +			default-state =3D "on";
>  			gpios =3D <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger =3D "heartbeat";
>  		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/ar=
m64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> index b324527561558..79d316a1d8495 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> @@ -62,7 +62,6 @@ leds {
> =20
>  		led-lan {
>  			color =3D <LED_COLOR_ID_GREEN>;
> -			default-state =3D "off";
>  			function =3D LED_FUNCTION_LAN;
>  			gpios =3D <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger =3D "netdev";
> @@ -78,7 +77,6 @@ led-sys {
> =20
>  		led-wan {
>  			color =3D <LED_COLOR_ID_GREEN>;
> -			default-state =3D "off";
>  			function =3D LED_FUNCTION_WAN;
>  			gpios =3D <&gpio4 RK_PC0 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger =3D "netdev";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts b/arch/arm64=
/boot/dts/rockchip/rk3528-rock-2a.dts
> index c03ae1dd34560..0b696d49b71fa 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
> @@ -45,7 +45,6 @@ led-1 {
>  		default-state =3D "on";
>  		function =3D LED_FUNCTION_STATUS;
>  		gpios =3D <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> -		linux,default-trigger =3D "default-on";
>  	};
>  };
> =20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/=
arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
> index b5b253f04cdf5..9e7212b70e3f1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
> @@ -46,6 +46,7 @@ leds {
>  		led-1 {
>  			gpios =3D <&gpio4 RK_PA4 GPIO_ACTIVE_LOW>;
>  			color =3D <LED_COLOR_ID_GREEN>;
> +			default-state =3D "on";
>  			function =3D LED_FUNCTION_ACTIVITY;
>  			linux,default-trigger =3D "heartbeat";
>  			pinctrl-names =3D "default";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64=
/boot/dts/rockchip/rk3566-rock-3c.dts
> index 6224d72813e59..3ec108bcf89a1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> @@ -47,6 +47,7 @@ led-0 {
>  			gpios =3D <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
>  			function =3D LED_FUNCTION_HEARTBEAT;
>  			color =3D <LED_COLOR_ID_BLUE>;
> +			default-state =3D "on";
>  			linux,default-trigger =3D "heartbeat";
>  			pinctrl-names =3D "default";
>  			pinctrl-0 =3D <&user_led2>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/a=
rm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> index 729e38b9f620e..140582f8e1034 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> @@ -23,6 +23,7 @@ led_user: led-0 {
>  			gpios =3D <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
>  			function =3D LED_FUNCTION_HEARTBEAT;
>  			color =3D <LED_COLOR_ID_GREEN>;
> +			default-state =3D "on";
>  			linux,default-trigger =3D "heartbeat";
>  			pinctrl-names =3D "default";
>  			pinctrl-0 =3D <&led_user_en>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64=
/boot/dts/rockchip/rk3568-rock-3a.dts
> index 44cfdfeed6681..e6c18df0fa582 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -47,6 +47,7 @@ led_user: led-0 {
>  			gpios =3D <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
>  			function =3D LED_FUNCTION_HEARTBEAT;
>  			color =3D <LED_COLOR_ID_BLUE>;
> +			default-state =3D "on";
>  			linux,default-trigger =3D "heartbeat";
>  			pinctrl-names =3D "default";
>  			pinctrl-0 =3D <&led_user_en>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64=
/boot/dts/rockchip/rk3576-rock-4d.dts
> index 9bc33422ced50..99d3a8be8f18c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> @@ -52,13 +52,14 @@ leds: leds {
> =20
>  		power-led {
>  			color =3D <LED_COLOR_ID_GREEN>;
> +			default-state =3D "on";
>  			function =3D LED_FUNCTION_STATUS;
>  			gpios =3D <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger =3D "default-on";
>  		};
> =20
>  		user-led {
>  			color =3D <LED_COLOR_ID_BLUE>;
> +			default-state =3D "on";
>  			function =3D LED_FUNCTION_HEARTBEAT;
>  			gpios =3D <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
>  			linux,default-trigger =3D "heartbeat";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts b/arch/ar=
m64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> index 854c118418eb8..f737769d4a007 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> @@ -71,7 +71,6 @@ leds-1 {
> =20
>  		led-1 {
>  			color =3D <LED_COLOR_ID_GREEN>;
> -			default-state =3D "off";
>  			function =3D LED_FUNCTION_LAN;
>  			linux,default-trigger =3D "netdev";
>  			pwms =3D <&pwm14 0 1000000 PWM_POLARITY_INVERTED>;
> @@ -80,7 +79,6 @@ led-1 {
> =20
>  		led-2 {
>  			color =3D <LED_COLOR_ID_GREEN>;
> -			default-state =3D "off";
>  			function =3D LED_FUNCTION_WAN;
>  			linux,default-trigger =3D "netdev";
>  			pwms =3D <&pwm11 0 1000000 PWM_POLARITY_INVERTED>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/ar=
m64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> index bc8140883de47..86477346c3f5a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> @@ -88,11 +88,12 @@ gpio-leds {
>  		pinctrl-0 =3D <&led_pins>;
> =20
>  		power-led1 {
> +			default-state =3D "on";
>  			gpios =3D <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger =3D "default-on";
>  		};
> =20
>  		hdd-led2 {
> +			default-state =3D "on";
>  			gpios =3D <&gpio0 RK_PC0 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger =3D "disk-activity";
>  		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi b/arch/arm6=
4/boot/dts/rockchip/rk3588-rock-5b.dtsi
> index e5c474e4d02a6..8c4a4270f9f93 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi
> @@ -30,6 +30,7 @@ leds {
>  		led_rgb_b {
>  			function =3D LED_FUNCTION_STATUS;
>  			color =3D <LED_COLOR_ID_BLUE>;
> +			default-state =3D "on";
>  			gpios =3D <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger =3D "heartbeat";
>  		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts b/arch/arm64=
/boot/dts/rockchip/rk3588-rock-5t.dts
> index 0dd90c744380b..87e9d4b86dad4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
> @@ -33,6 +33,7 @@ leds {
>  		led_rgb_b {
>  			function =3D LED_FUNCTION_STATUS;
>  			color =3D <LED_COLOR_ID_BLUE>;
> +			default-state =3D "on";
>  			gpios =3D <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger =3D "heartbeat";
>  		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm6=
4/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 19a08f7794e67..46c81e796b100 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -54,6 +54,7 @@ leds {
> =20
>  		io-led {
>  			color =3D <LED_COLOR_ID_BLUE>;
> +			default-state =3D "on";
>  			function =3D LED_FUNCTION_STATUS;
>  			gpios =3D <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger =3D "heartbeat";
> @@ -61,9 +62,9 @@ io-led {
> =20
>  		power-led {
>  			color =3D <LED_COLOR_ID_GREEN>;
> +			default-state =3D "on";
>  			function =3D LED_FUNCTION_POWER;
>  			gpios =3D <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger =3D "default-on";
>  		};
>  	};
> =20


