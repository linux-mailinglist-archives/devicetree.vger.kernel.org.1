Return-Path: <devicetree+bounces-227491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F6CBE216C
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:05:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 908123BF3FB
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 08:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E054B1B4257;
	Thu, 16 Oct 2025 08:05:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C0222423A
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760601953; cv=none; b=B+2lgbG1qS+OSIbzo0IpmraOVMiw5aPmKlvwLq/dRFO9viWodt5MjQNBFVnYNhtY9uA1BY5kknboYGUHmSfz/oWk9LSmLOV3C7pu78x4Fx0brXoACpbHUWKWzSLnkIg66IWLxNOyIpCszZhiYHAD2dEO8OigWyrK9gpFYoqjXdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760601953; c=relaxed/simple;
	bh=ztVrdpOWpfiqyCWWdSB0SBx90SpUsNbJ6mq/bCQFil0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PbqnNS01nmNwiWkt2iMfV96azJKqcyQZHOVk1A5RRMFKe15egmH8OFgg1m8pZZvSnhKcv619REVIZem2e1Khltp2u0V+vfxnKvjxFL1qZUeysrc7oDxqatdc0EP8cSF1DPFi1onOKIGAY4F6QCOo47yPedNbKMJ3OQskT8DuK9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-8e30a19da78so218109241.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:05:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760601950; x=1761206750;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hOaWu67C1VjWzsEPqOzUQCmn+iSXUetMOVFsDVhAcDg=;
        b=R2OMSOcqV7KUULHMNIXGOpLe/hMUfYuvVXrC7YmDUP12NieP9ci6sPOjFa8221dL5z
         gxSnq1VbJJf1g7ck6RiAZ5ERpwPKQIChq4d/4RC7YSdaRCEyoAKqslxElUpTenF98rog
         erVL1TaqB5gkERXjigfLfSFRFfCO0+oaZ/af9bmyy7R9Xl8qNDsCNdUxssPP7QB8ON85
         Xs4WautQ52Y/qCaUZDhkTPnz+zq2miawUAo2X9yqx8xbwWQVjb61L3yTHfI78hzD/KLW
         32qlWUPgD+iKvuGb3ISXlYX4VAu+AhyU9hQxH0XC3r4aA9fQwpk6bbk5ApXRNx0AD4m5
         zuXg==
X-Forwarded-Encrypted: i=1; AJvYcCXkqsxm+vTGk1L/eh+hOQyn+NvZ+dqO0Lw0xDW5gfumiKWLCfHprfHqxIYUt8jw8rN+Q4+Ht1NlwYCu@vger.kernel.org
X-Gm-Message-State: AOJu0YxHEt3+KXSk7veBGFNN6OCAkoUPkdtW2/rZRnFJLJPmkna1AXdP
	UvZZu2CBrfQyRQpIykG8kmGiW1qf6PQqb4wFyXM1QUAsxSwrdjrRcH+H2xVPZWtg
X-Gm-Gg: ASbGncuULzjTrc/MB7OyL8GVNPYO/ile/6CrPxH7JcuRtQyLMTjbfijtsbMpu5CjKBg
	9wlSc1fRCK+x2+j/9Jv6T/ScuDiUwD1P5jeG0a1VMW0HDWTXThXSvKs8hR/zTEbd9WU6ONlM6Px
	TvxLtVdtNMgVnSsGEbNxF4gXxtjfxkm1tUafERFravOmk0WlBvliKzo/3/b7CDskkL2FDIhVfgD
	QlCgx+J4X87zv3ls/K0PPRAxx0PLl9u4ytSYYrQjzUs0NhQb3BuSaAcZ04CUP3/fod+zTaIllk9
	0xLp8H+gAYDR+NjuSvxXbS+L5HjF7XwmD/3WsknY8qwFsRfdpfmbwXnTIMOe9SheS+sqWaF0HXm
	seMXaJFspVhvAPykOHgwqONXlNHk9jh6JcjEUrqVWTM6tRtCaSAX3oEFXs+yNf0ufY9Gsj5aZkM
	vx/lQm3JTBfSctEzjGwUxpoEHUqIViGX8garfdww==
X-Google-Smtp-Source: AGHT+IGmC7/K1WOJNeoukkjOAhm3s45AS6Uid/+SB4ASR3r8o9+isXqoqkZgG7SThP9J7OruRNPrxA==
X-Received: by 2002:a05:6102:512a:b0:534:cfe0:f854 with SMTP id ada2fe7eead31-5d5e23af873mr12679161137.29.1760601949715;
        Thu, 16 Oct 2025 01:05:49 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-930bf6b0a3esm5126169241.1.2025.10.16.01.05.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 01:05:48 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5aa6b7c085aso350571137.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:05:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUyyDzVnjlw0AxGKoL3fPjbOWKVsSCsvQGUL4q//bcFaX0uDVSw0s9pC+qz4eNAFcIpxygvwnItHNZX@vger.kernel.org
X-Received: by 2002:a05:6102:5f07:b0:526:db01:5fb2 with SMTP id
 ada2fe7eead31-5d5e23caf40mr12709050137.30.1760601948335; Thu, 16 Oct 2025
 01:05:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015153952.185249-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251015153952.185249-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Oct 2025 10:05:37 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUwaoW97D3HOQHTO=h+-jh8WBXASfMsN_5S19UUEhs5ew@mail.gmail.com>
X-Gm-Features: AS18NWBojpV8EGtFpRhA4ksx4kN18NVJp94-AwZBKhJOeu5MaqA3XKOopME9Jaw
Message-ID: <CAMuHMdUwaoW97D3HOQHTO=h+-jh8WBXASfMsN_5S19UUEhs5ew@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: gpu: img,powervr-rogue: Document
 GX6250 GPU in Renesas R-Car M3-W/M3-W+
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, 
	Conor Dooley <conor.dooley@microchip.com>, Adam Ford <aford173@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
	Frank Binns <frank.binns@imgtec.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Matt Coster <matt.coster@imgtec.com>, Maxime Ripard <mripard@kernel.org>, 
	Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Wed, 15 Oct 2025 at 17:40, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Document Imagination Technologies PowerVR Rogue GX6250 BNVC 4.45.2.58
> present in Renesas R-Car R8A77960 M3-W and R8A77961 M3-W+ SoC.
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Thanks for the update!

> --- a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
> +++ b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
> @@ -13,6 +13,12 @@ maintainers:
>  properties:
>    compatible:
>      oneOf:
> +      - items:
> +          - enum:
> +              - renesas,r8a7796-gpu
> +              - renesas,r8a77961-gpu

OK.

> +          - const: img,img-gx6250
> +          - const: img,img-rogue
>        - items:
>            - enum:
>                - ti,am62-gpu
> @@ -146,6 +152,29 @@ allOf:
>          clocks:
>            maxItems: 1
>
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - renesas,r8a7796-gpu
> +              - renesas,r8a77961-gpu
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 3
> +        clock-names:
> +          minItems: 3
> +        power-domains:
> +          items:
> +            - description: Power domain A
> +            - description: Power domain B
> +        power-domain-names:
> +          minItems: 2

I think:

    clocks:
        minItems: 3
    power-domains:
        minItems: 2

plus the required below should be sufficient.

As Matt said, the power-domain-names are already specified at the top level.

I guess they should be dropped from the other device-specific
constraints, and their descriptions moved to the top, too (in a separate patch).

> +      required:
> +        - power-domains
> +        - power-domain-names
> +
>  examples:
>    - |
>      #include <dt-bindings/interrupt-controller/irq.h>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

