Return-Path: <devicetree+bounces-223790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8ED6BBD859
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 11:54:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D2AF3B9845
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 09:54:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71C5E215191;
	Mon,  6 Oct 2025 09:54:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86042135D7
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 09:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759744485; cv=none; b=dGJcwlI+8lsLe84HOhpw2TSi9+51mNQY2Km9YyQi/zNVUnle7v7XewiI2RdeDSNO9uLajBGkonNZj48jRz1Jru3C2EhelhvSczM2CEhDKOaXKyud0ZKH+1jAA6NgXB/0mMFPqjPP9wFqQkXt08Mdex7t+5zwE1TmGQeNUtYhAZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759744485; c=relaxed/simple;
	bh=9a0d7PJR05hcZ7JqZ/w9T5K6n1BhXnk/sufH+H791Z0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ap6kAAAS/mbmZDjGxY+P2m09MjDiq14u0MyD425KP6x8JEaFy1GD3+dihjW8bQNeTWpKQ3cKsDIjfKIEndZ2nJT2xbcybyCiONrci++kx0tBxRPXYeo7isCXrnPoonp7URvOMT/1o4dsdilpk0dvlxGNfby53T0/qptkV9Eqbp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-54bc08ef45dso1822256e0c.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 02:54:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759744482; x=1760349282;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=02SeAVrxKSeRuZFXg8bu7j1SPQaB8goga81E4fHjiT0=;
        b=npfIrXSnNle/JOdxmsYJmSipw8yRYCuBlzvFDFZY1GudSrNUgMAeEBAFpM95fJFdUc
         uUc+lRrVBpNMI19+YfLldckGvMQbqgvdS+P7nZme0VGVpbQtmksUZs78yV69NNmFAeDE
         QMwKMUpBG/dt8tbPjJpsR9NutGOE0qiWmma7MHyRlmi0z3DiNDasb8N7F4IDZm7xySxe
         YXk7Jv00XnNgxJABsQieCtf01LU53hcHHIpauvdv+5jewCj/GHmPTikm7976mfxrv+/N
         bgZv9SZb4foCb61Y9EJPQIq0N8Sl3mGQ30zJfZOaaJh8v23nbS2RjrFRi6WDi/bsMqfG
         nDUA==
X-Forwarded-Encrypted: i=1; AJvYcCWa/BJ2q5zz6j3rjTxcD3WL0Lmj7xRVWMhsiHxJfqzPWEfLgP2y5iTyj+fxrrL3GVx7CUziY/j6TYZM@vger.kernel.org
X-Gm-Message-State: AOJu0YwkfS7p6x9+ogDLkOo23oBYcYtFGcefglzk15EueeAtdwDy4USC
	EVEkEvE1ZP+6+Astx+d0m6TwfiQaCQKqD9OHsH4ta7NSGn2jXHqG1/PKfv1YWtZq
X-Gm-Gg: ASbGnctoPzkjQPuthXsrz/2GWyJJIRD++SaBm7jkAjB+k0ceI2SnITNqL4mfnLQfZW8
	Cok1+YndylG+haafATq71jlVnTj8BYFiwhPIppI7vw2mA0YB7fr6UhUxI486RnJI2AKZV7QW8wN
	ez5i9OblshkrZyG5VzF1cGaigxL58Io8WVtvRl6Gbyu+Pd1IMQsA+iXCl2NuzsY1Sba3Nbsy+7g
	CMB1ImLdodIF7m2J7WBWcgx0pPd5kMiRwBQPvGMXqEXw8XkC2LoN8OHZRWo6CDXJpvkkBOMlQkG
	0BwY5//Bal98R0Wv1EOsdyr2Z/0ni4acWcUKpkO8GvO3bL2Ea4lGn7qGXu9Ug7uj2fGo7Skcgsy
	bz09hX3jSuUK+8XpLbHgsi+b0siLGw2ONVKtpfBd63utvpJ+WGbnCAutPPVQVvv3u8hJ6ABttqX
	o4rnRaYm+Z
