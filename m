Return-Path: <devicetree+bounces-236353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B441C4346A
	for <lists+devicetree@lfdr.de>; Sat, 08 Nov 2025 21:13:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B0A4C188A91C
	for <lists+devicetree@lfdr.de>; Sat,  8 Nov 2025 20:13:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CE852673AA;
	Sat,  8 Nov 2025 20:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HZKqHcdq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A168C7405A
	for <devicetree@vger.kernel.org>; Sat,  8 Nov 2025 20:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762632799; cv=none; b=DWvFd7e8Sy2ypwULxtOudInBxkNIJhVLahc5zs+Hr/5dwgteBLRY/L+eIj+TD8gTcYClgl9QUnj41P/U17FK6D75KEOMDkgrYjgqsa5fOTsZo06hqzZfGgZ8JdfKV+mOIfjwk4Es7ik8U4fQ9HRDVL3bnz0Gaiq4InveCoR/qB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762632799; c=relaxed/simple;
	bh=u6gUIdJdx24w/j5VX7rURyjLpSVH8rPvCAr8lvNbkt8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p4KFEEbHAH1x8kPwHF4ersStRwNUhzEVFpDIxRQbEW7y/pJXI0jD56H38cO3Vv9waSG8b1RSHn+0oMBgesXOdnUjIEfLs0yHq2tzedCD1bO8gRWSg00CgLIAyMxm2vnNDaNzDs8ZO9A8IsFQPfOJGD3D+K05HuGwm9H2L5scdHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HZKqHcdq; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-656f27a0fd7so22919eaf.3
        for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 12:13:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762632797; x=1763237597; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pEdudkL2kc7QARkjaYyvncHlSqrfhL4PbiW2/JH8KU4=;
        b=HZKqHcdqorwnJH9k3wm1w8ioBf7cP9hktbgG0Kd55Wa0ezaC9y13w27EKvOXZGbRWI
         B7PApFsrmcwQKYQRKjkOQfvt7NslpDGEqEPrsBxwgDle9MjkUCt7LaXN5if4kVBa6yLw
         m/F3mph6bqlfAWRtd4GW6rxWzu9DtMUA7tqNS6vjF0rcjBpusWxDEC8nY5Iv8L/Z76hD
         g5hQ+KvgwoeZnhndiZlvsJM4SnJzZQyVXo8GMLQPE2YOGLxq30DZ0RS44LHlb/CNzvG4
         RtBRvlKBp139ZzlA7uEJbYuGLa9B+WN7ndCzfkCW4YmQWVrVbpqurL2GQhP4UWKjUdsy
         ms1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762632797; x=1763237597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pEdudkL2kc7QARkjaYyvncHlSqrfhL4PbiW2/JH8KU4=;
        b=EqyfuRrROn+eOJMVF0DtqE9855l7h7Q26NcqxuCg+cHK1uaX/vZIrXKXhxkoUvFZ/V
         suQ41gREfs2A7i5iN9nEJTW36oUszpYNJAayiXOsstSkbDVg5FGwIcBPJi5PuV2aaK3u
         EoUMcQwumfh2k65lYl5KFK8NOMsC82lXbjwdoiOg1bvnX9U+8zT//ilMf7/Inh+QsJM9
         p8uHEYgl7fqyaKB0hOw/SlzdCum5YhcgJd2t+hhPBkT9NsEQ8KouHaOD5zmcHR3X3ROS
         4uOq1He6aUU3NVZZ5BpXRxYHCdSftLHa5wB+uaIIrKAbOMDbGhFCUNvV+lsRwpWpDGWs
         7uyQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+XDV+fTXFn/6BAob+uuAHuPlOazMzvKW46EY4dgHwUcMpesSrVSAxGFEz65LJuypE1rzySVVbLwP5@vger.kernel.org
