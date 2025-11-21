Return-Path: <devicetree+bounces-241205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA72FC7AD87
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 17:29:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15EA23A2324
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:29:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E023B3451A3;
	Fri, 21 Nov 2025 16:28:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF802DEA89
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 16:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763742539; cv=none; b=lhYId+TjvnUh0iURqiamafT6yordWgXr7aub36ZfsHyNJDcDi8dP1S2xA5YuAbtc+Rb6vSsModkceu6w82Dwbyv9V0o4lM/4iJhGiEOsfMP1ifRbwk59V4gLoDGtSCj6VyNmm8CLw3ka1XFyJ3hKl+Rx8k3xSrPMvVTQ7BLzCak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763742539; c=relaxed/simple;
	bh=NWw8ik16PpwAnJNwq8h3jV3Uy7b4CaBzlirDZLOFbQY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sXGqziQo8YXie+n1XZVMPH2pNXKRKFYn8CTggjhDRsmGXpZ6lv+/D7G68RD+oKo/ljLsthZjtFqipnpQvs30ZS/UIwCi6MnqJV1Srly42BMzhLK2m3/7QnCBeUFY4BA8pgoDIMw4RQuYoi+ROOA16PMRCpC6uUfsFTFGqXpgYso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-93a9f6efe7cso1304151241.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:28:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763742536; x=1764347336;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EA6je4+07ukFpFFywGC1ltUCAr/0ji7NhVbYppEStBE=;
        b=HCnb7yfEXq/lcEEwEUL0eoBiOX5S3V6NcBiqczXgGO/JmQPpZ0pGTt5C2t0Ytnwg6I
         3FRj5stMZRjoukHhMTFN7dBgu9K3YlPZPxixhjIVSI3pyRUDwEJhUCRnNme3Iqd8ZxzU
         G9w3I0OKn0rkCG9wRB8bCCA3zea11dxgMEMUvX1Aq1HTc833a9H0qXJRkxSd+erdeZVI
         PXgBp/lgXvOG51nOrRouLy4oE65y9Yjhv9UbnskPUGrisA4z2f0K2Z+GYthUs+d8PnSP
         U3BTt6DgTS46QWkjzyQ1viM71auwMyYQq7pM2cgfe3boEyIqJ/MafdDSj405S6aMsU0T
         IVSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxVsOz8+1Egd516DULe0NgTjb5WLLmmvevniN0M1oBSBHGkEnRrW5KI2rgn+iQE+Lgx2R4na7PxJqJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxLfjzvKk6L3OqK68RNFKQB6Ua7LdceRQG8Vk79Nx6+m6QLhM1g
	5suF+48VubQ1mMw90wNwC8VZXU7QAk/OeYPm9sdMC1qdZucb8b7toC3s1haLkBSo
X-Gm-Gg: ASbGncvl6ZH0ypmdQ4qPFf9z6tlu5bumZ+AGY7DDyzRftqzrEO8yK24LIoN0vlFnH5w
	d+E5g9DXpzx2MumXkb6R5wWHDYiHGgTQpCUQ5xkniLzadl4N712yczX2D6/ltvI3B38/U4f8k8B
	POszbsGi8YpV9u/vKKwz0JcVVYBMxXFeGSFYj1fO1WSNLJ0qetDu93EPQ55Di2oFL3xRkvv6c5P
	rgtopBbl2DKfspKjPlZcXXWCRvRfRf1zyMXUJ6UiGm8YNDsac4VhjO7EC/ixHk3DsnYCLw0873v
	UrJvGx2GVGuGLlTKu2C1S+AJtHf7WhMkzB8aFO6W1PhiL3ZqiSOVz6kPvvJvjdxVLBBhWcCboHc
	bDKi724UKkJ4JvsihOYIn/mVoPuMEzYZXZ+q31hWIktuWbw055rO3PdA846SNGr2iukfJYBuDSm
	8uSkD/2iwiZ1npVVTvbvoIWP8IrBrdlP01gm3Ozh9QkssBFH0Q
