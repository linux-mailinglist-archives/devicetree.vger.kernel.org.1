Return-Path: <devicetree+bounces-21868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CED2480569D
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 14:57:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89692281C67
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 13:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A83AE5E0DF;
	Tue,  5 Dec 2023 13:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="a6lbRkIL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0801218B
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 05:56:58 -0800 (PST)
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2C52240185
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 13:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701784616;
	bh=IiRXF4n/93v5Ug5hjoOSvZlervZ246QbgRyu0qVcQa4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=a6lbRkIL85HyTMX4ah6v0+WPNEH3DSlKOsftq1C6xOd/L0WlHBqYFUODkzGXSwAwt
	 YUO8Spt8L2B1mDPdB6I/Y+O37F4e77gZH1jJObr1n9gSOSCM5QaTjpFLpNtQG0jYiV
	 rD7YbPbF9jFV8z7c9EArC03TIZa+fBK+hniQUq3hRkHGs4i8V6/u0SsJwlebOieIak
	 yzLyz/7dhD+IvneyfrpgnqvvvKHW3u4ZwdL6sITFv0bmn8kq9lCnRcE+MuWv0zFHzn
	 Y8p0whDNI+jWVKTwkllYiWbBWtbl4WUWX1DZ/X2SnkDQyL1E4dM/1z1zXhSZg93kps
	 6EbaF7+803gpA==
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-67ac4104c84so29418116d6.3
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 05:56:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701784615; x=1702389415;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IiRXF4n/93v5Ug5hjoOSvZlervZ246QbgRyu0qVcQa4=;
        b=w7wBoebZTHEwHHasw4Jy1Z+cOsiSx+UYdh9Ioq68xo/qh4H5xPtP6okitniraenL/F
         NDkYUSkjfFUo2eDSqF2hL72q05/b41AiWvMLA4TRBxC38rprf8/b1zeIjdZGeSB2AKac
         iGRvDYRG04/40Slgz7wqdlj8c4RDEVp2gcmgVaoTrLIV79gtzYjsqBVvBshqshULNerz
         quUCpu3g9o+WqHHXH9iLfmR+mf/0x+ufL+X3oKk1BfH3ctzlx2YYOhtid+mFfZwIviMo
         OY+kOlmOTOidHo6aJlinxg/N6WLpu0t9+tERyrU/HrOcdDMwZi/jCFpubnsmixYrxwIe
         IFcQ==
X-Gm-Message-State: AOJu0Yx/frtT6Cw+JOUJPPLekU7MGMIFoucsw9kvLAG2ToxO5BvT2KBa
	QNi3ZSNRyPpcvhcezep2G0WER5I3W9GDt67q/I7L65orw2LyB676rfCib4yRxtoQq8Xac1BqWyj
	60up8/h5NtR0Kcn4uY2h7LVaFXVRD7PJaLmFn8ZR5ckGCupqtmDEj1LY=
X-Received: by 2002:ad4:4486:0:b0:67a:a721:f30f with SMTP id m6-20020ad44486000000b0067aa721f30fmr1465510qvt.79.1701784615269;
        Tue, 05 Dec 2023 05:56:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IErR1wXH/GabDZKXesdKBFPnJz7SeypeN/oGzxkp5WIwT9bEBYm1KaRkIO2O9CcQbAKZYRddKnzH6OnMewqq8I=
X-Received: by 2002:ad4:4486:0:b0:67a:a721:f30f with SMTP id
 m6-20020ad44486000000b0067aa721f30fmr1465497qvt.79.1701784615073; Tue, 05 Dec
 2023 05:56:55 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 5 Dec 2023 05:56:54 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <IA1PR20MB4953EBF14C9CA436760B2A58BB85A@IA1PR20MB4953.namprd20.prod.outlook.com>
References: <IA1PR20MB49532E1A3D8BA71FDBB444BCBB85A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <IA1PR20MB4953EBF14C9CA436760B2A58BB85A@IA1PR20MB4953.namprd20.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Tue, 5 Dec 2023 05:56:54 -0800
Message-ID: <CAJM55Z8DU_OPJOYqT28wtH9EGFj=y9VVPcawOnYjY=U75pt2vg@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] riscv: dts: sophgo: add uart clock for Sophgo
 CV1800 series SoC
To: Inochi Amaoto <inochiama@outlook.com>, Chao Wei <chao.wei@sophgo.com>, 
	Chen Wang <unicorn_wang@outlook.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Cc: Jisheng Zhang <jszhang@kernel.org>, qiujingbao.dlmu@gmail.com, dlan@gentoo.org, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Inochi Amaoto wrote:
> Add missing clocks of uart node for CV1800B and CV1812H.
>
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> ---
>  arch/riscv/boot/dts/sophgo/cv18xx.dtsi | 21 ++++++++++++++++-----
>  1 file changed, 16 insertions(+), 5 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/sophgo/cv18xx.dtsi b/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
> index c5642dd7cbbd..3f290a515011 100644
> --- a/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
> @@ -5,6 +5,7 @@
>   */
>
>  #include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/clock/sophgo,cv1800.h>
>
>  / {
>  	#address-cells = <1>;
> @@ -136,7 +137,9 @@ uart0: serial@4140000 {
>  			compatible = "snps,dw-apb-uart";
>  			reg = <0x04140000 0x100>;
>  			interrupts = <44 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&osc>;
> +			clock-frequency = <25000000>;
> +			clocks = <&clk CLK_UART0>, <&clk CLK_APB_UART0>;
> +			clock-names = "baudclk", "apb_pclk";
>  			reg-shift = <2>;
>  			reg-io-width = <4>;
>  			status = "disabled";

Hi Inochi,

When there is a proper "baudclk" defined the driver should get the rate
(frequency) from that and the manually defined clock-frequency should not be
needed.

/Emil

