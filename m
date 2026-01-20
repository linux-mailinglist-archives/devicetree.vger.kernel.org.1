Return-Path: <devicetree+bounces-257215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EAED3C0DE
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 08:48:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3CB574F7EBD
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 07:41:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C973638A2BE;
	Tue, 20 Jan 2026 07:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baodeep.com header.i=@baodeep.com header.b="F/ZuUzVe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.adeep.su (mx.adeep.su [185.250.0.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C682C38BF61;
	Tue, 20 Jan 2026 07:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.250.0.168
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768894864; cv=none; b=tafxc/zmAgbn4VwePKmrNKl+FV9nHYAPpKdNRq5p1mKXXyCpIDuhfKVrfrxX8r1NDW8OH3YSBMWwlRyfO/8EdjtarTFw7xwg5YOxfqZH05XHaP+V2cFJhG4IS96VDKBIJD7fUfKZhcb6GcSu7koOBFAow1aSGWnF3RaNdp+cPfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768894864; c=relaxed/simple;
	bh=8eRYWgMg6ekHyFZFZsTP/jA7GzqvBe57VKHD/EiJNyM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AeCE2IluzaCSSSWzFik+lDi4mEBAGPbvWep5N3Q1obNz1LuuS04MfxqveynwNwEHzdNBWXHiIJCkRZVfoXIrPrOB4ae15E8wyHqfdorYrkdJuFE1WuXzUJj+AG/3N0rTI0c2BewlaQPg8431faAZFvqWNYd6hNv5g9EueN7ZAU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=baodeep.com; spf=pass smtp.mailfrom=baodeep.com; dkim=fail (2048-bit key) header.d=baodeep.com header.i=@baodeep.com header.b=F/ZuUzVe reason="signature verification failed"; arc=none smtp.client-ip=185.250.0.168
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=baodeep.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baodeep.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D56C3270AA;
	Tue, 20 Jan 2026 10:33:41 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=baodeep.com; s=dkim;
	t=1768894425; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references:
	 disposition-notification-to; bh=7vazJlY7f+ipRlmtxy6NEiiscVonh33GVCHIMR/axgI=;
	b=F/ZuUzVedI+o80QCH+G05kHTJddLLaWdVlPdUavvyOGNDKf+A+lJdf5lDmvmrsyoaKQYNO
	dodA2pAX5FVq3aS74mcfcBY0euu2VNPRmUfuzmGiMZurJfjOeU/k6ojkdv6Y6543A1m4Io
	09I4pB8BKtctoYCoMNYwdAlHlKRdqmlhBO4gatSt1oQrK5UVAU/U+NiNgGLXSX/pGoI0vJ
	UsiHSweUomrl7azJxZmErSouaRTSPhRRsNnC6RdxudfgLpxd+kEmfxquQQo39Z+ckxAykE
	UXnbD8clpyKdBUmxMcq4iGS1epRu7ZOVSf31vkB6/tcriwYKONCeVAedqyKZqw==
Message-ID: <f923c800-d7f5-4c99-9f41-b75f00fecca1@baodeep.com>
Date: Tue, 20 Jan 2026 10:33:23 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Eliminate Odroid HC4 power glitches during boot.
To: Eric.Neulight@linuxdev.slmail.me, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260116-odroid-hc4-dts-v1-1-459b601cd5cf@linuxdev.slmail.me>
From: Viacheslav <v@baodeep.com>
Content-Language: en-US
Disposition-Notification-To: Viacheslav <v@baodeep.com>
In-Reply-To: <20260116-odroid-hc4-dts-v1-1-459b601cd5cf@linuxdev.slmail.me>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3

Hi!

