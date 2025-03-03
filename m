Return-Path: <devicetree+bounces-153213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C32A4B951
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 09:29:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F30517025A
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 08:29:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C084D1EF090;
	Mon,  3 Mar 2025 08:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Ev0Dv9xg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D921DE3A4
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 08:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740990524; cv=none; b=V8yrVElfcqlNl0Fk5/k/FMxYwN3+ThR3dM+Vo3LHuzHkNdkACJvIQfJ4Yaq9t80c/I6PXpL+/AKRHeJFPUSGhvrHOZQYlxG8wZY7tWyvIsVSqFSNAabe4emfHFXwMXJvph5dlcNI56+stLPsoQvPnN95np+Yiq5Q8OH7DQhzYyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740990524; c=relaxed/simple;
	bh=Str9/Z4T7boxdmYNKfUCQAYMERdj9MmqoKnoOftbpzQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jLxBmjcPPqf3z6rqz5TcFqd92PogWe/3hTve1RbnB7mxh8Pk3LnWep+I435MAH5bNkD5frFEc3U0Sy7pZbpmcQKp+KinK2EK6wIjqeu2fNShhhlKRf3+Qm1m3sNn2rD2qM9T8PDQSYeZONEx/feJ18mlGioWwP0EiAj5IhkDb30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Ev0Dv9xg; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e5491eb37dso1282271a12.0
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 00:28:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1740990521; x=1741595321; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GH41p+03OT08ssRRmEqg+Cy0Qf0zi6uiF2rijzbkmOc=;
        b=Ev0Dv9xgqBw7wW32FiSRZEU4FnONDvAlKj2KFKPd0crVicIZbCB6JN3ZMVexMZX9cJ
         ULTqrQXBVSyv8FtYXsbFlL2B4Rqdbjdx+JE1/5D0/ZkEkMJdpBaTyRrp4zG/aHCazaVc
         4J/2QPge4kYNQUbyql8ewpJwvHe//wvgdBPuABXFAuAgVSr5yspF+kvXLb3LosRi3Z7p
         gpTjcrBCXHwQKQX3lrVeubWvfR8bXrc18GhaDOUcHKRFL8QYDCcKAhdYDZSMI1pjvXRS
         ON8pFYCEuw+LuKH7zuGde2Uu248vEs5xEobLxXHX97l5qS+C1fpuwIUNt9mJyzMqPnd2
         ECFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740990521; x=1741595321;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GH41p+03OT08ssRRmEqg+Cy0Qf0zi6uiF2rijzbkmOc=;
        b=Nmk28UewbEYVgCWGXZNaVrkC5ygvPoyYqYwCq8dJbqgNTp5Ltg83EooHPfrkEH7s9+
         7dtjU+NDOMDK+k1hyhUkHHPgBs3sliZOtq0lBZj76703Q2PXOfJ92fTH3md/IvexS9kG
         tjnQP+wZU+LCPo7EDhsC0sY6WqJKwpHoV3MWoWjSU+/7L7UgGST3jJqNj+GkvouKooQq
         yY5Yxn25K1vmxwKaOgVadwy2ZgBJt+5XsNHGvCRu1kUcRjwfmYHS2eROuWxqexSHpkwr
         mCJyHs1SM5+mcwUsjHCARg+u67rCzzuJnbIkaT6o8xuERtMxoepUxQENSRKmRNUX/1Ni
         jXxA==
X-Forwarded-Encrypted: i=1; AJvYcCWkTxftGpS8fC81KQa/cP62yoEZSR2YSJ8FV5o21Qscy4+hosCPOPCcKXMC2gXCajO7lp+zjOMyyY/c@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8btedLJxrU6v2qPhNChTRbOkkTUi+OJ1Wjs9I7TuPmAinUtpi
	YTM8kX+LmG2WdmUeD1GE4eZAwMTzJR0StQQSN2ZZVXgG2UrDcun602jKNfUr6ao=
