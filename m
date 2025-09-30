Return-Path: <devicetree+bounces-222834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2774CBAE230
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 19:08:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D433F3C0B61
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 17:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D045130AD1F;
	Tue, 30 Sep 2025 17:08:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A660F1B142D
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 17:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759252083; cv=none; b=eLNuS1T/YgVojqXlGdiaiCRli8tgKsg0Q3bzSS4KT603ShGWppKpvzqKO/xNh1+2i5kwQehFKVNU0xtdaY9Uh3BB1TKxLtaigbSndNiS2RjKc1vkWZTYVOYXfF05QX7bke2a7yEuTmBBrXwWh9CJN5ViViNxJ/ngh7ahCuAZVn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759252083; c=relaxed/simple;
	bh=mtP+NQ+ubBB2KD6NiDsu/L2uuOD0QdKYw0OQB1pbNmA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F6lrRt7hOnR22uXoSOTamZH++SLqXUHW3jS7RJZyUQ9o5Gz8EeF+BIgzVbvvaLDt51SXm+3dg2uvkldT3Mhr6USo6rHxAM6TzukqDo76nIAV7NIMPS8ys/Ly/q+efowSDCn43cvz3/amKPrt+VP+bKzjpoqQ7SLBELgD7M6C5Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-54a80b26f88so2510188e0c.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 10:08:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759252079; x=1759856879;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2UldwRtCYqtIMyzHUgGGSi2dCQvDGYWicTSQaZYgBsI=;
        b=s7BFjepdZCoP+KcSnMs4rjiLewY92XTqUQ/fy0GgM6dFqZY3zz6ynGjSVss7U9u9z9
         hvGlsTgy44yozrOYqQD5mYy85TENwq3BltUHP0Veyl1Cz7GQBXCUtO86xs9ni9ERu6TQ
         LjjIhxEr6xEFQeR3OW6J7fyp9IbhjkydsuT7CCMKR+BUHdCae3Nw7K5Rh1uttQy0BooN
         F7ewtSL6+erLcn/BYvs6kNQB+s3GTA8xddbcJ0Ka0KCz68Of5afYvir3BsAUQw+Tu+jS
         9jdWmsyDOp+zPaNkp1JK5PC7swzT9Wz8rWisrdgH6cLBotCRqgzK08t6/6VgDSOk3diF
         gi4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUcJGRwinItgo55Gsk3ZQEetj0cYpBALrk3xaDU1zJTXfacGEJQiIIGnUXD55L/+GDacK3mphHcEirS@vger.kernel.org
X-Gm-Message-State: AOJu0YzaTbD2mYhiDgyHcse7hPTmVcy6j2WLSgFW1lhj1U6tp3AB40cs
	WcM8IWd90gif4bDknhD/YKC78i5Ie7AslbMc8v0bN22TOW8hEx2m4XRcOQCKz1OF
X-Gm-Gg: ASbGnctEh5XL/peK5e7JgmOcTRY/anA0dVOP4q7PHcb8nMvHlPGWeGi/iI/6YhjOayK
	oFPuc69epk0hAEjD9fLSpo2MYzW6OBxN+1GgJzr83jcdaQRSRh2k1VLEfbRKhkgTuJ6427cHw69
	xN75qPM/gdWKfXPRjCjQwSLpPlggLBbVyQgASQcLVIMnR188nMSLNUVk10pvnHPbrlPiYLmDHe2
	F7j7nM80T7XG9lIpwUib3eHu1FES9Jt+im+YJfRnAbe/DSQFcIQLv7a3ueAqW3rz419j0wckjf0
	ElsGGK8FGQ50HsNKMOhEx4U/bcUrinmm582Ff2Vqmd2PC0Moz0QSVLX7gAJGUXlYaJn+z4sE3p5
	hnKDnz1vIqaj17RJiJOiJ6ZX/o7PFhbIQgqKSvLvUSeQIGNS/fmGfP8m8z01sbnprG+y6G58JbY
	TA3nPrqBWR
X-Google-Smtp-Source: AGHT+IH4u90CsDOJppoddoSdKvMyjbQA1B/XCpZy2uNF/By30Q9QzFwsx2mOxLJpI/EOUzoX5u8kfg==
X-Received: by 2002:a05:6122:d94:b0:541:fdc4:2551 with SMTP id 71dfb90a1353d-5522d25947amr194477e0c.3.1759252078936;
        Tue, 30 Sep 2025 10:07:58 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54bf7ecbdc4sm2830330e0c.6.2025.09.30.10.07.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 10:07:58 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5ccccc1f7caso1081091137.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 10:07:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXMfNqVAccLUn1hgdDdUe2mDvtWNf/5cGDCS2ISsxB/wV8mFFAOt6cHxgVqZ/QvQT7F3lR+tkn19uRY@vger.kernel.org
X-Received: by 2002:a05:6102:161e:b0:5b9:ee05:dfff with SMTP id
 ada2fe7eead31-5d3fe6af95dmr165339137.23.1759252077947; Tue, 30 Sep 2025
 10:07:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250721173741.6369-1-bruno.thomsen@gmail.com>
