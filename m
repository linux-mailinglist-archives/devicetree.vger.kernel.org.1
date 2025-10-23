Return-Path: <devicetree+bounces-230210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A88C009DE
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:03:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95BB71885F5F
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9078530B512;
	Thu, 23 Oct 2025 11:03:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABFA43043DE
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761217390; cv=none; b=JXnkdXuM0c3uVTVriJ7H7/MgBgKsuYia3D9Wd9lv2pa7JtJaGA/A24ZLQPCVf6eSvsUDwBA1z53dp8P27HOamWUdyKQsv5sRtYsIf9NKlA6YKX26Fd3MRz6KS+hFOvCvJUuxcW5YSa0h9lPP7wdZaDOp7r9sxkKw2ehYYStIExw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761217390; c=relaxed/simple;
	bh=tg+8iAuL9v348WQn+/MKpxNJ48PFBRZL9CF/o4UEAoE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mQPbdaBeqc5IboEdtlmkQ7QBIIvPg3d8D8Vz88Pxvw+kFJsahL2uruThEDyb81i5MnLNJBFdp3g5a3gcI3E8nKmwosq9B/dH6cA/ZHAsIyIofG4JZ99x/ciPkHiOIu7qzCUctPaWtASA+qZTB36QEDDRNNuVIlgTAIFmqLYdcg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-556a4651cfcso245725e0c.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:03:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761217386; x=1761822186;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WjWvH/pQF78pnjKmIZIOC/klk9iC3EtNoJr9L6Gp1mo=;
        b=QQ4q+ciwOgPMChsXu61bnbDiW7q2eYRCBszfuJEEIPGapcKwELWUXq7ZEuBJnGXEU4
         SuJhrA425kJjz/DIMmxoD+hqnP8U1UGSfgnn0ZdD67svCBSxeaU1gndqpgbHCDHjoHsW
         ql/pqG2BZg7jGQRnew32LjgSywE0HbXDWrqffRirubaf++Tn2qzps1d0yLQIl0gfU9RQ
         oz6+PW/vqqn4ASfbZQBaE40Y/WfaUHQ1CDNBtttNYlB2L/htW6IatFnAAhL6hYbohiIc
         g+DeMH0/MpU/c8sGF/eW6w3CMTfzvf7FrKkTWprXGQAAHkwI55sUY1VC9hJGo2gBHJAx
         hBRw==
X-Forwarded-Encrypted: i=1; AJvYcCVBum1y5nIorhKmchV5og/zXqtAe6qSZq9MWLNJDjXsqIYKTxC7j0P0OlH+M10mOAhZsmSelXCoj/E2@vger.kernel.org
X-Gm-Message-State: AOJu0YyMWDV0ExqWYx13y3ydDgb2f+8QYA/61CGXPuFfMcbrMWw8EmVm
	bFDLZhn5plRuXLblNNTXVFYmRD8wVKwWRzpCoWAMrMrh0TP8/kJhckT+31VACvNx
X-Gm-Gg: ASbGnctC8OSE+9JbydBOkzg5Z2Gd2RArzIX/y3agLJChUaabLEJzKUKAPhND+XY3wdR
	vqM0MtLC4qaKv/ADJIIRrwqttH3cG869MqiXAw4hZX8AK38juFXUqdrEjgh7Qk08KYzOQ3Lu4V0
	6iYR6vBjY1NK+dmnJIHnjX1Vf9Df7zEDMJJwb+Mmk7nyL1BgiskCt0ZlMNiPmySSEhvSbYkhFZQ
	qv7BYaXGrZ9Rv0XUMXFWlMf1a2iXjBiX87WWSa/4qYteGLS3NfQns6PXg8yasHzLnjMF/gQUbLc
	Pn3JKIu18NbRstuy4xl22EVORGvIgFRqvQ9Y3InaRCTUYk4PHH6NY9qz1j05AKEvOesEN7sEr2/
	vDSMzRL8uHhqqNeFKvWkaacACJvEOqI3oX+4AUHbLnZJIE0mcOWWpL3BweUSUhypjbp7+GNFPg8
	iQRB97mDsSFrCEGRqIi1wkEFOb+owv5QOXpYugXw==
X-Google-Smtp-Source: AGHT+IFJOgnR0Qj3YhI/rM8AubDJkXqresazx6fr6J9PhtuwohcT21mmJcVhE4vov3jycZ31cCH41g==
X-Received: by 2002:a05:6122:912:b0:557:c010:8f1c with SMTP id 71dfb90a1353d-557c010e9eamr326417e0c.1.1761217386151;
        Thu, 23 Oct 2025 04:03:06 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-557b966b893sm686150e0c.0.2025.10.23.04.03.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 04:03:05 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5d61f261ebfso297049137.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:03:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXcAwA399QxdjGa7T6nMcR/jGKHc4C6OFRDaiUaZVMyt1K12K5Djqp5Vk3XBGyUDpoL29Ei2kMfuTHd@vger.kernel.org
