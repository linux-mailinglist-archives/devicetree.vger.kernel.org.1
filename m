Return-Path: <devicetree+bounces-28836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E3481F8E7
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 14:47:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D80841F221B1
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 13:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9802A79E2;
	Thu, 28 Dec 2023 13:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="UBMQo3iD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591148485
	for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 13:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4F4423F2BE
	for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 13:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1703771252;
	bh=ySvaj6mw0Qby67JSUQdDPGBIJqoPeBsqjt50PA+TTJE=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=UBMQo3iDWyuHs5n0kxvvUwgFxnfW5SXM+UdQpPHHhvYWucDoVKVaSz4RsDadfwP9A
	 II/LJDf5lD2Z47HG8Yt+K0SOpBh4aIHPC5SPLZp6uA4IC3dGhwii8/fh3FXRaxq0Xh
	 xkEg+7UzF/dzX5HfTj1SjFiMRQ8ZJN3qZllPfKlCFvgFQG4xVtOuknYRr68wpdd3/y
	 6Qt5MxEAIA/11ObssiXMLXFB6du68NQqY8dWAdmpyyaHycH2UI+eDPiAxw4Gk9bfG/
	 ZsMZ0y4T0nXXBpR3ZHogqJPQvhcwD1b2G8AkJzmMAzu5FTe/PNaasl1He//g704UDj
	 jnEOE40CIPFMg==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-427d135277dso52243731cf.2
        for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 05:47:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703771251; x=1704376051;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ySvaj6mw0Qby67JSUQdDPGBIJqoPeBsqjt50PA+TTJE=;
        b=k229qj+IniCYuyly/LswSauG3Y/fy67cpNDmFxgg+vCkMtCrRPmKgdLV5TLdr4MU19
         9DxKooS+41Ua4khecaYsk5XQks283QXLgdKVOz+iykVOzqciMp8k7HI6DpaUyhqA6zvw
         jvnw7YV5vsMP1Fw/ZpVOGrnw8pyaKTTQs1mpnesUJfp0AQoHHjQHhdk0p7tJyh/pyjUw
         0/sCj0EV2luCuwnGmpsxivGRSqD0tz6g0ys6RYGRdZHqcXOeulcG0O6SLzsv5gRIpGCM
         ERBXugjf8BznE38cs+P4fBNdhUMAc9/VJnQekxSfBdEtqKmm/Dg2+Q2dKvkj5ZO16xXi
         j2yg==
X-Gm-Message-State: AOJu0Yz7gpb/t0IpahX9jz6VC0UvQTBhjcQPcpN82HbPKlQ2E0A4gzy6
	1SC/cGGN03e6GznNxR3ymrXgKmx8GlFugNmad9MKs79drSNVbhSdgQFfa0Ep+kQwDw+tNvDAtL2
	VGmxCjQRPj+hiNDqDlx9yjrr4+8pljdsLGar0giRTJMOgzNIZAR0gxo5WOk4tWQ==
X-Received: by 2002:ac8:5a11:0:b0:427:ea23:566c with SMTP id n17-20020ac85a11000000b00427ea23566cmr4660197qta.53.1703771251187;
        Thu, 28 Dec 2023 05:47:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEyx3Mt96pBkakbFbQ2PVMaveEYVuVTpgO5Pwq713rUQYJch5rOcZ0S/een08xtTDThCB2/KT3WiTW/UmItfNI=
X-Received: by 2002:ac8:5a11:0:b0:427:ea23:566c with SMTP id
 n17-20020ac85a11000000b00427ea23566cmr4660186qta.53.1703771250835; Thu, 28
 Dec 2023 05:47:30 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 28 Dec 2023 07:47:30 -0600
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <DM6PR20MB23167E08FCA546D6C1899CB1AB9EA@DM6PR20MB2316.namprd20.prod.outlook.com>
References: <DM6PR20MB23167E08FCA546D6C1899CB1AB9EA@DM6PR20MB2316.namprd20.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 28 Dec 2023 07:47:30 -0600
Message-ID: <CAJM55Z9M=h95d_BJnwV=A6LVK_EtuavMwjPAsyvDtF4wL6vgtg@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: sophgo: add timer dt node for CV1800
To: AnnanLiu <annan.liu.xdu@outlook.com>, chao.wei@sophgo.com, 
	unicorn_wang@outlook.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

