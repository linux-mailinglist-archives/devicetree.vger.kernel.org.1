Return-Path: <devicetree+bounces-257122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F637D3BCE1
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 02:32:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E7FA43012752
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 01:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6223B1A9FBC;
	Tue, 20 Jan 2026 01:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pardini.net header.i=@pardini.net header.b="hMrTzOk7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F16C14F112
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768872730; cv=none; b=AwWcbVldIG0XZgp4OEYW+CNzEl347ELhK2umAY6rUbIwjoUsk5O/i9SC0ACq5ryYyiIELgZbL0XmzzjTzFCthi3qJgGGfmgC6OM3E/9WrpWyLul9jXfHruUUqL/1oH7Ij7YCvK8E4gpdWwUhV9TyecpG3HdxFwuQSrRYrV/MKJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768872730; c=relaxed/simple;
	bh=IzK/oXR2CPlm/a1M1pjeXu2at94YQZynWPoclijvgHU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OuL+F6UsTM7Bt0b1emF931LYAgH0eqI29ddyYmtbDEU0/VXEl7GFxIJ2k0Z3iGIQU8NlLt5MgfM4f0gBURYvhmhovYCc74qb3f3fsDpB2tguoqNoOt5XCW/eVjgXGEpA1vpcc8tIpGEyXEOO8Ogo/sL5ZI3wEOURm3PdFkwXEU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pardini.net; spf=pass smtp.mailfrom=pardini.net; dkim=pass (2048-bit key) header.d=pardini.net header.i=@pardini.net header.b=hMrTzOk7; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pardini.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pardini.net
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b876798b97eso769818666b.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 17:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1768872727; x=1769477527; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oA9EJA38Ao+A32i9rXYjoTfg7C61pSIvbeavCfCz8zc=;
        b=hMrTzOk7aqivEZxysfoToYe6E/ebWpa5BKJGc0aL90JIpxHM/w3LZFJe7IJcs5cFzA
         jb2U5ynIhKtfcLX52CgC9VZcT8qZB1I8ntnn2RIGz+LwfV+OoWNV4ZtS7s/nGcdcAg+r
         nrJApEFxpIC53aVcVEzDRhvYRR7tsDUymIIRye5FMpes7DXXq2msN8Q93qtrRuL98qKt
         hZ5uOAzVCKrAeVM2V6J3PqXB9FcF/T1FZlZDNSWailIec64fB2yR84R6OOpH3chjos2y
         5NI8VFsZsYFpwWSJ/XYcpI2LHgxrVqFDjmO4uFF7BKv8oLypTrMwQG3X0ttms4M4a8Rh
         j3rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768872727; x=1769477527;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oA9EJA38Ao+A32i9rXYjoTfg7C61pSIvbeavCfCz8zc=;
        b=S+q+RUN/oc5i64utufbhWJuN94nvdjB2K0qgAShP1bkiqAT049YzAeX/1jZmfeq4EO
         GYJcMavzBJ2HtRII4dc2GoICau39o2tEUgitVk2v6UlAyJRe39DK6XtFgF7QU5SgeH+A
         otmb/GT4qLXmwMFslR/92Xo9zqab9QB9pkUSqfXdfpbPCNtCqTTVYJ/0kXVGx24mTJCh
         Ug7GEpecu5BEcJihF2q4e1OLRGAxMnuSDgCDnbBh1JS7RqMX9FwErmuYhM+/9dZf/DL0
         NyqqW5sz9HrjY45vAa4iZHnLQLnrfcOlAMkQZxa++nh5RRC4TdEsKnAKPQaOfVgwJXh4
         /XGQ==
X-Gm-Message-State: AOJu0Yweg50f1+aM29DuwZ+2qI2zB0b8bv6lPAlfQ5VQ0S7YT0tJtRMP
	mZDOMlLbYo6jhxQ9tR8Q1mxBnsklDh1TwfvAVCD/Q8EL+V985CMfyYRMa3UTkV+oxQ==
X-Gm-Gg: AZuq6aJGHeXxbzZkOwfBWcQcE+X18FM2z7qD2ztxOZVawYoGsFz7GDtxkKBtsrfpwKQ
	Ge9oPAISTwhzw5kSCBZ0E1RZtrLwYeGM66o7q/50JIThNJ2H3uaeck466D+noqxrq4iWhhmu0NT
	SgCKnYiHt24rfLa/YVKvRnKzP7UiqvvHKoxsvFX2vFz0InPW0LjJ7eJ4QR5QQlieBKv1p4NdD44
	3RyozHhHv1J7k3Jr1qwcX5gLz0Ia76Y68xPbERs+ITSj7/bloU6v4x11u8jbmE5aeP35grWwf0s
	AEcRbDDsiUWgva1Qn3+gwoZlmugNm1RKWFrosGSK41mUw49GL8nbdt7Dx5/BbLsELTjbMY4SOwK
	lmjq1ZqBotO9WVHKnKXyyBHAEVArdGtlGDliUqQqwUPW6jucnolRFW+d6gIIGrr0oUWRzLAcJlR
	TtvMyQiSGRuPtCnP7V9/56XR9Q0oPABpyGfVx4J+Uyt8i5NGvHk40z7iPRY3lLSWs4OgaeG2zGZ
	4RHN5DLb9gDbAcnAihUL8RgiAIot/JTDYdCEPGw94fN71sG7572h3Ni7Q==
X-Received: by 2002:a17:907:fd17:b0:b87:7cb9:c3dc with SMTP id a640c23a62f3a-b880064d660mr16596666b.32.1768872726489;
        Mon, 19 Jan 2026 17:32:06 -0800 (PST)
Received: from ?IPV6:2a02:a466:4d7a:0:6c50:b577:541e:d133? (2a02-a466-4d7a-0-6c50-b577-541e-d133.fixed6.kpn.net. [2a02:a466:4d7a:0:6c50:b577:541e:d133])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795169f10sm1269998766b.26.2026.01.19.17.32.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 17:32:05 -0800 (PST)
Message-ID: <80837c50-8721-48e7-83bf-223dfc5a3a22@pardini.net>
Date: Tue, 20 Jan 2026 02:32:05 +0100
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
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <20260116-odroid-hc4-dts-v1-1-459b601cd5cf@linuxdev.slmail.me>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/01/2026 05:02, Eric Neulight via B4 Relay wrote:

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

Tested with 6.19-rc5 base on an Odroid-HC4 running with a single 2.5" HDD.

This patch does not solve (as I hoped) unrelated/long standing issues 
like the "famous" disk noise at/~around PCIe/AHCI probe time nor the 
fact the 5V rail can't properly power two 5V disks when at least one of 
them is spinning rust -- but also doesn't cause any new problems that I 
can detect (SMART etc).

I hope someone with 12V disks could take a this for a spin and report 
further; I really can't take mine out of "production" anytime soon.

Tested-by: Ricardo Pardini <ricardo@pardini.net> # on Odroid-HC4 5V HDD

Thanks,
Ricardo


