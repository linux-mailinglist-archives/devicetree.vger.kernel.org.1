Return-Path: <devicetree+bounces-230676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B1AC0505C
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:20:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A743C3AB55A
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:12:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74D1B3019D0;
	Fri, 24 Oct 2025 08:12:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C567C3019CF
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761293561; cv=none; b=oFs31xvNeb84s8dB4aQOjy13N8eSX6iFU1uFFT9vIYNbxJkRjeYN37IMgnsPf1gr8jQ/2ywzmo2sBRZsb/QXOnH8CXnDqacb2zzmmQWfqJveF1vim89P8TOea/PbxqCxlWx8nrMix/1DdJgufsBIhe9bFcgzRBy0mripwCldth0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761293561; c=relaxed/simple;
	bh=hpgcKlVV2a7usVfzDLt1zVdxgZvPff7TYeBH4JVUr2I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AAAw59wFjMxvUS/EXazAkGM/zkXxgw+zW6qf6mrq/c9wCFStXyYZw+s/rN0Tt0QgKH7r0ivvM1bqI8AVfcziE8OIrjuJXqNaC8nQFexH/76JZyOA6IqurXT2BYZpcrjNP9FXSIuSKYYkOu9MoWIZuBoIR8XiOgs41q/qcfsMLxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-930c4cd6ccbso1354115241.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:12:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761293558; x=1761898358;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nY48OolfC3m/XFrWtTQOSs1xiOIwkF1W9X+4X3p3eqE=;
        b=I2mGuS+jqmCHvhW+BBdZ0o5eGn9afwI+eDEy58oI/cpng5Wlgz7nP3d8qXjnMJtPWb
         fL5JlvbVH+eslcSC+WNrohovpakh8F0Y0HtVtjtHETeMFmQxd3dZRpIPaZV8qt0XwhXg
         bUdfdWpRfq3pUVXJESXgAw1Q2169A1yQCkA68Pu1GyXRihz67L6iRdiX5QFjiAZwIu+d
         kDldvLj88xoo+qMkvRFpM4KCZn/lp58EYKrjc0vhYIe2q9YPaoVwkEP88/Pm3f2zT/5V
         /mu8IN4PJullWPFeaNrHIGldQIqNwV1zeTJv0k2B6RCTTEwqm6elm0nWsoNX2UCyd6uc
         sZ+g==
X-Forwarded-Encrypted: i=1; AJvYcCWxWdfc1qvJxzF5bKQBsgVQbQASur4ufvB7sxOx2f25xLsJzLwiNAx+WngmARSG9Qp1zavskGraIHZJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzpn8qqX/njquvHdtebH2J25rGJpf6LJIXo8ap8WuBm3r48NMXM
	6aGPXyo0ahiMutrFGytTvCwcssQ3ijSy0dtpDooMh2BjXqGYzY6klJHr5rPmUEfl
X-Gm-Gg: ASbGncu0XL5Kx34cQB+TQScNo2S9muFM7MH+Hesvnm3RADFOqVcM9hZqViCGg4YJJEa
	MxwGGqKWQVeJVpU08pS625OOPBZAST5vdOsq05h1G07QKbfPsdcrKCyZa6S/29R6JsXLwnNXJPG
	1J+iY3kBI7UJi7RYjr2EQQnX642Yya0lYPyT3oZRwt3VRLfeKfovgKRNTyZ9BER1O5qj2Bg+tz8
	AONFQPRjTgn4fXpvOAfBnGrtNBNjDfzq/zjHNZ04sWbIdbZlIs401NHhrN1iIhfPipczJyoYVzE
	Px0qk9yQCXeMPwDHDPVsMka5L/8BvxqFOqDeKPmHZGHK2rG9X9B4r5iKFy0PKCMulRAVR1nBfcD
	z4RLhB7uJqB6mm7yJ/HhG5Q0tSGQBlBXkT0Blrn8y5Vah0wjk/VSjqQ1fHri3lOrTw4yVGvXKA4
	c/2ARWU4tld85xUU26mSwE+NjRl9NuiwksB9tpEor085Vt2gE4
X-Google-Smtp-Source: AGHT+IEE+MfUHwgYbbyerPxOICbQra4w/BWNmWNJnCghDAm0FuVcyIEy/nj5dE7xG8hs4LcRQJmJFA==
X-Received: by 2002:a05:6123:2e9:b0:543:8c04:43f4 with SMTP id 71dfb90a1353d-557cf0fa05cmr416479e0c.14.1761293558538;
        Fri, 24 Oct 2025 01:12:38 -0700 (PDT)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-557bdbe3bc6sm1833756e0c.18.2025.10.24.01.12.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 01:12:37 -0700 (PDT)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-932bf9d3deeso1669229241.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:12:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVBH5L+1J6fIbDxhiNWiGPacoXhuI3WXh0A6ZlkXMsoV11Y9F+JBBBSMOWcRjDnTznxNx3yfsaJ5zqk@vger.kernel.org
X-Received: by 2002:a05:6102:b0f:b0:5d5:f6ae:38ee with SMTP id
 ada2fe7eead31-5db3fa38842mr411609137.37.1761293556608; Fri, 24 Oct 2025
 01:12:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87frb8n7kl.wl-kuninori.morimoto.gx@renesas.com> <87cy6cn7jg.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87cy6cn7jg.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 24 Oct 2025 10:12:25 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU4nkLesGhPp+_RqsgWv02v=egLeH_1HNLKHC5yXPbvZw@mail.gmail.com>
X-Gm-Features: AWmQ_blHf3Lx7IusOtNYbKWAzZe9vKkY7XTZ8MHPSP2bH9Nd9dITHkmeD1XsiZs
Message-ID: <CAMuHMdU4nkLesGhPp+_RqsgWv02v=egLeH_1HNLKHC5yXPbvZw@mail.gmail.com>
Subject: Re: [PATCH 2/3] mailbox: renesas: Support MFIS mailbox driver
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Morimoto-san,

