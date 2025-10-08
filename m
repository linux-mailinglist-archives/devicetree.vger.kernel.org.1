Return-Path: <devicetree+bounces-224493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 615ECBC44DF
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 12:26:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8A5E34E8AB4
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 10:26:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AD862F5A3E;
	Wed,  8 Oct 2025 10:26:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F8082F5A2A
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 10:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759919161; cv=none; b=WT+KVIIiT9IGuLrLC4zAmibxCH3tR3yRjveKga1rzat4MgKHpX61cWJ6wW7FndvauAeCM44p2e6Y5t8+Fd8WJ/rOiPeY/ogM1q+epXmkYqdZB9GbIp2hBjQUqtDEsciFTiYSyoPLcfrZJJKFkBIpNMv21SBa91elA4lMRrVewT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759919161; c=relaxed/simple;
	bh=OXSpHYjCFeAW1bnTUQJIYsMTnFikBWZCXE15rVM8+54=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FzBdJhPE2ZirJsAWlCbidQ15FLKpdgWlOQjeMLCGfZuwjjsFC7ztycGlR/Sdry3G21yCjwkHE4XCiEigcr37B2IQ5Hrtzm0Ww8qYxZeGjZfTstvjcr2nLLVnX1YpUaPT6lXHMnFKEhqr3y8JoK+3LrMY2vbX+cpL2Rb0aVxJads=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-90f6d66e96dso2079392241.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:25:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759919158; x=1760523958;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P51hehgBHthh05rneSfzMskbp21c3potJuyyZ4GFVHY=;
        b=hIZQDa9WWpvLDk0EZAEmkgTdeHV3sqTq+RKnyx1YwW0b6A/Dip4gFhi28tuAWany3t
         RtI+uFn2Ac/wyvjHXn2uxuHPU+G2Sy4Q35kfI4Xpqj4vQFF1J+0rfvEhyr53S92YlKE6
         PBuvc+fSE2kyuuY9OGXaldOoT4WT+SDWUa7ykvIPVb22B9i6lwHOKJcJsfBlW2N4S26e
         cANigcCG0tBuANwpTf3aEcs6B1nsohvKdqkyzETTexp3oFGHKuJT7f+FvdiVfDMvrK6N
         1cVAHyj6whln3d9aw6aZqvrjvuT7+CeUkA6k5X5YJinJlbwr5uu1C7HlQMZpXqW7doIv
         706Q==
X-Forwarded-Encrypted: i=1; AJvYcCWpFsD4VUyMOp1nvpmu54W9VXApQ0vZGUpD+8z9DxO+GKiYbuZli3+nqq5uu3QH6AYuYSU10qb4rG2g@vger.kernel.org
X-Gm-Message-State: AOJu0YxGhCkrXQSSt/YCq2t1x/uOj8T9TLUmmHT65mDlXAvk1duh2a4R
	zZ+U1NUwevTv65t12OsY8j7IPMRp5ZTwWXG0jPoRCP0Jq7QYnunua9NDye0DiS+y
X-Gm-Gg: ASbGnct4iuk67kmtP4IcDnKSNf2xRTXPoYOp15bs1cU5mZjeEcoVFqvlDTZc7rT4IP2
	veS6C96KctvHbr8TXzlFzs1vugB3YaOATgBxyh5tSkM+d32vAGw+4hJx8AfY5+L71Yvvp47WL2Y
	b+n11d6P9Ny9pHQnPryRP7DJwV0O0FZ4VqGZR+ePNjnN0IOrruqpmrGPLwLCwVRTSq71z/vhfyE
	X99hh6/iDlcbHOUQ1FApbAe94riiiflTqnlXd8O3272voh/t/QSQWtnvXb0G3IVF2ckvp7BYsPI
	2534tE+KZGyWe7xx3lUd7bSZ1OJvoA+hyvkvSFQGUBj62CN3A7z2hUkQTEGSFERActCy4MvYNBf
	tgdOz38ZzxXrWkfbNMhkz4DqGIP2hUCTgEBFPwdtOz7L0R378+er4AUHmcYqG6TXicKQ7dIGgsu
	YsD5VPpK/Ozc0Zc9Si/Ag=
