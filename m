Return-Path: <devicetree+bounces-33789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E807E8365A2
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 15:39:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 98EC5284F5A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 14:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4613A3D567;
	Mon, 22 Jan 2024 14:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="eo8SYT0D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAA83D968
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 14:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705934374; cv=none; b=Zm769XI81y+zS5lS9zeMNkOX/hOVfNZhO2k/DCMEnwiQHbAZ4cSeAt7J2p2nwfvfVqmAPVb7b68wCs9yrcgf+904f1FvIG7XlvIVvNTaeGF7ur/RNeXyMgbyCQvNjdVUPqP53k8MavcN8Rc1L+XYw1bnIYlxvr0accWk7HCBp64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705934374; c=relaxed/simple;
	bh=HdyUZf62kgjNhc07s/teq5GSlhwGxXpPTINVlGw5Xm4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OjdaKTu1n7s48v/rmpkuykNbow+aBtOHff0y29sEA4ECLy387I3Tqaac0vloz+Lmot36VfOmHueYXmWlPlR2kEk7fyDNJ09bcF1ookHnEtNu4lVktUg+la4/5uQBgYaVI3ejW8gfD61V7vbkVyYZihp44Ie+4/8s6K11+0g3WHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=eo8SYT0D; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-40e8801221cso32439375e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 06:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1705934370; x=1706539170; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B8lvCubU57aNIM2sBEUNaYeXXZI+ZZd7zrjhp/AYVOA=;
        b=eo8SYT0DNNiQsm027pSKU3nSMDRwfnrAA/2YKL/H+1WIYe96LXC/Fe/UyMITAd3Fuw
         pcIp0m1sZoy+g2P6KY3t45f54Mp9ivj7Bbij1aw792NQzM280HgIXkLoUKvsZphfNuzb
         B1JKpcVpl/L+ZOIUX9qWoawGMNGJf9lgY98yGF+cN7ercwWptJUzp3vYrwxzVrpoQPxz
         B42QMZ2ZUEuzeIROt3mEjKhIhZzjb8o1IvZEXOzDjtErBwA46u9hKEVIgAGxQm5NfmOE
         odcofmsXQo21ziQNsiTUCHsjO/v8W6Bil9MLC/AN5jo/DyWL47NzBwFjQG6cFe1zute3
         nNGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705934370; x=1706539170;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B8lvCubU57aNIM2sBEUNaYeXXZI+ZZd7zrjhp/AYVOA=;
        b=fWo/aizH+L0/NlZaLn55EE/jPExm7uM5Ym6tP8cnnSg2mV2KLVCjYBLpw9KPO3cjVB
         yPfkh+ip8BQ5y7uIy+KlDWmAtJGygsJTl1T2XKOXX4bYorrZFgelMpMVRvdhYuOwzbQH
         kmlByc0F/tWMs7X5BOwG1u3nE5jfv651EBe2VK2J6ZEbQTQgtACxmB6REaOU2kO42+vJ
         EkGFIrXi0ZOleu7OnMjLHXxkoEDy/TV24J8PRXnun8t8ouAf4K6b5Ud5tCjedhWNrg8a
         QRKjkOoDRXC/TEfPp2jHp5kMUmSn8cClp/LZHgKPrlPQyuymfDJ//FnjHRc9WRv7pttC
         4Kww==
X-Gm-Message-State: AOJu0YxiVQbX3TlXSX79h/OmcKL4P6tS3S5wAw1aSTVD1QXADJkMJ69k
	eyOPfb/TBuXIgGTwE2KVK6a3Sl8vBqxboXq3X2va2yYPtKB+oUZ2yQcYUPHx8sg=
X-Google-Smtp-Source: AGHT+IEdsqyOsPosFvOf94mD/UiOTrBNPGiAbDkqL6dHgwHaSf32EOQ4SCLbaCzVosKC4SbAD4vuog==
X-Received: by 2002:a5d:4243:0:b0:339:35e8:f9 with SMTP id s3-20020a5d4243000000b0033935e800f9mr956516wrr.123.1705934369759;
        Mon, 22 Jan 2024 06:39:29 -0800 (PST)
