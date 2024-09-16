Return-Path: <devicetree+bounces-103288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD0097A4BD
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 17:02:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E23071F29ED7
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 15:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 701FB158D8D;
	Mon, 16 Sep 2024 15:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="l/J5usk9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6167115B98D
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 15:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726498816; cv=none; b=TCoFWEna+7Di9FKldaQNep7lp/VUpxaiq62HZvV3o8kPDiohHi/OuDuPKU8mzm85xJy2Z1jHNsuTo+CSOTFLuv9cRyIU/pj9Nax84VNIJNl8Be0265M9XBxLK4K6Vxxf0gv9x2ZZnfc0WZJes141SG48H9BD5zknjHUpOzPkT7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726498816; c=relaxed/simple;
	bh=SgzFbupR3T7M22CfurP1rOrMMnpozNihbr506w67XZw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t/tDPwO9lqAqpvhy0H3UFJB9NbzXFN25bmUDr4p28MkBpqbjoaO3GRXwRKx7UbBR9IheQ95PSm1xB5+Cs94cGPEyX6YLLxqvFirRmc+3Jy2GPqUhbn10lVfkR0+AVq19rE6mEzZZMaYnhJCEdB6SFB3U9rq5zr5aXSRakpGMNys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=l/J5usk9; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5356bb5522bso4016148e87.1
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 08:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726498811; x=1727103611; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AXbO+D2mVI+UBDU39q5KHUW0ColIXLF8fjiXY9cUqkk=;
        b=l/J5usk9m02jkEUQJd3lGDl/KbAN9w1OOuttpeyHk4nhx77PiaM4IVw7eoeu0b9dbN
         +Kf9ic9gKyTMKV5kbFTSfOWNxT3Ux0Ge7rt1guF6FML3y4diQu1yGouMVJj3pVzb5Urg
         SMQDdpBMUrrKMi3Xb313yxr1RXvYcSMYTN9ns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726498811; x=1727103611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AXbO+D2mVI+UBDU39q5KHUW0ColIXLF8fjiXY9cUqkk=;
        b=qDJvzOT5fF/0ALL+oBuuPGKe0wpZgqokdRjuRurzESpsS1WgC2QyBFO1hkptHPJo9E
         +isGA9ixmOh/0qu6JbYHgqrv5nfLVKJFdaI1f2AG1r8AeOqJnvKw8531IwwRZoXabnOn
         J2DoDd/3IK9017/V0QDTwZPC38FavnYXkvxxVWR2CVlqAIYeI/z/aHcc6QASkm3WnqRe
         k4etvPvHJFCCUSzWfS7Tx5fveNBhz9botRyIrV2rkv+ORJMJlrhBn2gkjtMR1BBlJhcJ
         yfdyppp0IlLsGfpPgD7ioSeYJwex6kngZqCym0zvmFto73hx3IiyN+a3/FUQkH09hZIm
         tyFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVa6t3M1po4XIQVN+MBfQS3JxLHH1jJv6ZbUKt4Svbq2FwZtNwHQD+ww7xVpt3rZjYGglh9cj5cE3Ob@vger.kernel.org
X-Gm-Message-State: AOJu0YzjloXfc9ws3mDzeVkvrm8X9iLgFOazoh0subdk6Qx2k8hEVI2X
	j2bR0/oPtAIx/GrQBCSZ/kOiiqsTqtfZii92cWIHk4LcLUXIBQCbRlIWy8LPOXrriYRD4L7/z/A
	FMkznQlK9AQKrXLd2MNEMsj1oGGQImF8gN9RW
X-Google-Smtp-Source: AGHT+IExxtSOdUaIDWYWqE4hbqGtSDreuAB4hMGiJcyjVPhu0E40r8ul9HIo9VA3zWefCMXKc/icuLN8A8D0fAPnWL0=
X-Received: by 2002:a05:6512:10d0:b0:536:5515:e9b5 with SMTP id
 2adb3069b0e04-5367ff3230fmr5531071e87.52.1726498810983; Mon, 16 Sep 2024
 08:00:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240911072751.365361-1-wenst@chromium.org> <20240911072751.365361-7-wenst@chromium.org>
 <ZuQTFTNTBLCziD05@smile.fi.intel.com> <CAGXv+5HgkCZ=vdHGgvCW1U-nid=cQrVaxC+V+H2Gknf2pnTbYA@mail.gmail.com>
 <ZugKHrzs5BWoDr1c@smile.fi.intel.com>
In-Reply-To: <ZugKHrzs5BWoDr1c@smile.fi.intel.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 16 Sep 2024 16:59:59 +0200
Message-ID: <CAGXv+5E09LH5UKXh0wHrsqAp-ps8xaGfSZ37GWZ6sbyoaOczfQ@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] i2c: Introduce OF component probe function
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, 
	Johan Hovold <johan@kernel.org>, Jiri Kosina <jikos@kernel.org>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 16, 2024 at 12:36=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Sun, Sep 15, 2024 at 12:44:13PM +0200, Chen-Yu Tsai wrote:
