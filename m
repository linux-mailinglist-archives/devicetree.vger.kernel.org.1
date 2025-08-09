Return-Path: <devicetree+bounces-202890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F018B1F22B
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 07:06:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B87307A9794
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 05:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E27192D83;
	Sat,  9 Aug 2025 05:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="FKaAf2pR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185E115665C
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 05:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754715955; cv=none; b=MwKB86h8qVIZCr2ABNx9MT/wGEMHwhrscOEV1l6HbqNJT9ieCpYOQ1lFEc/Tw+C2aPW9LSTC/3yprq8WcRFpZKZbLoG1/7q9oWw+s3fC/7y5Vx/jB/IdbRBe0u/0Vm45G97mnHWMZI9Cn+tu5xjYpSt505FA0Z9b9RV5JRS0XEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754715955; c=relaxed/simple;
	bh=nD2fUCFl1N8RjzRUmG5cM0B4T+0OEZT2hR1uuKjG3hI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n0j6j7yESKYvkZqxGNaBeGxqhWuEMu5snp4Ic4Oi/MEJPQ5ihrjL2aLVZzZmK2ma3wZHiUufGdjMJuF+LmAbFaEcrauhPWRYdL3wq3W7M1rF2Vxhll8I4bHO5f/OYlprklYM9EB+zuPymuftEM/2MS9iU4/GsJCipaR60Du7WZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=FKaAf2pR; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-af9180a11bcso573921466b.0
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 22:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754715950; x=1755320750; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2oZNLMTxnI0TDk551cIxYEAZPe1K5Q6nT+3NiB2kPJk=;
        b=FKaAf2pR4+kiKIu9UoRXkbcBiYdoNbtjXzGYo50O9zXYpiynC5bM3YZ++8/g6Qaszw
         VfpizB7tkwH4Hm56skzHjhofJ+Cw+VCtZbxBIqq7I3zMNN6DdeZMkCcdLqy/8MTpLIJs
         0M4tQWRh+g1vas/6tZWxErbtW52P61n3u9yvI0eSCkVKbFZBbmbFKlj2wc0XlC5liDaq
         SV+ygU7o5JAUwEePbY8T0T3oZCn5BelSOEOfoD5n6XAvqi3Hsr5rBK9RWlN7r+9qCWfu
         sX7ib4H0UbvxyfbovmaKC1OLGJNI4XMg0ZzUnGMhsZzE2sN6gN/tcOxeGvr02FNrDqtX
         wY/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754715950; x=1755320750;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2oZNLMTxnI0TDk551cIxYEAZPe1K5Q6nT+3NiB2kPJk=;
        b=NiTqbU8uVrBQmd7Q87K78Kap4fC6a2LcibxsCmhPzCXNGx9BtXtSk7DHG2uOuIjjd0
         MEJlCQMd9NmbWWHXwi0EKS1P9QwEJiwEZmjlLH0+v+2SpsxHnJmetiFGHHc2iJXa9ait
         zWyRCx6mHfs+j5spI7DBLNElhecYiNvyzAWWtPeYACR+pdDoPEg2RC6aEXT1m3MGTCb7
         pdusX01Wuojl7r8slk0wOs6INUs9HCrifwfUg8+vQiouRipOPa7mzUibRUXNEaW78WN0
         CP0v6x8l0sdlQ1/VdcHZ4Tet30Gk453T4IPMjf7xz/iBBs6UQgwhNQc6etIuvZWP/ip/
         0g+Q==
X-Forwarded-Encrypted: i=1; AJvYcCV/gNAzQEgucBjCHnDUKAOitzs9U46IdA15lyy3DiX4vIyu5I+X0JKcQpsRG1Zfr9tyrI3lj5JIS9bi@vger.kernel.org
X-Gm-Message-State: AOJu0YyskxKbp60KG0RzbNf3RqZdshd+eWN0ig62v3v6q7CZyykZF1Qu
	vMvkoox+suRe65GS/gUd79hpcLz8a+yTxycSE1p2V19mCywkE4F7w8AKGjAM7cgwdmQ=
