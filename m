Return-Path: <devicetree+bounces-28837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A186481F8EA
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 14:50:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 655F5283B68
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 13:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 651008485;
	Thu, 28 Dec 2023 13:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="t0VBB2Vm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92728D279
	for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 13:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A5D473F744
	for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 13:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1703771396;
	bh=g2vyKn++4yvglINkEI7SotQQ04RejW9YFQLdk8yapwk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=t0VBB2Vm3gCz6Ouik6M/gi8v7aeWtZ+sJoEAiLfPUqAO5psgm+bUJNKnjmI+g4rO9
	 Q2wxYdO0KMsldWswQJYmxvmW1PGz++GVAY8TM2UrD/XPYfV65X1men9qHismF/4DEY
	 r7q58J5h98neSgu0ay2kOg8ywBRqPBjkm4lskXSokkD0cnzYkTPSYS9g9fR5y8wYTb
	 DABIjXoJrU4jsrmyhBXe7w1232lkJl46xsyPB1uGaZvWPXglROYzIszrA6Xq6qsq51
	 qHp/Sebg9wch3ntlB3Hnc9uD+pkrrMmCx30cBldb26yWxGN8WZeUE7qaaZ0zsI8h6o
	 xT3WX28wu2SqA==
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-6dbb687d500so5660714a34.0
        for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 05:49:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703771395; x=1704376195;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g2vyKn++4yvglINkEI7SotQQ04RejW9YFQLdk8yapwk=;
        b=telNkIGxIqC6tyV0IKdpVW82BNF9iozR3WTtF0v+ep/DQAdEkOFo+54dSsnL0GamvJ
         WISgYO2xqOfu+vRKFG5YMPnO6Vrw9rlPLg2oTqa3YWpJLC5o7lraiHU4kF8o3P6pTlMr
         nX3TVwdt+6MBEtlVzqwerjwtWgsTGiGFFAqhvlmiPJPv0KwemR56pMR6VumhTLThUo4n
         dUPG69/plO7PIX6nYSo3erItrLXT2Cu6rTxRWm1xHV23gMOqjj+T7URtNNpw/14nIgPs
         Z+TsLg7sXYmV16JDQR8ifc79ykU/yaL2DQRgHxfuCIVYUGqK3sy6Zb/UwRrdVYgVctmD
         u6mg==
X-Gm-Message-State: AOJu0Yz5xZXsStWbuQZGA2gJ1FHVGl4RjNvMzr42kLkUkVKdSajHghK7
	TuP4MOO7HzTHQqUlYNUlBTifhIpBm7dWyB0B4abHDhjh8noUNUauWOICjx1FoawLbiQHybVUVsa
	3xVheGSfELzWpSNUgHzlm69cUT0zLG50fN+jkaYeWC7L/19sW/+Qi+6ume3tuew==
X-Received: by 2002:a05:6830:1e05:b0:6db:a4f2:3328 with SMTP id s5-20020a0568301e0500b006dba4f23328mr4785925otr.16.1703771395109;
        Thu, 28 Dec 2023 05:49:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGmrzqKoMS+hVN2Nyl55A4PbsNFXOgPVNBuQh84okXul/5vlojVmzD/GTwGmPHv0MgZC6sYXb3cX9ln7SZGFNI=
X-Received: by 2002:a05:6830:1e05:b0:6db:a4f2:3328 with SMTP id
 s5-20020a0568301e0500b006dba4f23328mr4785918otr.16.1703771394872; Thu, 28 Dec
 2023 05:49:54 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 28 Dec 2023 07:49:54 -0600
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <DM6PR20MB23160B8499CC2BFDAE6FCACDAB9EA@DM6PR20MB2316.namprd20.prod.outlook.com>
References: <DM6PR20MB23160B8499CC2BFDAE6FCACDAB9EA@DM6PR20MB2316.namprd20.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 28 Dec 2023 07:49:54 -0600
Message-ID: <CAJM55Z-6qn2BQRrdAXnmbCzNLrEjV-cNRsvhL7C=9Hbaga5WsQ@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: sophgo: add watchdog dt node for CV1800
To: AnnanLiu <annan.liu.xdu@outlook.com>, chao.wei@sophgo.com, 
	unicorn_wang@outlook.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

AnnanLiu wrote:
> Add the watchdog device tree node to cv1800 SoC.
> This patch depends on the clk driver and reset driver.
> Clk driver link:
> https://lore.kernel.org/all/IA1PR20MB49539CDAD9A268CBF6CA184BBB9FA@IA1PR20MB4953.namprd20.prod.outlook.com/
> Reset driver link:
> https://lore.kernel.org/all/20231113005503.2423-1-jszhang@kernel.org/
>
> Signed-off-by: AnnanLiu <annan.liu.xdu@outlook.com>
> ---
>  arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts |  4 ++++
>  arch/riscv/boot/dts/sophgo/cv1800b.dtsi          | 15 +++++++++++++++
>  2 files changed, 19 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts b/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
> index 3af9e34b3bc7..f3103de4a8cc 100644
> --- a/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
> +++ b/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
> @@ -36,3 +36,7 @@ &osc {
>  &uart0 {
>  	status = "okay";
>  };
> +
> +&watchdog0 {
> +	status = "okay";
> +};

You don't set status = "disabled" in the cv1800b.dtsi so you shouldn't need to
enable it explicitly here.

> diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> index aec6401a467b..a0a6b6fc6bc5 100644
> --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: (GPL-2.0 OR MIT)
>  /*
>   * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> + * Copyright (C) 2023 Annan Liu <annan.liu.xdu@outlook.com>
>   */
>
>  #include <dt-bindings/interrupt-controller/irq.h>
> @@ -103,6 +104,20 @@ uart4: serial@41c0000 {
>  			status = "disabled";
>  		};
>
> +		watchdog0: watchdog@3010000{
> +			compatible = "snps,dw-wdt";
> +			reg = <0x3010000 0x100>;
> +			interrupts = <58 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&pclk>;
> +			resets = <&rst RST_WDT>;
> +		};

Are there more than 1 watchdogs on the SoC? Otherwise there should be no reason
to call this "watchdog0".

> +
> +		pclk: pclk {
> +			#clock-cells = <0>;
> +			compatible = "fixed-clock";
> +			clock-frequency = <25000000>;
> +		};
> +
>  		plic: interrupt-controller@70000000 {
>  			compatible = "sophgo,cv1800b-plic", "thead,c900-plic";
>  			reg = <0x70000000 0x4000000>;
> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

