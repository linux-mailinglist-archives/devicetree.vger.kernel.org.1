Return-Path: <devicetree+bounces-7873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 391297C5DA4
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 21:30:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A9611C20A7D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 19:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3112112E74;
	Wed, 11 Oct 2023 19:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="b92dQYTS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1252812E63
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 19:29:53 +0000 (UTC)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31F648F
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 12:29:52 -0700 (PDT)
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 5C9423F63D
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 19:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1697052586;
	bh=c9L/gsOrW6x7KgEWB0KPDKoh+ZY2YJ1yGC5weBaF9Kg=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Content-Type;
	b=b92dQYTSZp0at8d5TL38lQtCwPoPE1EDOWTH5QGlnwfxq8MUgfZjqgnHBKfWm7Knf
	 baXpK+lXWCf9HuYE2ohF1iak42WTUY/0Ar21MTMzMZcLs3SdSm1HoO69xxFAaNuQmN
	 uJeGisidho2moWq9j6Ash3HyrrFQGY0lJ2+mCX6LL43Pxez8vVRDBquggFIbtGVA2W
	 e1R4xX9mflSPLszN+85FWG0RiZzkMcWZGnY7VqYckRxZHpAalMZVfK7nrzV7mEGwH9
	 dogLDEJwwxVM0CDf+Sp1R+nHPfztByxOv2CeGjYlKfkkFm7T+RTNOhZwIT8C/btRgM
	 mtjqF8Klc7lvg==
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-6c660a0f0e8so275289a34.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 12:29:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697052585; x=1697657385;
        h=to:subject:message-id:date:mime-version:references:in-reply-to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c9L/gsOrW6x7KgEWB0KPDKoh+ZY2YJ1yGC5weBaF9Kg=;
        b=DMDUFQDyz5PfHmMHoQt0eRCeovCQ+jFAXzCVO23YvZgoUucHqLKa0dEmZXK21KioZd
         wLZ4eqPPoyMbdcOEkEeYwguLlLpItuzSBKrhZbZUqs0lSyatLIJVh8i7lHFxC7nQ65wv
         Du9uvCb/CvB+PXvrzJyQUzY8kp2SCvTRpkzpuWuFZI8252ODnJsFpRN9RAvU1Ul477SC
         RxVgdro6C7WBfYEgtV1tCtEANge0NNWawGWWu/4xIMq1u9Autya9wRYwlypIwdNGp957
         XNukLU1oC3FQU6ut5Uhx/vghNjC7STZ5AwAw9ZLeZbcOlULzHmr6srocFt39+IEzEaqx
         xG0A==
X-Gm-Message-State: AOJu0YyoXjFfzGukJuvVNjqTDv8pylipesDps2ae7PphT9NTpJ7kUOJx
	A0N0U8tL9gMoci3G81Ars7jgiu0YOBi5/j5udi4xRkSsKxnR5m4R/pk/XvhD+pesTxFvw84qbw2
	gMWgElDI5effzOq+yzRdTxhJcB+oLGjmuyDiQC0PFef8q8+0nUuHcgFo=
X-Received: by 2002:a05:6830:12d0:b0:6b9:8357:6150 with SMTP id a16-20020a05683012d000b006b983576150mr22651238otq.35.1697052585229;
        Wed, 11 Oct 2023 12:29:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCniG85JTchLTim5ooetQCv6XtCN2Hfw918Yim3tDO0dhAQSPYJeSPxd+7rlU/R7/wacdjyqykDfsDX6EHHOA=
X-Received: by 2002:a05:6830:12d0:b0:6b9:8357:6150 with SMTP id
 a16-20020a05683012d000b006b983576150mr22651223otq.35.1697052585025; Wed, 11
 Oct 2023 12:29:45 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 11 Oct 2023 12:29:44 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231011161414.L6wXZVDb@linutronix.de>
References: <20231011161414.L6wXZVDb@linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 11 Oct 2023 12:29:44 -0700
Message-ID: <CAJM55Z-YoJnZi4CrwD66v1TaJoYz1jbX+QOFXUDjhm5C9tST0w@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: starfive: visionfive 2: correct spi's ss pin
To: Nam Cao <namcao@linuxtronix.de>, kernel@esmil.dk, conor@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	william.qiu@starfivetech.com, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Nam Cao wrote:
> The ss pin of spi0 is the same as sck pin. According to the
> visionfive 2 documentation, it should be pin 49 instead of 48.

Thanks! As far as I can tell this should make the 40pin header match the
Raspberry Pi layout, so

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

>
> Fixes: 74fb20c8f05d ("riscv: dts: starfive: Add spi node and pins configuration")
> Signed-off-by: Nam Cao <namcao@linuxtronix.de>
> ---
>  arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index 12ebe9792356..2c02358abd71 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -431,7 +431,7 @@ GPOEN_ENABLE,
>  		};
>
>  		ss-pins {
> -			pinmux = <GPIOMUX(48, GPOUT_SYS_SPI0_FSS,
> +			pinmux = <GPIOMUX(49, GPOUT_SYS_SPI0_FSS,
>  					      GPOEN_ENABLE,
>  					      GPI_SYS_SPI0_FSS)>;
>  			bias-disable;
> --
> 2.39.2
>

