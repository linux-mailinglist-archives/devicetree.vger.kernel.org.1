Return-Path: <devicetree+bounces-218781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF61FB83F27
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 12:00:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABA8B3BF663
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 10:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 785142D7DDC;
	Thu, 18 Sep 2025 10:00:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F3024167F
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 10:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758189621; cv=none; b=IDHTrv+CWa6uYoRV6SX09UsGDFstwA8EgGgzto/lDuoGvPExTwsMbun+OOOYd/K3KMkSNNwjXW6Cz5eqn3+2YFMopWXogDxvm8JUSlcNUhBuPdhcl2LTnt81MC9vmJ21DmLYEpPoDNnjE/8PIp9W/vpA7x7z82NH+v06qyjm9sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758189621; c=relaxed/simple;
	bh=/OBhn+PWMDqXGRrapAeq9Q3SvZxxEYXxE4Nz5bqD3Xo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QM8HvjAuyk2Vtk/kPwrBIWqLsBoZnOWZKfpf24d+TE7A9ld6fmxHfrxBNqLxzulWFRFXe1sjuQjuUKw3nbByqHFlCA5XyiYP1L4kZCyDmslaZAyaZxVxpEdlLcsEVMkUivDI/ZN0inN2AeLXUlSr5cq+c7uU9aPjDRhQDT4N3rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-54a17fbd375so376044e0c.1
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 03:00:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758189617; x=1758794417;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=heq3/GupfVYfNfyXxVtKecyYAD/tIXHJ4nXkThDhTOc=;
        b=kAnJta/uWd8Fwt9hVaBDf01uTC8GENijCOkwH7p8jUF/NmpUnsS4OAjib+qlpT58c1
         ZsX8J0rNMKFupTNmIxzLVF44k2mnCk+SJT19USriqbBkFSsMsrX0ZWYG3k22obEH3z/M
         A9YXhQ9w1+w2y7vmu+bphd8b1H/G3bGh86Eg1wCSsUn+NQFaQU7z9qdsUEKiP8QoLykn
         F6IeNf+C8N/f3Ts42ufX2GGDHWqyw6Iusc0VItvwscbmemeobETnj9qA8eK6cWm22jab
         6oORyf0/v/f9KFAgsmsai5oeuUH6/mO2/gvsrvsfNGRvD9L3KkMQvfsrsOuwGY1zpZuv
         Szkg==
X-Forwarded-Encrypted: i=1; AJvYcCWMQl5JJSmsCR6WTP40sU2Bwtvw6cCGQGRXT80lVeI+W+uI9yFyLGqvikm4T5SKiFl8bX0CVKzx77Lm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+obnKd6vzotFz6HCAnZODMCI9MUS9g/1ncvP0TIk3qHiCsoc/
	9h7n/ShhmBAS8imvOF+lUQz+w92gwSJGhrSPLbEPH5FWiSTse5opeecbkw6lnbWR
X-Gm-Gg: ASbGncv6bdjZGAj2mzYzh5PRSploKndqa3NsHPY+0C4rcSl3vOIbtSychC+YTWjaXMi
	3gEqUimVj7lL7h+BuTFX/+MZiwAux1l0x5YeRL+U/2sKK1Po7O4CRj1kEzTFPJ2PVcUT7tx4iMz
	RyOm/mrFUtn1lYudWe7r5JAVZ4LS41ecAmrjSKPRe52BY2x8Dx6lVx5u+B6+DUKdbdufdJB134R
	cHpNNWiNOo8qfS910SQXg19933u3Gg8IY77aflWGft/qtXhhRjnfEcKC1Sru32lfqonsqgjoYFX
	iEBsLLBkWx39G3sPsn8taBy5v98l7W+I8dfK7OFLrz2kt73asZYZb/8XLIHE2tW57pPwOI5EwTG
	LeBwTE2EcTtvN14sLz7YOl2MolQMkMVAybaEGfCfo4b9Lfj2HthEKZ0P/DToILX+cqFRRQbpy3h
	lYVhY=