X-Google-Smtp-Source: AGHT+IGADY2ESCmxrAWI101yuFUpNzM4bkyLARXHM/jqkuRUqtLTptOMMqAmc62jgSn1MaS64usSGg==
X-Received: by 2002:a05:6102:5690:b0:4c5:1c2e:79f5 with SMTP id ada2fe7eead31-5d5e2375a61mr883883137.16.1759919158309;
        Wed, 08 Oct 2025 03:25:58 -0700 (PDT)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-92eb4ea7e43sm4043742241.13.2025.10.08.03.25.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 03:25:57 -0700 (PDT)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-89019079fbeso1764475241.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:25:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX6lYyAWtfzb1R7EmxWBinq8E8NPtIW72GcMtc9dNmS+vc3k8bBl9ggapKveo3X0V1/j7SWSk80uVmx@vger.kernel.org
X-Received: by 2002:a05:6102:fa0:b0:5d4:1e69:fda4 with SMTP id
 ada2fe7eead31-5d5e2375b8cmr814639137.21.1759919157025; Wed, 08 Oct 2025
 03:25:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007152007.14508-7-wsa+renesas@sang-engineering.com> <20251007152007.14508-10-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251007152007.14508-10-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Oct 2025 12:25:46 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVP5nLSu4PDVO5LLFodgPvbYBZ9-Oyh6Ap101ukaGp4pg@mail.gmail.com>
X-Gm-Features: AS18NWDJs2ffomK6k-23MtOzRWpeHmLjXjjd7OOOXX1Fs-JbyrmQo7Z86oHzZmc
Message-ID: <CAMuHMdVP5nLSu4PDVO5LLFodgPvbYBZ9-Oyh6Ap101ukaGp4pg@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] dt-bindings: watchdog: factor out RZ/G2L watchdog
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-watchdog@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Tue, 7 Oct 2025 at 17:20, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Renesas created different watchdog IPs but they are all handled in the
> same binding documentation. This leads to a lot of conditional handling
> which makes it unnecessarily hard to add new items. Factor out the
> RZ/G2L watchdog to make handling easier.
>
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,rzg2l-wdt.yaml
> @@ -0,0 +1,110 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/renesas,rzg2l-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas RZ/G2L Watchdog Timer (WDT) Controller
> +
> +maintainers:
> +  - Biju Das <biju.das.jz@bp.renesas.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - renesas,r9a07g043-wdt    # RZ/G2UL and RZ/Five
> +              - renesas,r9a07g044-wdt    # RZ/G2{L,LC}
> +              - renesas,r9a07g054-wdt    # RZ/V2L
> +              - renesas,r9a08g045-wdt    # RZ/G3S
> +          - const: renesas,rzg2l-wdt
> +
> +      - items:
> +          - const: renesas,r9a09g011-wdt # RZ/V2M
> +          - const: renesas,rzv2m-wdt     # RZ/V2M
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    minItems: 1
> +    items:
> +      - description: Timeout
> +      - description: Parity error
> +
> +  interrupt-names:
> +    minItems: 1
> +    items:
> +      - const: wdt
> +      - const: perrout
> +
> +  clocks:
> +    items:
> +      - description: Register access clock
> +      - description: Main clock
> +
> +  clock-names:
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
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - power-domains
> +  - resets
> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,rzg2l-wdt
> +    then:
> +      properties:
> +        interrupts:
> +          minItems: 2
> +        interrupt-names:
> +          minItems: 2
> +      required:
> +        - interrupt-names
> +    else:
> +      properties:
> +        interrupts:
> +          maxItems: 1
> +        interrupt-names: false

I am not a big fan of explicitly forbidding *-names in case
there is just one, if the first name still makes sense.

Regardless:

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