On 17/01/2026 07.02, Eric Neulight via B4 Relay wrote:
> From: Eric Neulight <Eric.Neulight@linuxdev.slmail.me>
> 
> Fix issue with Odroid HC4 (and all meson-sm1-odroid) DTS that causes
> regulator power to momentarily glitch OFF-ON during boot.  Add
> regulator-boot-on to all regulator-fixed and regulator-gpio entries
> that (1) define a gpio AND (2) define regulator-always-on.
> 
> U-boot powers on devices necessary for boot then hands off the DTB to
> the kernel.  During probe, linux drivers/regulator/fixed.c and
> gpio-regulator.c both first set the regulator control gpio (that U-boot
> already turned ON) to default OFF before then setting it to the defined
> (ON) state. This glitches the power to the affected devices, unless
> regulator-boot-on is specified with it.  In fact, U-boot has the same
> behavior.  So, during reboot, a power glitch can actually happen twice:
> once when U-boot reads the DTB and probes the gpio and again when the
> kernel reads the DTB and probes the gpio.
> 
> Problem this fixes: On the Odroid HC4, power to the SATA ports glitches
> during boot and causes some HDDs to do emergency head retract, which
> should be avoided.  On the HC4, power glitches to the SD card, USB,
> SATA, and HDMI interfaces during boot.  These are all boot devices.
> A power glitch can potentially cause a problem for any sensitive devices
> during boot.
> 
> NOTE: This is not limited to just the HC4, likely an issue with ALL DTS
> with regulator-fixed or regulator-gpio entries that (1) define a gpio
> AND (2) define regulator-always-on.  All such entries should also
> include regulator-boot-on in order to avoid potential power glitches.
> At worst, adding regulator-boot-on in such cases is harmless because of
> regulator-always-on, and, at best, it eliminates detrimental power
> glitches during boot.  So, this is best-practice.
> 
> Fixes: 164147f094ec5d0fc2c2098a888f4b50cf3096a7 ("arm64: dts: meson-sm1-odroid-hc4: add regulators controlled by GPIOH_8")
> Fixes: 45d736ab17b44257e15e75e0dba364139fdb0983 ("arm64: dts: meson-sm1-odroid: add 5v regulator gpio")
> Fixes: 1f80a5cf74a60997b92d2cde772edec093bec4d9 ("arm64: dts: meson-sm1-odroid: add missing enable gpio and supply for tf_io regulator")
> Fixes: 88d537bc92ca035e2a9920b0abc750dd62146520 ("arm64: dts: meson: convert meson-sm1-odroid-c4 to dtsi")
> 
> Signed-off-by: Eric Neulight <Eric.Neulight@linuxdev.slmail.me>
> ---
>   arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts | 2 ++
>   arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi    | 3 +++
>   2 files changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
> index 0170139b8d32f4274ad991b0f3d9a0f6c67969ce..3ece30a0a1fff736c544cf89ed0a8cca0890f128 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
> @@ -52,6 +52,7 @@ p12v_0: regulator-p12v-0 {
>   
>   		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;
>   		enable-active-high;
> +		regulator-boot-on;
>   		regulator-always-on;
>   	};
>   
> @@ -65,6 +66,7 @@ p12v_1: regulator-p12v-1 {
>   
>   		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;
>   		enable-active-high;
> +		regulator-boot-on;
>   		regulator-always-on;
>   	};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
> index c4524eb4f0996dfbccec16ca5b936a5c3b2663a5..0bce4e8d965f2c83e6ba677fef2ede2726de6ed1 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
> @@ -37,6 +37,7 @@ tflash_vdd: regulator-tflash-vdd {
>   
>   		gpio = <&gpio_ao GPIOAO_3 GPIO_OPEN_DRAIN>;
>   		enable-active-high;
> +		regulator-boot-on;
>   		regulator-always-on;
>   	};
>   
> @@ -50,6 +51,7 @@ tf_io: gpio-regulator-tf-io {
>   
>   		enable-gpios = <&gpio_ao GPIOE_2 GPIO_OPEN_DRAIN>;
>   		enable-active-high;
> +		regulator-boot-on;
>   		regulator-always-on;
>   
>   		gpios = <&gpio_ao GPIOAO_6 GPIO_OPEN_SOURCE>;
> @@ -81,6 +83,7 @@ vcc_5v: regulator-vcc-5v {
>   		regulator-name = "5V";
>   		regulator-min-microvolt = <5000000>;
>   		regulator-max-microvolt = <5000000>;
> +		regulator-boot-on;
>   		regulator-always-on;
>   		vin-supply = <&main_12v>;
>   		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;
> 
> ---
> base-commit: b71e635feefc852405b14620a7fc58c4c80c0f73
> change-id: 20260116-odroid-hc4-dts-54f4254d8554
> 
> Best regards,

Acked-by: Viacheslav Bocharov <v@baodeep.com>

Thanks,
Viacheslav

