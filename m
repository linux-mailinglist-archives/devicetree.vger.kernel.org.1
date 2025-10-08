Return-Path: <devicetree+bounces-224494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E8CBC4594
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 12:37:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8FE3189D27A
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 10:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33EC42F549B;
	Wed,  8 Oct 2025 10:37:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5CB2EB5A4
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 10:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759919830; cv=none; b=RKzyT34djpYrdfwQyn6rP42Rt3RsfKGvI6KygFEmkcC91ELcgdEod/sX45YjRNhXlH2DMmmyR46tNhdhn4G6XY3hXxlAPtE8NmTRmheOiScEvo96hr/dhxt2Lq0pPHAknWxFVU5TMYV+MHvx3LDeSO5QHFxzk+XNYibRttkze4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759919830; c=relaxed/simple;
	bh=dOAt+nuRo28aNDNvJxcRiwiD39zS4vrxmN4+5vmPi4U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BK8Cld4w1W3JJpahKYY8grkSUjOsYta/oSQ3wSYm2N+d5W3kE09hIDNZxZgehMvknWNes9wItxvE4EB+MzQUjR1qMNT9TBcuB4v3SwM/E0lKuMSSeADobnmEFyqsFEHkCQuaKoEY6Jj8SIUHxqYkw/cdFiOT9NecdJM7oIUPjXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5997f407c85so2663800137.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:37:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759919826; x=1760524626;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SpM5IF7an2KKoogtwZq+ATkkUPR65N1c7rRftHs9zKs=;
        b=JPjj0+a/Z9CAOua+aconpP8b0FPSIGg637Ew2obXtH225faVWTINwOVg/iB0lKXXCd
         DSvkYtpDZeK7w82WTTzRzmXSiKx6etsuZDF0B5MKXOuxPww8e6RjA7fg4fWE2zhalucn
         vrndl6DMDpPCe3NYYoXEPuAxPbj85ZR+qM+meZH+Saj0vinpx+hq/zCBpjPWsyN3v9tJ
         wsJ0oFVInLpZwcTkNW4iyCAUpQPiUlSpEZnnjjpLmoyTkawwSNnE6Ib7Y1wyg4Do14J/
         QhP9tlGvigOgVv6nDPc7RD0hDDQcqToP3oqbq/I0TZWeHKQ+O9zfEUnBOJKCrkXBKVAp
         1C1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUaBMvMxhGWzOOopYFKIovhnvhaomKc7HdAiWzrdQJmhyHIP6c8hyx4tF/TF8i3bJ4uLtJMXCPAIpH+@vger.kernel.org
X-Gm-Message-State: AOJu0YwmqVDRLTl6dYBW9s9ZZOfF6+aml8gJQGH3ga1fTl6881CN751Z
	A7N83+pnxEJ5AfY2vDVBJwpVmnTGvXmkmacOu7lcP86Jh1Su7I+UH/fHttKcB5BO
X-Gm-Gg: ASbGncteb3I31CV6+bCCXbGw6fz71rAjNixOSCKq3aRpnyi0v1uicjXD0c9AF9bHNqJ
	dhWOGZHjp7D5fbrJrpWwSWyQeMx/hVVne7QOI7ey1ueOARE99oqAhNndGvymfUBwMo+bD4N8yLN
	rC5xTf8ocqN1WgXBnXwhw3Ksir/JgfjI+VvwsLr8B6XzOWyxwPsuoXDsA0CVpkF5iS1wqqrugJs
	pgU8kO26pUeEiVI2umzS7gJCeQ7q1unvPRKvYsgn+Q0Sy00gzJKXtlVTb9BOiWFJKKrVYiN3HKh
	cDU2Hd3qqA/jrt2bd4AB7C+43rdAMw/vwxdiXY37FcprPKFUnSWDLhfmimPQzaYyMcq0mOUf5xK
	WEcxxdWbcXj1gkGYo0kOC9l39SP6UEZ2QxKB1PdD9VmmLPS/nrpb8IJoM2FC3xFrPZckwecQU9I
	Q76R2fmANEh+4J/SIpWE8=
X-Google-Smtp-Source: AGHT+IFHpNzsBdqzIViTpshJUai+yGyboYq3dyo2IJMYfaMKPtAozqcBCN4QusIq5iW+W71M/qWdwg==
X-Received: by 2002:a05:6102:f07:b0:4fc:1a18:aaa2 with SMTP id ada2fe7eead31-5d5e2217442mr938950137.5.1759919826043;
        Wed, 08 Oct 2025 03:37:06 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-92eb4ea7e43sm4048173241.13.2025.10.08.03.37.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 03:37:05 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5997f407c85so2663794137.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:37:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXeLxf+rOb6tg8lZoPY3tzgPX9zUgmrJeExYqjLJZ+DpuAkkIYJPLw1oD/qq7dCnXHCh9ab7k0OfFEi@vger.kernel.org
X-Received: by 2002:a05:6102:2925:b0:520:4054:6b9 with SMTP id
 ada2fe7eead31-5d5e226f3e6mr849411137.9.1759919823850; Wed, 08 Oct 2025
 03:37:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007152007.14508-7-wsa+renesas@sang-engineering.com> <20251007152007.14508-11-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251007152007.14508-11-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Oct 2025 12:36:52 +0200
X-Gmail-Original-Message-ID: <CAMuHMdX29OUfM+RphgS3jk9Whw7kz+U-ysFYq1FymdU4GZLqFA@mail.gmail.com>
X-Gm-Features: AS18NWDuumoDujetCyC5cvBjrasbgP1Lj0erif8acEm21JO_mY5oVayc_GqwzjY
Message-ID: <CAMuHMdX29OUfM+RphgS3jk9Whw7kz+U-ysFYq1FymdU4GZLqFA@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] dt-bindings: watchdog: factor out RZ/V2H(P) watchdog
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-watchdog@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Tue, 7 Oct 2025 at 17:20, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Renesas created different watchdog IPs but they are all handled in the
> same binding documentation. This leads to a lot of conditional handling
> which makes it unnecessarily hard to add new items. Factor out the
> RZ/V2H(P) watchdog to make handling easier.
>
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,r9a09g057-wdt.yaml
> @@ -0,0 +1,109 @@
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
> +      - items:
> +          - const: renesas,r9a09g087-wdt # RZ/N2H
> +          - const: renesas,r9a09g077-wdt # RZ/T2H
> +
> +      - enum:
> +          - renesas,r9a09g057-wdt    # RZ/V2H(P)
> +          - renesas,r9a09g077-wdt    # RZ/T2H

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,r9a09g057-wdt
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +        clock-names:
> +          minItems: 2
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
> +    else:
> +      properties:
> +        reg:
> +          maxItems: 1

Both if-statements can be merged, as the second test condition boils
down to the inverse of the first.

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