AnnanLiu wrote:
> Add the timer device tree node to CV1800 SoC.
> This patch depends on the clk driver and reset driver.
> Clk driver link:
> https://lore.kernel.org/all/IA1PR20MB49539CDAD9A268CBF6CA184BBB9FA@IA1PR20MB4953.namprd20.prod.outlook.com/
> Reset driver link:
> https://lore.kernel.org/all/20231113005503.2423-1-jszhang@kernel.org/
>
> Signed-off-by: AnnanLiu <annan.liu.xdu@outlook.com>
> ---
>  arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 72 +++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> index aec6401a467b..34a1647cc51b 100644
> --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> @@ -113,6 +113,78 @@ plic: interrupt-controller@70000000 {
>  			riscv,ndev = <101>;
>  		};
>
> +		timer0: timer@030a0000 {
> +			compatible = "snps,dw-apb-timer";
> +			reg = <0x030a0000 0x14>;
> +			interrupts = <79 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&osc>;
> +			resets = <&rst RST_TIMER0>;
> +			status = "disabled";
> +		};

Why do all these timers need to be disabled? Usually peripherals like DMA and
internal temperature sensors etc. that don't need any support outside the chip
can just be left on.

> +
> +		timer1: timer@030a0014 {
> +			compatible = "snps,dw-apb-timer";
> +			reg = <0x030a0014 0x14>;
> +			interrupts = <80 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&osc>;
> +			resets = <&rst RST_TIMER1>;
> +			status = "disabled";
> +		};
> +
> +		timer2: timer@030a0028 {
> +			compatible = "snps,dw-apb-timer";
> +			reg = <0x030a0028 0x14>;
> +			interrupts = <81 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&osc>;
> +			resets = <&rst RST_TIMER2>;
> +			status = "disabled";
> +		};
> +
> +		timer3: timer@030a003c {
> +			compatible = "snps,dw-apb-timer";
> +			reg = <0x030a003c 0x14>;
> +			interrupts = <82 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&osc>;
> +			resets = <&rst RST_TIMER3>;
> +			status = "disabled";
> +		};
> +
> +		timer4: timer@030a0050 {
> +			compatible = "snps,dw-apb-timer";
> +			reg = <0x030a0050 0x14>;
> +			interrupts = <83 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&osc>;
> +			resets = <&rst RST_TIMER4>;
> +			status = "disabled";
> +		};
> +
> +		timer5: timer@30a0064 {
> +			compatible = "snps,dw-apb-timer";
> +			reg = <0x030a0064 0x14>;
> +			interrupts = <84 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&osc>;
> +			resets = <&rst RST_TIMER5>;
> +			status = "disabled";
> +		};
> +
> +		timer6: timer@030a0078 {
> +			compatible = "snps,dw-apb-timer";
> +			reg = <0x030a0078 0x14>;
> +			interrupts = <85 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&osc>;
> +			resets = <&rst RST_TIMER6>;
> +			status = "disabled";
> +		};
> +
> +		timer7: timer@030a008c {
> +			compatible = "snps,dw-apb-timer";
> +			reg = <0x030a008c 0x14>;
> +			interrupts = <86 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&osc>;
> +			resets = <&rst RST_TIMER7>;
> +			status = "disabled";
> +		};
> +
>  		clint: timer@74000000 {
>  			compatible = "sophgo,cv1800b-clint", "thead,c900-clint";
>  			reg = <0x74000000 0x10000>;
> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

