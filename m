Return-Path: <devicetree+bounces-230364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95438C01C32
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 16:29:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB2093B52B5
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:21:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A58703093AB;
	Thu, 23 Oct 2025 14:21:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D341A329C51
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761229289; cv=none; b=UC6wTClzuF5hbP01AbzluzsMly3k37gIHhmsfmXyBSzZv/t2aMEUe/TYuCS1p1/QYRcDifAFkEjf0vpLeVg7X+T0WShbcWfRQWeRo7XxLldOEDDMX0k9boYT7JVtZ2ua47t2cxUU/63d0ntOkfA23meCu+DlOfbjIe6bb5NtkAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761229289; c=relaxed/simple;
	bh=TR7zlOg9lSlA9ANoIApwm25S9VrQTmkZ7BlIZp3yWzs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DEmqmZc58LL23DuXtsolo+Gp/bLCoIm5LzCSXvXud8nGJoF96lSX+nJcjIfXoKQxkxoR9OBe83rf3LLgMuKdd9omXItOXgDc/rGdTSNgC43fTAWtxTWh5v8BxR74b7T1tjeCqntlGgTB7e7V9u5m+bWvq7nvqVaRkd4rvdOvnms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-930ae1b2627so611212241.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:21:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761229286; x=1761834086;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pUiJSOGezbV9/gcxRXe7vCcpv1VybDaME+fAsfjpYbw=;
        b=omEwHniEyWidpyHt7o2cecPFfFbwTA1qhs2eUh+In8RckgdqYlWU62XfIB9cCp6vue
         k/3tZVz0SjKoUy0m1QYNpuzOIiXVIdqhbgLRp3KpuBG0F28hRjTweA3n+8k37ECQt4wG
         gTK9EqGjswiVgXOkiAD1sOcXmqruOD/NS0O2zlxe9zkviVNkBdRuNGo2SFqCUEHqgXY4
         4b8fO+/9waWV5lF+yzH5RM+2o09sAgKLFGfb3sOflAcAWLMKQr5BobBX9YD9Uca3uRc4
         6AniHnphb0A5GQtrLNBoGbJ1ondyYA5q/9Pdludo9Ao8WjivMzsbK7voYmlLRT/GI0WV
         pUNA==
X-Forwarded-Encrypted: i=1; AJvYcCXbCrZSOBbMmFFyIARA5EzBHzhcZj8sTKgfGsNGt1IFUTLP6a72T812eHkdSziTiepj6MG0AeB++OAK@vger.kernel.org
X-Gm-Message-State: AOJu0YzsVaChS1hEB7zNAVKJ/a7U05Szo1ibdLnHLwhzKABFHpltpJ5P
	b0MlrYycO5gVOcYNYav5GbDu/QtGZLFKQ/LvbEwhaWeY51QYRkfPjVNpGY1hTah7
X-Gm-Gg: ASbGnctI5+Kl2H1na6Sy0a4B4tK7ORMq+8++th1720OJI4whZXl/k44m8TICz1+77pT
	SYExmnUVp66Vobq0Wff4sdZVPazuBMZksRJnp6nDhVivsjhtbQwO1DnqUlMpJ2aM+hDEEXUjGlE
	kSc3Gs996hOXl30zrd2X10mUs+pOWxXPlQTtrhe3HrPnn68yAS2FihbSuh04ThOMZCOpdxCxb3K
	GOBJnVhMWxAEC+BsZW7Xv9TCGFpXnFNhbNNinlinY8Q2ILfVyoWzPZVQ8FNIgGxzVGzO/R9XUO3
	5N6bG0iC+jvjkG83naUejmWdfg/hQKFN1vxVCC/RHk8UxfzYbUVt3tR/eN1vaDdcHlsd1R614i5
	ngfnnon1hYX0VoMU0M78QglUHoisVhZRzCE33fq0Pn5b5saXl8oggiTzwvabg16Nx5RuEtgA7yk
	3fcE/+c/nnx3lKnFU+5PYJF4H4a2kZjOymetkPGq+zo7cxZV1j
X-Google-Smtp-Source: AGHT+IGA2sI/6aUiGhtUCsXOIuJBWbpIdo5vmpoEC6bYPEHUi5zgpF7SBG7fGftqh8HEui9Hgv/eCA==
X-Received: by 2002:a05:6102:b02:b0:5ae:f88:23eb with SMTP id ada2fe7eead31-5d7dd5e5d6fmr7998700137.30.1761229286378;
        Thu, 23 Oct 2025 07:21:26 -0700 (PDT)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5db2c56baa7sm921950137.0.2025.10.23.07.21.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 07:21:24 -0700 (PDT)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-930ae1b2627so611162241.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:21:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV9dpErigLHVlPh/F9IIwSTNHjrkMQsxuXIxDiU20+7ur/1SuefizQ/UxJX8kWWbGRw9PHN8rpSeFXq@vger.kernel.org
X-Received: by 2002:a05:6102:5106:b0:5a8:4256:1f14 with SMTP id
 ada2fe7eead31-5d7dd5eb057mr7937173137.35.1761229283909; Thu, 23 Oct 2025
 07:21:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007133657.390523-1-claudiu.beznea.uj@bp.renesas.com>
 <20251007133657.390523-3-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdXF14x68Wk5YdOBS2D2N6LtnQjfGzrsMdSJegX-gc3faQ@mail.gmail.com>
 <6c69d2a2-5dfe-450f-8a39-2ef6e7a6dbea@tuxon.dev> <CAMuHMdXLiN0kUVJtdEYVnsmnCEbN4hSs5KEhMXJhf7p29xv=0Q@mail.gmail.com>
 <f09bf940-3d45-49b1-8d7f-9c1a96acb187@tuxon.dev>
