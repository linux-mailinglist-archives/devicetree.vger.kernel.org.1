Return-Path: <devicetree+bounces-240119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9237DC6D8B8
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 10:00:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0EBF74E45D3
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1588A30597F;
	Wed, 19 Nov 2025 08:53:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6312B309EED
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763542410; cv=none; b=n8rFfVmCHrQoJhZjHI9PqqHNDEqlnYmnVJ4xBbjMWSw5CPlxHitcPRWWNnmMVHi5eHoyLma7hGoLyxYiM4qoCEgluOMj+i4DQW0wwz2qQAQsAOOGAKGGbyeZpPtfskOFEGDqzWa5dqTuJj2H0pGIdeC34LuTsV5WvkPpZTXxdhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763542410; c=relaxed/simple;
	bh=x1ETO9gQBzCG9IxfyuhO9nUfEDSqlzn/l2nzh3hu+os=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e58zLrgw0PoGHt+s63WR+5nYN3sgU/+nPplWQLbk7YMxkBr/poyGn5jDG5Ke68E32Wx7Z1+nNbiWTXuW72Wnt6bvPT+RqEQlGlQKoj2uYJFsXZilHmidprQvspqpHLrZsk8JZGzZHx3lVBR3tmWXZzNIZ4RUQDI0DXxtT7X7Lmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-93a9f6efe8bso310763241.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 00:53:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763542407; x=1764147207;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LS0PIRW3Q0/zfkvWSrpPbMhxA5dRo1SmIMgccBT+00o=;
        b=VktJzzhfJ32CatifR1/3QWUAP+nUlTaYF2N8xetliAGXYWbSfKTnSt46ZhQWpt+vVY
         329HqBrtTqwGUCIwkVG3cG4JwF/seAADyxcusDtGQmzF38fxJvuDpEoa9CqZM0n3L0Ty
         JzmQXwY7N1shNWveeftuZYSSgdaD00oTubBtnGPG7IALNQS7+fmq2wXhx94Cc7SiAX6j
         pqkmRoDzL2D35Sf811jO9auIwvY0/XpEBnXcFk2vZ9apGw+1XyxEL0T3tM+JQVlnaJ0x
         owokdnlxwglRJnb7z/Ry3mCBPFKz1HvLZKu6tpui4oJHm9OG74mDjHoWOj4tAqu6IXEz
         ysjA==
X-Forwarded-Encrypted: i=1; AJvYcCXGqR6JJ8rf9bGk33HcIqfFVmR/YiMLTFefedplx9p80xngK9gU1PeD7IznAZ85zeRQXbGuBhetNvez@vger.kernel.org
X-Gm-Message-State: AOJu0YzEYVKCGFYBuiwSom6w/NGrtGFaplZ9uacESKtaRzYjzcqfxK+F
	Zs5yrYCWKZgUE7rdHe3FU5efA5nGYsagAOSI7vnO1h7KM/KqiC0GIfqRPSyi+wTd
X-Gm-Gg: ASbGncsPMcQepNgx/2p+R4xDngITti0gV6qTjk2Ygj6iEajzSZ3+aePdTR44qjGsG4C
	zehzvq4Bj6VyubBNaRcG208V4G028TLMPWgYPCw7wFbyg6tj+toiH7I+QLoppYEMbY35cDpzVqY
	2COA6VTHEa9rS/PL3hstDnVg8oN8kmhTlnvBSTLdws87SvFwJYbgmMk/gKjkNbCzF7iGg6YEB9l
	fqXh7fMEdLrIY7iCQWkXDYAbYDbPlj+We8nC8a8Liq3fqfoF8+HjCdy+zn/WoUvxhFPtL8hgh1N
	oFMXOhxq8bIN10cTrbJbvBlMoKX1SSvWEDfzpfGoVES3rKN0R53n5DVEci46bVay0UJcKXIZf5/
	HAuh8eHIwwOqfaeFxS7K94MmXlwq7u28I7xZPP96OC5L29WgDXEzPh+43Abh2BlmvmLkW5bYwIi
	s/Ma5547Sui5co6m4z6XTGHdbezsVnP4xZYpQ7pSRr1dAlzoHE