X-Gm-Gg: ASbGnctsyesbYotco0TLLb9c1EG4yh086znVK+Pm/e2xZUquKCUUwrngkNALIgnWyF1
	N27gPIpZEu3YsMhIT41OnZXppu5BqvNWw68D6zfIiTGB5XLA2UrCm+QX0eM5JK82Xd86ee9kAsC
	N/HKetCkxaAAZO20Jb3DdyKfWa0vfbAMT5bqNC2RbpmmjM1B6MuP28Yp+cyPjgDWCGkVlY/5ffI
	wEMXqiEqKcBjnDQ9ZkJD2Wgqdd7Jxio77H4GODZzLcAosgaYVOqUSpK/JbtgdNv+40BC++zI3ts
	XEcaz5HZc7aiDLS8tWmaM/0Q+lM5n1/Ji5+nyiHRcJzz9TXRRqWagQ==
X-Google-Smtp-Source: AGHT+IFLKelVEVi00flzE2lHP3gHCMr7kj+GRjh+qndXBWCgYVC+cKiDJx3z7MTtqx+Mlq9hmZIcoQ==
X-Received: by 2002:a05:6402:34c2:b0:5e0:8937:6ef2 with SMTP id 4fb4d7f45d1cf-5e4d6af1104mr11411025a12.8.1740990519662;
        Mon, 03 Mar 2025 00:28:39 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e4c3bb632esm6491336a12.36.2025.03.03.00.28.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 00:28:39 -0800 (PST)
Message-ID: <3bdac1bc-b84f-43b0-86be-b9d9b18be25f@tuxon.dev>
Date: Mon, 3 Mar 2025 10:28:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/21] ARM: dts: microchip: sama7d65: Add SRAM and DRAM
 components support
To: Ryan.Wanner@microchip.com, lee@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 p.zabel@pengutronix.de
Cc: linux@armlinux.org.uk, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
References: <cover.1740671156.git.Ryan.Wanner@microchip.com>
 <ab4002faa1b672023ffc97bf91755720508c275e.1740671156.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <ab4002faa1b672023ffc97bf91755720508c275e.1740671156.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 27.02.2025 17:52, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add SRAM, secumod, UDDRC, and DDR3phy to enable support for low power modes.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/sama7d65.dtsi | 35 +++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> index 92a5347e35b5..c10cc3558efd 100644
> --- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> @@ -47,12 +47,37 @@ slow_xtal: clock-slowxtal {
>  		};
>  	};
>  
> +	ns_sram: sram@100000 {
> +		compatible = "mmio-sram";
> +		reg = <0x100000 0x20000>;
> +		ranges;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +	};
> +
>  	soc {
>  		compatible = "simple-bus";
>  		ranges;
>  		#address-cells = <1>;
>  		#size-cells = <1>;
>  
> +		securam: sram@e0000800 {
> +			compatible = "microchip,sama7d65-securam", "atmel,sama5d2-securam", "mmio-sram";
> +			reg = <0xe0000800 0x4000>;
> +			ranges = <0 0xe0000800 0x4000>;
> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 17>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			no-memory-wc;
> +		};
> +
> +		secumod: secumod@e0004000 {
> +			compatible = "microchip,sama7d65-secumod", "atmel,sama5d2-secumod", "syscon";

microchip,sama7d65-secumod is undocumented. I'll postpone this until a
documentation a patch will be posted.

> +			reg = <0xe0004000 0x4000>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +		};
> +
>  		pioa: pinctrl@e0014000 {
>  			compatible = "microchip,sama7d65-pinctrl", "microchip,sama7g5-pinctrl";
>  			reg = <0xe0014000 0x800>;
> @@ -190,6 +215,16 @@ i2c10: i2c@600 {
>  			};
>  		};
>  
> +		uddrc: uddrc@e3800000 {
> +			compatible = "microchip,sama7d65-uddrc", "microchip,sama7g5-uddrc";
> +			reg = <0xe3800000 0x4000>;
> +		};
> +
> +		ddr3phy: ddr3phy@e3804000 {
> +			compatible = "microchip,sama7d65-ddr3phy", "microchip,sama7g5-ddr3phy";
> +			reg = <0xe3804000 0x1000>;
> +		};
> +
>  		gic: interrupt-controller@e8c11000 {
>  			compatible = "arm,cortex-a7-gic";
>  			reg = <0xe8c11000 0x1000>,