Received: from [192.168.2.177] ([207.188.161.188])
        by smtp.gmail.com with ESMTPSA id w15-20020adfec4f000000b00338a3325331sm9111017wrn.69.2024.01.22.06.39.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jan 2024 06:39:29 -0800 (PST)
Message-ID: <372ed255-85b7-4f18-a28e-82e18171f7e3@suse.com>
Date: Mon, 22 Jan 2024 15:39:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: s32g: add uSDHC node
Content-Language: en-US, ca-ES, es-ES
To: Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
 Chester Lin <chester62515@gmail.com>, Andreas Farber <afaerber@suse.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Cc: NXP S32 Linux Team <s32@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Ghennadi Procopciuc
 <ghennadi.procopciuc@nxp.com>, Ciprian Costea <ciprianmarian.costea@nxp.com>
References: <20240122140602.1006813-1-ghennadi.procopciuc@oss.nxp.com>
 <20240122140602.1006813-3-ghennadi.procopciuc@oss.nxp.com>
From: Matthias Brugger <mbrugger@suse.com>
Autocrypt: addr=mbrugger@suse.com; keydata=
 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
 PVrr2NoUqi/bxI8fFQJD1jVj8K0=
In-Reply-To: <20240122140602.1006813-3-ghennadi.procopciuc@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 22/01/2024 15:06, Ghennadi Procopciuc wrote:
> From: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> 
> Add the uSDHC node for the boards that are based on S32G SoCs.
> 
> Signed-off-by: Ciprian Costea <ciprianmarian.costea@nxp.com>
> Signed-off-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>

Reviewed-by: Matthias Brugger <mbrugger@suse.com>

> ---
>   arch/arm64/boot/dts/freescale/s32g2.dtsi        | 10 ++++++++++
>   arch/arm64/boot/dts/freescale/s32g274a-evb.dts  |  6 +++++-
>   arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts |  6 +++++-
>   3 files changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
> index ef1a1d61f2ba..fc19ae2e8d3b 100644
> --- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
> @@ -138,6 +138,16 @@ uart2: serial@402bc000 {
>   			status = "disabled";
>   		};
>   
> +		usdhc0: mmc@402f0000 {
> +			compatible = "nxp,s32g2-usdhc";
> +			reg = <0x402f0000 0x1000>;
> +			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clks 32>, <&clks 31>, <&clks 33>;
> +			clock-names = "ipg", "ahb", "per";
> +			bus-width = <8>;
> +			status = "disabled";
> +		};
> +
>   		gic: interrupt-controller@50800000 {
>   			compatible = "arm,gic-v3";
>   			reg = <0x50800000 0x10000>,
> diff --git a/arch/arm64/boot/dts/freescale/s32g274a-evb.dts b/arch/arm64/boot/dts/freescale/s32g274a-evb.dts
> index 9118d8d2ee01..00070c949e2a 100644
> --- a/arch/arm64/boot/dts/freescale/s32g274a-evb.dts
> +++ b/arch/arm64/boot/dts/freescale/s32g274a-evb.dts
> @@ -1,7 +1,7 @@
>   // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>   /*
>    * Copyright (c) 2021 SUSE LLC
> - * Copyright (c) 2019-2021 NXP
> + * Copyright 2019-2021, 2024 NXP
>    */
>   
>   /dts-v1/;
> @@ -32,3 +32,7 @@ memory@80000000 {
>   &uart0 {
>   	status = "okay";
>   };
> +
> +&usdhc0 {
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts b/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
> index e05ee854cdf5..b3fc12899cae 100644
> --- a/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
> +++ b/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
> @@ -1,7 +1,7 @@
>   // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>   /*
>    * Copyright (c) 2021 SUSE LLC
> - * Copyright (c) 2019-2021 NXP
> + * Copyright 2019-2021, 2024 NXP
>    */
>   
>   /dts-v1/;
> @@ -38,3 +38,7 @@ &uart0 {
>   &uart1 {
>   	status = "okay";
>   };
> +
> +&usdhc0 {
> +	status = "okay";
> +};