X-Received: by 2002:a05:6102:2acc:b0:520:a44f:3ddf with SMTP id
 ada2fe7eead31-5d7dd5a3793mr5929967137.10.1761217385274; Thu, 23 Oct 2025
 04:03:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007133657.390523-1-claudiu.beznea.uj@bp.renesas.com>
 <20251007133657.390523-3-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdXF14x68Wk5YdOBS2D2N6LtnQjfGzrsMdSJegX-gc3faQ@mail.gmail.com> <6c69d2a2-5dfe-450f-8a39-2ef6e7a6dbea@tuxon.dev>
In-Reply-To: <6c69d2a2-5dfe-450f-8a39-2ef6e7a6dbea@tuxon.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 23 Oct 2025 13:02:54 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXLiN0kUVJtdEYVnsmnCEbN4hSs5KEhMXJhf7p29xv=0Q@mail.gmail.com>
X-Gm-Features: AWmQ_bm3rJeUf0KSNhlRfvLpl1M_xWwhhcqbJogOZCts4Aa1eBeKq-NYF1bmLWY
Message-ID: <CAMuHMdXLiN0kUVJtdEYVnsmnCEbN4hSs5KEhMXJhf7p29xv=0Q@mail.gmail.com>
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

On Thu, 23 Oct 2025 at 12:54, Claudiu Beznea <claudiu.beznea@tuxon.dev> wrote:
> On 10/23/25 11:00, Geert Uytterhoeven wrote:
> > On Tue, 7 Oct 2025 at 15:37, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> >> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>
> >> The Renesas RZ/G3S features a PCIe IP that complies with the PCI Express
> >> Base Specification 4.0 and supports speeds of up to 5 GT/s. It functions
> >> only as a root complex, with a single-lane (x1) configuration. The
> >> controller includes Type 1 configuration registers, as well as IP
> >> specific registers (called AXI registers) required for various adjustments.
> >>
> >> Hardware manual can be downloaded from the address in the "Link" section.
> >> The following steps should be followed to access the manual:
> >> 1/ Click the "User Manual" button
> >> 2/ Click "Confirm"; this will start downloading an archive
> >> 3/ Open the downloaded archive
> >> 4/ Navigate to r01uh1014ej*-rzg3s-users-manual-hardware -> Deliverables
> >> 5/ Open the file r01uh1014ej*-rzg3s.pdf
> >>
> >> Link: https://www.renesas.com/en/products/rz-g3s?queryID=695cc067c2d89e3f271d43656ede4d12
> >> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > Thanks for your patch!
> >
> >> --- /dev/null
> >> +++ b/drivers/pci/controller/pcie-rzg3s-host.c
> >
> >> +static void rzg3s_pcie_irq_compose_msi_msg(struct irq_data *data,
> >> +                                          struct msi_msg *msg)
> >> +{
> >> +       struct rzg3s_pcie_msi *msi = irq_data_get_irq_chip_data(data);
> >> +       struct rzg3s_pcie_host *host = rzg3s_msi_to_host(msi);
> >> +       u32 drop_mask = RZG3S_PCI_MSIRCVWADRL_ENA |
> >> +                       RZG3S_PCI_MSIRCVWADRL_MSG_DATA_ENA;
> >
> > This should include bit 2 (which is hardwired to zero (for now)),
> > so I think you better add
> >
> >     #define RZG3S_PCI_MSIRCVWADRL_ADDR  GENMASK(31, 3)
> >
> >> +       u32 lo, hi;
> >> +
> >> +       /*
> >> +        * Enable and msg data enable bits are part of the address lo. Drop
> >> +        * them.
> >> +        */
> >> +       lo = readl_relaxed(host->axi + RZG3S_PCI_MSIRCVWADRL) & ~drop_mask;
> >
> > ... and use FIELD_GET() with the new definition here.
>
> Bits 31..3 of RZG3S_PCI_MSIRCVWADRL contains only bits 31..3 of the MSI
> receive window address low, AFAIU. Using FIELD_GET() for bits 31..3 on the
> value read from RZG3S_PCI_MSIRCVWADRL and passing this value to
> msg->address_lo will lead to an NVMe device not working.

Oops, yes you are right, I went a bit too far with the FIELD_GET()
suggestion. But replacing drop_mask by RZG3S_PCI_MSIRCVWADRL_ADDR
would still be worthwhile, IMHO.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