X-Google-Smtp-Source: AGHT+IGicBo2muWGNFft16AT22exb99fJ4By7alLcptskVjYvv9LqN2jujUzJNHMgP/fNaJM7TpYYw==
X-Received: by 2002:a05:6122:1d0a:b0:544:9414:1058 with SMTP id 71dfb90a1353d-54a607dbdffmr2055664e0c.2.1758189617345;
        Thu, 18 Sep 2025 03:00:17 -0700 (PDT)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54a729b9222sm437549e0c.22.2025.09.18.03.00.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 03:00:17 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-529f4770585so543920137.1
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 03:00:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU73HsH8yuHmn7TGyomVnn4+BkMWot786Sg6dHLhgh5i+3/4JMKUdEzkuRhf1ga+MwC4/huV1FGXvci@vger.kernel.org
X-Received: by 2002:a05:6102:5e89:b0:520:ec03:32e9 with SMTP id
 ada2fe7eead31-56d4ca46b90mr1938216137.3.1758189615787; Thu, 18 Sep 2025
 03:00:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250912122444.3870284-1-claudiu.beznea.uj@bp.renesas.com>
 <20250912122444.3870284-5-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdWP638eB_p9xMAqZmOnuc6n7=n31h6AqV+287uvqQEdww@mail.gmail.com> <c2fc5f6b-0e7c-464e-89a6-35dc76177d18@tuxon.dev>
In-Reply-To: <c2fc5f6b-0e7c-464e-89a6-35dc76177d18@tuxon.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 18 Sep 2025 12:00:04 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWeHoUe-=7TDetnDQbLQsKGf4pDGpSdz3xEVLs_Rst9qQ@mail.gmail.com>
X-Gm-Features: AS18NWA7yJuM6P3qfqTjc7fj_WIPx-OpKuRx0s7hlxrQZNP3abmLA3cANYn1ePk
Message-ID: <CAMuHMdWeHoUe-=7TDetnDQbLQsKGf4pDGpSdz3xEVLs_Rst9qQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/6] arm64: dts: renesas: rzg3s-smarc-som: Update
 dma-ranges for PCIe
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, p.zabel@pengutronix.de, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

Hi Claudiu,

On Thu, 18 Sept 2025 at 11:47, Claudiu Beznea <claudiu.beznea@tuxon.dev> wrote:
> On 9/18/25 12:09, Geert Uytterhoeven wrote:
> > On Fri, 12 Sept 2025 at 14:24, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> >> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>
> >> The first 128MB of memory is reserved on this board for secure area.
> >> Secure area is a RAM region used by firmware. The rzg3s-smarc-som.dtsi
> >> memory node (memory@48000000) excludes the secure area.
> >> Update the PCIe dma-ranges property to reflect this.
> >>
> >> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > Thanks for your patch!
> >
> >> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
> >> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
> >> @@ -214,6 +214,16 @@ &sdhi2 {
> >>  };
> >>  #endif
> >>
> >> +&pcie {
> >> +       /* First 128MB is reserved for secure area. */
> >
> > Do you really have to take that into account here?  I believe that
> > 128 MiB region will never be used anyway, as it is excluded from the
> > memory map (see memory@48000000).
> >
> >> +       dma-ranges = <0x42000000 0 0x48000000 0 0x48000000 0x0 0x38000000>;
> >
> > Hence shouldn't you add
> >
> >     dma-ranges = <0x42000000 0 0x48000000 0 0x48000000 0x0 0x38000000>;

Oops, I really meant (forgot to edit after copying it):

    dma-ranges = <0x42000000 0 0x40000000 0 0x40000000 0x0 0x40000000>;

> >
> > to the pcie node in arch/arm64/boot/dts/renesas/r9a08g045s33.dtsi
> > instead, like is done for all other Renesas SoCs that have PCIe?
>
> I chose to add it here as the rzg3s-smarc-som.dtsi is the one that defines
> the available memory for board, as the available memory is something board
> dependent.

But IMHO it is independent from the amount of memory on the board.
On other SoCs, it has a comment:

     /* Map all possible DDR as inbound ranges */

>
> If you consider it is better to have it in the SoC file, please let me know.

Hence yes please.

However, I missed you already have:

    /* Map all possible DRAM ranges (4 GB). */
    dma-ranges = <0x42000000 0 0x40000000 0 0x40000000 0x1 0x0>;

in r9a08g045.dtsi, so life's good.

+
> >> +};
> >> +
> >> +&pcie_port0 {
> >> +       clocks = <&versa3 5>;
> >> +       clock-names = "ref";
> >> +};
> >
> > This is not related.
>
> Ah, right! Could you please let me know if you prefer to have another patch
> or to update the patch description?

Given the dma-ranges changes is IMHO not needed, this can just be
a separate patch.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