> > On Fri, Sep 13, 2024 at 12:25=E2=80=AFPM Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com> wrote:
> > > On Wed, Sep 11, 2024 at 03:27:44PM +0800, Chen-Yu Tsai wrote:
>
> ...
>
> > > > +int i2c_of_probe_component(struct device *dev, const struct i2c_of=
_probe_cfg *cfg, void *ctx)
> > > > +{
> > > > +     const struct i2c_of_probe_ops *ops;
> > > > +     const char *type;
> > > > +     struct device_node *i2c_node;
> > > > +     struct i2c_adapter *i2c;
> > > > +     int ret;
> > > > +
> > > > +     if (!cfg)
> > > > +             return -EINVAL;
> > > > +
> > > > +     ops =3D cfg->ops ?: &i2c_of_probe_dummy_ops;
> > > > +     type =3D cfg->type;
> > > > +
> > > > +     i2c_node =3D i2c_of_probe_get_i2c_node(dev, type);
> > >
> > >
> > >         struct device_node *i2c_node __free(of_node_put) =3D
> > >                 i2c_...;
> >
> > cleanup.h says to not mix the two styles (scoped vs goto). I was trying
> > to follow that, though I realize now that with the scoped loops it
> > probably doesn't help.
> >
> > I'll revert back to having __free().
> >
> > > > +     if (IS_ERR(i2c_node))
> > > > +             return PTR_ERR(i2c_node);
> > > > +
> > > > +     for_each_child_of_node_with_prefix(i2c_node, node, type) {
> > > > +             if (!of_device_is_available(node))
> > > > +                     continue;
> > > > +
> > > > +             /*
> > > > +              * Device tree has component already enabled. Either =
the
> > > > +              * device tree isn't supported or we already probed o=
nce.
> > > > +              */
> > > > +             ret =3D 0;
> > >
> > > Shouldn't you drop reference count for "node"? (See also below)
> >
> > This for-each loop the "scoped". It just doesn't have the prefix anymor=
e.
> > I believe you asked if the prefix could be dropped and then Rob agreed.
>
> Hmm... I have looked into the implementation and I haven't found the evid=
ence
> that this is anyhow scoped. Can you point out what I have missed?

From patch 2:

+#define for_each_child_of_node_with_prefix(parent, child, prefix)      \
+       for (struct device_node *child __free(device_node) =3D            \

                                 ^^^^^^^^^^^^^^^^^^^^^^^^^ scoped here

+            of_get_next_child_with_prefix(parent, NULL, prefix);       \
+            child !=3D NULL;                                             \
+            child =3D of_get_next_child_with_prefix(parent, child, prefix)=
)
+

"node", or "child" in this snippet is scoped within the for loop.


ChenYu

> > > > +             goto out_put_i2c_node;
> > > > +     }
> > > > +
> > > > +     i2c =3D of_get_i2c_adapter_by_node(i2c_node);
> > > > +     if (!i2c) {
> > > > +             ret =3D dev_err_probe(dev, -EPROBE_DEFER, "Couldn't g=
et I2C adapter\n");
> > > > +             goto out_put_i2c_node;
> > > > +     }
> > > > +
> > > > +     /* Grab resources */
> > > > +     ret =3D 0;
> > > > +     if (ops->get_resources)
> > > > +             ret =3D ops->get_resources(dev, i2c_node, ctx);
> > > > +     if (ret)
> > > > +             goto out_put_i2c_adapter;
> > > > +
> > > > +     /* Enable resources */
> > > > +     if (ops->enable)
> > > > +             ret =3D ops->enable(dev, ctx);
> > > > +     if (ret)
> > > > +             goto out_release_resources;
> > > > +
> > > > +     ret =3D 0;
> > > > +     for_each_child_of_node_with_prefix(i2c_node, node, type) {
> > > > +             union i2c_smbus_data data;
> > > > +             u32 addr;
> > > > +
> > > > +             if (of_property_read_u32(node, "reg", &addr))
> > > > +                     continue;
> > > > +             if (i2c_smbus_xfer(i2c, addr, 0, I2C_SMBUS_READ, 0, I=
2C_SMBUS_BYTE, &data) < 0)
> > > > +                     continue;
> > > > +
> > > > +             /* Found a device that is responding */
> > > > +             if (ops->free_resources_early)
> > > > +                     ops->free_resources_early(ctx);
> > > > +             ret =3D i2c_of_probe_enable_node(dev, node);
> > >
> > > Hmm... Is "node" reference count left bumped up for a reason?
> >
> > Same as above.
>
> Same as above.
>
> > > > +             break;
> > > > +     }
> > > > +
> > > > +     if (ops->cleanup)
> > > > +             ops->cleanup(dev, ctx);
> > > > +out_release_resources:
> > > > +     if (ops->free_resources_late)
> > > > +             ops->free_resources_late(ctx);
> > > > +out_put_i2c_adapter:
> > > > +     i2c_put_adapter(i2c);
> > > > +out_put_i2c_node:
> > > > +     of_node_put(i2c_node);
> > > > +
> > > > +     return ret;
> > > > +}
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