X-Google-Smtp-Source: AGHT+IH8o+0ecoE6Uvrf5Ryi8sl0Ub2pP/MiJacmRaYgdgfCPZcgkwmL65rx9fapGrOK932WX1YppA==
X-Received: by 2002:a05:6102:3a0a:b0:5db:cc25:dd7e with SMTP id ada2fe7eead31-5e1a6dff717mr481585137.34.1763542406930;
        Wed, 19 Nov 2025 00:53:26 -0800 (PST)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5dfb707521fsm6400336137.2.2025.11.19.00.53.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 00:53:25 -0800 (PST)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5dfd2148bf3so1683653137.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 00:53:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWkGUno06KrwAy3fEpAeBBLZGZ/xvL4yCQ2dU+fqOjirxCje2ZlsMKoTLB9cbZEZFU55kfeSS4SeTJw@vger.kernel.org
X-Received: by 2002:a05:6102:41ab:b0:5df:b4a8:fbaf with SMTP id
 ada2fe7eead31-5e1a6dfeb50mr481222137.31.1763542404865; Wed, 19 Nov 2025
 00:53:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <fbe6fc3657070fe2df7f0529043542b52b827449.1763116833.git.geert+renesas@glider.be>
 <b037f67a-b241-4689-9914-57ff578c1454@sirena.org.uk> <1a4d2276-75e1-4aa0-8ff2-c932ce5d6edc@kernel.org>
In-Reply-To: <1a4d2276-75e1-4aa0-8ff2-c932ce5d6edc@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 19 Nov 2025 09:53:13 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXgq=Zv3GQes_d_eyCcB7m--PaEGSQJtUWiRjj-7gBVkw@mail.gmail.com>
X-Gm-Features: AWmQ_bmK2x20bqzBbl34KnFcBc219BFFPGMTWyPQr3AqlLeaP7gK9n05hJwL6mw
Message-ID: <CAMuHMdXgq=Zv3GQes_d_eyCcB7m--PaEGSQJtUWiRjj-7gBVkw@mail.gmail.com>
Subject: Re: [PATCH v2] of/irq: Ignore interrupt parent for nodes without interrupts
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Samuel Holland <samuel@sholland.org>, Marc Zyngier <maz@kernel.org>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>, 
	linux-samsung-soc <linux-samsung-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 18 Nov 2025 at 20:55, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On 18/11/2025 20:34, Mark Brown wrote:
> > On Fri, Nov 14, 2025 at 11:47:54AM +0100, Geert Uytterhoeven wrote:
> >> The Devicetree Specification states:
> >>
> >>     The root of the interrupt tree is determined when traversal of the
> >>     interrupt tree reaches an interrupt controller node without an
> >>     interrupts property and thus no explicit interrupt parent.
> >>
> >> However, of_irq_init() gratuitously assumes that a node without
> >> interrupts has an actual interrupt parent if it finds an
> >> interrupt-parent property higher up in the device tree.  Hence when such
> >> a property is present (e.g. in the root node), the root interrupt
> >> controller may not be detected as such, causing a panic:
> >
> > I'm seeing a boot regression on the TI x15 platform in -next which
> > bisects to this patch in -next, unfortunately even with earlycon (though
> > just earlycon, I don't know the platform specific runes) the board just
> > dies with no output:
> >
> >   https://validation.linaro.org/scheduler/job/4252918#L409
> >
> > It does seem like a plausible patch for this sort of issue though, and
> > the bisect converges smoothly:
>
> All Samsung platforms fail as well. I was waiting with bisection but
> Marek was as usually very fast:
>
> https://lore.kernel.org/all/20251118115037.1866871-1-m.szyprowski@samsung.com/

Yeah, the various ti,omap[45]-wugen-mpu nodes have interrupt-parent
properties, but no interrupts{-extended} properties.

Does the following (whitespace-damaged) patch, to restore finding an
explicit interrupt-parent, fix the issue?

--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -685,6 +685,8 @@ void __init of_irq_init(const struct of_device_id *matches)
                desc->interrupt_parent = of_parse_phandle(np,
"interrupts-extended", 0);
                if (!desc->interrupt_parent && of_property_present(np,
"interrupts"))
                        desc->interrupt_parent = of_irq_find_parent(np);
+               if (!desc->interrupt_parent)
+                       desc->interrupt_parent = of_parse_phandle(np,
"interrupt-parent", 0);
                if (desc->interrupt_parent == np) {
                        of_node_put(desc->interrupt_parent);
                        desc->interrupt_parent = NULL;

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