X-Google-Smtp-Source: AGHT+IGebg2hFj816IKs1XqDaY9ajpg5KdgAG+jxYxf+q5jH6fyWkAgWdKSgDKTyM0VkWZRyIuf2Dg==
X-Received: by 2002:a05:6122:251a:b0:54a:992c:8164 with SMTP id 71dfb90a1353d-5524e8ee4d1mr4075522e0c.7.1759744482581;
        Mon, 06 Oct 2025 02:54:42 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5523cf64c29sm2862150e0c.20.2025.10.06.02.54.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 02:54:41 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5ce093debf6so4780384137.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 02:54:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW6tjhikXqaQQfgICss3sffyeWyXuqKUY4b12TAF12Oc8+yuOcnIRpAZWMSS4scmZbwueQJp/iw+gFL@vger.kernel.org
X-Received: by 2002:a05:6102:390c:b0:524:c767:f541 with SMTP id
 ada2fe7eead31-5d41d17e99amr4486616137.35.1759744481269; Mon, 06 Oct 2025
 02:54:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251005144416.3699-6-wsa+renesas@sang-engineering.com>
 <20251005144416.3699-10-wsa+renesas@sang-engineering.com> <TY3PR01MB11346E3690F0E74C5E1AF9B7586E2A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <aOKajKzRlrQD7plt@shikoro> <TY3PR01MB113460EB1918AD06D8F2ADD0C86E3A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <aONh89-5-llFZWue@shikoro> <CAMuHMdVUbENsdjCCqrn7e9=mWbs+J1kcat6LYU6vAcrBHzawBw@mail.gmail.com>
 <aOOPMG_bW_q8iM7C@shikoro>
In-Reply-To: <aOOPMG_bW_q8iM7C@shikoro>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 11:54:29 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW9ibqQ-r9HsL6oZ152pan8un2xTYcgeXAzZ-hqQQ7q8w@mail.gmail.com>
X-Gm-Features: AS18NWD4s_p_0gq0J5HyiXTg6GlGkZfHS9UmalB-R7l-fnnGUHsR4vB2071olW8
Message-ID: <CAMuHMdW9ibqQ-r9HsL6oZ152pan8un2xTYcgeXAzZ-hqQQ7q8w@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] dt-bindings: watchdog: factor out RZ/V2H(P) watchdog
To: "wsa+renesas" <wsa+renesas@sang-engineering.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, "magnus.damm" <magnus.damm@gmail.com>, 
	"linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Mon, 6 Oct 2025 at 11:43, wsa+renesas
<wsa+renesas@sang-engineering.com> wrote:
> > We do have "fallback" comments in other places, and I think they do
> > help in understanding compatible naming schemes.
>
> Still, dunno...
>
> > Would it be possible to handle this in dt-schema?
> > Currently we have to write:
> >
> >       - const: vendor,soc1-ip
> >
> >       - items:
> >           - enum:
> >               - vendor,soc2-ip
> >               - vendor,soc3-ip
> >           - const: vendor,soc1-ip       # fallback
>
> ... I think '- items' makes it clear that later entries are fallback
> entries. I am by no means a YAML master but this knowledge should/could
> be expected? If peolpe don't know that...
>
> What really is confusing, I'd say, is a mixture of entries with
> fallbacks and without. One can overlook this easily. So, they should be
> grouped IMHO. That's my previous suggestion.
>
> > If dt-schema would automatically drop duplicates of the fallback,
> > we could just write:
> >
> >       - items:
> >           - enum:
> >               - vendor,soc1-ip
> >               - vendor,soc2-ip
> >               - vendor,soc3-ip
> >           - const: vendor,soc1-ip       # fallback
> >
> > What do you think?
>
> (soc1 should be omitted from the enum)

If you omit it, how do you know it is valid to only specify the
fallback compatible value in DTS? We do have (non-SoC, but family or
(ugh) generic) fallbacks that must not be used on their own.

> Do you mean "# fallback" indicates that the fallback entry should be
> created? Or just the const item?

The "# fallback" is just a comment.
The new dt-schema magic would be ignoring the first enum, because it
is identical to the fallback after that.

> Well, this is ultimately DT maintainers call, but my gut feeling says it
> is better to be explicit than implicit. I do understand that the more
> compact binding documentation would be a gain, though.

OK.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

