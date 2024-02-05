Return-Path: <devicetree+bounces-38800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF90784A23C
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 19:29:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E5B81C222B5
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 18:29:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC38A481C4;
	Mon,  5 Feb 2024 18:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EyIVIt8M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1A350277
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 18:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707157609; cv=none; b=QyerBwd4ZGAeDry0+x7b+FgC4tp1Ns7grrkpFYQ9zg91YJ+fjFvnsqroisRMUMZuScSWw7cLFHrhoLL0EEakZAi2tpsmAhT4t/PhEbSV+yRQZCqF+v2sFjTJImORMixhhaULQ4wzSR4RtdjlJ5N0aLOjZ4GZQAl11uELXGrmkGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707157609; c=relaxed/simple;
	bh=NovobhLMJgkAhGKgjW4R1wRviZdr2V6VzfiJFjt5y0M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SpKlrii0WPr63NHcCloZjf2EPRZuKQ9FAtec5Cki27xIsSRfCHUuQmnxlfj3EvErD3keCvvKPbvQ7gFYmwdr4bZsX3Ydj+DF43KzB2aFA3YloOEA1AK/hxusPyR/1DMI3+BajBWF63ga1218g/EirzM3fVeZ0e3tJHTpbJ38unw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EyIVIt8M; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40fdf3bd1f8so2945845e9.3
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 10:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707157606; x=1707762406; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=htnHzi3tYpUcAcax9Oehk8o5es8Q9nPqVSuo3cjUUGU=;
        b=EyIVIt8MKJP3fFYEbfVNPu3E8JtFwBK0yAPinVddrP53B4N7geet8jLDuoDJG/gkAh
         PTurbS6cuqvFumwXpbzDoUoocaRkonnwPqm+cNkutJKBgb7J0nHh3FkwYNVrirvown9g
         tljWDqPUeMKulGw5sE9WugNK0PlwQa6RXFRHuBh4th4BhJ1tgw2N7lQ0BFcIC/bLAQte
         r+HDZOjrAPUQTsrDP5Vzukg5JrMGM+g1uazvVR5skx4mEf1P0LpxlLkXxXraeEHPdGaQ
         kKFULCp37x+sQN3raiUvKlSjRIaWClRWUzMcA9/zjwQLwj1vYr6068VxYIkuSo/qtq1H
         FqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707157606; x=1707762406;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=htnHzi3tYpUcAcax9Oehk8o5es8Q9nPqVSuo3cjUUGU=;
        b=WCT4osVX1gpVp4j8h/umMP3SaBRSS1wLc8nQz8wW87fKAMmjYGlkqqlg/159wdN5Uz
         +udVsxkerFluDXgI8ttBcs5qCGGh8kIJFSo7tM/5TFOYVeRJNgF0ZltZOXklt2frByHP
         CiRsyvBkNoO+1rgY6/o9j0AWVqmteHUcI6IFkS2x3nBMEN7wuXgLxjtmFjbPVKrbEhFk
         YWxfjo7pb/5uNI2S/1g0vFOn1BVMt+LD3edf6LeZh40+H9nFY1mnhk0LweeqFAYMiB9f
         HHF8zrT/w4cChr0uXNK2sxpQMXxDl/WSsun+P61m6CHUSbrz19pFjaNpIXXN5nLnvr31
         HFRw==
X-Gm-Message-State: AOJu0Yy7xbVAST3MmCkZhqs7LVxC8AqbNpL0z7cYkUWAimy/d+07mi/a
	XrOqhfNX1QgKYOo9xT0aqz00t3cDGifICfEB/4tcjXc3IabO3J7F
