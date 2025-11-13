Return-Path: <devicetree+bounces-238243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E260CC591A6
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 18:23:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97A6B3BE2CD
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 17:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B31359719;
	Thu, 13 Nov 2025 16:53:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A0C3596F3
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 16:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763052838; cv=none; b=VOdyJ740sSWyQUj0HkxlYW2ZkSFoiQy8rH9352nvMiL5mgh6R6o9zNbib0szrGviqqCZT9p6fTQuvqaOBqU5nk6fLok6slVc1IYFfIlMl0itsYlTHh0UlQlihN9xlgopOiv48ED5MVcPQ4hwPYFOimPbn0VAv6Ko5iftxXL4GTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763052838; c=relaxed/simple;
	bh=JsV/8/54jQvxd0kSYYLeIfmgPFGknt20dq0zvf6pcTo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Dz1XiaYoSsHTsRqaD+QM78CRHC8gSsWDRs0NHw7/wEmfVIZ6zm0nXzVzBohv8A7QSM4ezWpp259LMtKcjwq7vcZeJoiuQ7Cy6tWWrodr1mwykeALewUCfFQthf4HTTt7Ve++j3RwNWIty88h3Ci8LiK7zKTRNrAdSXC0IXcWr5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5dd8a02e808so806689137.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 08:53:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763052836; x=1763657636;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ALBRC4wvbYHISURwEdik4fuZyBrb01I5jhftggw+rBA=;
        b=KwrwHeH0jupU8Sl4DJ/CEe62jsiECc8Ou6pp3J6YbPCBkDoxeELKagArmwvW7invrT
         dOQwKEaG9sfb0mBCAbIHuwsa2Q144/3MiDP1bTkC4CSsc+97tnIbeqpA6EYGBNaGYVtV
         kb0ce/eZoUSXghn0x8dIdp9RfiyVDVm8w82gfE6t4KUv9ZMzmqkdF0aC6eaRb7RlR0n9
         pSdlDlZen8Wbo+CO8ygnC4YFWPRaukrQwJmtJOQaMrf4a1fG0gxxsqr5HBym3V2gwo+X
         PqCoL+XMKP+nu4uoCP4kkCj1lHwDhCWe/bJsefj6oIkyjHOwEbUPoZFe6MhM6Xpn2MYs
         YqUg==
X-Forwarded-Encrypted: i=1; AJvYcCWtdDhN9CW4lft7HvdANc+mlVG2ZsxkoCyZpGkre0DFNe7trEA9h+e85i8RBwX+rbTjpUI0oQiLzTBa@vger.kernel.org
X-Gm-Message-State: AOJu0YxJLguxeCreWk+XTRycSJajDvJK4XlIOn93K4oJ8LmBH1thT7+Q
	SYRuSXrMnr4IZrXzoUVQfAQxipeonVFSx6Vek0zGEP1bArVbhhpLE8PTsuMK4D8Q00o=
X-Gm-Gg: ASbGnctYyl5mVmhcdng9l0Us6oItOiskYL43pYCOdad9lqCchDbQeQCQVMWRsPyVXu+
	gYi5yE7NYJwvtKcRw6RYoaSK2Ego/vYqRsbKCdj3pXUhzItbiHgboMT5JZAZrySklnZV952m9z5
	2qvrsWr7+piKxvwuedRMcStRFEE4m+yZNMpVgHM58r40alhnKgMV8ZbNN0YXPaQiYQD2+MaLwPn
	cYBJuuOfgdVTaBSL5eiBwBVJmiT/KSHePq3UqO7QMIKQKLU7NhUqiEOW/sj89W39DwRo/6UCQUM
	uCL+35y4+o1phY7ZKt7tiBKdy0rlOuJu+NK+NAsMisKa8KZNqNJxs0ZCAonz5roAmq9jOKTo22C
	pVqH0H3/OxguW/YZ8WQl/oUAR9Lj8BeeUcdqyi3shJ5Lj8/L5hJXrAib4JZOS2nS6Oducj7rLA+
	ekm5KuuedNmsd5u2aZjKhT6ftC/CdvQOMzwFKwow==
X-Google-Smtp-Source: AGHT+IHr/P1MuwoAhLk0MdgCpMpAY/vs7CuervLAcMLQAz5T9/lwyg8pkruTezNTZ3IhlS6P/t2cYA==
X-Received: by 2002:a05:6102:4189:b0:5db:d60a:6b13 with SMTP id ada2fe7eead31-5dfc5b94384mr183866137.21.1763052835754;
        Thu, 13 Nov 2025 08:53:55 -0800 (PST)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5dfb70ea49fsm749924137.7.2025.11.13.08.53.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 08:53:55 -0800 (PST)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5dfae681ff8so642523137.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 08:53:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWiVMDyfEe6+l3roslBkvFJFSY/lMxjR+OugZaOfY6D+Xo42equd/3Zo/O8bg6PX+sWikxzAL6deCVA@vger.kernel.org
X-Received: by 2002:a05:6102:4b82:b0:5db:25b5:9b5e with SMTP id
 ada2fe7eead31-5dfc5b93ff4mr177461137.22.1763052835289; Thu, 13 Nov 2025
 08:53:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101050034.738807-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251101050034.738807-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251101050034.738807-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 17:53:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWfHwht8VUSyWHJi90kgt1gnz7Nh4VEBfoBveaZsfquhA@mail.gmail.com>
X-Gm-Features: AWmQ_bmlVtkk56vOIDIOnwx-1JovK4RapbFc85Q7wu_rCX62rAKZtONV7Zi4F7w
Message-ID: <CAMuHMdWfHwht8VUSyWHJi90kgt1gnz7Nh4VEBfoBveaZsfquhA@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: clock: renesas,r9a09g056-cpg: Add USB3.0
 core clocks
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, 1 Nov 2025 at 06:00, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add definitions for USB3.0 core clocks in the R9A09G056 CPG DT bindings
> header file.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in a branch shared by clock driver and DTS source files.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

