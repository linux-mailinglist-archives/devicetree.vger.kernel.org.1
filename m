Return-Path: <devicetree+bounces-31090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C57AC829EA0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 17:29:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 37A33B24087
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 16:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C4B44CB47;
	Wed, 10 Jan 2024 16:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="glZGQqaX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F782487B4
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 16:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 329F73F5A2
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 16:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1704904155;
	bh=uv9EP/w/9lKiqxJDFswe5iRGGwCnnVkmNEold/I0ZHc=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=glZGQqaXBD4oKJYeWFxkmEMQnxEa4jXgMMVyXdrshZJeItnwZgpkdnL7zNeXYVakP
	 VuB24rAqXF0ob99aNVbqrtY6BTjrRpquv7gGKe8tU9+A8R+f5APLa8KGpPpXMSQPxF
	 g0NHjbNEXNCT9A4cdy4e5O3F8ldM/SEWLF6fTt5nVD9adix4fR8BxvTVqU8S3Z9o2o
	 uDkfO8O9iCDulYe1VhBaa3yGZwW/aVpB9y0HlxtiiHVJDsu7AqJsSPk9rsV2S52/jO
	 GaHQ9NyyJQ5tX/di9FjDyRhjUgMqRFjcqVLc74WXy8PiDZP7b/MTVcuNtMvnoSq8WD
	 F1eawYtRLtgqg==
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-6de353881d7so522858a34.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 08:29:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704904154; x=1705508954;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uv9EP/w/9lKiqxJDFswe5iRGGwCnnVkmNEold/I0ZHc=;
        b=i+rSvROcfOe3Bp98fHDL+KUbVbx2tSIaLKKwFOLVSD2wccQeHMo6Cum0s9sLducmFk
         E0nldBQKgHnzDhFp8D95u5xxsAmV8ZyzmnjwdlrHkfg5dwQS9pbR4puhJyCFTygj+jGY
         QNn9j84lgGmaRHVfEZfkfOX6e59gpNqWYw4ym08NiYMdGhgMDYBXGL3kuOn0Ar/XBPTl
         fdeQqFpAl6ZFauFFu698sMFxI0TpTnfChsJzHFirdxqlDFsgLClZc57LwzeIguuhlsY1
         h0zI9Y9HcT7eoHfgm22A7FuNSO1FFE+DeUF/ERQELwytMWyEi1Y8PdIDIKUM9Uj9h0Ii
         y7og==
X-Gm-Message-State: AOJu0Yw07iav23E+cgVjqc479PlcuJaBY9tVA7VtM3/bfbfmZ64TahRT
	6C6+vkhI0vbTCZ2UqWbKPrt0NlTUYiyQE9dYcGvbdcR3IKnjkWVEiLkKpPLf7DCGQLWjuyyYrf3
	LU5KV0ug732jrmLZqhJzOAH+yfUc6/odkfi5EFlnFrZlH8POdVdA8CyRYKBMp5Q==
X-Received: by 2002:a05:6830:1184:b0:6dd:e1a7:985c with SMTP id u4-20020a056830118400b006dde1a7985cmr853579otq.64.1704904154048;
        Wed, 10 Jan 2024 08:29:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFbHlXIe2CrSKgMXB12cTUPD3lT7PL5ZyJdEPF2+t0EcSUNyc5cEMlt0ZMzdAuC3C3APnreiaTINaV7wsxklKM=
X-Received: by 2002:a05:6830:1184:b0:6dd:e1a7:985c with SMTP id
 u4-20020a056830118400b006dde1a7985cmr853563otq.64.1704904153819; Wed, 10 Jan
 2024 08:29:13 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 10 Jan 2024 11:29:13 -0500
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <ZQ0PR01MB098182407F5F427D9A6C7CD9826BA@ZQ0PR01MB0981.CHNPR01.prod.partner.outlook.cn>
References: <20231214072839.2367-1-minda.chen@starfivetech.com>
 <7hfrzeavmj.fsf@baylibre.com> <ZQ0PR01MB098128579D86207B4B9BA7D28266A@ZQ0PR01MB0981.CHNPR01.prod.partner.outlook.cn>
 <7h34vbbsfj.fsf@baylibre.com> <ZQ0PR01MB098182407F5F427D9A6C7CD9826BA@ZQ0PR01MB0981.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 10 Jan 2024 11:29:13 -0500
