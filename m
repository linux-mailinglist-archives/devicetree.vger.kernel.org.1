Return-Path: <devicetree+bounces-249168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 56453CD99F2
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:26:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7808300CBA8
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1F6F3321D8;
	Tue, 23 Dec 2025 14:25:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AA332E739
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 14:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766499937; cv=none; b=cVC9xtjbl6B7VCTAmL5dy1gCpSyURxWwnOMsMtJ8II64zVmMbb4fWIWcozz+fGIO6r0F3jFJK668NcRr9qY7INpZuUUKhchp1k7mqn7XEu2xVfRRecF8p0uTFEi0u88hwY1pTaxk+lvAJ41nKKiuLoK6vSYFERKyLP37GJnoJxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766499937; c=relaxed/simple;
	bh=p/yCjY8u171GpGGHaFI9kezO5mhBvA9uh3H/9co9+sA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T0ca9Gbd5wICB+ABsNAiHHoSvUYbOwyguHYOJBdw/cpWLf482FQjecrPokDPoNvk12EHXaaLKhfdW8hdEuVbyfv3CEbYmyM/UWAM6EeukwbZomUUXwPJaXhYXyeqYa0PBd84Sdk64AK/h0CwBnVgtv38NKdBQEjgW0fJKaH0yAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-55b0d4b560aso3909503e0c.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:25:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766499935; x=1767104735;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RIC0rikwFGHXRYQ21Y9JsVA9Qraw4AvBReoBxo8fio0=;
        b=hU/KJkwffF2c0z7ly1BlgXU8PCXLvwoyfPGdpyu/DwJFlwvVBS+5IK6+cBFgdx5OgA
         vMjNusntTxtZyrdJ68CNQ2bywcmiKzHiD9FmoVPsPqv3ddwiLKfXJHPS9iBl3YU19n0e
         z7eyHwnqyP/JNZJ6yK6k8LJltOuzL+CLKPeTEWKuD+JlYKrfjJmAHhfU3sp2OiElfkD/
         a75kgo8d3FNkuHKyOQyWmEG8ZykStwV961R2JwFQbXpuQJcx2C4BrdGEe0j2AMcBNnlj
         WwSI2/Ql6cBixjxWnOMmXkDdV/AMvRMdq5wTOcwsIejXTi40+vB5D3DpRRc3nLTL6GHv
         2BLg==
X-Forwarded-Encrypted: i=1; AJvYcCUjfvTcxqb3cIizlfOsxuFEh8uEOlWtKLm4yP/53ma0X++M2RepUivLtH8Qjll+Wd3u7lIpxQ0hX4YI@vger.kernel.org
X-Gm-Message-State: AOJu0Ywk+sf54ocoQl6CCEh3+/RvtPsjJbGVKS/ZXKC0K6TtLr+c5t9X
	HzoWVadnzd1GRrnWZpEAgzKVpjuLdxEQZ7mUW7cfnF0ExDUP7dUWxFqSr/n1yK9bQ3g=
X-Gm-Gg: AY/fxX5OgeD0YeqibSUG3Xm+tW6oz2KZdeWP3ireF3C3hNKGfNmh1/TkF8mcFcQ5yZo
	SVcq+TDSzukllN0Wa49UydtwTm3n58rjBHpQurzi9IBHsYpL8BfgaabKnOWGB+xMDi536Ih/FxD
	dH5LJr15jYJx7XznoIpgtni1M19Rh2zwIDCzuxBgP59oguONBtHZt9XWwFL5WEAgji0sLokqGKR
	IwmBVCKrfQnORrZDaQ7bMDA+dCocwvU8RUwecCAs+g/Xuy86qDa24UxHLZLhDE08RWhQmu/RKhI
	z3+rLLEt5X7sugCH7oMegQzFKC7rixrzz7QUO4kVHMME23BBsytkgkPGMOYDbKkdoWUhBIhcBpH
	h4lYgwA4ddZBeTQkBvLILv+TDUmR8m9zatDvSpPbfpyR7LIE2LhgQ579fGP2sQBqJ3ed52MJwea
	kspSZcdb1eZ4UFUs1PxHsOr9jCV0QDLx7jwXHHCn0aW+417+Rph0S6yBcn+PI=
X-Google-Smtp-Source: AGHT+IGRqVRxLT1nSdDUBau5LeKkLT+g2/og3ezc8m0kZWsSdDCSJmhluEgB2gLyw69k5d6uiyea2g==
X-Received: by 2002:a05:6102:4498:b0:5dd:c53b:75cc with SMTP id ada2fe7eead31-5eb186a7994mr5136352137.13.1766499934866;
        Tue, 23 Dec 2025 06:25:34 -0800 (PST)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5eb1aad0d1csm4441766137.7.2025.12.23.06.25.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 06:25:33 -0800 (PST)
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-93f63c8592cso4525279241.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:25:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXnGMSuXCRrIaju3vZe1+n9BgmD9i4NaV47zkafTMN4jkQCn8s0pvcfbRmlUxPzqomg5qCESsyrHGyV@vger.kernel.org
X-Received: by 2002:a05:6102:3f56:b0:584:7aa3:a329 with SMTP id
 ada2fe7eead31-5eb0237d7f4mr7071522137.4.1766499933176; Tue, 23 Dec 2025
 06:25:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201134229.600817-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251201134229.600817-14-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251201134229.600817-14-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 15:25:21 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUNmx=o4Vi=2o4BcBpkV6gjeOj9CEbbkYMtdVTOakhv0Q@mail.gmail.com>
X-Gm-Features: AQt7F2oCaB4_nkSocOGONFf0pCyIN-Ja9bMJ4xn0DqXAemYEO2QdHhg1pDxyWjU
Message-ID: <CAMuHMdUNmx=o4Vi=2o4BcBpkV6gjeOj9CEbbkYMtdVTOakhv0Q@mail.gmail.com>
Subject: Re: [PATCH 13/13] arm64: dts: renesas: r9a09g087: wire up DMA support
 for SPI
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-spi@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Mon, 1 Dec 2025 at 14:44, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> RZ/N2H (R9A09G087) has three DMA controllers that can be used by
> peripherals like SPI to offload data transfers from the CPU.
>
> Wire up the DMA channels for the SPI peripherals.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
> @@ -200,6 +200,8 @@ rspi0: spi@80007000 {
>                         clocks = <&cpg CPG_CORE R9A09G087_CLK_PCLKM>,
>                                  <&cpg CPG_MOD 104>;
>                         clock-names = "pclk", "pclkspi";
> +                       dmas = <&dmac0 0x267a>, <&dmac0 0x267b>;
> +                       dma-names = "rx", "tx";

Same comment as for RZ/T2H:
RZ/N2H does not seem to have restrictions about which DMA controllers
can be used by which SPI instance.  Hence shouldn't these point to
all three DMA controllers?

    dmas = <&dmac0 0x267a>, <&dmac0 0x267b>,
           <&dmac1 0x267a>, <&dmac1 0x267b>,
           <&dmac2 0x267a>, <&dmac2 0x267b>;
    dma-names = "rx", "tx", "rx", "tx", "rx", "tx";

Note that this requires updating the DT bindings, as they currently
restrict dma to two entries.

The rest LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

