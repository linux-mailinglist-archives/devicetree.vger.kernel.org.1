Return-Path: <devicetree+bounces-230100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDFCBFFC58
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 10:06:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A967A4E6203
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 460BC2EAB76;
	Thu, 23 Oct 2025 08:05:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8D02EA723
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761206758; cv=none; b=nO0+7Tp3QoIDBKCGGS/41btbsvcpRSMfqqWrVg49/YoDE/71Vv9VH8/6n58rLGUZ3o8YqdqhAK2P6YrPC+TG1BWOSxgXOdjwc+34jpoAqwkqF65/dOai/pxjiQwFiqLfw0PuUcIzFmamdxu/Yfw2LJAyrfNI9VCuPKr2JGKeds0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761206758; c=relaxed/simple;
	bh=KpSaMjSEZziIYn4V8EA3oAQHYYGym/G8ks3Kmoko+Q4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qK9epkmGT8BpeCzHQXr2IUoQFGXO85EcSrdfU9E6iPsrwMUOoZYWdZd1bheEq0cROqI4tlZBtSJez4MRDYnS+RbjHvtPbK9npR4UXU3/m+LigFAlqRb/LhAJw7uMLEtpG/TaHIlcFLVosF5X7f2xS1sz3fpU/kCuFlCsGKYn9iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-27ee41e0798so7260185ad.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:05:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761206756; x=1761811556;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XF9ym20BXQJuQdpG7CWrlv8nMa2KXEsJ8BzTyt5Bosk=;
        b=dd2+Ng2DBZNSsqGf4K1nj+jg+gx0FyopxMCRykfhoocoxsJGXzFoFw7cy8c+opNiuu
         tb4NuIYvu9nCPY3/ldr0Ih+C4Yigxix/4bzIxZRQPYZOOavO+iHCwtND1jhU9GD9tSKw
         weNgNyvMA8IG4icSfWFuGsyUtLRiu/ZXUJh0nigy5xknME+koK4B99QNbKjhx5rocrok
         2HghTtyszNtlJ4n4LPxJVMhp9ezKrfHwKZEl1JmAqLum1LPoxDRIxbBQ64C/sCSEwbQI
         eyH+T5Q8b7fDM5gBgBnlNY8zax577ugIKOxoX6yUt+Pbsmh8qe6ePRfReWoQWYUuUxhm
         80BQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJ6PmSCzrCV+i0m0fpxuhlwVm/ocVbLiXcB3vqPVt5Pr3IJ9z5DLDCyss2FfuK5+EMYw2pEye6rtuO@vger.kernel.org
X-Gm-Message-State: AOJu0YyyS5K74gjZfC2qqJy893oBgoK1747h8U9flddpqgRvh3bCS9bB
	veCwCmtmn0qZ83ag/PN+BrZGNk4wCQ2Ln3zorV6UFFkz4G06kPA7NyQdKi0GKzNt
X-Gm-Gg: ASbGnct7AF6xvylkGcoRoAowViLVVPmhcAAd2TWA3m/GIdtv5Nzzml/gr8mmUDqQABW
	6KK6hL9jSVjyKEU7UApnL9sxUmzkbzaj+sh81e2xROqIc7G3E8ereEbqKis7tN/pP6watVqSHss
	SGvxw1YDerjtAbiHnmI6Cmvc5jSgdDIu+WqgKBgPv9VTPqHGDPVY7i9t0hau/mKTNLQrRuS460g
	i5ERuwOiZyywX588CVpw7C17c8YiXcyVr3jSEP7YivQQ2Ge755N5GFcudlEDOGfdw6tzYR9Tm+B
	aqNSx45OPWdvTSDadqphRZCwI5GkcI5dplbq1KdozoREa2lig4NVpUuwq95owrwU5tsG56lw+gN
	K2yD9E2WTlE9km0IZxFowiCkcn/ML8aLJdvMXZGKq57gNpv7jhMfs1nwu5XH3+S2vK5nm9XgC7/
	/lTJVcp1HuQ8pNS2PYEtvLBAJh/k7iGq6aWQ+jg3+cgHDigEoki6wr
