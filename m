Return-Path: <devicetree+bounces-248926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C04E1CD6CA1
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 18:17:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7AA8130024A4
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 17:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A9AE2F6594;
	Mon, 22 Dec 2025 17:17:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973FD339713
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 17:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766423842; cv=none; b=FPDGggddVA+Smz78c6rVM1T3QkjXKYexfXgcbSf8bRrmbx065BRTZo5ecdWu8iytMIQOL0k8Bw9zidVqcxi1o7d1Z96HLfusIWukdklpJraGtdHcAa0hTyrcuKwhY+lDUCT4CCGERJKVKPQh4eMaSaxOaIhqeI4zIdtscaIf3OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766423842; c=relaxed/simple;
	bh=ARCeP+FjHLyRQ/TFOxypXSIG5GzrN1OmBElkgW/ggfU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XCy7SYkFXl3gw6anF9HgDLfxe8QW8NgUzj7JuzE3INlUB+qQRRyCBIg3dw7wUGDzBrDN6NqGbjDNDi5f89IwkudZtU9rXZaLe9XAztMzDZBlECjBP3Hf2dce7urLI0Qv6NA7AXzpC4fw6VjCOvf4GEJUaApkDRRZOEu6fziHL1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5dfae681ff8so2859835137.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:17:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766423838; x=1767028638;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sE9KE2Jyhtg/iXF/CUsw7RlDbWGUrFQq1WT3oqM9mXY=;
        b=MBepieE3frhObCPafWZcWENcGmJMLKE9At3ujGVIiUJWxefunr7FtWuViEiKkq4cjG
         o9LB7qRFtd92q4pUqVOtJy8fKbUD6Rhe6oPW+kBR3ivMPodnvpHQHLfxOFoJNqX2i6R7
         K8LNZ2FUF04wqu2xaYKyoYHWnEsz8UTmsxi/IM/xxoCe6ZF3HoYZd0DKXF66JA/ETy4k
         UrGAB9L5Zhm9K/yuaAMFXOifzRtxS3JnMCLMw2Nv65vxEjboC68M2F/+BtyOM6+Hy9s+
         NQx0UwGj+Tp6VRMOFHuR/Hfl9O0wVxfUassYdB2g9+45hD1qn0FMlkGx22qCVFGKZoZ9
         6FcA==
X-Forwarded-Encrypted: i=1; AJvYcCWCLwf2HhcXT1ZHVdqjAg0q1MjU9jLHLYbIX8m+oQ2tAaQzzbtcRSHqjcNVS8ECpwMGfZP4BLyZyRTa@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhd4/INTnbHT8AYXyuev//Q5Qgerq0aS3f7mw1HSwfjCjD+zNB
	vUyhaCiCvhH+l3Ocln6czgPWXzxrIEYxC9r2vyxBEopAl1nAnER/879SeqUoakft
X-Gm-Gg: AY/fxX4/uc+Gz+IxEsARveT6od38Ec/+H/6HljzG/S/EifUBeGbChIvEIk+pVS6oIDo
	xJwsNEfvvYaZWqTR4onEPGR/YrAxWh3l3f0QE+Tl3UIPiEiY8vf/7Wj0RlN9/oFkGK/7CrRGTHj
	hgVaTc/62UtznwS3KNUMw5M49ExaV7pqFqmFIJ6oELx01Qn+XgWN27cw8PvE9LSs6BzWA6QhFmz
	38SWXJySz4iFM8LkV7PMtg2UmlLYt6o45BPyjbJP/WbVf7xqD056PgE8Ik4h/GCi/YrHtHwElOl
	0oZxJsJEDeOnC7qXf7KSEHrlzz1tA5B3Pu1ysHQkkwM9xqJbp37tnwyiB5xVCaxfWzyvVSA697w
	sWUOQD4cYeAntfiuUq27N3xJih2LVhUTCys3OEF/h+gitivr4A4AjZdkYvdsbaQ+SyGHpVzakt2
	LjOF/eviW05P/6UGwa+aHEbyMN/J3+G+0QLUSEQ/89WkyWKoL3R3jM
X-Google-Smtp-Source: AGHT+IEZe/i4u5GBECZovjWaIaKTvKKuirEoFa5r2jYo+FSA2Tgrmot40Ned9DSZhFUUsuBdlJXObA==
X-Received: by 2002:a05:622a:115:b0:4ed:b134:38ea with SMTP id d75a77b69052e-4f4abd798c3mr161880051cf.41.1766418073307;
        Mon, 22 Dec 2025 07:41:13 -0800 (PST)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com. [209.85.222.169])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d9623fe52sm81935316d6.11.2025.12.22.07.41.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 07:41:13 -0800 (PST)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8c15e8b2f1aso58901985a.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 07:41:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVSbL9B5YnwMNiFGBTnmttSjBbP9nxXMGM2mxKDOkiS8FHZkhp2c3muny1Eoo5QNZ82yhqKCBTvfSJ/@vger.kernel.org
X-Received: by 2002:a05:6122:4f97:b0:557:c697:a30c with SMTP id
 71dfb90a1353d-5615be24746mr3595228e0c.15.1766417747921; Mon, 22 Dec 2025
 07:35:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215142836.167101-1-herve.codina@bootlin.com> <aUZEHSNqiMuHrCWb@shikoro>
In-Reply-To: <aUZEHSNqiMuHrCWb@shikoro>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 16:35:35 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXTZ2LDs-nFQRh+Q5YAW_LD+j6j=Mzv0RxyB-1wnJgbuQ@mail.gmail.com>
X-Gm-Features: AQt7F2qPotDDz05zRLM4l-WdqTP8Y-ChrCcklHPqoMfDZgCa2sIooFyMFfI1kSs
Message-ID: <CAMuHMdXTZ2LDs-nFQRh+Q5YAW_LD+j6j=Mzv0RxyB-1wnJgbuQ@mail.gmail.com>
Subject: Re: [PATCH v7 0/8] gpio: renesas: Add support for GPIO and related
 interrupts in RZ/N1 SoC
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, Rob Herring <robh@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>
Cc: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Saravana Kannan <saravanak@google.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram, Rob, Thomas,

On Sat, 20 Dec 2025 at 07:37, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> > This series adds support for GPIO and GPIO IRQ mux available in the
> > RZ/N1 SoCs.
> >
> > The first patches in this series are related to a new helper introduced
> > to parse an interrupt-map property.
> >   - patch 1: Introduce the helper (for_each_of_imap_item)
> >   - patch 2: Add a unittest for the new helper
> >   - patch 3 and 4: convert existing drivers to use this new helper
> >
> > Patch 5 adds support for GPIO (device-tree description)
> >
> > The last patches (6, 7 and 8) of the series are related to GPIO
> > interrupts and GPIO IRQ multiplexer.
>
> I think this series is ready and I would really like to see it upstream
> soon. I wonder, however, if the path to upstream has already been
> discussed? It touches various subsystems, so I don't see immediately who
> should pick the whole series? Or if parts should go to different
> subsystems offering immutable branches? I bring this up because I want
> to avoid losing a cycle just because this is unclear...

We actually did[1]. Unfortunately that plan was never executed.
The DTS patches I can easily take through renesas-devel, as they have
no hard dependencies.
For the remaining patches, I see two options:
  A. Rob takes the first two patches, and provides an immutable branch.
     Then Thomas takes the irqchip patches, and I take the rest.
  B. Rob and Thomas provide acks, and I take the whole series.

Thanks!

[1] https://lore.kernel.org/20251114124045.16204839@bootlin.com

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

