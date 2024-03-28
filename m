Return-Path: <devicetree+bounces-54192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5638F88FE2C
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 12:35:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D612A1F278D8
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 11:35:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A20EC7E76D;
	Thu, 28 Mar 2024 11:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uGowiHBZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C727E577
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 11:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711625703; cv=none; b=fosqXIy9L4TdNXZ+1IhYJROaihMKJ73ao76SNu0RuIiSC7wVzzJw5ZMtQsHim2IFRcNL580t1yUDhzTOv3mqFokPAD6dr7sICWdauNM0QpJ6+mVWOSDdcOF1Cgg5c/g2ofRr5lfG5TM8zzLnQ5CtWnL14b+lTdMRuL8XFKl+JCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711625703; c=relaxed/simple;
	bh=A85NO3GuJGIEgVHxuKDR9DvSDks+EZA1nKTEWk8Lv4Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YGwOt6Yzv6QlR/rOObN5LWB2rZJ3aIU43K1hrfdCxLW5bb+NlORf11hck6/QqJzhalHo4GKqhDLc6/bvmrZxC/GwxB1ST4o2ui0InkXvD4RZzgqukn2Xfk2U8ebBllPOSwsH2+idb3N0/aOF5RUh5ISqyjlU2+tEpnq0xzXt1ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uGowiHBZ; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-609fd5fbe50so9083687b3.0
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 04:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711625700; x=1712230500; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uKdOl+ZPDpQ1XBpBggubYicwCcuMa2xVA3/erDfXR9E=;
        b=uGowiHBZFKJqWZ8qqhUTH32KfO2liJdQK30V2inCZgh6+wEANOMvDXYOZiXE9byxqx
         ieFot05qCCbrQg//UA0E81pU3dNHHFfrBt8pkxOp07CkY7K2x7VaD5/5UK5EFfVKm8mu
         hOHgLwvPJuUIIPszgDHzCU24R2ri4xTXwlL2zo335ZpypPCNs1lGe6nJsacU9bSHdzbF
         DJRG0xbAobACjk+Yeh7JHupcmr6Q4/tdom7JJsJxS5bSM36UhJLzo+hOyTHFAf5eHfor
         7bRytBKJFMdojyfQyjjNArwKrhJJvXOPYB6qCjgffY9sthqpQ/vJ810mWUpGMM89x02e
         HooQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711625700; x=1712230500;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uKdOl+ZPDpQ1XBpBggubYicwCcuMa2xVA3/erDfXR9E=;
        b=hcv8xystBLrmqajm2/UF8Fl5zAS/yHmJVDXg25rOvxpdOfMShS3QMA9QlbKBmBWywP
         4D7B+QryMnrKcCUtJLIPlByoTRaX8TbLuOTM1aGMx9Mo2gpKsYWNEc1X68d+SFotmA9l
         M/LXp4WNuL8sMtQmm76+m1Tf7aeRMjxYeMuow0wc0e1qvx6+0BPV721k1IBWQ89Cf9+r
         3csX1v0QJtcA+7VxUJIiINrZLAHX5epljg8+azxoXInMjapiVFLiStRnoiZXJZPM+gj0
         mW822AMea5P5MDVxzCszFSo6pkxurB10hcFKXrGn+cRy9bsFm2u3ih9ch1tNDjus0PMU
         4rrg==
X-Forwarded-Encrypted: i=1; AJvYcCXzP5OhQsKUzYAiSaoSrlhgV/NqCmuC6bpoQ98nNFPjaO54g8EIuzv+tPNkPnRna9x6UY+hH9hkv0Y5qiTIhep/2Xqwx2cZOV2xtg==
X-Gm-Message-State: AOJu0Ywyiq98iaXerOikpM3gDokD1+/zH1S3KEa7Vk/efJwTgy46aXgV
	/z2W2/sLQ7ZNANOUM9eQgyzXr5DcM2vfRa1mENa/pjWd5Jd4dS4jIQHqPS8nfHLhyBwGKySc/RE
	eQeUlrx/x9+Ej39/8UDVjIFsfeQTLGOfDEBNj4g==
X-Google-Smtp-Source: AGHT+IGnoGpPr3UcM4Apg1Tfk5iNCNNv25l96KvLbBz0pE2CnQ50PhdP+ephBw4Zs05Nr88aGxHSyFjgFN0/kXITE6w=
X-Received: by 2002:a25:680f:0:b0:dc7:4800:c758 with SMTP id
 d15-20020a25680f000000b00dc74800c758mr2595759ybc.10.1711625700140; Thu, 28
 Mar 2024 04:35:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240326103620.298298-1-tudor.ambarus@linaro.org> <20240326103620.298298-4-tudor.ambarus@linaro.org>
In-Reply-To: <20240326103620.298298-4-tudor.ambarus@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 28 Mar 2024 11:34:49 +0000
Message-ID: <CADrjBPq2xUpeLRNEsfa-R5wm4aVFr=joUuH1AtrixtAb9wWsig@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: exynos: gs101: join lines close to 80 chars
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, andre.draszik@linaro.org, 
	willmcvicker@google.com, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"

Hi Tudor,

On Tue, 26 Mar 2024 at 10:36, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
> These lines fit 81 characters, which is pretty close to 80.
> Join the lines.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

>  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> index cfb3ddc7f885..690deca37e4f 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> @@ -374,8 +374,7 @@ pinctrl_peric0: pinctrl@10840000 {
>                 };
>
>                 usi8: usi@109700c0 {
> -                       compatible = "google,gs101-usi",
> -                                    "samsung,exynos850-usi";
> +                       compatible = "google,gs101-usi", "samsung,exynos850-usi";
>                         reg = <0x109700c0 0x20>;
>                         ranges;
>                         #address-cells = <1>;
> @@ -403,8 +402,7 @@ hsi2c_8: i2c@10970000 {
>                 };
>
>                 usi_uart: usi@10a000c0 {
> -                       compatible = "google,gs101-usi",
> -                                    "samsung,exynos850-usi";
> +                       compatible = "google,gs101-usi", "samsung,exynos850-usi";
>                         reg = <0x10a000c0 0x20>;
>                         ranges;
>                         #address-cells = <1>;
> @@ -419,8 +417,7 @@ usi_uart: usi@10a000c0 {
>                         serial_0: serial@10a00000 {
>                                 compatible = "google,gs101-uart";
>                                 reg = <0x10a00000 0xc0>;
> -                               interrupts = <GIC_SPI 634
> -                                             IRQ_TYPE_LEVEL_HIGH 0>;
> +                               interrupts = <GIC_SPI 634 IRQ_TYPE_LEVEL_HIGH 0>;
>                                 clocks = <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_PCLK_0>,
>                                          <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_0>;
>                                 clock-names = "uart", "clk_uart_baud0";
> @@ -454,8 +451,7 @@ pinctrl_peric1: pinctrl@10c40000 {
>                 };
>
>                 usi12: usi@10d500c0 {
> -                       compatible = "google,gs101-usi",
> -                                    "samsung,exynos850-usi";
> +                       compatible = "google,gs101-usi", "samsung,exynos850-usi";
>                         reg = <0x10d500c0 0x20>;
>                         ranges;
>                         #address-cells = <1>;
> --
> 2.44.0.396.g6e790dbe36-goog
>

