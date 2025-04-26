Return-Path: <devicetree+bounces-171189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3905A9DB07
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 15:17:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 131FA467DED
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 13:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B47CF14375D;
	Sat, 26 Apr 2025 13:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="TxP7DoYb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF85B39ACC
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 13:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745673440; cv=none; b=gdsy+oYk1M0JtuuMCaaF8keDjn2Z62Z7QIRS72FuHgexksqmgwQkVQawFjkZPnE3jVM4O1A8+/ETe7ELDpf902Vp59jddvGl++bEccWsSf4jKGTHvioWJ8OFtVhGXfNCITGZ6XDAAMJw/zXe5Qm+Fu22oqVmRTa60asN/0zK/LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745673440; c=relaxed/simple;
	bh=AgGgpgM0SKKcQMBvhiyb/+80AjEVOKjah4TFyo+HM+s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kxYNEw8uz33E+sOOBG/+TXlHUlxTkKWQdOrpWXm4LElNuDknOOMpmeBYeOZWXTd320Ow/qC8FNWGFC8N5HKovbDjKFuri3x2Py0DY0YZmX9oxs+Oo5XuhcUGVclf4S0IvW6bnrNn8IBNHNjofH0CAooU+enLWZOwmyDbfa5PzS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=TxP7DoYb; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43cf06eabdaso29697455e9.2
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 06:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1745673437; x=1746278237; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CI5a7+0i1Z4ciPNBaeJ5FtbaB8j0UzTY2F+B8Sn8k24=;
        b=TxP7DoYbHMNsax1kaxSFVaJ1zJNJW6mz1wdWGNvliVlKGRp9wJXbqWr4I0QLz6eM3c
         Q68qOpn1nQQqM4N2fMt3NeZDMIrJnMzOna9aNbzfX1L68yMtvGs5vbQq4uQuOUQxIAFP
         8HHb6aZ7lEk5ocWYTRrejo1dRWeGC4Ofa+AfQgS4bNgOwOhpttnMuZ+FhUIqaD6smaIF
         vO0zTttGKLA3CXDwbpqfZwt4UL+bDF4Ok00dV47idrKJmlFEtGu097zXR4R4xfaeX3UA
         dqiLRvAH45gB7WQghF/U4QdmlIwZ46NmHnGAE/H8hvbzMRTzr78SUD+5Oj9ALRY0eS+3
         k8VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745673437; x=1746278237;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CI5a7+0i1Z4ciPNBaeJ5FtbaB8j0UzTY2F+B8Sn8k24=;
        b=Zt8bzfXz7iJeKIYAJKna+gyweE+PRP/dMIchmA2qn/5I00eQBHZOHVdWlWgwDXh4NQ
         0+102fQPe9C81PbSDrZ4FIKBoWz9k2U65M735iaV+2ABvQF4Vj0bfGjqv5mpT8g+qgNE
         I3j+ojbiXLSWrzoyts7LiBftu5v0mww2ivZViobeQupdPh67W8E3XuWsNXZUvIdRfYWc
         K0LEHTEhyCaqyV7Kk7GeI0nNdhmWRKaskQC/Ixpb4bNe/v2xZDCFsuszf8n1ZTp5Jf73
         4HBTRTITT4DyYZWkBFvwelGXnZ9qrqsfaQ4kIdq380NHxwoHIu7evCcNEhc+3RvnlpjD
         K39w==
X-Gm-Message-State: AOJu0Ywa/1dwWKVKH+eRoQz0WQKpl9fS5onUQjKpRnOowplo2I6WsM6m
	VLh3grJuAvzU1G/mpVP5BOpfHqqdAHq/y02lrGqwz8iMpoFt4yAo6Tuge2wu5lY=
X-Gm-Gg: ASbGncubYw6DnoB8YtM56uLg0nWRMlV04VWjaIK6WxgToC0NqcnC+Q8gI8XoiUfjC9Y
	AqmimPfEKuWfS1yo8mV6c3guPNWlmgJWhORkvxXYWhdrhEAfjJBNPR5kcMmGwEqiyXd/WI6Q1EO
	+ufyWVBfnm0EcMa2f8xAI/QYsqG2H2osSh1nT5pTkIHidFY0JKp3BxVCxWRiKIk7Ypplvmb6u4k
	8CW54N9uEt1Qznz0jMt6nF6CP0Qh+8HIJOZKl8OVhczQjdJHXDdWQodrfiARM6OeAltkqn+FuVe
	Lp1fG8tikRNvCH2rc67ff5/82ekeSkaGMvWpQ4ss7eciyeX33Q==
X-Google-Smtp-Source: AGHT+IHytqi0PRSnCZUd64Qp2/4XTNrGyd31YUwQgLulH0kGSHkkv9/ZhwEu+T7t1MGAzdiUaJUlRw==
X-Received: by 2002:a05:600c:450c:b0:440:6a5f:c308 with SMTP id 5b1f17b1804b1-440ab79bd20mr22243255e9.13.1745673437040;
        Sat, 26 Apr 2025 06:17:17 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.145])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4408d8d191bsm106573135e9.1.2025.04.26.06.17.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Apr 2025 06:17:16 -0700 (PDT)
Message-ID: <b6736e74-7f90-437c-b44c-183a75401037@tuxon.dev>
Date: Sat, 26 Apr 2025 16:17:15 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 09/11] ARM: dts: microchip: sama7d65: Add SRAM and DRAM
 components support
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, lee@kernel.org, sre@kernel.org,
 p.zabel@pengutronix.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rtc@vger.kernel.org
References: <cover.1744666011.git.Ryan.Wanner@microchip.com>
 <354ecd628fdd292d2125570a6b10a93cbecb7706.1744666011.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <354ecd628fdd292d2125570a6b10a93cbecb7706.1744666011.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 15.04.2025 00:41, Ryan.Wanner@microchip.com wrote:
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
> index b6710ccd4c36..8439c6a9e9f2 100644
> --- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> @@ -47,6 +47,14 @@ slow_xtal: clock-slowxtal {
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
> @@ -58,6 +66,23 @@ sfrbu: sfr@e0008000 {
>  			reg = <0xe0008000 0x20>;
>  		};
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
> +		secumod: security-module@e0004000 {
> +			compatible = "microchip,sama7d65-secumod", "atmel,sama5d2-secumod", "syscon";
> +			reg = <0xe0004000 0x4000>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +		};
> +

These should have be before sfrbu for keeping nodes soted by their address.
I'll adjust while applying.

Thank you,
Claudiu


