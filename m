Return-Path: <devicetree+bounces-101176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D76970C17
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 05:02:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F31E1F215D8
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 03:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D1E61AC897;
	Mon,  9 Sep 2024 03:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EQi0sXYZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9353A4C81
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 03:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725850941; cv=none; b=CqstQJvhhmbsbJOQ7JkjfLo6/Tw9wgyMCSDITNhgKa6JMBgj4Ww8dyaH1cU67TVMRUlzA8+70DDzgtLir63rIbrM3/99mNbkeFw8rzIyoVULBTM5FhtcZYzCfaiz2RDdJin2JnnQflVSkR/5JC2Mlpdbb7fsRPva+HufqNqvrlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725850941; c=relaxed/simple;
	bh=grZzqEa3tFzcQMqRK0sw1a2uKWymqPGdCok5c0f8GPE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kl/OQ5RTKobUJVZdFt49JmL1IDiKR2/ZKPnOUf2KJjgvzcG3Vp5WXJ2Ify1P0DuPNjH9mcZLne6TydMcc0Gb4R8DfNJbFtUdYHU0nOkWM2j1Fpnh+G8xfg0y04I+fzEIYWGd49rX5VCU3tBBR1OwumliSq1vmqGAaH9Eje+LqdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=EQi0sXYZ; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53568ffc525so5266069e87.0
        for <devicetree@vger.kernel.org>; Sun, 08 Sep 2024 20:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725850938; x=1726455738; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=65RZ8SOYLOiyWGNxpNqE+fBvr6QpbSIs+5UxPrLsRJE=;
        b=EQi0sXYZORvEJHPQ1qK2+I2a2QMh0oGN2ltBf2gNDqPfId+qFhWpCPB3JfscSgM6gq
         Jqp8V+Gc0ZFMSztFMddGcabbW06srv8JuQYNYxL6ERXdK579V82u3vjs0n6IDQeHwCDo
         I1k7Qga+ZoJchG5jepO2e7PMy7ZGyckOyNGTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725850938; x=1726455738;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=65RZ8SOYLOiyWGNxpNqE+fBvr6QpbSIs+5UxPrLsRJE=;
        b=gTz3jkpx5OLvwyo90ekFvRZ9QE7OWKZJbxKLo/xE7aITt/pncfGbrjQiHALRcIaBpe
         IZO2f2z8cMU3GwaUaSOojwcgzdlI4L2VNBGCe+Zuqs6G4armYtHdu8iaz5PBX375kExY
         mxj81gDmkmLjE+cSWmPysl/Jt0M5MA8i95uUKAYfLDl/lSarLlBuPD0OMj6zC6gCmEIo
         eJgoYPMWhpa0q1ngkHhBrKRTRTt7+VBeP6micEopcecTlSAz8CA+RQuUyFvENm+KI031
         kTG5nyFlW13Gs82DPKL37SnJT4g+6KwBE22TeKzJ/R5W1CSHOulOWblQp+OKWaZx4p/I
         LLTw==
X-Forwarded-Encrypted: i=1; AJvYcCUwBrIIelfIKOP9ZZ71qx9PP3a3wDJvknTdJSYzStmL0984k5mrcvmS1e2l7DWwNqqSTeb+/7Za+6b6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/SpQBGg+3KXNZhdsfMTlXW79Ttqkoa5g6D3A2X/WZvCfoHndD
	b4Lt1jSxA9/eX0nUIdBjzpKyt4JV0OYTDKHqtI75q9+0T1+u/TrDhEc1xh/Nf9k/tHiSzL06qby
	YmRZk1NOcqcKkU7JmSSdhUDR2QBKTCWO4pltL
X-Google-Smtp-Source: AGHT+IHKFMbyArHB2AN56DTTWYLOl+lRWjVmB3hnmcGrV4D1bnYTbTUiJguUasaq/X4rrUATX9/ZP6f/vksIVDxn9RQ=
X-Received: by 2002:a05:6512:3d1b:b0:536:5530:af46 with SMTP id
 2adb3069b0e04-53658813100mr6869471e87.52.1725850937567; Sun, 08 Sep 2024
 20:02:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240904090016.2841572-1-wenst@chromium.org> <20240904090016.2841572-9-wenst@chromium.org>
 <Zthk25W0zXcHWRdt@smile.fi.intel.com>
In-Reply-To: <Zthk25W0zXcHWRdt@smile.fi.intel.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 9 Sep 2024 11:02:06 +0800
Message-ID: <CAGXv+5FyEJBO8=eb3i7hdytfS-iuAx=o=2SL46GDPVkfiz-Dyg@mail.gmail.com>
Subject: Re: [PATCH v6 08/12] i2c: Introduce OF component probe function
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

