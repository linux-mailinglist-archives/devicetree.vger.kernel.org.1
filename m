Return-Path: <devicetree+bounces-127005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 564289E3E09
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 16:19:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C069165425
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 15:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70A8F20ADC6;
	Wed,  4 Dec 2024 15:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="YlEtrGEL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD33C1F7079
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 15:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733325582; cv=none; b=XKCFU7rOEEHqLGLIAGyyFIXFulxANjM/fkrEnH4fRRFXeE2GqQCFam+PJssAzSMY4I8PDe9yLmfmnGJ19vJ5yOzW/wJb4/HzSvtVa64awBx9OaIgetLqFHdFG6hD/AM/s5/0wGgE2qZx8Ag8c0ML7JCh3qC9qtlN+hxf4cWwN/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733325582; c=relaxed/simple;
	bh=rKDCPf8A9rIpjJrOC+5ylAOaezhr016mpWauI4DkMDU=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RvzFl+bHZNxEraap9eJkjbMnDVWTToK47k3NcJaSq4aMzch1/97QoyM0NCfK2VPeBfNPUHQq5baZZlA5TGBg1Ixp/xHm2899x2U6pDs4ty1ROd87tjg+WeXo8LetPdDEpQ/2PuikHoNCNLUI72/FoMes+4xbnTb/73/pLr9Mxcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=YlEtrGEL; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 01D5B40CEB
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 15:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1733325574;
	bh=mT6saqI3kUrpS1by1WPPwkqD7keXMeGTbVJLvZHkNkU=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=YlEtrGEL8R6MyiKrBGHAakJvcfiWPg/J3Yu3/SOecA6iJusYMObwiZDlWfQYHHhbF
	 LR4K4ScOSj9w2GafGDxCQiFvHXIhNPQT2Wpq7LxTWgG+3/vPiIT6jn4J7NBvwbOALL
	 QtrW5seFcuh5JYhza3mKUwfXKzpcnbBjl3A8akH1a/GMC2H49JTkzb5ZS3nAuUiDMr
	 eBMDZHccb4Fekspbfr/FeZh9v+yls757uVbq8OKsATJ0bCTSXKvWzUXSqkXnALEmlU
	 Lp9Up6ihCOe08K8jaOU2pUet41QMqhi/27Q/zLKuNZFHxrBaWv89GUXF0z/D8j1F+6
	 6inTmbqjhVhjw==
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5f1e9fac321so810657eaf.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 07:19:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733325569; x=1733930369;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mT6saqI3kUrpS1by1WPPwkqD7keXMeGTbVJLvZHkNkU=;
        b=MPrHWvp3KMgTvsW6NTmF3XXzQwirFDRbvXlb8d2TQ0FlHGcelesHTdzlux/f1c76aP
         4z0hVehJwv5zljMXhh1v3webGwTSmd+ZddpRychMkUzCl9KrQ7qVciyWSkwYgv5JPgO3
         n400J9TdqJWulTow71bEGihm7EHfDTGhf5J2ccXmPrnPdXDLOOCQ+zm8qPdp1QFLbZ4r
         BpXPCFatxPz4U6RP+lgoBFmzkv9X2FqCRDRsV4ytHd6HmtYNnQ2/muFcLwe81xvB7P0u
         Jd1fyJsBw+liBUZ8u7mLryYbewJmPnpahBcE0t1TqLVSnzGeXXFTSnbrQu8LWJafMdUQ
         awbw==
X-Forwarded-Encrypted: i=1; AJvYcCVFIhGHisX/uIvUK3tXmk/tA+FcgaZ+txBxzcEVziiAibEzP07peJVm/OBR/548nmH2kDBs1hBW8cg5@vger.kernel.org
X-Gm-Message-State: AOJu0YxFUt1Urh6YCpg/7T7oBahifSYO7t5A2Nf9J5Y2HhFVUZCq6pKz
	xKmhfB3NXt2vxmI3jxRtIMPRT+yquPiRRqK3jNUhHM5lo0CYYovoq9imRvmUbRm6zFyCZw07fE0
	44t5wlK3oFMukCQcrhgDmF/o3cPhnEEIFjcq4PHd/WN/vFhchqRSaMlDCun/ELeVrcINysdliap
	o3g7BhXA+ysEp350XG9PAYwmM/SgQ0JWI2feiEcXsSPV9Vx1QuBA==
X-Gm-Gg: ASbGncu7HfUZ1lSdE4yaIBl7ACctIW3KZl7klp+UDs7NDNj5R5EH5kthOaN2LF/CYxN
	RZC3PwpC7cRHDL7W/yKTV2dym/GqU987JzcgJotVYW/4LNOnldvT/iuKn1T1h
