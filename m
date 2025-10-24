Return-Path: <devicetree+bounces-230770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 787ABC05858
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 12:10:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13BEF1A07F28
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:10:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5420B30EF93;
	Fri, 24 Oct 2025 10:10:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5AE630E85B
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761300607; cv=none; b=HhiBuekGxqJ3T0BNMFPYRewybEVOPToH9dmiKLJ50avBG5GpUiAp+hZqpPakawfi7UxPSG/cqcKmYNVX8LAPPsrKRcv1vQSqHPu+BEU5CMPNXr68cJQySYHaKDpyyUNq+pVBMvbGEEIxF7A1eBOtJE6izy/319GekcTFPKS0MmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761300607; c=relaxed/simple;
	bh=6MpM/czxf/6Hh1L0dLLUemfAUkQnQOxKAeYfzG6IdBI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dcLJEwPzXN20otn7aGfUoWYAyHxsvwxGQEW3qrFwdP8b6rBX9rjLZXI+D3Il2KjyoaZQoqORhIuY2H7IkGulrVHolHggzLf8gq9fel28z2L5UsWipgm8aWFqsTNg5bb32sl+XFrRNBl3hEFYs1j+OTv9W8WWEwh0cXhceDmlDDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5db24071011so2426324137.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:10:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761300604; x=1761905404;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UT8Wdcyo2x3pLAZUDoU//zKTO9XrNWcZhxUqd4p60Fk=;
        b=ei2T9JJYr1fbsC0PStCnPCC6vQy4wejIQ/gBAr7W9dGtqc1AAlugKT6pUx5t85PUS+
         MkYRt/FGzKL+mM9ypqF0GBLimu7ZsQ3j8/RdoPNHkVHOgqlwRr0tmB21BckrbGIZbyO5
         kygNI5e4a45LS7jz430667P36TVgUQFry6GAtk1x0BoR9MSIffKd640ItdfLOgHfP2UO
         oZOCsdUoDWtHUuVX0zoUqRiGYNqJ+g300BL6aTibDOpxDc9Qw8P1QjQMMlSlNx7+xz0g
         2fwI9eQq24pdnAZAiP35yFmzwYVPEgBcgTJqxkOvZsk+uUjGiKHWIeDAGwp6kB5Y4i3s
         6Kjg==
X-Forwarded-Encrypted: i=1; AJvYcCV2mv2uQWxrBNB/H8syD4SnjmK5/Cnmpkz8pfLd6hCAR+LvEihVDc0f5vkVKg5ZtowjvKXAJJkQ/I4v@vger.kernel.org
X-Gm-Message-State: AOJu0YzmpiBHTqiIbCrvX01olrUU4ZAB34/J7l2d1vLKj4DiC0AWu1Ea
	MDwlmpbaAWWayp4W9kDdXDcVT4KvVbmDBfMPIZHrd3dp3upng82a5KscFuACR4Hz
X-Gm-Gg: ASbGnctjwcq9rR2EcrnpN8fzksnFA2xzjLuOQvba19qGwCGfJ2ps/Bt+mXTZRDHh91e
	DccLQhnZuQ+8ff3M06QJo3uYA2myuvMq25X9TtP1BrpQxjv7DcC6W3o8ZgNDKwEP539J/XauATV
	qgBuLqUXOBWRavqzMtHz6Waw799fBwK3+c/oGm+Y8O6TKZdeyqHfW1A2bh7IIpRU6MxJ+XUwAUN
	jQ06pzKaLvDvQCu1FE3iq08QnezjHm0tldhgSvBkyDNTBgvS6LMde9KMgUMfcBHV+B4pW8z0g7O
	0NWgZc8VFWL+ooYLnO/Kzbp/An/VsNaE1gvolXaDTI7bEvt/2APfSFmQ5GF38yCymDBNGm0f6W6
	g4csOrCw8ws5CeY8/bGbGGvOmT6McCWEWaGVycM3AgsFRCH1yJfrRcBn9m6WLLJPESLz0EPE6SO
	1nCSesHv3i1eFLdk7vxo5EqVRBstypHwWmsRicU4jAhgCSxwEj
X-Google-Smtp-Source: AGHT+IFEeRT4bCilfHhZhOlUU250Uqmmj904P1WJVIqdV5OEFB+gzl9/PONaDBEL2YwLPPkr0OS81A==
X-Received: by 2002:a05:6102:a48:b0:5d6:12fa:b4ec with SMTP id ada2fe7eead31-5db3e0f2071mr627005137.4.1761300604304;
        Fri, 24 Oct 2025 03:10:04 -0700 (PDT)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5db2ca7d0ebsm1999208137.10.2025.10.24.03.10.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 03:10:03 -0700 (PDT)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-932c2071cf5so2172248241.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:10:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV/l5+eAXAXpPsaBf6mbhoPSJYnzOrsNWiD8NR9nzWgb3J9putDTAOzCeP/rh/3rqgZz5b9uhE/at4f@vger.kernel.org
X-Received: by 2002:a05:6102:54a3:b0:5d4:1499:99a4 with SMTP id
 ada2fe7eead31-5db3e20ccfdmr599456137.13.1761300602852; Fri, 24 Oct 2025
 03:10:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014151325.160062-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251014151325.160062-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251014151325.160062-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 24 Oct 2025 12:09:52 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV=e3rj77BV0eb++KniTqHSTmDpX-1O5AFBODxOf+s7ZA@mail.gmail.com>
X-Gm-Features: AS18NWBX708mbwXNFoDh6ZLkVdZtZB1QvklxJwBzxdLMFKS22IAaBo88zTThT5I
Message-ID: <CAMuHMdV=e3rj77BV0eb++KniTqHSTmDpX-1O5AFBODxOf+s7ZA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: clock: renesas,r9a09g077/87: Add XSPI0/1 IDs
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 14 Oct 2025 at 17:13, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add clock definitions for XSPI0/1 to both R9A09G077 and R9A09G087 SoCs.
> These definitions are required for describing XSPI devices in DT
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in a branch shared by renesas-devel and renesas-clk once
the issues around PATCH 2/2 are resolved.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

