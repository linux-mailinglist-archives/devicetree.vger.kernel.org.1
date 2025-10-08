Return-Path: <devicetree+bounces-224495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6EEBC46AE
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 12:45:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2E9F189DBDC
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 10:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69AEE2EC54A;
	Wed,  8 Oct 2025 10:45:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEAD0218AD4
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 10:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759920347; cv=none; b=fqs3pE+852hcIxwLwpkZKIAaAZ9XmKLX2rqwW+akRSZkzicMnB1ajwOWdAU8whAUMbHv31vrLRpPaZSkFwjndP2qbPwudhrvlNLe0UyBIb6qkDxQmx1d3fbgnvLw+dtsbBcYgaeNIBfmzX/gptAOy5cXNSef6qOlRqmUXHWBs1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759920347; c=relaxed/simple;
	bh=f41S8yF7zMqNs+KlJnvdjpanaT/vvl8yVAE2KUrK5+4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nfoTQVf8ZrxuvZevFN3HTWilMx8KaC5S5DFa4JRTPyCCX2ilHEYCMDyjysO+DPD0gPAZ5YBaQ3cVCR20GK/bgpTaQAm9229XnVUD9eb3KtcEmYOTSMM28NHhOo1lm1q2tKttOGC0FA7smflzctx4RC6OX7T4y6q6OJijgR1z1Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-8e936be1359so4424100241.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:45:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759920344; x=1760525144;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kaqCENqEwBs1LWyCnXwMZfx/+9LYbf6WMr4p/7V1iIw=;
        b=mngwSIbIxITgrZlBHjHSO18RQP1fqa7KLm3JhTPWl33jS4sr3rryiFnzzV/ywZ6AlK
         e54y0hhrgdK4PvabY1UWE3l33keL0iIymblrFumwrdpjbvb3zc6kpy4XluCNR3af5gfz
         S3LPJoprdtLjimLEuqRHrXFMBRUM5WbI4CLpgtJJomyHw47uHFCM7xF/mYm63ZqzbBbc
         lmHZsdcMAA56YfiVQtjdHdGzLF/NAhonbGd/Sq6KS4sF0FvLLtpjItX4AOR1CQt325hS
         qkKo+zrP1I8c4aHb6aPQznoRGguYdQ4JDMtDoofLp00yesX5dGoKHYyT5l8Wha7aadjE
         ctWA==
X-Forwarded-Encrypted: i=1; AJvYcCU9O/aC8cmoZ+nz/UTx9r2b4H6CNX8FibydI+OAnRa7k7ZDOTf84ZfyR+GFGFj4R2+7aqPo0AnaqHgm@vger.kernel.org
X-Gm-Message-State: AOJu0YwqtSr2Kwbm7pFx7CaksA+W3Qd34MP7a9nRIcgG/48faHNWUO46
	yCrBq4HZhzgLQZpaauG8u5vlAidEECl/IUyS2rxKwhWW1U8BpVAKyO8ILBpO391J
X-Gm-Gg: ASbGncuwNHjkfhh1quGcTL0Z8dLUzeFU1NoGSVLinxC4K0LzD2DoHCvnVo9hJIKCfUd
	auBaPHVE/fli6j9zQ4YDj3iZetZAs8VlDUd7ACmSP5aBTzLtkF9NZlLnezMRE2LIPsz+ZFup8Om
	E63v/+xAsIfc3XAAoMa8zx5e59DfIopDuXBiuSDJn5VwaeTRfm4E2S0eOM/53+6bM+D42FeTvZL
	KVmKr1PTLlnfEWXkXJ+2og/86WyNaEJ1H8QYgsK8Dv0p5HgtYF8hW6FV7fTgxp8WtcUvVX/ti1T
	TE23wNop+ycOEwZPySSW2LTM1xsbQH2naFv+8lpRc4mNRZ2mdcYRt5gLI4ppOLJowj/YFAlzhl1
	5nZnHfM+EqYNEfYH+yidYClYZBFv23rZJXt12CTzMQ5CZrVbdFxDMVq5ml833boZcIH9KKVSFlE
	wibBi4r0I9
X-Google-Smtp-Source: AGHT+IFxeS5izc9uLKDzo8pPG7JZ655rY26KSYHVjKUtmGxipDNMqDY9oEtBC2M6JOqaXRr5ShzZCQ==
X-Received: by 2002:a05:6102:c8b:b0:522:a762:8e5d with SMTP id ada2fe7eead31-5d5e226a2eamr1117047137.13.1759920344521;
        Wed, 08 Oct 2025 03:45:44 -0700 (PDT)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com. [209.85.222.46])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5d39ad6bdsm1526766137.10.2025.10.08.03.45.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 03:45:41 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-8e8163d94bbso5287197241.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:45:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVGMmHTGwoQ+QdevbpC6rQmZRdnxVZy33TFyTs9RnbvJ0XlDJKJppJMcHv4iualR9Mc+GaHPX4NAcBy@vger.kernel.org
X-Received: by 2002:a67:e706:0:b0:59d:6be4:5b97 with SMTP id
 ada2fe7eead31-5d5e2213da1mr1257706137.5.1759920340484; Wed, 08 Oct 2025
 03:45:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007152007.14508-7-wsa+renesas@sang-engineering.com> <20251007152007.14508-12-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251007152007.14508-12-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Oct 2025 12:45:29 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUf80xCgCZE_NTbBX15tK7f8==ZbP8zvVS21pRyDMEziQ@mail.gmail.com>
X-Gm-Features: AS18NWBQorvHKEIEsh9zX6_qgp1LEf-fkTDr89jGB0dEkJGrHD74K7XFHWjLduA
Message-ID: <CAMuHMdUf80xCgCZE_NTbBX15tK7f8==ZbP8zvVS21pRyDMEziQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] dt-bindings: watchdog: renesas,wdt: add SWDT
 exception for V3H
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Tue, 7 Oct 2025 at 17:20, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Normally, RWDT and SWDT can share the same binding. But on R-Car V3H,
> SWDT misses the reset bit. Add this exception.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> @@ -39,6 +39,7 @@ properties:
>                - renesas,r8a77965-wdt     # R-Car M3-N
>                - renesas,r8a77970-wdt     # R-Car V3M
>                - renesas,r8a77980-wdt     # R-Car V3H
> +              - renesas,r8a77980-swdt    # R-Car V3H SWDT (no reset)

The SWDT module on R-Car V3H is still identical to the RWDT module,
and the RWDT/SWDT modules on other R-Car Gen3 SoCs.  It is merely
the integration into the SoC that differs.  Hence I don't think a new
compatible value is warranted.

>                - renesas,r8a77990-wdt     # R-Car E3
>                - renesas,r8a77995-wdt     # R-Car D3
>            - const: renesas,rcar-gen3-wdt # R-Car Gen3 and RZ/G2
> @@ -74,11 +75,22 @@ required:
>    - clocks
>    - interrupts
>    - power-domains
> -  - resets
>
>  allOf:
>    - $ref: watchdog.yaml#
>
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,r8a77980-swdt
> +    then:
> +      properties:
> +        resets: false
> +    else:
> +      required:
> +        - resets
> +

Instead, I would just make the resets property optional (i.e. not
required) for renesas,r8a77980-wdt.

Of course, I wouldn't be surprised if the MSSR does have a reset bit to
control SWDT on R-Car V3H.  But it may be a bit hard to flip the
suspected bit on a system with remote access, as it requires modifying
firmware permissions?

>  additionalProperties: false
>
>  examples:

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

