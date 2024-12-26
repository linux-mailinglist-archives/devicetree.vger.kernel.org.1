Return-Path: <devicetree+bounces-134099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 597419FCAC8
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 12:51:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1FE31881CEC
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 11:51:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBE7D146A71;
	Thu, 26 Dec 2024 11:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="EhPNBAVq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82F1E156C6A
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 11:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735213887; cv=none; b=lIWWgmQSWBMNlSxRjCeVry0rTe1OGfhmVhXIKIBDVWpqV33UBFKH4CSvE+Tk1BArGoM9F+TdZJ6GQVgoCPo6+N4/DrpTZO1MD0g+dsVrrfm0EzJDOkWPbRYCKBh+69rGSZejA/BgPzW28t7W7zpYfdOJ49o95ofm8+uEME1AYQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735213887; c=relaxed/simple;
	bh=FKazZzrhsMttqfE2FUjzStM4m24PITt7YvD4HF2bkZA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LcFDtSobNFtVQwDnF8x/Be6Wtpg+j+WHe4n+rVHov2VAqTjo4sVLR95Wmnaf3tPeaBzqE8+Bxmp8uy1UDWWnvtVMVx5oJT0Gueft/AbqZPIq/ySDgbTx1BEJip2IMsl/+BG2J9bfMpsEsZIx7h1AZPCfic1ITPOnvobPfthRQVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=EhPNBAVq; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53ffaaeeb76so6900566e87.0
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 03:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1735213883; x=1735818683; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w7Wkht501hb/m8JXU0HDeSnQ+qDyGqt+iNFbgYY7chs=;
        b=EhPNBAVqMkpSJf5Rgxsk08EyS2Xwfcj2h9a1ZwvnyrBjfviUKvoV1SnMHjp1wXGJzj
         wu5FgJdE1aTo7Z4OoVTb3mKv9ylYqsdB7pn1GIc2WsxRfE1qNsa7tsdHLllOj1PeATC+
         ydLhcgDQ3dt6Q9zurAqxos8gYT6AeVRDwGSe6AbLsymXFRCteQAbX1YmmDVsKlmqt8e5
         j65ZUj1XalmymNafFfOEyaIJSwFC9yHnXFTCRDHN2hiNMXrsAHaxHfD3u1DpK7eeAXWK
         TK2knuuDoBByMYyuLxjmoP96RxnpNIHy7e0E0eokZZj503r/6K07i0L5cUEfigem+n/k
         gVnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735213883; x=1735818683;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w7Wkht501hb/m8JXU0HDeSnQ+qDyGqt+iNFbgYY7chs=;
        b=A70BhrQ5LadNEuCY/b8f7HV38VgBYLwpZ+LKZnK4xNiwg4GIuvXMFnkha78ZJh/O3j
         IwYJGGD67yWhWJ/8prFFFF8LGJ2GuTSJYh/Cl/oCk1y33XAW5zEKG3JTT6ojAPLb2GyM
         0wS63HYAGtqD971swWaFiBBSF6KN8iLQiHIPqf1MJ/lOWYdALZdr0YCwGTdxr5dVtzfn
         SsQARq8unAklVVgkkUUU5fjXzG0clVvmCLNw/6UiqYyj/rpqaIBxY5Wf0cvhmSHecuLh
         PivrCkWnQ9iHXbkMLTkaQUn9SnbSAQ1WlYwSq3sZ7atTHtj0XlAiPNsymuXiLhs3eGgi
         KGbg==
X-Forwarded-Encrypted: i=1; AJvYcCX/AxWoxB4ftEZhy+0KlYLATRcgT8dWtkRnRMqa48d98V+Si6MRn2Yx/jAlQA9CLa4JAxLCoFKjRfiJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzjJGhWPiOMsoTuyWYdPls0aTEtpCL3qZCNKnddEuTugW+LT31G
	HGlABgSalrjfyPhZheQ1Sqv3lco7HD2O6Mgm22gvb3NobUub6eeMS/4S9/QC86wjT/EamzYUS6U
	/z3Yas1SnbUevlAHiIE4pQrE+2dA1gw5xHR6Klw==
