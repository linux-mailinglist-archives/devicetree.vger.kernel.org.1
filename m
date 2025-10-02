Return-Path: <devicetree+bounces-223363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3232BBB3A46
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 12:34:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A291B19C0234
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 10:34:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29DBA30B508;
	Thu,  2 Oct 2025 10:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LY/9O9aF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A3630B50D
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 10:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759401217; cv=none; b=OnLfueEC0d2LGHxUL1LktVZcJv6ai1Th1+C0lEmC0pC1L8A4fj3QM2j2wJudzR4J+E/aoDN2k5yWXGnOLBZsnK5mlOd2ufcRee2V6cEOQbhNcqMGp7M1Zp0gQag/ZScPTe2cq5wXLLkW+KQ9z+7x75vX4RxPt1LeIQTZAgMlgRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759401217; c=relaxed/simple;
	bh=iHz5DuFUuSRhhhMvqJmu2XdnOFnrd/+He8NnZr0fAEI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kj0Fx2NwZabCm55Jm8KGD9cQBscQFoeDLeIhToI92em9GzceXarynZUKOX/MjibhvXlmKm9E17+zi8ZmSwNhn1Hc/Ei1FerVXt7bDdmN9+w7NxznHwlL3wX2aTG+oevYhebxP21brttgztnPzrrgtNsZSP6pAVxhBIJlRDtEzbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LY/9O9aF; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3ee64bc6b85so722625f8f.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 03:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759401213; x=1760006013; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IBFQk+smj0luOQPvO8LJUySLK5ZYsAeSl494Q1YFpjQ=;
        b=LY/9O9aFFmfkat0QYgd9cM6oYZGJnl0L74XMp9JBDJvP1kuoon0Qxd1RvHcse60+wx
         WiNlu/i/Dme7Ma+xZiiWkWZImIK+EN4xPGUSykjKZbgI7+V92pG12Qmn/lYnIkyvdQ4j
         bHrMKrATIMPxtS+aJ7kKKD+QMnbgT/5qeuy0Fm2WfKPVje5vf1V1A1Vmnpqmydnx7zti
         lOPilocm5NHvv0wiCRQqFJRYhKolwu2IdhUWdWB/ehipui5b59w67tswDu5fckc9JSyY
         i8+CIo/b/JWl9x65c6wDsQkrLM2+2RejfPUXTdtn162pftGcnSPkMd3RaxA9UkLSa+8q
         +djw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759401213; x=1760006013;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IBFQk+smj0luOQPvO8LJUySLK5ZYsAeSl494Q1YFpjQ=;
        b=UY4/4USq9aUYBM+PsJgC5uWaOcReYZU2EVXxNIyJH3iSL9c92RmZl2GESEYn5oyWSS
         29M5bxbJ+hMl/LDUuPxOgLVhIalkQcyazcmv8JjvsV7BCUCD8Fi66zdVVw8rQ5M+rIUe
         gIcDPRIZy88HWB4hySOc0RWSy6x5z7a9I1PN8Hf2uLEtDn/F3ibK4IyL5Ush3laDkD+c
         tTDcIYcIxJXXBRZzi0/uqrH+jEfSw3sWrED1XvKNPJWSuOMI4UHd8wMw00tolS8J4ptP
         Fj+ynhrFUmOzkSNjtrnbjRpvYBx3/ZvqYDnN3tvVlVQ2bZy7btrYQXoqPz4kYNSirZjA
         t85Q==
X-Forwarded-Encrypted: i=1; AJvYcCWVQW9fdPONf9ymODsHYzioDjj/oHJ2fkqwAhL3yU4XY6vi10bYf+XnG5SAov/PRN7WfmTr/uGULl4g@vger.kernel.org
X-Gm-Message-State: AOJu0YxoFNgRq0TI+GdYldOkcs3MRZavlXquos2z9AhpZlN+YfqByKo2
	SBPUwsz4CCZvgYJKbWXKXq0R5I5l4OmtpfDh962hGI2EStM8Il8bgBqaUCNWLLYS9+uEnaoFL22
	NxshQjOW8/zmJMMmL2Og46JWioVBWMpo=