On Fri, 24 Oct 2025 at 08:22, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> From: Masashi Ozaki <masashi.ozaki.te@renesas.com>
>
> Add Renesas MFIS mailbox driver for R8A78000 (X5H)
>
> Signed-off-by: Masashi Ozaki <masashi.ozaki.te@renesas.com>
> Signed-off-by: Vinh Nguyen <vinh.nguyen.xz@renesas.com>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Thanks for your patch!

> --- /dev/null
> +++ b/drivers/mailbox/rcar-mfis-mailbox.c
> @@ -0,0 +1,137 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Renesas MFIS (Multifunctional Interface) Mailbox Driver
> + *
> + * Copyright (c) 2025, Renesas Electronics Corporation. All rights reserved.
> + */
> +
> +#include <linux/device.h>
> +#include <linux/of_address.h>
> +#include <linux/of_irq.h>
> +#include <linux/interrupt.h>
> +#include <linux/mailbox_controller.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +
> +static int mfis_send_data(struct mbox_chan *link, void *data)
> +{
> +       void __iomem *reg = link->con_priv;
> +
> +       /*Trigger interrupt request to firmware(SCP)*/
> +       iowrite32(0x1, reg);
> +
> +       return 0;
> +}
> +
> +static irqreturn_t mfis_rx_interrupt(int irq, void *data)
> +{
> +       struct mbox_chan *link = data;
> +       void __iomem *reg = link->con_priv;
> +
> +       mbox_chan_received_data(link, 0);
> +
> +       /* Clear interrupt register */
> +       iowrite32(0x0, reg);
> +
> +       return IRQ_HANDLED;
> +}
> +
> +static int mfis_startup(struct mbox_chan *link)
> +{
> +       struct mbox_controller *mbox = link->mbox;
> +       struct device *dev = mbox->dev;
> +       int irq;
> +       int ret;
> +
> +       irq = of_irq_get(dev->of_node, 0);
> +
> +       ret = request_irq(irq, mfis_rx_interrupt,
> +                         IRQF_SHARED, "mfis-mbox", link);
> +       if (ret) {
> +               dev_err(dev,
> +                       "Unable to acquire IRQ %d\n", irq);
> +               return ret;
> +       }

This looks a bit expensive to do on each and every client request ...

> +       return 0;
> +}
> +
> +static void mfis_shutdown(struct mbox_chan *link)
> +{
> +       struct mbox_controller *mbox = link->mbox;
> +       struct device *dev = mbox->dev;
> +       int irq;
> +
> +       irq = of_irq_get(dev->of_node, 0);

... and release.  Just store and request the irq in .probe().

> +
> +       free_irq(irq, link);
> +}
> +
> +static bool mfis_last_tx_done(struct mbox_chan *link)
> +{
> +       return true;
> +}
> +
> +static const struct mbox_chan_ops mfis_chan_ops = {
> +       .send_data      = mfis_send_data,
> +       .startup        = mfis_startup,
> +       .shutdown       = mfis_shutdown,
> +       .last_tx_done   = mfis_last_tx_done
> +};
> +
> +static int mfis_mbox_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct mbox_controller *mbox;
> +       void __iomem *reg;
> +       int ret, count = 2, i;

unsigned int i (and count, but I doubt you need it)

> +
> +       mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
> +       if (!mbox)
> +               return -ENOMEM;
> +
> +       mbox->chans = devm_kcalloc(dev, count, sizeof(*mbox->chans), GFP_KERNEL);
> +       if (!mbox->chans)
> +               return -ENOMEM;

You can combine this into a single allocation, and provide space for
driver-specific data (e.g. irq), by using a driver-private structure:

    struct mfis_priv {
            struct mbox_controller mbox;
            struct mbox_chan channels[2];
            int irq;
    };

Where needed, you can convert from a struct mbox_controller pointer
to a struct mfis_priv pointer using containter_of().

> +
> +       reg = devm_platform_ioremap_resource(pdev, i);
> +       if (IS_ERR(reg))
> +               return PTR_ERR(reg);
> +
> +       for (i = 0; i < count; i++) {
> +               mbox->chans[i].mbox     = mbox;
> +               mbox->chans[i].con_priv = reg + ((1 - i) * 4);
> +       }
> +
> +       mbox->txdone_poll       = true;
> +       mbox->txdone_irq        = false;
> +       mbox->txpoll_period     = 1;
> +       mbox->num_chans         = count;
> +       mbox->ops               = &mfis_chan_ops;
> +       mbox->dev               = dev;
> +
> +       ret = mbox_controller_register(mbox);
> +       if (ret)
> +               return ret;
> +
> +       platform_set_drvdata(pdev, mbox);
> +       dev_info(dev, "MFIS mailbox is probed\n");
> +
> +       return 0;
> +}
> +
> +static const struct of_device_id mfis_mbox_of_match[] = {
> +       { .compatible = "renesas,mfis-mbox", },
> +       {},

Please no trailing comma after the sentinel.

> +};
> +MODULE_DEVICE_TABLE(of, mfis_mbox_of_match);
> +
> +static struct platform_driver mfis_mbox_driver = {
> +       .driver = {
> +               .name = "renesas-mfis-mbox",
> +               .of_match_table = mfis_mbox_of_match,
> +       },
> +       .probe  = mfis_mbox_probe,
> +};
> +module_platform_driver(mfis_mbox_driver);
> +MODULE_DESCRIPTION("Renesas MFIS mailbox driver");
> +MODULE_LICENSE("GPL v2");

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

