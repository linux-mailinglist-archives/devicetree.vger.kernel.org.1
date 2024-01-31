Return-Path: <devicetree+bounces-37313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE928446A9
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 19:00:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB34828BABA
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 18:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5604112FF73;
	Wed, 31 Jan 2024 18:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="IWdjMDy9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D33212BE8D
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 18:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706724020; cv=none; b=pOH9erHfEBmcGQC/4qnuRZS/XMLXqQOLAKFamQgg/Lfsi8hfNrmb4AQ/XIbSzAvKPRGGiwhplwXcWADEcswXGvnJoy7qvzOqt3NVztAscoKXF9NtUDRZSMcO6N9VGmz34y+pr33IEbs7xY1csVwQY/dWOBLu03Sl6Dyj+4GXsNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706724020; c=relaxed/simple;
	bh=U5EzarfsyESGeubI9ucS+cAOynfXAGhnlpb7Z9oz4Dw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nlkrRoWpfUdZV8ReElfl7XVUGyMyrfWbk7/dQxaIE82HP7ZCK2bUdxHPgKFca3AStwpFmsNoY90Ud/zyqEdYlDZar4YvPdIqUa7zNQ3KMUhSa9FoJF8SG4ibMsZ4+YhGLEH+jTMV7IgKvzsIq68gCisS3Cd0lYsAYaMCG9a+KXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=IWdjMDy9; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-51025cafb51so8083564e87.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 10:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1706724015; x=1707328815; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7xHmbIWGqIoVuD6lAxL4k5AZrQBLWlokPUBrkYZzxmg=;
        b=IWdjMDy9W+j+TrXdzzS9IYlrVsTioC3vFmLg9r6iIgms0+MeWQYThtqRKmIuGdSfSR
         T9M2yRecdT0DfJb5UOlgXGNNiCIGdobJbbovAkq5C5FFq4gTkr142OrCnfv9ey2r/Xkz
         IujiKVeSNFdxDMjSt5r7JXoPXB3wZhLnriYwTSetKw1pl1ZL4awfXFf18s9VERDIqtR8
         xbfjpsJZhzF9DUnF5ywncB97f3sJFF/gn3J75pAig2Twr6qTS4At6kooTCWvxmtIt+YQ
         5R8Pt7cKkIbSgRKkt7Ay9D9qwM7sz/HlscGDUe5nvwPaOmmmATg8PIvxj8O9NzU8Ixqm
         Gmsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706724015; x=1707328815;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7xHmbIWGqIoVuD6lAxL4k5AZrQBLWlokPUBrkYZzxmg=;
        b=hWfmOzxvxKTWTNHCJ2ZY8qMU9uVDaVHliBwl5Oi+5TTJdzTC5/zs7iKfBlJL0Nmd32
         bFVxwmOo8PoV7aw3iB6QeYRUP1PUFW8zC6ydQAsFCODAFcW34e2Iadxc37eDCcZ2s8+1
         flX02SFLEfAJ8OyVQxjm7L5sul0xyjzoXnx1YRMxAYbcarhxg0B2IApD11kQsG0hgTK6
         qsTOAXv7WC6fcqsc6Nd5CAecQxTFvETavCvvWWjJcmzZYwHHYU+a0yH374xVwj91RSRv
         /ChfrpkPH3UhF5QtSKNwsNOXQqGIPrqak+zs/1RwSXhAugYWdC8FF9Vg7TSEYdB4bfuM
         AzGw==
X-Gm-Message-State: AOJu0Yw2r7607TQ3k6obBdCDGE8RR/Jir+g9mY8MLcusyMxSJca8y+SJ
	4mhKan0cA4i1nWFH0cV7mlnbaWkLuxDmcK8ruVp0RbBprFdOyQcEHOKa5i0bvVi3ol4Ozfz21pi
	1
X-Google-Smtp-Source: AGHT+IHGLietxoCHuuQkdUL5rQ/BMoB23J5hE9XBedFQnFq68rnDPExN2ZpkktbZTn40WxMwCriA3w==
X-Received: by 2002:ac2:5201:0:b0:511:9d3:c608 with SMTP id a1-20020ac25201000000b0051109d3c608mr136720lfl.35.1706724015022;
        Wed, 31 Jan 2024 10:00:15 -0800 (PST)
Received: from localhost (h-46-59-36-113.A463.priv.bahnhof.se. [46.59.36.113])
        by smtp.gmail.com with ESMTPSA id bp40-20020a05651215a800b0051128d9c9dfsm200918lfb.181.2024.01.31.10.00.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 10:00:14 -0800 (PST)
Date: Wed, 31 Jan 2024 19:00:13 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: timer: renesas,tmu: Document input
 capture interrupt
Message-ID: <20240131180013.GE2544372@ragnatech.se>
References: <8cb38b5236213a467c6c0073f97ccc4bfd5a39ff.1706717378.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8cb38b5236213a467c6c0073f97ccc4bfd5a39ff.1706717378.git.geert+renesas@glider.be>

Hi Geert,

Thanks for your work.

On 2024-01-31 17:11:45 +0100, Geert Uytterhoeven wrote:
> Some Timer Unit (TMU) instances with 3 channels support a fourth
> interrupt: an input capture interrupt for the third channel.
> 
> While at it, document the meaning of the four interrupts, and add
> "interrupt-names" for clarity.
> 
> Update the example to match reality.
> 
> Inspired by a patch by Yoshinori Sato for SH.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>

> ---
> v2:
>   - Reword interrupt descriptions.
> 
> The corresponding DTS updates can be found in series "[PATCH 0/2]
> ARM/arm64: dts: renesas: Improve TMU interrupt descriptions".
> https://lore.kernel.org/r/cover.1705325654.git.geert+renesas@glider.be
> Once the DTS updates are upstream, "interrupt-names" can be made
> required.
> ---
>  .../devicetree/bindings/timer/renesas,tmu.yaml | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/timer/renesas,tmu.yaml b/Documentation/devicetree/bindings/timer/renesas,tmu.yaml
> index a67e427a9e7e22aa..84bbe15028a1de94 100644
> --- a/Documentation/devicetree/bindings/timer/renesas,tmu.yaml
> +++ b/Documentation/devicetree/bindings/timer/renesas,tmu.yaml
> @@ -46,7 +46,19 @@ properties:
>  
>    interrupts:
>      minItems: 2
> -    maxItems: 3
> +    items:
> +      - description: Underflow interrupt, channel 0
> +      - description: Underflow interrupt, channel 1
> +      - description: Underflow interrupt, channel 2
> +      - description: Input capture interrupt, channel 2
> +
> +  interrupt-names:
> +    minItems: 2
> +    items:
> +      - const: tuni0
> +      - const: tuni1
> +      - const: tuni2
> +      - const: ticpi2
>  
>    clocks:
>      maxItems: 1
> @@ -100,7 +112,9 @@ examples:
>              reg = <0xffd80000 0x30>;
>              interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
>                           <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
> -                         <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
> +                         <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
> +            interrupt-names = "tuni0", "tuni1", "tuni2", "ticpi2";
>              clocks = <&mstp0_clks R8A7779_CLK_TMU0>;
>              clock-names = "fck";
>              power-domains = <&sysc R8A7779_PD_ALWAYS_ON>;
> -- 
> 2.34.1
> 
> 

-- 
Kind Regards,
Niklas Söderlund