X-Google-Smtp-Source: AGHT+IEVjfZsd5n9h4QH4MWGKLEY+bMgkyhjyfAk9KKYD5/lUR8u421IHsTYEvvGf5nffQlJNVyN8Q==
X-Received: by 2002:a05:6102:f12:b0:5db:f15a:539d with SMTP id ada2fe7eead31-5e1de2296d0mr1033627137.7.1763742536501;
        Fri, 21 Nov 2025 08:28:56 -0800 (PST)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c5621a066sm2479129241.4.2025.11.21.08.28.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 08:28:54 -0800 (PST)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5dfd2148bf2so1135674137.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:28:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXSy8aLjFMYVHg/5MBhHfbbbGtjMjwRC3vWfSIRyysiyCvE4vCCr/11pGS6/4fdhTxbJdyuIHvjmOnS@vger.kernel.org
X-Received: by 2002:a05:6102:5345:b0:5db:f352:afbe with SMTP id
 ada2fe7eead31-5e1de22445dmr947156137.6.1763742533900; Fri, 21 Nov 2025
 08:28:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com> <20251114105201.107406-2-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251114105201.107406-2-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 17:28:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX41rq-sd6_g1oCrQVPpgb-MXakpJ9mEbS0K+FY8Q7NDg@mail.gmail.com>
X-Gm-Features: AWmQ_bnV2vaF4HR2BzUmue1a6MqXZNYW6rPMe3_j5Cfe-VvhmkJ46vgiHI0AFsM
Message-ID: <CAMuHMdX41rq-sd6_g1oCrQVPpgb-MXakpJ9mEbS0K+FY8Q7NDg@mail.gmail.com>
Subject: Re: [PATCH v3 01/13] dt-bindings: serial: renesas,rsci: Document
 RZ/G3E support
To: Biju <biju.das.au@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Fri, 14 Nov 2025 at 11:52, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Add documentation for the serial communication interface (RSCI) found on
> the Renesas RZ/G3E (R9A09G047) SoC. The RSCI IP on this SoC is identical
> to that on the RZ/T2H (R9A09G077) SoC, but it has a 32-stage FIFO compared
> to 16 on RZ/T2H. It supports both FIFO and non-FIFO mode operation. RZ/G3E
> has 6 clocks(5 module clocks + 1 external clock) compared to 3 clocks
> (2 module clocks + 1 external clock) on RZ/T2H, and it has multiple resets.
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
> +++ b/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
> @@ -10,17 +10,16 @@ maintainers:
>    - Geert Uytterhoeven <geert+renesas@glider.be>
>    - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> -allOf:
> -  - $ref: serial.yaml#
> -
>  properties:
>    compatible:
>      oneOf:
> -      - items:
> -          - const: renesas,r9a09g087-rsci # RZ/N2H
> -          - const: renesas,r9a09g077-rsci # RZ/T2H
> +      - enum:
> +          - renesas,r9a09g047-rsci # RZ/G3E non FIFO mode
> +          - renesas,r9a09g047-rscif # RZ/G3E FIFO mode

I can't find the non-FIFO ports in the documentation?
Do you mean "Selectable to 1-stage register or 32-stage FIFO"?
Isn't that software configuration instead of hardware description?

> +          - renesas,r9a09g077-rsci # RZ/T2H
>
>        - items:
> +          - const: renesas,r9a09g087-rsci # RZ/N2H
>            - const: renesas,r9a09g077-rsci # RZ/T2H
>
>    reg:
> @@ -42,14 +41,36 @@ properties:
>
>    clocks:
>      minItems: 2
> -    maxItems: 3
> +    maxItems: 6
>
>    clock-names:
> -    minItems: 2
> +    oneOf:
> +      - items:
> +          - const: operation
> +          - const: bus
> +          - const: sck # optional external clock input
> +
> +        minItems: 2
> +
> +      - items:
> +          - const: bus

Figure 7.3-1 ("RSCI Block Diagram") calls this "pclk".

> +          - const: tclk
> +          - const: tclk_div64
> +          - const: tclk_div16
> +          - const: tclk_div4

Perhaps reverse the order of the last three, for simpler handling
in the driver: each successive clock divides by four?  (yes, I know
SCI_FCK is not immediately followed by SCI_FCK_DIV* in the driver)

> +          - const: sck # optional external clock input
> +
> +        minItems: 5

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

