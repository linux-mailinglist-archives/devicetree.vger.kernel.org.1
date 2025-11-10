Return-Path: <devicetree+bounces-236728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C89C46B26
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 13:50:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2BFFD4E532C
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 12:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7729B30E849;
	Mon, 10 Nov 2025 12:49:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B90D30C635
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 12:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762778992; cv=none; b=K4UL33HM0rNj28786uxxyC3bbj3r866kqhHL/knfpDWg011MK/KMhcm7PyGRKC8pZ1+SkvfIYDrbnVu03w8gDjeF3PxF3iDBxKFbU0WDJ0I4pb5Fe5QJEWonIFrslZvziY/GMqtwR8GMd2MluM4wKCiRFJQoPVZ8tFENKkedA0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762778992; c=relaxed/simple;
	bh=cAw6KDVicFMiZpuDduunfg3+w/yg4gN+HRNZWYDOi/o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IcKEl9jwazG955YDJIgpV1tUFI8fhQ50/v4xHFvejl+SkHEx6PRCfWWZ6b4JEC5fjNcBilJnTsYhv+iKMGxtx34A0Pw8ZtxvD/1TQuyc4VIcs0pqb1/MtuDM2wEDr8u8gP+SzLaTVbpwtQU3nqIl9lpFLf85hb1dEUjLTJwUstM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5dd6fbe5091so1097029137.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 04:49:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762778988; x=1763383788;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fh17CiieclZAsVeAhUA/WaKqsZ8PVmhh++ya3iPI2Ik=;
        b=A/8N1O8BjOY8oOcfgLRD2FF66VVxwMcnitrUR6ajcuRqkR3y0d3G0lX5bzul8L4z6S
         jndXwJwi2Mt6A0rABr3D/fjO2NucX56X5PUfTvkISP6l+7sFUbI49icF75bLq6IiLknE
         H30i8B0KYtuA5IZD+Gr+e+4Ax4cB/ai5hpDmO3BoeLDIB6bv2Tl19L8p1HPK0OHlLN/u
         iTqqHwuZ+4CsT5oF7iZ3ADLfw+tS1JuIO6YXk5+I2Alude/Qz1AsEFloLWzWogaY8N3E
         FMFNA49hPDA/ufaPrhf2Gu/2NHQKXGWfwRlkZlfxlcqZ+H/V2s/89aHWZMxHqrHKZ//D
         dXVg==
X-Forwarded-Encrypted: i=1; AJvYcCWhGRh/1qyWrKcZ1hkb6jHIhsQFREngYd2Wq1cyzJWwlNSOd99Eut1YojO0J8H6RUd+Sk62bAC1Hh01@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3W2SVnE9NZSxKYElDM1LvACX9SLYMtRVKPKk0DHZ5rATd0i87
	gx7zI6QZpYpij0uBuPjIkyv2eZfwcembgYcHm4TA4mvsQoptUUUl2UQ4I6sbkKVr
X-Gm-Gg: ASbGnctlaOBJ2sVol+OA3YG/uQtH1vOG6wjXcE/SuBMJOboCfOphzUWp0oYka6x3DTe
	wMS/L/+wvS3w0Cynjx/osts8O55ULx6NLpF2dZR0KSt9DPzadxZemSQK7Enj2YBaW91I2lDH5uv
	rjDVi1DRXzpmVhUnxDad0B/r9KNRm9/FXfVp0pdoV95AjV6OVIp04ngott8NpcikZvPNKK/P0CY
	unZ1Sp7kixiygoI+fYavOipW2Yp9RzoogQPfGqe2zAfsZwLOPP/+mwks5q84OCyuh+oLSL2+D4K
	ORMoBDACPmFDPBHof7SqIgkmDI/qLSrvvc7Wj8aGKeFN9G+sp0zY5XdalXsQD6wPeB9VeSUB+0r
	L9TxSpzcnhjfM5/wFHvj7Es4QnYVZ7S/eIl+elvYTPU4YTdTnSweNakXvt5affUUYvdsdRTq1GC
	ibDWjHw+WmsxvZ9f6vStlors4oqyTJAcgSlqFaN08KsZAEJoM7