X-Gm-Gg: ASbGncuYVfH9YwIS/BwP5FRI6y86ephP2TekU1bdM/FnF8jSRVARnlRPtvk/NgsMKNk
	jnxsZGgDxGsaaI1oyLo2AgZyxhGHmUTrRsEhLrJEjt/KhYGKA0D/LGM7a8wzfuEHkz/9TMVZiVq
	Qc6WxNx6pXbdakzYUyMifGm1bfBFx2kTMmhdRshSsEZGYta6s3snHSgnM9rSuYOXYr/8LOnk9w9
	rHCwz87HZnmP4/Qx/lFbhFPGpEE0980QctQjVyYDPAZjxDSXdeQtLqa36mEGNXtqfgKHrkX0gk=
X-Google-Smtp-Source: AGHT+IEgO+SNZ+oeRJMlwNL6de+h/EshFHSd5fTKNUIjP95JulowMk4ElQrLGV2GGoUIacRVcYCCL2vJDJNwiWdzG+U=
X-Received: by 2002:a05:6000:184e:b0:3ee:1118:df7d with SMTP id
 ffacd0b85a97d-425578192b4mr4578653f8f.47.1759401213120; Thu, 02 Oct 2025
 03:33:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926112218.28723-1-wsa+renesas@sang-engineering.com> <20250926112218.28723-5-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250926112218.28723-5-wsa+renesas@sang-engineering.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 2 Oct 2025 11:33:07 +0100
X-Gm-Features: AS18NWBWmT4dyEr42ezmAwsnmUR1Nru1ucjaPodumEJCIP0PRxOEk0DsyormBnY
Message-ID: <CA+V-a8tqOBz2i_7Nny488syuSXGBhe1japjX47hkN6_Ejge1ZQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] dt-bindings: watchdog: factor out RZ/V2H(P) watchdog
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wolfram,

Thank you for the patch.

On Fri, Sep 26, 2025 at 12:22=E2=80=AFPM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
>
> Renesas created different watchdog IPs but they are all handled in the
> same binding documentation. This leads to a lot of conditional handling
> which makes it unnecessarily hard to add new items. Factor out the
> RZ/V2H(P) watchdog to make handling easier.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  .../watchdog/renesas,r9a09g057-wdt.yaml       | 113 ++++++++++++++++++
>  .../bindings/watchdog/renesas,wdt.yaml        |  97 +--------------
>  2 files changed, 118 insertions(+), 92 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/renesas,r9=
a09g057-wdt.yaml
>
> diff --git a/Documentation/devicetree/bindings/watchdog/renesas,r9a09g057=
-wdt.yaml b/Documentation/devicetree/bindings/watchdog/renesas,r9a09g057-wd=
t.yaml
> new file mode 100644
> index 000000000000..2450ac856783
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,r9a09g057-wdt.ya=
ml
> @@ -0,0 +1,113 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/renesas,r9a09g057-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas RZ/V2H(P) Watchdog Timer (WDT) Controller
> +
> +maintainers:
> +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - renesas,r9a09g047-wdt # RZ/G3E
> +              - renesas,r9a09g056-wdt # RZ/V2N
> +          - const: renesas,r9a09g057-wdt # RZ/V2H(P)
> +
> +      - enum:
> +          - renesas,r9a09g057-wdt    # RZ/V2H(P)
> +          - renesas,r9a09g077-wdt    # RZ/T2H
> +
> +      - items:
> +          - const: renesas,r9a09g087-wdt # RZ/N2H
> +          - const: renesas,r9a09g077-wdt # RZ/T2H
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clocks:
> +    minItems: 1
> +    items:
> +      - description: Register access clock
> +      - description: Main clock
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: pclk
> +      - const: oscclk
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  timeout-sec: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - renesas,r9a09g057-wdt
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +        clock-names:
> +          minItems: 2
> +      required:
> +        - clock-names
We could move this into the above required list as it is marked as
required for all the SoCs.

