Return-Path: <devicetree+bounces-18990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C16977F9576
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 22:15:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2AD11C2040D
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 21:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DE0F12E78;
	Sun, 26 Nov 2023 21:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="e3qWUy6J"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A39CFB
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 13:15:27 -0800 (PST)
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C2DA13F193
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 21:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701033325;
	bh=X6K8bPWubM7CP2uBLEzKZ5K58KMm2j9nc1xapYlq3qo=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=e3qWUy6Jw9I1ZN9WXlbBUa7M8R7K04o8hUk8zTkB+92tx6j1VsuCCW/k8juMlLkGT
	 ybq76CIi1OZL0wpV05vEOs9oTm8i+pNaN0wXCrJdPz7DPjp+qmcANwM7PGc/TxRhYy
	 1NzIOuGEK/YuEaUSNw+2oEXwiL/tUq6YxyBeWNhtLQfLyFvD7aUhvKtSHzYy2WD0pl
	 2NstU35tCzI1aL3Gcnyel9BagnAoXm1iddAIw8VJAf2fBz23EuSEL5xjfyhus8XeFL
	 9QCqah2e5M4QrXVYpfP30YWiNMh9QoATLGN49wrau7CyzNvatdzGoRunbEWkP8rmjW
	 XZCyQnXM9BuIw==
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-6cd8b5b2d04so826913b3a.0
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 13:15:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701033324; x=1701638124;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X6K8bPWubM7CP2uBLEzKZ5K58KMm2j9nc1xapYlq3qo=;
        b=ZfYC/Fcazu4mONyNY2i8oM0rJD2buyKigO1lmnIzEXRfJsWN/3+ejflS+rP6fXloDE
         7KxfSpFvz+d9kdT6zc4p7DuxieMcV2pb4IANdRygOTWBq3/JFu3+SN/59B4YBPMwMpUg
         IOlJL8iPgnWlPNzsQ3X3TgPPtXM1WuJ8edo8IHZGcDWn4AhSXCvNEKb2C2HWSJp9Qg9/
         QBdj3t1ftVLM/uk6VH9ZRsTRAt4QrXP5wMsWeRfd0E94sTpzUyymAnzRNNNcjOVQ1mbH
         ZayC/sqrsKssOxTDHKnIPyxcAboN1ZWP94oRrI7OnmPmU/UmLZVaj+j3gBVkTMZRm6sF
         EPdQ==
X-Gm-Message-State: AOJu0YxUqMF+lUUV+JNVOQg04x5y6amOJENV8m077AQNRf+tuwNfHRt+
	EqX/qbBkSfMi4feIbjDJ6XRL+Nx0HoxyItenn2IFfr8YREVd8qLqo1J/XLXf+iKUznR2OGb92VI
	O9OniBGz+BVjd4wfJ6KhcoEEhTDSegZ0w+26fvmTT9ckZAbPtc23o82Q=
X-Received: by 2002:a05:622a:4d1:b0:423:93ce:56a8 with SMTP id q17-20020a05622a04d100b0042393ce56a8mr9480174qtx.37.1701033303344;
        Sun, 26 Nov 2023 13:15:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGvOe1/VcODkUu33j/9j5dbJoi16WUGuqQQy1j3aYZEMCOFUmi43jYGiMI7L4+bD3DEsgAlRyl8uU3g9zCAnrU=
X-Received: by 2002:a05:622a:4d1:b0:423:93ce:56a8 with SMTP id
 q17-20020a05622a04d100b0042393ce56a8mr9480140qtx.37.1701033303037; Sun, 26
 Nov 2023 13:15:03 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 26 Nov 2023 22:15:02 +0100
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231029042712.520010-10-cristian.ciocaltea@collabora.com>
References: <20231029042712.520010-1-cristian.ciocaltea@collabora.com> <20231029042712.520010-10-cristian.ciocaltea@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sun, 26 Nov 2023 22:15:02 +0100
Message-ID: <CAJM55Z-1ibownJG-pEuUx5VvPfnuV0+kT-6Fo3VnVs2YycNEEg@mail.gmail.com>
Subject: Re: [PATCH v2 09/12] riscv: dts: starfive: jh7100: Add sysmain and
 gmac DT nodes
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Samin Guo <samin.guo@starfivetech.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Richard Cochran <richardcochran@gmail.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

Cristian Ciocaltea wrote:
> Provide the sysmain and gmac DT nodes supporting the DWMAC found on the
> StarFive JH7100 SoC.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  arch/riscv/boot/dts/starfive/jh7100.dtsi | 36 ++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
> index a8a5bb00b0d8..e8228e96d350 100644
> --- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
> @@ -179,6 +179,37 @@ plic: interrupt-controller@c000000 {
>  			riscv,ndev = <133>;
>  		};
>
> +		gmac: ethernet@10020000 {
> +			compatible = "starfive,jh7100-dwmac", "snps,dwmac";
> +			reg = <0x0 0x10020000 0x0 0x10000>;
> +			clocks = <&clkgen JH7100_CLK_GMAC_ROOT_DIV>,
> +				 <&clkgen JH7100_CLK_GMAC_AHB>,
> +				 <&clkgen JH7100_CLK_GMAC_PTP_REF>,
> +				 <&clkgen JH7100_CLK_GMAC_TX_INV>,
> +				 <&clkgen JH7100_CLK_GMAC_GTX>;
> +			clock-names = "stmmaceth", "pclk", "ptp_ref", "tx", "gtx";
> +			resets = <&rstgen JH7100_RSTN_GMAC_AHB>;
> +			reset-names = "ahb";
> +			interrupts = <6>, <7>;
> +			interrupt-names = "macirq", "eth_wake_irq";
> +			max-frame-size = <9000>;
> +			snps,multicast-filter-bins = <32>;
> +			snps,perfect-filter-entries = <128>;
> +			starfive,syscon = <&sysmain 0x70 0>;
> +			rx-fifo-depth = <32768>;
> +			tx-fifo-depth = <16384>;
> +			snps,axi-config = <&stmmac_axi_setup>;
> +			snps,fixed-burst;
> +			snps,force_thresh_dma_mode;
> +			status = "disabled";
> +
> +			stmmac_axi_setup: stmmac-axi-config {
> +				snps,wr_osr_lmt = <0xf>;
> +				snps,rd_osr_lmt = <0xf>;

As I also noted on the JH7110 patches these are not addresses or offsets but
limits eg. counting things, which makes a lot more sense in decimal for most
humans. But here you've changed them back to 0xf, why?

> +				snps,blen = <256 128 64 32 0 0 0>;
> +			};
> +		};
> +
>  		clkgen: clock-controller@11800000 {
>  			compatible = "starfive,jh7100-clkgen";
>  			reg = <0x0 0x11800000 0x0 0x10000>;
> @@ -193,6 +224,11 @@ rstgen: reset-controller@11840000 {
>  			#reset-cells = <1>;
>  		};
>
> +		sysmain: syscon@11850000 {
> +			compatible = "starfive,jh7100-sysmain", "syscon";
> +			reg = <0x0 0x11850000 0x0 0x10000>;
> +		};
> +
>  		i2c0: i2c@118b0000 {
>  			compatible = "snps,designware-i2c";
>  			reg = <0x0 0x118b0000 0x0 0x10000>;
> --
> 2.42.0
>