X-Gm-Gg: ASbGncutyB2EEernRaW/d5b2yk1nsl4ItcKxRayDY6odpo6CgL6MXfFizi3e4z55vjO
	wep7359KmeVmtOXUcWzH+Mdw/3ZnVjbcwDomfRBwIVzRNRZEFgpYgxE3VRN0VV7Omm2pcLBO9Yv
	pOGw02HUvI4rPa7XK/GnwD7MdUHW7IWsGcttybK4h43kM0cPOIvA+lIXUh12gA5ccD8WpuzYIZJ
	CChQIp0c5mYdOZRDoVlbMilqkPqv5bsAgO8dKkzpdNtXvGYBpLAmY75T3+JNFhjEDI4tto93bAr
	7NhGyjRnrsH9rKUJflOLAdOyw4X0sOEH9dEnySQ32LYMggUfxfP4f527aS1ADtQuUOrnDWoKo71
	HsvYQrX719h1r369by0agPhYPFHgmRAk=
X-Google-Smtp-Source: AGHT+IFDTVyrR6p3CClA1GWj423Oh6dA8XrJf1oBRsxw+7d+yEEQJwlPV2AJiVzwHAknQVJuKnTVNA==
X-Received: by 2002:a17:907:3ccb:b0:af1:69e3:c074 with SMTP id a640c23a62f3a-af9a3c9c1ddmr1004588666b.8.1754715950241;
        Fri, 08 Aug 2025 22:05:50 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af99518bfacsm629142066b.72.2025.08.08.22.05.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 22:05:49 -0700 (PDT)
Message-ID: <18e948c8-96ed-4520-b25d-32ed1c845aff@tuxon.dev>
Date: Sat, 9 Aug 2025 08:05:48 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: renesas: r9a08g045: Add I3C node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-renesas-soc@vger.kernel.org
Cc: Quynh Nguyen <quynh.nguyen.xb@renesas.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org
References: <20250807151434.5241-6-wsa+renesas@sang-engineering.com>
 <20250807151434.5241-7-wsa+renesas@sang-engineering.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250807151434.5241-7-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Wolfram,

On 07.08.2025 18:14, Wolfram Sang wrote:
> From: Quynh Nguyen <quynh.nguyen.xb@renesas.com>
> 
> Add the I3C node to RZ/G3S SoC DTSI.
> 
> Signed-off-by: Quynh Nguyen <quynh.nguyen.xb@renesas.com>
> [wsa: adapted to upstream driver, moved bus frequencies to board file]
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 35 ++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
> index 0364f89776e6..6e372e222557 100644
> --- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
> @@ -272,6 +272,41 @@ channel@8 {
>  			};
>  		};
>  
> +		i3c: i3c@1005b000 {
> +			compatible = "renesas,r9a08g045-i3c";
> +			reg = <0 0x1005b000 0 0x1000>;
> +			clocks = <&cpg CPG_MOD R9A08G045_I3C_PCLK>,
> +				 <&cpg CPG_MOD R9A08G045_I3C_TCLK>;
> +			clock-names = "pclk", "tclk";
> +			interrupts = <GIC_SPI 289 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 290 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 294 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 295 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 296 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 297 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 298 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 299 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 310 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 311 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "ierr", "terr", "abort", "resp", "cmd",
> +					  "ibi", "rx", "tx", "rcv","st", "sp",

Missing a space before "st".

Other than this:
Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thank you,
Claudiu

> +					  "tend", "nack", "al", "tmo", "wu", "exit";
> +			resets = <&cpg R9A08G045_I3C_PRESETN>,
> +				 <&cpg R9A08G045_I3C_TRESETN>;
> +			reset-names = "presetn", "tresetn";
> +			power-domains = <&cpg>;
> +			#address-cells = <3>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		vbattb: clock-controller@1005c000 {
>  			compatible = "renesas,r9a08g045-vbattb";
>  			reg = <0 0x1005c000 0 0x1000>;