X-Gm-Gg: ASbGncsVoLPUQfLKO2zdkqWGzjRNVVkHdJx1KZTh25mKXi4W4zGRQFW5s7BhgJRL/5b
	zxq4ycUh1lvamQKttVS4YCqySr47PpKqVujTT61U=
X-Google-Smtp-Source: AGHT+IELThYwp1NSofmhls5Iju3hkd3hWFRltQ8cjUQib4yCe3i1lueZj9EdMW+tJHHCLmxherk0b9GCZWZRRJFBpsY=
X-Received: by 2002:a05:6512:2245:b0:540:2549:b6ca with SMTP id
 2adb3069b0e04-54229586177mr7920954e87.55.1735213883389; Thu, 26 Dec 2024
 03:51:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241216084817.373131-1-apatel@ventanamicro.com>
 <20241216084817.373131-7-apatel@ventanamicro.com> <ZQZPR01MB097909421AF1E0415795D2028A03A@ZQZPR01MB0979.CHNPR01.prod.partner.outlook.cn>
In-Reply-To: <ZQZPR01MB097909421AF1E0415795D2028A03A@ZQZPR01MB0979.CHNPR01.prod.partner.outlook.cn>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 26 Dec 2024 17:21:10 +0530
Message-ID: <CAK9=C2Whow_XeG9xYrWScvqT-G93jGJRUF8XJgb=9zsVPmkq+g@mail.gmail.com>
Subject: Re: [RFC PATCH 6/8] mailbox: Add RISC-V SBI message proxy (MPXY)
 based mailbox driver
To: Leyfoon Tan <leyfoon.tan@starfivetech.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Rahul Pathak <rpathak@ventanamicro.com>, Atish Patra <atishp@atishpatra.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Anup Patel <anup@brainfault.org>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 24, 2024 at 8:50=E2=80=AFAM Leyfoon Tan
<leyfoon.tan@starfivetech.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Anup Patel <apatel@ventanamicro.com>
> > Sent: Monday, December 16, 2024 4:48 PM
> > To: Michael Turquette <mturquette@baylibre.com>; Stephen Boyd
> > <sboyd@kernel.org>; Rob Herring <robh@kernel.org>; Krzysztof Kozlowski
> > <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>; Jassi Brar
> > <jassisinghbrar@gmail.com>
> > Cc: Palmer Dabbelt <palmer@dabbelt.com>; Paul Walmsley
> > <paul.walmsley@sifive.com>; Sunil V L <sunilvl@ventanamicro.com>; Rahul
> > Pathak <rpathak@ventanamicro.com>; Leyfoon Tan
> > <leyfoon.tan@starfivetech.com>; Atish Patra <atishp@atishpatra.org>;
> > Andrew Jones <ajones@ventanamicro.com>; Anup Patel
> > <anup@brainfault.org>; linux-clk@vger.kernel.org;
> > devicetree@vger.kernel.org; linux-riscv@lists.infradead.org; linux-
> > kernel@vger.kernel.org; Anup Patel <apatel@ventanamicro.com>
> > Subject: [RFC PATCH 6/8] mailbox: Add RISC-V SBI message proxy (MPXY)
> > based mailbox driver
> >
> > Add a mailbox controller driver for the new SBI message proxy extension
> > which is part of the SBI v3.0 specification.
> >
> > Co-developed-by: Rahul Pathak <rpathak@ventanamicro.com>
> > Signed-off-by: Rahul Pathak <rpathak@ventanamicro.com>
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  drivers/mailbox/Kconfig               |  11 +
> >  drivers/mailbox/Makefile              |   2 +
> >  drivers/mailbox/riscv-sbi-mpxy-mbox.c | 979
> > ++++++++++++++++++++++++++
> >  3 files changed, 992 insertions(+)
> >  create mode 100644 drivers/mailbox/riscv-sbi-mpxy-mbox.c
> >
>
> [...]
>
> > sbi-mpxy-mbox.c
> > new file mode 100644
> > index 000000000000..0592df3028f9
> > --- /dev/null
> > +++ b/drivers/mailbox/riscv-sbi-mpxy-mbox.c
> > @@ -0,0 +1,979 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * RISC-V SBI Message Proxy (MPXY) mailbox controller driver
> > + *
> > + * Copyright (C) 2024 Ventana Micro Systems Inc.
> > + */
> > +
> > +#include <asm/sbi.h>
> > +#include <linux/cpu.h>
> > +#include <linux/err.h>
> > +#include <linux/init.h>
> > +#include <linux/jump_label.h>
> > +#include <linux/kernel.h>
> > +#include <linux/mailbox_controller.h>
> > +#include <linux/mailbox/riscv-rpmi-message.h>
>
> > +#include <linux/mm.h>
> > +#include <linux/msi.h>
> > +#include <linux/module.h>
> > +#include <linux/of_irq.h>
> Sorting include header files based on alphanumeric.