In-Reply-To: <20250721173741.6369-1-bruno.thomsen@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Sep 2025 19:07:46 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUb7Jb2=GqK3=Rn+Gv5G9KogcQieqDvjDCkJA4zyX4VcA@mail.gmail.com>
X-Gm-Features: AS18NWDVvdSwN0uw_XPlk-OYICeK8kZm9oSwW7ZF3dGIkCYLyqPBpxL42XEEWf8
Message-ID: <CAMuHMdUb7Jb2=GqK3=Rn+Gv5G9KogcQieqDvjDCkJA4zyX4VcA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: am33xx-l4: fix UART compatible
To: Bruno Thomsen <bruno.thomsen@gmail.com>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
	Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kevin Hilman <khilman@baylibre.com>, Judith Mendez <jm@ti.com>
Content-Type: text/plain; charset="UTF-8"

Hi Bruno,

On Mon, 21 Jul 2025 at 19:38, Bruno Thomsen <bruno.thomsen@gmail.com> wrote:
> Fixes the following dtschema check warning:
>
> serial@0 (ti,am3352-uart): compatible: 'oneOf' conditional failed, one must be fixed:
>         ['ti,am3352-uart', 'ti,omap3-uart'] is too long
>         'ti,am3352-uart' is not one of ['ti,am64-uart', 'ti,j721e-uart']
>         'ti,am654-uart' was expected
>         from schema $id: http://devicetree.org/schemas/serial/8250_omap.yaml#
>
> Signed-off-by: Bruno Thomsen <bruno.thomsen@gmail.com>

Thanks for your patch, which is now commit ca8be8fc2c306efb ("ARM:
dts: am33xx-l4: fix UART compatible") in soc/for-next.

This commit broke the serial console on BeagleBone Black.
Upon closer look, my .config had CONFIG_SERIAL_OMAP (for
"ti,omap3-uart") enabled instead of CONFIG_SERIAL_8250_OMAP (for
"ti,am3352-uart").  However, replacing CONFIG_SERIAL_OMAP by
CONFIG_SERIAL_8250_OMAP does not help: the serial driver now probes,
but I still get no output nor a login prompt.

The same issue is present when using omap2plus_defconfig, which has
both serial options enabled.

> --- a/arch/arm/boot/dts/ti/omap/am33xx-l4.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/am33xx-l4.dtsi
> @@ -200,7 +200,7 @@ SYSC_OMAP2_SOFTRESET |
>                         ranges = <0x0 0x9000 0x1000>;
>
>                         uart0: serial@0 {
> -                               compatible = "ti,am3352-uart", "ti,omap3-uart";
> +                               compatible = "ti,am3352-uart";
>                                 clock-frequency = <48000000>;
>                                 reg = <0x0 0x1000>;
>                                 interrupts = <72>;
> @@ -1108,7 +1108,7 @@ SYSC_OMAP2_SOFTRESET |
>                         ranges = <0x0 0x22000 0x1000>;
>
>                         uart1: serial@0 {
> -                               compatible = "ti,am3352-uart", "ti,omap3-uart";
> +                               compatible = "ti,am3352-uart";
>                                 clock-frequency = <48000000>;
>                                 reg = <0x0 0x1000>;
>                                 interrupts = <73>;
> @@ -1139,7 +1139,7 @@ SYSC_OMAP2_SOFTRESET |
>                         ranges = <0x0 0x24000 0x1000>;
>
>                         uart2: serial@0 {
> -                               compatible = "ti,am3352-uart", "ti,omap3-uart";
> +                               compatible = "ti,am3352-uart";
>                                 clock-frequency = <48000000>;
>                                 reg = <0x0 0x1000>;
>                                 interrupts = <74>;
> @@ -1770,7 +1770,7 @@ SYSC_OMAP2_SOFTRESET |
>                         ranges = <0x0 0xa6000 0x1000>;
>
>                         uart3: serial@0 {
> -                               compatible = "ti,am3352-uart", "ti,omap3-uart";
> +                               compatible = "ti,am3352-uart";
>                                 clock-frequency = <48000000>;
>                                 reg = <0x0 0x1000>;
>                                 interrupts = <44>;
> @@ -1799,7 +1799,7 @@ SYSC_OMAP2_SOFTRESET |
>                         ranges = <0x0 0xa8000 0x1000>;
>
>                         uart4: serial@0 {
> -                               compatible = "ti,am3352-uart", "ti,omap3-uart";
> +                               compatible = "ti,am3352-uart";
>                                 clock-frequency = <48000000>;
>                                 reg = <0x0 0x1000>;
>                                 interrupts = <45>;
> @@ -1828,7 +1828,7 @@ SYSC_OMAP2_SOFTRESET |
>                         ranges = <0x0 0xaa000 0x1000>;
>
>                         uart5: serial@0 {
> -                               compatible = "ti,am3352-uart", "ti,omap3-uart";
> +                               compatible = "ti,am3352-uart";
>                                 clock-frequency = <48000000>;
>                                 reg = <0x0 0x1000>;
>                                 interrupts = <46>;

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