On Wed, Sep 4, 2024 at 9:47=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Sep 04, 2024 at 05:00:10PM +0800, Chen-Yu Tsai wrote:
> > Some devices are designed and manufactured with some components having
> > multiple drop-in replacement options. These components are often
> > connected to the mainboard via ribbon cables, having the same signals
> > and pin assignments across all options. These may include the display
> > panel and touchscreen on laptops and tablets, and the trackpad on
> > laptops. Sometimes which component option is used in a particular devic=
e
> > can be detected by some firmware provided identifier, other times that
> > information is not available, and the kernel has to try to probe each
> > device.
> >
> > This change attempts to make the "probe each device" case cleaner. The
> > current approach is to have all options added and enabled in the device
> > tree. The kernel would then bind each device and run each driver's prob=
e
> > function. This works, but has been broken before due to the introductio=
n
> > of asynchronous probing, causing multiple instances requesting "shared"
> > resources, such as pinmuxes, GPIO pins, interrupt lines, at the same
> > time, with only one instance succeeding. Work arounds for these include
> > moving the pinmux to the parent I2C controller, using GPIO hogs or
> > pinmux settings to keep the GPIO pins in some fixed configuration, and
> > requesting the interrupt line very late. Such configurations can be see=
n
> > on the MT8183 Krane Chromebook tablets, and the Qualcomm sc8280xp-based
> > Lenovo Thinkpad 13S.
> >
> > Instead of this delicate dance between drivers and device tree quirks,
> > this change introduces a simple I2C component probe. function For a
> > given class of devices on the same I2C bus, it will go through all of
> > them, doing a simple I2C read transfer and see which one of them respon=
ds.
> > It will then enable the device that responds.
> >
> > This requires some minor modifications in the existing device tree. The
> > status for all the device nodes for the component options must be set
> > to "failed-needs-probe". This makes it clear that some mechanism is
> > needed to enable one of them, and also prevents the prober and device
> > drivers running at the same time.
>
> ...
>
> > +int i2c_of_probe_component(struct device *dev, const char *type)
> > +{
> > +     struct i2c_adapter *i2c;
> > +     int ret;
> > +
> > +     struct device_node *i2c_node __free(device_node) =3D i2c_of_probe=
_get_i2c_node(dev, type);
> > +     if (IS_ERR(i2c_node))
> > +             return PTR_ERR(i2c_node);
>
> > +     for_each_child_of_node_scoped(i2c_node, node) {
>
> Hmm, but can it be for_each_child_of_node_with_prefix_scoped() now?

Looks like at least one of the fixups got squashed into the wrong patch.
I fixed both of them to use for_each_child_of_node_with_prefix().

That isn't compatible with Rob's comment though, and I'm not sure we
want a for_each_available_child_of_node_with_prefix() helper just for
one instance?

> > +             if (!of_node_name_prefix(node, type))
> > +                     continue;
> > +             if (!of_device_is_available(node))
> > +                     continue;
> > +
> > +             /*
> > +              * Device tree has component already enabled. Either the
> > +              * device tree isn't supported or we already probed once.
> > +              */
> > +             return 0;
> > +     }
> > +
> > +     i2c =3D of_get_i2c_adapter_by_node(i2c_node);
> > +     if (!i2c)
> > +             return dev_err_probe(dev, -EPROBE_DEFER, "Couldn't get I2=
C adapter\n");
> > +
> > +     ret =3D 0;
> > +     for_each_child_of_node_scoped(i2c_node, node) {
>
> Ditto.
>
> > +             union i2c_smbus_data data;
> > +             u32 addr;
> > +
> > +             if (!of_node_name_prefix(node, type))
> > +                     continue;
> > +             if (of_property_read_u32(node, "reg", &addr))
> > +                     continue;
> > +             if (i2c_smbus_xfer(i2c, addr, 0, I2C_SMBUS_READ, 0, I2C_S=
MBUS_BYTE, &data) < 0)
> > +                     continue;
> > +
> > +             /* Found a device that is responding */
> > +             ret =3D i2c_of_probe_enable_node(dev, node);
> > +             break;
> > +     }
> > +
> > +     i2c_put_adapter(i2c);
> > +
> > +     return ret;
> > +}
>
> ...
>
> > +EXPORT_SYMBOL_GPL(i2c_of_probe_component);
>
> Wonder if we may already use namespaced export from day 1.

I think that would be a good idea, especially given Doug's request for
exposing more helpers.

Thanks
ChenYu