> +    else:
> +      properties:
> +        clocks:
> +          maxItems: 1
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,r9a09g077-wdt
> +    then:
> +      properties:
> +        resets: false
> +        clock-names:
> +          maxItems: 1
> +        reg:
> +          minItems: 2
> +      required:
> +        - clock-names
> +        - power-domains
`power-domains` should be a required property for
`renesas,r9a09g057-wdt` case too. We can move this to the top level
required list as all the SoCs need it.

> +    else:
> +      properties:
> +        reg:
> +          maxItems: 1
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/renesas,r9a09g057-cpg.h>
> +
> +    wdt0: watchdog@11c00400 {

We can get rid of this label.

Rest LGTM,

Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Cheers,
Prabhakar



> +            compatible =3D "renesas,r9a09g057-wdt";
> +            reg =3D <0x11c00400 0x400>;
> +            clocks =3D <&cpg CPG_MOD 0x4b>, <&cpg CPG_MOD 0x4c>;
> +            clock-names =3D "pclk", "oscclk";
> +            resets =3D <&cpg 0x75>;
> +            power-domains =3D <&cpg>;
> +    };
> diff --git a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml =
b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> index 2a15c012fd67..08ba128bf442 100644
> --- a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> @@ -51,38 +51,14 @@ properties:
>                - renesas,r8a779h0-wdt     # R-Car V4M
>            - const: renesas,rcar-gen4-wdt # R-Car Gen4
>
> -      - items:
> -          - enum:
> -              - renesas,r9a09g047-wdt # RZ/G3E
> -              - renesas,r9a09g056-wdt # RZ/V2N
> -          - const: renesas,r9a09g057-wdt # RZ/V2H(P)
> -
> -      - enum:
> -          - renesas,r9a09g057-wdt    # RZ/V2H(P)
> -          - renesas,r9a09g077-wdt    # RZ/T2H
> -
> -      - items:
> -          - const: renesas,r9a09g087-wdt # RZ/N2H
> -          - const: renesas,r9a09g077-wdt # RZ/T2H
> -
>    reg:
> -    minItems: 1
> -    maxItems: 2
> +    maxItems: 1
>
>    interrupts:
>      maxItems: 1
>
>    clocks:
> -    minItems: 1
> -    items:
> -      - description: Register access clock
> -      - description: Main clock
> -
> -  clock-names:
> -    minItems: 1
> -    items:
> -      - const: pclk
> -      - const: oscclk
> +    maxItems: 1
>
>    power-domains:
>      maxItems: 1
> @@ -96,76 +72,13 @@ required:
>    - compatible
>    - reg
>    - clocks
> +  - interrupts
> +  - power-domains
> +  - resets
>
>  allOf:
>    - $ref: watchdog.yaml#
>
> -  - if:
> -      not:
> -        properties:
> -          compatible:
> -            contains:
> -              enum:
> -                - renesas,r9a09g077-wdt
> -    then:
> -      required:
> -        - power-domains
> -        - resets
> -
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - renesas,r9a09g057-wdt
> -    then:
> -      properties:
> -        clocks:
> -          minItems: 2
> -        clock-names:
> -          minItems: 2
> -      required:
> -        - clock-names
> -    else:
> -      properties:
> -        clocks:
> -          maxItems: 1
> -
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - renesas,r9a09g057-wdt
> -              - renesas,r9a09g077-wdt
> -    then:
> -      properties:
> -        interrupts: false
> -        interrupt-names: false
> -    else:
> -      required:
> -        - interrupts
> -
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            const: renesas,r9a09g077-wdt
> -    then:
> -      properties:
> -        resets: false
> -        clock-names:
> -          maxItems: 1
> -        reg:
> -          minItems: 2
> -      required:
> -        - clock-names
> -        - power-domains
> -    else:
> -      properties:
> -        reg:
> -          maxItems: 1
> -
>  additionalProperties: false
>
>  examples:
> --
> 2.47.2
>
>