X-Gm-Message-State: AOJu0YyswUJ3eSccDEDWJyjC9dWkX6iKwGOiTYM8VH+/IUW9mvv9fFMW
	rwmeX7f/JRcg5/aaXeOUMyhwZMfxXW9BPXKFkSnoPgX0PuIyUo6k95f/K9WZzbBYAhKDbJO1r+n
	NjY1dbtRga3TjgfQme6GVmGO9A+VrYYw=
X-Gm-Gg: ASbGnctgF1zNktUbzdR46DceJ3MpnhaTJB5n6Amm/6btq3+gPC+TiyGVdM6v5L8Rq1X
	3hDLw4XrdMaPyFqSMrrH5ND1zpOLJCZudwACggtwZh058GSCsAK7fdSoPLwDmEceblE5dtnAKjE
	refXnzW41z+Zcaw2STwWNiDvkX4NNjUiyIxK2h9w4G6Ttb9cv/XI3YHu9LpAKQbSaVrDtJ8fvTw
	68KbCq1SGs/eB8uDmSxlhoy+0/AyKD5uDFUZjlWJ2Y+/OObKCxS2Lx0RC0Irg==
X-Google-Smtp-Source: AGHT+IGtVh7XphEEfVzyYzviQ+KwKH36M7uAI97zbQOxPxmSILVQQaYAZPAZr1WA7OFCdnVTl7Slm2MztlpFABZ60L4=
X-Received: by 2002:a05:6808:191f:b0:450:1d78:f54c with SMTP id
 5614622812f47-4502a31c889mr1472980b6e.6.1762632796691; Sat, 08 Nov 2025
 12:13:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87o6prsl2z.wl-kuninori.morimoto.gx@renesas.com> <87ldkvsl1k.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87ldkvsl1k.wl-kuninori.morimoto.gx@renesas.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sat, 8 Nov 2025 14:13:05 -0600
X-Gm-Features: AWmQ_blUvAfVDWzMYNNZhZTTiZYL8DmeHAdZ1NjKMPm7Hz2JNBXEG3eHsnhVUTA
Message-ID: <CABb+yY2C32cTwh=8pFGGZijwd1KbpAA5=FfFzp_u1OOo8XPn1w@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] mailbox: renesas: Support MFIS mailbox driver
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 27, 2025 at 11:32=E2=80=AFPM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:

> diff --git a/drivers/mailbox/rcar-mfis-mailbox.c b/drivers/mailbox/rcar-m=
fis-mailbox.c
> new file mode 100644
> index 0000000000000..c2de4eb03f578
> --- /dev/null
> +++ b/drivers/mailbox/rcar-mfis-mailbox.c
> @@ -0,0 +1,168 @@
> +// SPDX-License-Identifier: GPL-2.0
> +//
> +// Renesas MFIS (Multifunctional Inferface) Mailbox Driver
> +//
> +// Copyright (C) 2025, Renesas Electronics Corporation.
> +//
> +
> +#include <linux/device.h>
> +#include <linux/of_address.h>
> +#include <linux/of_irq.h>
> +#include <linux/interrupt.h>
> +#include <linux/mailbox_controller.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +
> +enum direction {
> +       TX,
> +       RX,
> +       NUM_DIRECTION,
> +};
> +
> +struct mfis_chan {
> +       u32 __iomem *reg;
> +       bool active;
> +};
> +
> +struct mfis_priv {
> +       struct mbox_controller mbox;
> +       spinlock_t lock;
> +       struct mbox_chan  chan[NUM_DIRECTION];
> +       struct mfis_chan mchan[NUM_DIRECTION];
> +};
> +
> +#define mfis_chan_to_priv(ch) chan->con_priv
>
this should be called 'mbox_chan_to_priv' instead, but why at all?
Maybe preset
   chan[i].con_priv =3D &mchan[i]