In-Reply-To: <f09bf940-3d45-49b1-8d7f-9c1a96acb187@tuxon.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 23 Oct 2025 16:21:11 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXx=5YQSmSsw1+3otw9S_Hf+Tv+N1Y1iHiU0OOTyz4bjw@mail.gmail.com>
X-Gm-Features: AWmQ_bntosPEVOR4ph6dmWLKdA_CbWSKXTDRFcmNnJAAp9ekneiOOs4jYqpQulM
Message-ID: <CAMuHMdXx=5YQSmSsw1+3otw9S_Hf+Tv+N1Y1iHiU0OOTyz4bjw@mail.gmail.com>
Subject: Re: [PATCH v5 2/6] PCI: rzg3s-host: Add Renesas RZ/G3S SoC host driver
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, 
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, p.zabel@pengutronix.de, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

Hi Claudiu,

On Thu, 23 Oct 2025 at 16:13, Claudiu Beznea <claudiu.beznea@tuxon.dev> wrote:
> On 10/23/25 14:02, Geert Uytterhoeven wrote:
> > On Thu, 23 Oct 2025 at 12:54, Claudiu Beznea <claudiu.beznea@tuxon.dev> wrote:
> >> On 10/23/25 11:00, Geert Uytterhoeven wrote:
> >>> On Tue, 7 Oct 2025 at 15:37, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> >>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>>>
> >>>> The Renesas RZ/G3S features a PCIe IP that complies with the PCI Express
> >>>> Base Specification 4.0 and supports speeds of up to 5 GT/s. It functions
> >>>> only as a root complex, with a single-lane (x1) configuration. The
> >>>> controller includes Type 1 configuration registers, as well as IP
> >>>> specific registers (called AXI registers) required for various adjustments.
> >>>>
> >>>> Hardware manual can be downloaded from the address in the "Link" section.
> >>>> The following steps should be followed to access the manual:
> >>>> 1/ Click the "User Manual" button
> >>>> 2/ Click "Confirm"; this will start downloading an archive
> >>>> 3/ Open the downloaded archive
> >>>> 4/ Navigate to r01uh1014ej*-rzg3s-users-manual-hardware -> Deliverables
> >>>> 5/ Open the file r01uh1014ej*-rzg3s.pdf
> >>>>
> >>>> Link: https://www.renesas.com/en/products/rz-g3s?queryID=695cc067c2d89e3f271d43656ede4d12
> >>>> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> >>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>>
> >>> Thanks for your patch!
> >>>
> >>>> --- /dev/null
> >>>> +++ b/drivers/pci/controller/pcie-rzg3s-host.c
> >>>
> >>>> +static void rzg3s_pcie_irq_compose_msi_msg(struct irq_data *data,
> >>>> +                                          struct msi_msg *msg)
> >>>> +{
> >>>> +       struct rzg3s_pcie_msi *msi = irq_data_get_irq_chip_data(data);
> >>>> +       struct rzg3s_pcie_host *host = rzg3s_msi_to_host(msi);
> >>>> +       u32 drop_mask = RZG3S_PCI_MSIRCVWADRL_ENA |
> >>>> +                       RZG3S_PCI_MSIRCVWADRL_MSG_DATA_ENA;
> >>>
> >>> This should include bit 2 (which is hardwired to zero (for now)),
> >>> so I think you better add
> >>>
> >>>     #define RZG3S_PCI_MSIRCVWADRL_ADDR  GENMASK(31, 3)
> >>>
> >>>> +       u32 lo, hi;
> >>>> +
> >>>> +       /*
> >>>> +        * Enable and msg data enable bits are part of the address lo. Drop
> >>>> +        * them.
> >>>> +        */
> >>>> +       lo = readl_relaxed(host->axi + RZG3S_PCI_MSIRCVWADRL) & ~drop_mask;
> >>>
> >>> ... and use FIELD_GET() with the new definition here.
> >>
> >> Bits 31..3 of RZG3S_PCI_MSIRCVWADRL contains only bits 31..3 of the MSI
> >> receive window address low, AFAIU. Using FIELD_GET() for bits 31..3 on the
> >> value read from RZG3S_PCI_MSIRCVWADRL and passing this value to
> >> msg->address_lo will lead to an NVMe device not working.
> >
> > Oops, yes you are right, I went a bit too far with the FIELD_GET()
> > suggestion. But replacing drop_mask by RZG3S_PCI_MSIRCVWADRL_ADDR
> > would still be worthwhile, IMHO.
>
> OK, you mean updating it like:
>
> +#define RZG3S_PCI_MSIRCVWADRL_ADDR  GENMASK(31, 3)
>
> // ...
>
>
> -    lo = readl_relaxed(host->axi + RZG3S_PCI_MSIRCVWADRL) & ~drop_mask;
> +    lo = readl_relaxed(host->axi + RZG3S_PCI_MSIRCVWADRL) &
>           RZG3S_PCI_MSIRCVWADRL_ADDR;

Exactly.
Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