Okay, I will update.

>
> > +#include <linux/percpu.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/smp.h>
> > +
> > +/* =3D=3D=3D=3D=3D=3D SBI MPXY extension data structures =3D=3D=3D=3D=
=3D=3D */
> > +
> > +/* SBI MPXY MSI related channel attributes */ struct sbi_mpxy_msi_info
> > +{
> > +     /* Lower 32-bits of the MSI target address */
> > +     u32 msi_addr_lo;
> > +     /* Upper 32-bits of the MSI target address */
> > +     u32 msi_addr_hi;
> > +     /* MSI data value */
> > +     u32 msi_data;
> > +};
> > +
> > +/*
> > + * SBI MPXY standard channel attributes.
> > + *
> > + * NOTE: The sequence of attribute fields are as-per the
> > + * defined sequence in the attribute table in spec (or
> > + * as-per the enum sbi_mpxy_attribute_id).
> > + */
> > +struct sbi_mpxy_channel_attrs {
> > +     /* Message protocol ID */
> > +     u32 msg_proto_id;
> > +     /* Message protocol Version */
> Don't need capital letter for "version" .

Okay, I will update.

>
> > +     u32 msg_proto_version;
> > +     /* Message protocol maximum message length */
> > +     u32 msg_max_len;
> > +     /* Message protocol message send timeout in microseconds */
> > +     u32 msg_send_timeout;
> > +     /* Message protocol message completion timeout in microseconds */
> > +     u32 msg_completion_timeout;
> > +     /* Bit array for channel capabilities */
> > +     u32 capability;
> > +     /* SSE Event Id */
> Same for 'event'.

Okay, I will update.

> > +     u32 sse_event_id;
> > +     /* MSI enable/disable control knob */
> > +     u32 msi_control;
> > +     /* Channel MSI info */
> > +     struct sbi_mpxy_msi_info msi_info;
> > +     /* Events State Control */
> Same here

Okay, I will update.

>
> > +     u32 events_state_ctrl;
> > +};
> > +
> > +/*
>
>
> [...]
>
> > +
> > +static int mpxy_send_message_with_resp(u32 channel_id, u32 msg_id,
> > +                                    void *tx, unsigned long tx_len,
> > +                                    void *rx, unsigned long max_rx_len=
,
> > +                                    unsigned long *rx_len)
> > +{
> > +     struct mpxy_local *mpxy =3D this_cpu_ptr(&mpxy_local);
> > +     unsigned long rx_bytes;
> > +     struct sbiret sret;
> > +
> > +     if (!mpxy->shmem_active)
> > +             return -ENODEV;
> > +     if (!tx && tx_len)
> > +             return -EINVAL;
> > +
> > +     get_cpu();
> > +
> > +     /* Message protocols allowed to have no data in messages */
> > +     if (tx_len)
> > +             memcpy(mpxy->shmem, tx, tx_len);
> > +
> > +     sret =3D sbi_ecall(SBI_EXT_MPXY,
> > SBI_EXT_MPXY_SEND_MSG_WITH_RESP,
> > +                      channel_id, msg_id, tx_len, 0, 0, 0);
> > +     if (rx && !sret.error) {
> > +             rx_bytes =3D sret.value;
> > +             rx_bytes =3D min(max_rx_len, rx_bytes);
>
> Caller should know if the rx_bytes is larger than max_rx_len?

Good catch.

It is better to just fail when rx_bytes > max_rx_len so that
caller can deal with an undersized rx buffer.

I will update accordingly.

>
> > +             memcpy(rx, mpxy->shmem, rx_bytes);
> > +             if (rx_len)
> > +                     *rx_len =3D rx_bytes;
> > +     }
> > +
> > +     put_cpu();
> > +     return sbi_err_map_linux_errno(sret.error);
> > +}
> > +
>
> [...]
>
> > +
> > +static int mpxy_mbox_setup_msi(struct mbox_chan *chan,
> > +                            struct mpxy_mbox_channel *mchan) {
> > +     struct device *dev =3D mchan->mbox->dev;
> > +     int rc;
> > +
> > +     /* Do nothing if MSI not supported */
> > +     if (mchan->msi_irq =3D=3D U32_MAX)
> > +             return 0;
> > +
> > +     /* Request channel MSI handler */
> > +     rc =3D request_threaded_irq(mchan->msi_irq,
> > +                               mpxy_mbox_irq_event,
> > +                               mpxy_mbox_irq_thread,
> > +                               0, dev_name(dev), chan);
> > +     if (rc) {
> > +             dev_err(dev, "failed to request MPXY channel 0x%x IRQ\n",
> > +                     mchan->channel_id);
> > +             return rc;
> > +     }
> > +
> > +     /* Enable channel MSI control */
> > +     mchan->attrs.msi_control =3D 1;
> > +     rc =3D mpxy_write_attrs(mchan->channel_id,
> > SBI_MPXY_ATTR_MSI_CONTROL,
> > +                           1, &mchan->attrs.msi_control);
> > +     if (rc) {
> > +             dev_err(dev, "enable MSI control failed for MPXY channel
> > 0x%x\n",
> > +                     mchan->channel_id);
> > +             free_irq(mchan->msi_irq, chan);
>
> Set mchan->attrs.msi_control =3D 0 if failed?

Okay, I will update.

>
> > +             return rc;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static void mpxy_mbox_cleanup_msi(struct mbox_chan *chan,
> > +                               struct mpxy_mbox_channel *mchan)
> > +{
> > +     struct device *dev =3D mchan->mbox->dev;
> > +     int rc;
> > +
> > +     /* Do nothing if MSI not supported */
> > +     if (mchan->msi_irq =3D=3D U32_MAX)
>
>
> Should check if(!mchan->attrs.msi_control) instead of mchan->msi_irq?

Actually, we should check both over here as well as in
mpxy_mbox_setup_msi() to avoid inappropriate calls
to these functions.

>
>
> > +             return;
> > +
> > +     /* Disable channel MSI control */
> > +     mchan->attrs.msi_control =3D 0;
> > +     rc =3D mpxy_write_attrs(mchan->channel_id,
> > SBI_MPXY_ATTR_MSI_CONTROL,
> > +                           1, &mchan->attrs.msi_control);
> > +     if (rc) {
> > +             dev_err(dev, "disable MSI control failed for MPXY channel
> > 0x%x\n",
> > +                     mchan->channel_id);
> > +     }
> > +
> > +     /* Free channel MSI handler */
> > +     free_irq(mchan->msi_irq, chan);
> > +}
> > +
> > +static int mpxy_mbox_setup_events(struct mpxy_mbox_channel *mchan) {
> > +     struct device *dev =3D mchan->mbox->dev;
> > +     int rc;
> > +
> > +     /* Do nothing if events state not supported */
> > +     if (!mchan->have_events_state)
> > +             return 0;
> > +
> > +     /* Enable channel events state */
> > +     mchan->attrs.events_state_ctrl =3D 1;
> > +     rc =3D mpxy_write_attrs(mchan->channel_id,
> > SBI_MPXY_ATTR_EVENTS_STATE_CONTROL,
> > +                           1, &mchan->attrs.events_state_ctrl);
> > +     if (rc) {
> > +             dev_err(dev, "enable events state failed for MPXY channel
> > 0x%x\n",
> > +                     mchan->channel_id);
>
> Should set mchan->attrs.events_state_ctrl =3D 0; ?

Okay, I will update.

>
> > +             return rc;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static void mpxy_mbox_cleanup_events(struct mpxy_mbox_channel
> > *mchan) {
> > +     struct device *dev =3D mchan->mbox->dev;
> > +     int rc;
> > +
> > +     /* Do nothing if events state not supported */
> > +     if (!mchan->have_events_state)
> Check also if (!mchan->attrs.events_state_ctrl)?

Okay, I will update.

>
> > +             return;
> > +
> > +     /* Disable channel events state */
> > +     mchan->attrs.events_state_ctrl =3D 0;
> > +     rc =3D mpxy_write_attrs(mchan->channel_id,
> > SBI_MPXY_ATTR_EVENTS_STATE_CONTROL,
> > +                           1, &mchan->attrs.events_state_ctrl);
> > +     if (rc) {
> > +             dev_err(dev, "disbable events state failed for MPXY chann=
el
>
> Typo ' disbable'.

Okay, I will update.

>
> > 0x%x\n",
> > +                     mchan->channel_id);
> > +     }
> > +}
> > +
>
>
> [...]
>
>
> > +
> > +static int mpxy_mbox_probe(struct platform_device *pdev) {
> > +     struct device *dev =3D &pdev->dev;
> > +     struct mpxy_mbox_channel *mchan;
> > +     struct mpxy_mbox *mbox;
> > +     int i, msi_idx, rc;
> > +     u32 *channel_ids;
> > +
> > +     /*
> > +      * Initialize MPXY shared memory only once. This also ensures
> > +      * that SBI MPXY mailbox is probed only once.
> > +      */
> > +     if (mpxy_shmem_init_done) {
> > +             dev_err(dev, "SBI MPXY mailbox already initialized\n");
> > +             return -EALREADY;
> > +     }
> > +
> > +     /* Probe for SBI MPXY extension */
> > +     if (sbi_spec_version < sbi_mk_version(1, 0) ||
> > +         sbi_probe_extension(SBI_EXT_MPXY) <=3D 0) {
> > +             dev_info(dev, "SBI MPXY extension not available\n");
> > +             return -ENODEV;
> > +     }
> > +
> > +     /* Setup cpuhp notifier for per-CPU MPXY shared memory */
> > +     cpuhp_setup_state(CPUHP_AP_ONLINE_DYN, "riscv/sbi-mpxy-
> > shmem",
> > +                       mpxy_setup_shmem, mpxy_cleanup_shmem);
> > +
> > +     /* Mark as MPXY shared memory initialization done */
> > +     mpxy_shmem_init_done =3D true;
> > +
> > +     /* Allocate mailbox instance */
> > +     mbox =3D devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
> > +     if (!mbox)
> > +             return -ENOMEM;
> > +     mbox->dev =3D dev;
> > +     platform_set_drvdata(pdev, mbox);
> > +
> > +     /* Find-out of number of channels */
> > +     rc =3D mpxy_get_channel_count(&mbox->channel_count);
> > +     if (rc) {
> > +             dev_err(dev, "failed to get number of MPXY channels\n");
> Suggest print 'rc' value when error. Same for other error messages below.

Okay, I will update.

>
> > +             return rc;
> > +     }
> > +     if (!mbox->channel_count) {
> > +             dev_err(dev, "no MPXY channels available\n");
> > +             return -ENODEV;
> > +     }
> > +
> > +     /* Allocate and fetch all channel IDs */
> > +     channel_ids =3D devm_kcalloc(dev, mbox->channel_count,
> > +                                sizeof(*channel_ids), GFP_KERNEL);
> > +     if (!channel_ids)
> > +             return -ENOMEM;
> > +     rc =3D mpxy_get_channel_ids(mbox->channel_count, channel_ids);
> > +     if (rc) {
> > +             dev_err(dev, "failed to get number of MPXY channels\n");
> > +             return rc;
> > +     }
> > +
>
> [...]
>
> Regards
> Ley Foon

Regards,
Anup