> +#define mfis_chan_to_mchan(priv, ch) (priv->mchan + (ch - priv->chan))
> +
> +static int mfis_send_data(struct mbox_chan *chan, void *data)
> +{
> +       struct mfis_priv *priv  =3D mfis_chan_to_priv(chan);
> +       struct mfis_chan *mchan =3D mfis_chan_to_mchan(priv, chan);
> +
> +       iowrite32(0x1, mchan->reg);
> +
> +       return 0;
> +}
> +
> +static irqreturn_t mfis_interrupt(int irq, void *data)
> +{
> +       struct mfis_priv *priv =3D data;
> +
> +       guard(spinlock)(&priv->lock);
> +
> +       for (int i =3D 0; i < NUM_DIRECTION; i++) {
> +               struct mbox_chan *chan  =3D priv->chan  + i;
> +               struct mfis_chan *mchan =3D priv->mchan + i;
> +
> +               if (mchan->active)
> +                       mbox_chan_received_data(chan, 0);
> +
> +               iowrite32(0x0, mchan->reg);
> +       }
> +
> +       return IRQ_HANDLED;
> +}
> +
> +static int mfis_chan_set_active(struct mbox_chan *chan, bool active)
> +{
> +       struct mfis_priv *priv  =3D mfis_chan_to_priv(chan);
> +       struct mfis_chan *mchan =3D mfis_chan_to_mchan(priv, chan);
> +
> +       guard(spinlock_irqsave)(&priv->lock);
> +
> +       mchan->active =3D active;
> +
> +       return 0;
> +}
> +
> +static int mfis_startup(struct mbox_chan *chan)
> +{
> +       return mfis_chan_set_active(chan, true);
> +}
> +
> +static void mfis_shutdown(struct mbox_chan *chan)
> +{
> +       mfis_chan_set_active(chan, false);
> +}
> +
> +static bool mfis_last_tx_done(struct mbox_chan *chan)
> +{
> +       return true;
> +}
> +
> +static const struct mbox_chan_ops mfis_chan_ops =3D {
> +       .send_data      =3D mfis_send_data,
> +       .startup        =3D mfis_startup,
> +       .shutdown       =3D mfis_shutdown,
> +       .last_tx_done   =3D mfis_last_tx_done
> +};
> +
> +static int mfis_mbox_probe(struct platform_device *pdev)
> +{
> +       struct mfis_priv *priv;
> +       struct device *dev =3D &pdev->dev;
> +       struct mbox_controller *mbox;
> +       void __iomem *reg;
> +       int ret, irq;
> +
> +       irq =3D of_irq_get(dev->of_node, 0);
> +       if (irq < 0)
> +               return irq;
> +
> +       priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +       if (!priv)
> +               return -ENOMEM;
> +
> +       ret =3D devm_request_irq(dev, irq, mfis_interrupt, 0, dev_name(de=
v), priv);
> +       if (ret < 0)
> +               return ret;
> +
> +       reg =3D devm_platform_ioremap_resource(pdev, 0);
> +       if (IS_ERR(reg))
> +               return PTR_ERR(reg);
> +
> +       spin_lock_init(&priv->lock);
> +
> +       priv->mchan[TX].reg     =3D reg + 0x4;
> +       priv->mchan[RX].reg     =3D reg;
> +
> +       mbox =3D &priv->mbox;
> +
> +       mbox->chans                     =3D priv->chan;
> +       mbox->chans[TX].mbox            =3D
> +       mbox->chans[RX].mbox            =3D mbox;
> +       mbox->chans[TX].con_priv        =3D
> +       mbox->chans[RX].con_priv        =3D priv;
> +       mbox->txdone_poll               =3D true;
> +       mbox->txdone_irq                =3D false;
> +       mbox->txpoll_period             =3D 1;
> +       mbox->num_chans                 =3D NUM_DIRECTION;
> +       mbox->ops                       =3D &mfis_chan_ops;
> +       mbox->dev                       =3D dev;
> +
Please fix whitespaces, here and elsewhere.

thanks