X-Google-Smtp-Source: AGHT+IFXCTGRtFHbvHW9tx3hNmCiABWzrGiLV96/Tkl6Mz9+6QQCRSVr3bqR231gqNQMLLWIU3do2Q==
X-Received: by 2002:a05:6102:418f:b0:5db:e1ad:770f with SMTP id ada2fe7eead31-5ddc467fa2cmr2260230137.2.1762778987849;
        Mon, 10 Nov 2025 04:49:47 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9370898d9d1sm5797874241.12.2025.11.10.04.49.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 04:49:47 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-9372410c6faso476088241.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 04:49:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXOWl2zjIvj0M6rhaXmYnGqQKpghy8odE6o5d7F3oznuf44wdo64xe+OKCY7ObVFAamtQd+xdx0OpLy@vger.kernel.org
X-Received: by 2002:a05:6102:3a0a:b0:5db:f352:afbd with SMTP id
 ada2fe7eead31-5ddc467ebffmr2222725137.3.1762778986813; Mon, 10 Nov 2025
 04:49:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105104151.1489281-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251105104151.1489281-12-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251105104151.1489281-12-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 10 Nov 2025 13:49:35 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWTH_uuQURgqQrg1RGDMwzdDAWFk__mS9+Gc8mcESfUyA@mail.gmail.com>
X-Gm-Features: AWmQ_bkfRzk8FN2qNNCBLlLG0XaTRUdRgwFG7IJoHivC4Q2Ld9wLwHCuz85ymR8
Message-ID: <CAMuHMdWTH_uuQURgqQrg1RGDMwzdDAWFk__mS9+Gc8mcESfUyA@mail.gmail.com>
Subject: Re: [PATCH v3 11/14] dt-bindings: spi: renesas,rzv2h-rspi: document
 RZ/T2H and RZ/N2H
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-spi@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Wed, 5 Nov 2025 at 11:44, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs have four SPI
> peripherals.
>
> Compared to the previously supported RZ/V2H, these SoCs have a smaller
> FIFO, no resets, and only two clocks: PCLKSPIn and PCLK. PCLKSPIn,
> being the clock from which the SPI transfer clock is generated, is the
> equivalent of the TCLK from V2H.
>
> Document them, and use RZ/T2H as a fallback for RZ/N2H as the SPIs are
> entirely compatible.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
> +++ b/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
> @@ -9,12 +9,15 @@ title: Renesas RZ/V2H(P) Renesas Serial Peripheral Interface (RSPI)
>  maintainers:
>    - Fabrizio Castro <fabrizio.castro.jz@renesas.com>
>
> -allOf:
> -  - $ref: spi-controller.yaml#
> -
>  properties:
>    compatible:
> -    const: renesas,r9a09g057-rspi # RZ/V2H(P)
> +    oneOf:
> +      - enum:
> +          - renesas,r9a09g057-rspi # RZ/V2H(P)
> +          - renesas,r9a09g077-rspi # RZ/T2H
> +      - items:
> +          - const: renesas,r9a09g087-rspi # RZ/N2H
> +          - const: renesas,r9a09g077-rspi # RZ/T2H
>
>    reg:
>      maxItems: 1
> @@ -36,13 +39,12 @@ properties:
>        - const: tx
>
>    clocks:
> +    minItems: 2
>      maxItems: 3
>
>    clock-names:
> -    items:
> -      - const: pclk
> -      - const: pclk_sfr
> -      - const: tclk
> +    minItems: 2
> +    maxItems: 3
>
>    resets:
>      maxItems: 2
> @@ -62,12 +64,55 @@ required:
>    - interrupt-names
>    - clocks
>    - clock-names
> -  - resets
> -  - reset-names
>    - power-domains
>    - '#address-cells'
>    - '#size-cells'
>
> +allOf:
> +  - $ref: spi-controller.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - renesas,r9a09g057-rspi
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 3
> +          maxItems: 3

No need for maxItems here (already at 3 above).

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - renesas,r9a09g077-rspi
> +              - renesas,r9a09g087-rspi

No need for renesas,r9a09g087-rspi, as it implies renesas,r9a09g077-rspi
is present, too.

> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2

No need for minItems.

> +          maxItems: 2

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