X-Google-Smtp-Source: AGHT+IE65f4eYx/AMV4g1X4p6frwm+oNrIYHBnXEkMsNYDtDAhPV6x9Gt2/+STzVbz0VUe2nh9xJrw==
X-Received: by 2002:a17:903:8c6:b0:290:c0b1:edb8 with SMTP id d9443c01a7336-290cbb4a2ccmr311308675ad.40.1761206755758;
        Thu, 23 Oct 2025 01:05:55 -0700 (PDT)
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com. [209.85.210.181])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946dda72d0sm15050855ad.16.2025.10.23.01.05.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 01:05:55 -0700 (PDT)
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7a27053843bso759549b3a.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:05:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXGUgJRM6ZJZXd09IMsdMsnG00Ghp1kOg2iM89kzUeHc3nuG5U4nv9+YtU8Y/i5f9ewYqyVvbJacX/b@vger.kernel.org
X-Received: by 2002:a05:6102:32d3:b0:5d5:f40a:4cf1 with SMTP id
 ada2fe7eead31-5d7dd6a4e59mr6656672137.24.1761206432910; Thu, 23 Oct 2025
 01:00:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007133657.390523-1-claudiu.beznea.uj@bp.renesas.com> <20251007133657.390523-3-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20251007133657.390523-3-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 23 Oct 2025 10:00:21 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXF14x68Wk5YdOBS2D2N6LtnQjfGzrsMdSJegX-gc3faQ@mail.gmail.com>
X-Gm-Features: AS18NWB9_OOBrClG3W5gj81JVaeCg1e2FLiq_rBpovw0Id2oH40EKE5zSy4p5SM
Message-ID: <CAMuHMdXF14x68Wk5YdOBS2D2N6LtnQjfGzrsMdSJegX-gc3faQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/6] PCI: rzg3s-host: Add Renesas RZ/G3S SoC host driver
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, 
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	geert+renesas@glider.be, magnus.damm@gmail.com, p.zabel@pengutronix.de, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

Hi Claudiu,

On Tue, 7 Oct 2025 at 15:37, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> The Renesas RZ/G3S features a PCIe IP that complies with the PCI Express
> Base Specification 4.0 and supports speeds of up to 5 GT/s. It functions
> only as a root complex, with a single-lane (x1) configuration. The
> controller includes Type 1 configuration registers, as well as IP
> specific registers (called AXI registers) required for various adjustments.
>
> Hardware manual can be downloaded from the address in the "Link" section.
> The following steps should be followed to access the manual:
> 1/ Click the "User Manual" button
> 2/ Click "Confirm"; this will start downloading an archive
> 3/ Open the downloaded archive
> 4/ Navigate to r01uh1014ej*-rzg3s-users-manual-hardware -> Deliverables
> 5/ Open the file r01uh1014ej*-rzg3s.pdf
>
> Link: https://www.renesas.com/en/products/rz-g3s?queryID=695cc067c2d89e3f271d43656ede4d12
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks for your patch!

> --- /dev/null
> +++ b/drivers/pci/controller/pcie-rzg3s-host.c

> +static void rzg3s_pcie_irq_compose_msi_msg(struct irq_data *data,
> +                                          struct msi_msg *msg)
> +{
> +       struct rzg3s_pcie_msi *msi = irq_data_get_irq_chip_data(data);
> +       struct rzg3s_pcie_host *host = rzg3s_msi_to_host(msi);
> +       u32 drop_mask = RZG3S_PCI_MSIRCVWADRL_ENA |
> +                       RZG3S_PCI_MSIRCVWADRL_MSG_DATA_ENA;

This should include bit 2 (which is hardwired to zero (for now)),
so I think you better add

    #define RZG3S_PCI_MSIRCVWADRL_ADDR  GENMASK(31, 3)

> +       u32 lo, hi;
> +
> +       /*
> +        * Enable and msg data enable bits are part of the address lo. Drop
> +        * them.
> +        */
> +       lo = readl_relaxed(host->axi + RZG3S_PCI_MSIRCVWADRL) & ~drop_mask;

... and use FIELD_GET() with the new definition here.

> +       hi = readl_relaxed(host->axi + RZG3S_PCI_MSIRCVWADRU);
> +
> +       msg->address_lo = lo;
> +       msg->address_hi = hi;
> +       msg->data = data->hwirq;
> +}

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

