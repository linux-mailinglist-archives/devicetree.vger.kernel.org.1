Return-Path: <devicetree+bounces-224117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB05BC0C49
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 10:46:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5B8874F3D64
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 08:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8F272D5C97;
	Tue,  7 Oct 2025 08:45:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E972580F9
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 08:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759826709; cv=none; b=kHkn0qEoQmDcbVI/1Qn6XFeMBWLHgPgqXDNPRx35+8CZDGDkBHl/FhGZb9DVkxUT7YYgiM01TUfyOk9NxAS8kKamsC4YJ6tjEZrJU9hQxLaja8T5/HcAzPGfISBg25TvQ0beq2Zu5qXeZIvWSPIEQF9mjyfv3WJZQuIhOfMnvrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759826709; c=relaxed/simple;
	bh=7HNOoQVw8YG5z5v6c7sWMWYBWqnFnOEjwJXCKJndxDk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U14f+l0ly5j5BXFT4WcKQiIyv+mSgoqy/oWM86RT3XDPq+Gdh/lIeBTXwuphQeAJ+O3G3/PwoaHWuquh6nodQ3QXGqbDHfntqbFI9pjSW4OjfRvZfPlvumZA/Gp6BghW6VqVVUhc1ZmBcT0yFWNwQtiPvW4rqnkch0X6HNxG6V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-930989f9f81so337874241.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 01:45:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759826706; x=1760431506;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NQSgaEnCuQkYyKpd7dFZWet/o1KtZrc3TnC6bn7aOH0=;
        b=LQ9p+W3m/UzopuB7+zqURRPU2zkG3/FlKL2gRvnE+WGCRnZg4x+wRfevOVLeIsgu0V
         K11YBSQ/fl+y4y6XsecRMkpPmhj0JR4GWjwuExDxzu1jJd37QvhrkuAC2IXp1XRx/RG+
         RhF+Nqe+EJFXSIhSRqLmc0wBzp6c/NPgcgjstxQ1jAstePb9bDJfzgIrnrpkemlnXdDo
         j5mW3I9nKknmF7TCCj5LGchaTz9aTN+/7xCUgpHOCfC7qIrDkbSctHX781Rr2/fKr8Dy
         yv5E2WbK3LwaOLgkEMrHiap8nMLuZB0fz6BJyaRseY7uKej88q1DxEH1cBzjyP0BF1lN
         qrxw==
X-Forwarded-Encrypted: i=1; AJvYcCWdvtlV8KNGUuYwL6h0KnRw37vZnEi3/hy4XT9Dp2UqcCIJNLFOPrrl94Sl+UZ0ON63GZRYHLivtpXS@vger.kernel.org
X-Gm-Message-State: AOJu0YxHdaVDKacjPNI+f75QinQSCvYGyokBm1Rpp2Ssw+7icfmx3Nid
	bymv/hVJMc9jFqUq1DFituByjpuMWafqCQYqE5cyBI+YTkV7SfAc00e8rmjvHLo3
X-Gm-Gg: ASbGncudvQHJt0XO6QcIg2yF44nPJ4X2KFVIctBpPrQM7l8Y3w79Xflkyx7t4+RMNXe
	e/pf3jgc5exox6Fkjec1WhLXC6j9NG2W7ff5ZDGuXkMJFd0zsUa/AGI6V+9Z+yCRFkWLOFnryh4
	sfZXD4Xwipah5UgEJh3UqB2K0LaANqSckT9oPOHWJfUYyaRh5vfkXJ4QTdioqbuRdc+Y6AF/jer
	NUa/b/8djQnSMI9yJB3sVdOwUhwQT/9RytCTdLpA8vjdaA7TKrgeaLT/lhMayqP0FUkh05F6dLi
	RudsY7/gO+RD5WztcvMvRlqWafeuUhjwiV1OIGM9xMvUzl8mbwCNlXvjhIj7naMm6Le1BIoUFWP
	ncgl5lX+9/JThBT9R9rHlBe4Wz0DpY2BveAqKN6UojH9+dTY3emHcmEYrTPK+OtYFscuLNTDdd/
	1My6WtZs8LciimHrYDYV8=
X-Google-Smtp-Source: AGHT+IFtVioZIaRMaxs56p2CTL7hY4WgGTiTYZwZKxTRbsXLEnbmO/wDvPyu/f56W8F3h4cQkg3VvA==
X-Received: by 2002:a05:6102:38c9:b0:525:9f17:9e63 with SMTP id ada2fe7eead31-5d41d135581mr5560138137.29.1759826706261;
        Tue, 07 Oct 2025 01:45:06 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5d3861c8asm639321137.5.2025.10.07.01.45.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 01:45:05 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-59d576379b9so2880451137.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 01:45:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXvpRuRj6KAu0aanSFkLWyADvtYkZubPWvYGlidVrWbj9+6Jk8h+exIBRqWTosARNl3N4TYUoxMPSXw@vger.kernel.org
X-Received: by 2002:a05:6102:5092:b0:522:194f:fcd7 with SMTP id
 ada2fe7eead31-5d41d07d7bfmr5217235137.15.1759826705225; Tue, 07 Oct 2025
 01:45:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007032209.7617-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251007032209.7617-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 7 Oct 2025 10:44:54 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUChRoJ-A4W-PBBQssMvsn1GZY5zXmWxJ9y+EA8M2p3gw@mail.gmail.com>
X-Gm-Features: AS18NWCnRYJUVTJV8FR89tG1mXzK-9QzVHwHqrU72-Fmo1xtJlFHb9IaRUVrY-c
Message-ID: <CAMuHMdUChRoJ-A4W-PBBQssMvsn1GZY5zXmWxJ9y+EA8M2p3gw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: bus: renesas-bsc: allow additional properties
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Tue, 7 Oct 2025 at 05:22, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Allow additional properties to enable devices attached to the bus.
> Fixes warnings like these:
>
> arch/arm/boot/dts/renesas/sh73a0-kzm9g.dtb: bus@fec10000 (renesas,bsc-sh73a0): Unevaluated properties are not allowed ('ethernet@10000000' was unexpected)
> arch/arm/boot/dts/renesas/r8a73a4-ape6evm.dtb: bus@fec10000 (renesas,bsc-r8a73a4): Unevaluated properties are not allowed ('ethernet@8000000', 'flash@0' were unexpected)
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks for your patch!

> index f53a37785413..24732c5e24e1 100644
> --- a/Documentation/devicetree/bindings/bus/renesas,bsc.yaml
> +++ b/Documentation/devicetree/bindings/bus/renesas,bsc.yaml
> @@ -41,6 +41,18 @@ properties:
>    interrupts:
>      maxItems: 1
>
> +patternProperties:
> +  # All other properties should be child nodes with unit-address and 'reg'
> +  "^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+$":

I take it the "\\-" means escaped dash, to avoid it being interpreted
as a range? I usually put the dash at the end, so it needs no escaping,
but I am not sure that would work in yaml.

I would drop the "A-F", as upper-case hex in unit addresses is very
rare, and non-existent in *upstream) Renesas DTS files.

> +    type: object
> +    additionalProperties: true
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +    required:
> +      - reg
> +
>  required:
>    - reg

I guess we can indeed have no child nodes without reg properties.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