X-Google-Smtp-Source: AGHT+IH6pzS+IInTWVn7w59ky+Wlg99QOSRBzzf1n7yhhA/HlTNk3TE1U1UHdYIHMwb4Ko/p8+4j6Q==
X-Received: by 2002:a05:600c:34c1:b0:40f:afe1:c9f8 with SMTP id d1-20020a05600c34c100b0040fafe1c9f8mr417092wmq.12.1707157606004;
        Mon, 05 Feb 2024 10:26:46 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUflLI3w/4X1P/D7ar2lgRwUSNe/Xru+Ga7BxWIpMyTmzBj5kwxROHOXKM18YZtZwbJgY3rzK/dojaOKtjV/Qf/XWKPSTMiDYnH+sxUL7c7o8AfriEYr8vBxr5hLlKrhHFhe1/0iB6S19mf7QoPFLNfNN0WiyaswQ4ZLhK77Qj6dqL4KgAz7Krkl6odaQInzbUvFKFIrHgrWJDIMsXeWNARhA515HjaYCZ+c3Lr5GpaI4pwFl/yGBqv/Q829+Pu0wkV54kTdzPRHIMonSr+IIQ2p9cSiPIjn7/gXC5rJ8wmYbTOvIznvSbLPrBOIk+4Cs06JZm4sFWEmDfeX+kgyykqrw==
Received: from jernej-laptop.localnet (82-149-13-182.dynamic.telemach.net. [82.149.13.182])
        by smtp.gmail.com with ESMTPSA id y8-20020adffa48000000b0033af670213dsm178914wrr.110.2024.02.05.10.26.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 10:26:45 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Nick Alilovic <nickalilovic@gmail.com>
Subject:
 Re: [PATCH 2/2] arm64: dts: allwinner: Transpeed 8K618-T: add WiFi nodes
Date: Mon, 05 Feb 2024 19:26:44 +0100
Message-ID: <8371906.NyiUUSuA9g@jernej-laptop>
In-Reply-To: <20240204093255.148972-3-andre.przywara@arm.com>
References:
 <20240204093255.148972-1-andre.przywara@arm.com>
 <20240204093255.148972-3-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Dne nedelja, 04. februar 2024 ob 10:32:55 CET je Andre Przywara napisal(a):
> In contrast to other devices using Allwinner SoCs, the Transpeed 8K618-T
> TV box uses a mainline supported WiFi chip: it's a Broadcom 4335
> compatible, packaged by a company called Murata.
> It works nicely with the Linux driver, when providing the respective
> firmware files.
> 
> Add the required DT nodes to let the kernel find the SDIO device.

Can you reword message in a way to omit Linux?

> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../sun50i-h618-transpeed-8k618-t.dts         | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts b/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> index 8ea1fd41aeba..7ec4098e707b 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> @@ -16,6 +16,7 @@ / {
>  
>  	aliases {
>  		serial0 = &uart0;
> +		ethernet1 = &sdio_wifi;
>  	};
>  
>  	chosen {
> @@ -39,6 +40,15 @@ reg_vcc3v3: vcc3v3 {
>  		regulator-max-microvolt = <3300000>;
>  		regulator-always-on;
>  	};
> +
> +	wifi_pwrseq: wifi_pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rtc CLK_OSC32K_FANOUT>;
> +		clock-names = "ext_clock";
> +		pinctrl-0 = <&x32clk_fanout_pin>;
> +		pinctrl-names = "default";
> +		reset-gpios = <&pio 6 18 GPIO_ACTIVE_LOW>; /* PG18 */
> +	};
>  };
>  
>  &ehci0 {
> @@ -60,6 +70,19 @@ &mmc0 {
>  	status = "okay";
>  };
>  
> +&mmc1 {
> +	vmmc-supply = <&reg_dldo1>;
> +	vqmmc-supply = <&reg_aldo1>;
> +	mmc-pwrseq = <&wifi_pwrseq>;
> +	bus-width = <4>;
> +	non-removable;
> +	status = "okay";
> +
> +	sdio_wifi: wifi@1 {
> +		reg = <1>;
> +	};

I don't think this node and alias are useful in any way. SDIO scan will find
device regardless and potential mac property set up by bootloader will be
ignored anyway.

Best regards,
Jernej

> +};
> +
>  &mmc2 {
>  	vmmc-supply = <&reg_dldo1>;
>  	vqmmc-supply = <&reg_aldo1>;
> 





