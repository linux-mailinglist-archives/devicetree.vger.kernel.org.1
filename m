Return-Path: <devicetree+bounces-13219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C485F7DCF5E
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 15:41:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A7E41C20C6D
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 14:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4322C1A72E;
	Tue, 31 Oct 2023 14:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="cdJqw+7F"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8D71DDD9
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 14:41:11 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0316FC
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:41:09 -0700 (PDT)
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A8EB140821
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 14:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698763266;
	bh=bM2sMwP6Emxus/eSEbKlChfhnru0P5WYRen9BWIIMG8=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=cdJqw+7F4BJJHNBmmLz5kMT5dO1On/ytE7a0yVoddVv1nsBtK31Dgcz2bq9SbNEj1
	 FUOT8vpskbdehQa9CDFji+6ccdOrTMqRIespL0kUGNS/QaoRA38IUoMebk6kiTCYTQ
	 bcrdG5KJWI86TNHuGE1ZyGBlCzTxX1WgaG4/Cbd2TWqHJ6j2FpkT01QgZqnxd51EKW
	 bBenaYsFaLKGCrRwkDHG6j7BjfVKlB4UEaPDy4vG2Y8AYYaiaQIXhrEJr5z6daj0z3
	 a9Ra5KFEAo/HDlTOmLi7L5UeW20UQ16fEF9kIJF9f/OL3YNaEz6BldKaLQQILhAaqU
	 VdWqTat//nrrg==
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-1e9c2c00182so7535611fac.1
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:41:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698763257; x=1699368057;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bM2sMwP6Emxus/eSEbKlChfhnru0P5WYRen9BWIIMG8=;
        b=gWIzrhuaNAtajoMqfbkfkWUblhlJWM92qWMqce3Y0D1n9F2+svvNOBPr8/rWN5Xz0l
         j5OpZzL5XslLEKP7+BAtggafjUt2kjaYbqRdeMhZ8pBSfVdb0leHq1M6rRPiw9tGTwmV
         fh9NSo0WaxzvaWy5MveL3kjWLlqkmQmcI9E8Pg+LyG/gaPNmQrfeVQmrP/P3/EkfsozZ
         hDldwuiCsN/pjbFnRzWN5fyekvT5tehhgV8laxr1v4WBtFt/MypvgRHCU81poVLXB3Nn
         +H2YqDMX45G2ydOuz8YWVUpdliuuTpd8HfgXSwAGVCEkbp+TLKews6ARjs0FbWWmC1tb
         89Pg==
X-Gm-Message-State: AOJu0YwDjzqve8XMuaQD/guXPm4hsRn9amkBghWQ1kqBbVKb4pjRLg7P
	ETnG0b7bwn2OPLoBFAKBLNzenb/z1CC+nneA+fYhAk+1J3hAGbBi7SBAL+2S3W5fOEx77ZTzbu2
	Y+c1j0iBbKTJ+9QR4ZhOZ5nafT/TITu15u+I7n3iTJJ9fDtE0XeWUtWA=
X-Received: by 2002:a05:6870:1b16:b0:1ef:d51b:5f50 with SMTP id hl22-20020a0568701b1600b001efd51b5f50mr7603586oab.22.1698763257485;
        Tue, 31 Oct 2023 07:40:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFANyRAH1nXo4IUkrqN1HKuYxzfESQEmdy7ahALAdU7wdendE3vJG+CITZSdHBFI/mTHqrjKI5/+mlEUc3+Ggo=
X-Received: by 2002:a05:6870:1b16:b0:1ef:d51b:5f50 with SMTP id
 hl22-20020a0568701b1600b001efd51b5f50mr7603564oab.22.1698763257269; Tue, 31
 Oct 2023 07:40:57 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 31 Oct 2023 07:40:56 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231029042712.520010-9-cristian.ciocaltea@collabora.com>
References: <20231029042712.520010-1-cristian.ciocaltea@collabora.com> <20231029042712.520010-9-cristian.ciocaltea@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Tue, 31 Oct 2023 07:40:56 -0700
Message-ID: <CAJM55Z_2hdsvw8gdYLs2kZbRrH6xcM6+xCZn8BCf5zsWYyhY3w@mail.gmail.com>
Subject: Re: [PATCH v2 08/12] riscv: dts: starfive: Add pool for coherent DMA
 memory on JH7100 boards
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
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Content-Type: text/plain; charset="UTF-8"

Cristian Ciocaltea wrote:
> From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
>
> The StarFive JH7100 SoC has non-coherent device DMAs, but most drivers
> expect to be able to allocate coherent memory for DMA descriptors and
> such. However on the JH7100 DDR memory appears twice in the physical
> memory map, once cached and once uncached:
>
>   0x00_8000_0000 - 0x08_7fff_ffff : Off chip DDR memory, cached
>   0x10_0000_0000 - 0x17_ffff_ffff : Off chip DDR memory, uncached
>
> To use this uncached region we create a global DMA memory pool there and
> reserve the corresponding area in the cached region.
>
> However the uncached region is fully above the 32bit address limit, so add
> a dma-ranges map so the DMA address used for peripherals is still in the
> regular cached region below the limit.

Adding these nodes to the device tree won't actually do anything without
enabling CONFIG_DMA_GLOBAL_POOL as is done here:

https://github.com/esmil/linux/commit/e14ad9ff67fd51dcc76415d4cc7f3a30ffcba379

>
> Link: https://github.com/starfive-tech/JH7100_Docs/blob/main/JH7100%20Data%20Sheet%20V01.01.04-EN%20(4-21-2021).pdf
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../boot/dts/starfive/jh7100-common.dtsi      | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
> index b93ce351a90f..504c73f01f14 100644
> --- a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
> @@ -39,6 +39,30 @@ led-ack {
>  			label = "ack";
>  		};
>  	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		dma-reserved {
> +			reg = <0x0 0xfa000000 0x0 0x1000000>;
> +			no-map;
> +		};
> +
> +		linux,dma {
> +			compatible = "shared-dma-pool";
> +			reg = <0x10 0x7a000000 0x0 0x1000000>;
> +			no-map;
> +			linux,dma-default;
> +		};
> +	};
> +
> +	soc {
> +		dma-ranges = <0x00 0x80000000 0x00 0x80000000 0x00 0x7a000000>,
> +			     <0x00 0xfa000000 0x10 0x7a000000 0x00 0x01000000>,
> +			     <0x00 0xfb000000 0x00 0xfb000000 0x07 0x85000000>;
> +	};
>  };
>
>  &gpio {
> --
> 2.42.0
>