X-Received: by 2002:a05:6820:1e10:b0:5f1:dc89:fa85 with SMTP id 006d021491bc7-5f25b131ff8mr4435715eaf.3.1733325569635;
        Wed, 04 Dec 2024 07:19:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEYwLk9Qr3DA7xA9lz+xOHZPQK14U34Jh9h4Le9KlnSbh+Bl4LotmHax0+v3W1xjiGt64wfnRfDdpr4eIKywwE=
X-Received: by 2002:a05:6820:1e10:b0:5f1:dc89:fa85 with SMTP id
 006d021491bc7-5f25b131ff8mr4435690eaf.3.1733325569341; Wed, 04 Dec 2024
 07:19:29 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 4 Dec 2024 15:19:28 +0000
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20241204111424.263055-1-bigunclemax@gmail.com>
References: <20241204111424.263055-1-bigunclemax@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 4 Dec 2024 15:19:28 +0000
Message-ID: <CAJM55Z-YAMtRN=K5KxCH1+++Xw4uMM_c49z8tGzi3snU+-KrYA@mail.gmail.com>
Subject: Re: [PATCH v1] riscv: dts: thead: Fix TH1520 emmc and shdci clock rate
To: bigunclemax@gmail.com
Cc: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

bigunclemax@ wrote:
> From: Maksim Kiselev <bigunclemax@gmail.com>
>
> In accordance with LicheePi 4A BSP the clock that comes to emmc/sdhci
> is 198Mhz.
>
> But changing from fixed-clock to CLK_EMMC_SDIO leads to increasing input
> clock from 198Mhz to 792Mhz. Because the CLK_EMMC_SDIO is actually 792Mhz.
>
> Therefore calculation of output SDCLK is incorrect now.
> The mmc driver sets the divisor to 4 times larger than it should be
> and emmc/sd works 4 times slower.
>
> This can be confirmed with fio test:
> Sequential read of emmc with fixed 198Mz clock:
> READ: bw=289MiB/s (303MB/s)
>
> Sequential read with CLK_EMMC_SDIO clock:
> READ: bw=82.6MiB/s (86.6MB/s)
>
> Let's fix this issue by providing fixed-factor-clock that divides
> CLK_EMMC_SDIO by 4 for emmc/sd nodes.

Thanks for finding this bug!

However, this feels like a work-around for a bug in the clock driver, and even
if there is a fixed factor divider somewhere this should probably be modelled
by the clock driver. Did you look into the documentation[1] and try to figure
out where eMMC clock comes from and where the /4 is missing?

There is also a vendor tree somewhere with a much more complete clock driver.
Drew do you remember where it is? Maybe it's worth looking at how that driver
models the eMMC clocks.

[1]: https://openbeagle.org/beaglev-ahead/beaglev-ahead/-/blob/main/docs/TH1520%20System%20User%20Manual.pdf

/Emil

>
> Fixes: 03a20182e1e0 ("riscv: dts: thead: change TH1520 mmc nodes to use clock controller")
> Signed-off-by: Maksim Kiselev <bigunclemax@gmail.com>
> ---
>  arch/riscv/boot/dts/thead/th1520.dtsi | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> index acfe030e803a..6c20965cd10c 100644
> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> @@ -229,6 +229,14 @@ stmmac_axi_config: stmmac-axi-config {
>  		snps,blen = <0 0 64 32 0 0 0>;
>  	};
>
> +	sdhci_clk: sdhci-clock {
> +		compatible = "fixed-factor-clock";
> +		clocks = <&clk CLK_EMMC_SDIO>;
> +		#clock-cells = <0>;
> +		clock-div = <4>;
> +		clock-mult = <1>;
> +	};
> +
>  	soc {
>  		compatible = "simple-bus";
>  		interrupt-parent = <&plic>;
> @@ -328,7 +336,7 @@ emmc: mmc@ffe7080000 {
>  			compatible = "thead,th1520-dwcmshc";
>  			reg = <0xff 0xe7080000 0x0 0x10000>;
>  			interrupts = <62 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&clk CLK_EMMC_SDIO>;
> +			clocks = <&sdhci_clk>;
>  			clock-names = "core";
>  			status = "disabled";
>  		};
> @@ -337,7 +345,7 @@ sdio0: mmc@ffe7090000 {
>  			compatible = "thead,th1520-dwcmshc";
>  			reg = <0xff 0xe7090000 0x0 0x10000>;
>  			interrupts = <64 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&clk CLK_EMMC_SDIO>;
> +			clocks = <&sdhci_clk>;
>  			clock-names = "core";
>  			status = "disabled";
>  		};
> @@ -346,7 +354,7 @@ sdio1: mmc@ffe70a0000 {
>  			compatible = "thead,th1520-dwcmshc";
>  			reg = <0xff 0xe70a0000 0x0 0x10000>;
>  			interrupts = <71 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&clk CLK_EMMC_SDIO>;
> +			clocks = <&sdhci_clk>;
>  			clock-names = "core";
>  			status = "disabled";
>  		};
> --
> 2.45.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