Message-ID: <CAJM55Z9HtBSyCq7rDEDFdw644pOWCKJfPqhmi3SD1x6p3g2SLQ@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IOWbnuWkjTog5Zue5aSNOiBbUEFUQ0ggdjEzIDAvMjFdIFJlZmFjdG9yaW5nIE1pYw==?=
	=?UTF-8?B?cm9jaGlwIFBDSWUgZHJpdmVyIGFuZCBhZGQgU3RhckZpdmUgUENJZQ==?=
To: Kevin Xie <kevin.xie@starfivetech.com>, Kevin Hilman <khilman@baylibre.com>, 
	Minda Chen <minda.chen@starfivetech.com>, Conor Dooley <conor@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Daire McNamara <daire.mcnamara@microchip.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Mason Huo <mason.huo@starfivetech.com>, 
	Leyfoon Tan <leyfoon.tan@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"

Kevin Xie wrote:
> > Kevin Xie <kevin.xie@starfivetech.com> writes:
> >
> > >> Minda Chen <minda.chen@starfivetech.com> writes:
> > >>
> > >> > This patchset final purpose is add PCIe driver for StarFive JH7110 SoC.
> > >> > JH7110 using PLDA XpressRICH PCIe IP. Microchip PolarFire Using the
> > >> > same IP and have commit their codes, which are mixed with PLDA
> > >> > controller codes and Microchip platform codes.
> > >>
> > >> Thank you for this series.
> > >>
> > >> I tested this on a VisionFive v2 board, and it seems to probe and
> > >> find my
> > >> M.2 NVMe SSD, but then gets timeouts when trying to use the NVMe (e.g.
> > >> 'blkid' command)
> > >>
> > >
> > > Hi, Kevin:
> > > Could you please provide the manufacturer and model of the M.2 NVMe
> > > SSD you tested?
> >
> > I have a 256 Gb Silicon Power P34A60 M.2 NVMe SSD (part number:
> > sp256gbp34a60m28)
> >
> Thanks, Kevin, we will buy one to test.
>
> Before doing this refactoring, we encountered the same bug with Kingston M.2 SSD,
> and we workaround the problem with the below patch, please have a try:
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 507bc149046d..5be37f1ee150 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1059,6 +1059,16 @@ static inline int nvme_poll_cq(struct nvme_queue *nvmeq,
>  {
>         int found = 0;
>
> +       /*
> +        * In some cases, such as JH7110 SoC working with Kingston SSD,
> +        * the CQE status may update a little bit later than the MSI,
> +        * which cause an IRQ handle missing.
> +        * As a workaround, here we will check the status first, and wait
> +        * 1us if we get nothing.
> +        */
> +       if (!nvme_cqe_pending(nvmeq))
> +               udelay(1);
> +
>         while (nvme_cqe_pending(nvmeq)) {
>                 found++;
>                 /*
>

Hi Kevin,

Thanks, this fixes the same problem on my WD Blue SN570 250GB.

Before this patch I found that CONFIG_INIT_ON_ALLOC_DEFAULT_ON=y fixed the
problem, but it's now clear that this only slowed my kernel enough that this
wouldn't trigger as often.

/Emil

> > Also for reference, I tested the same SSD on another arm platform (Khadas
> > VIM3) and it works fine.
> >
> > Kevin
>
> Hi, Bjorn:
> Do you have any idea about the late CQE phase update condition as mentioned
> in the patch comments above?
> This is an issue that occurs with a small probability on individual devices in our
> platform.
> Thus, I suggest the refactoring patch set should go forward.
> Later we will try to find a more formal solution instead, and send a new patch.
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

