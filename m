Return-Path: <devicetree+bounces-110818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8963599C0AB
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 09:05:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B505283BA6
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 07:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA9A3145B26;
	Mon, 14 Oct 2024 07:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OnA6NRb0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E2B13FD83
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 07:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728889499; cv=none; b=rmNl1EqzB+znnF2teHyxFdY7CAlaQJFsyyKg3rZKrEYhy9QDi29yIx5uDj4brVv2e2cosvgRIyi9DgkW+bRHHb3smQjpjn+jrmqwWp0rFR3JfkcJjhASmDYvq0bBWqrlYgLRmKHTPcVt5bpi3KfFrUE5dDNKZBiw/fOpqtuqps8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728889499; c=relaxed/simple;
	bh=jb6fmG3jUcn9rj+/51XFR2D89XJgwcnKnAqRPEOP71o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Qefy1Rckyevr9cqdY+5NEkuxaw0bvgQ3n9vbkKHtb1peZogh2xjYJ5Hl7ZHh/A+1iLnVn5FjL9buS05xbJjlhAf38qOE1l8VizSYsjge4HhONPVktT3MCIFJTHQfEjM9dB7f/1PNatdU0k6AXqPp+GL689UqbMOjkO8+4BumCyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=OnA6NRb0; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2fb559b0b00so1823541fa.0
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 00:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728889496; x=1729494296; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7ynM5W4VrPGHZiCTug5hrtZgV83Yif26KnCypK7Mhz8=;
        b=OnA6NRb06MVgoRFlCzqYaI6TyM/+ot49+PPMmjahzQg0nDD2fjSDMS9+WjzHBCddx7
         EhBM7vstXKEzVKqZcWM5iC0/axpuUQWy+6GlrkGbHnYQtGRkwtEV+D3qLWRa0vnd0oXH
         zkKFI4YN5sHzKn7YjJrHmIsSWbCBo53YzoZXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728889496; x=1729494296;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7ynM5W4VrPGHZiCTug5hrtZgV83Yif26KnCypK7Mhz8=;
        b=BeRcsRJNNvBzXkndZo3LQ4crAZKIcki3OAn+n83tauuh+AW6t9SURt39TPsJmrYeAa
         5I97irD0950e6Jq6LEJec9q8QPnvZAug82GXqPXtF2ZErq8WO5TWKR2jffCu9MAboL2W
         34uoqKR32QXCIXzFABC92kd/tkyCNgTXt4gBPLIr1dv2xwP+3WROhu80kptW8KTb5Dzg
         /sQKQ1ssnozMPvof5QrBuD+X3cDaPlFI03p1rTeGcGz6PPu/koI0+iN2taSCSmS7nvUH
         iBtgAtZzV27B4es7/kFN58nB9Cex8IV7tfI/qRbAT2lVR38/0Rb71EH0xJcYGQnIF6UZ
         5DjA==
X-Forwarded-Encrypted: i=1; AJvYcCUgtoop/CToaw3t6vZy8ORc2/wmaBucikrQkowYzqld24ax9IWrzzxZ9Hzt3+99X3UDn2JW//65H8i3@vger.kernel.org
X-Gm-Message-State: AOJu0YwPpnJ97uIP4xnY4Wk1Lezw72a4WNEyVDk3Vtnb0pxbnqwQJRiT
	Gbx+dNmKCkKzpQ/VGNZo6LI7ucbkb4pD614gO1gQ8E0RdKlN+1ER3WabeoOUE5cAoT/+xIm79Xp
	OSQu+VxmWycTgwCdJ0u2w51GEmHP6gTxhIgZx
X-Google-Smtp-Source: AGHT+IFT7HlAXavEjKzdhXvzBtEDuZfwe6IvILZ8dpouGERPtoOe8fs5ejCzMZSurR6nnvkNUPToEI3YRpIVnaoznhU=
X-Received: by 2002:a05:6512:b11:b0:539:8d9b:b624 with SMTP id
 2adb3069b0e04-539e5742bdamr2688773e87.55.1728889495769; Mon, 14 Oct 2024
 00:04:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008073430.3992087-1-wenst@chromium.org> <20241008073430.3992087-8-wenst@chromium.org>
 <Zwfy6ER6sbr_QxsY@smile.fi.intel.com>
In-Reply-To: <Zwfy6ER6sbr_QxsY@smile.fi.intel.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 14 Oct 2024 15:04:44 +0800
Message-ID: <CAGXv+5FAhZQR+Tah_6Qxp4O7=x2RawfWuMh29_FT4mGQGQF84w@mail.gmail.com>
Subject: Re: [PATCH v8 7/8] platform/chrome: Introduce device tree hardware prober
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, 
	Johan Hovold <johan@kernel.org>, Jiri Kosina <jikos@kernel.org>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 10, 2024 at 11:29=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Tue, Oct 08, 2024 at 03:34:26PM +0800, Chen-Yu Tsai wrote:
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
> > this change introduces a simple I2C component prober. For any given
> > class of devices on the same I2C bus, it will go through all of them,
> > doing a simple I2C read transfer and see which one of them responds.
> > It will then enable the device that responds.
> >
> > This requires some minor modifications in the existing device tree.
> > The status for all the device nodes for the component options must be
> > set to "fail-needs-probe". This makes it clear that some mechanism is
> > needed to enable one of them, and also prevents the prober and device
> > drivers running at the same time.
>
> ...
>
> > +#include <linux/array_size.h>
> > +#include <linux/errno.h>
> > +#include <linux/i2c-of-prober.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
>
> > +static int chromeos_i2c_component_prober(struct device *dev, const voi=
d *_data)
> > +{
> > +     const struct chromeos_i2c_probe_data *data =3D _data;
> > +     struct i2c_of_probe_simple_ctx ctx =3D {
> > +             .opts =3D data->opts
>
> Leave trailing comma in such cases (when it's not a terminator and
> not on the same line with the variable definition).

Ack.

> > +     };
> > +
> > +     return i2c_of_probe_component(dev, data->cfg, &ctx);
> > +}
> > +
> > +static const struct chromeos_i2c_probe_data chromeos_i2c_probe_dumb_to=
uchscreen =3D {
> > +     .cfg =3D &(const struct i2c_of_probe_cfg) {
>
> Perhaps you can introduce something like
>
> #define DEFINE_I2C_OF_PROBE_CFG(_type_, _ops_)          \
>         (struct ...) {                                  \
>                 .ops =3D _ops_,                           \
>                 .type =3D #_type_,                        \
>         }
>
> and use it here as
>
>         .cfg =3D DEFINE_I2C_OF_PROBE_CFG(touchscreen, NULL),

Overall reply about the compound literals is in my other email.

> > +             .type =3D "touchscreen"
>
> Ditto.

Ack.

>
> > +     }
>
> Ditto.
>
> > +};
> > +
> > +static const struct i2c_of_probe_cfg chromeos_i2c_probe_simple_trackpa=
d_cfg =3D {
> > +     .ops =3D &i2c_of_probe_simple_ops,
> > +     .type =3D "trackpad"
>
> Leave a comma.

Ack.

> > +};
>
> ...
>
> > +static const struct chromeos_i2c_probe_data chromeos_i2c_probe_hana_tr=
ackpad =3D {
> > +     .cfg =3D &chromeos_i2c_probe_simple_trackpad_cfg,
>
>         .cfg =3D DEFINE_I2C_OF_PROBE_CFG(trackpad, i2c_of_probe_simple_op=
s),
>
> Or even
>
> #define DEFINE_I2C_OF_PROBE_CFG_SIMPLE(_type_)                  \
>         DEFINE_I2C_OF_PROBE_CFG(type, &i2c_of_probe_simple_ops)
>
> > +     .opts =3D &(const struct i2c_of_probe_simple_opts) {
>
> Perhaps also DEFINE_xxx for this compound literal?

I think it's better to leave this one as is. Not every entry will
use the same combination of parameters. And having the entry spelled
out like this makes it easier to read which value is for what
parameter, instead of having to go up to the macro definition.

For comparison, this entry uses just two of the parameters, while for
another platform I'm working on the full set of parameters is needed.

> > +             .res_node_compatible =3D "elan,ekth3000",
> > +             .supply_name =3D "vcc",
> > +             /*
> > +              * ELAN trackpad needs 2 ms for H/W init and 100 ms for F=
/W init.
> > +              * Synaptics trackpad needs 100 ms.
> > +              * However, the regulator is set to "always-on", presumab=
ly to
> > +              * avoid this delay. The ELAN driver is also missing dela=
ys.
> > +              */
> > +             .post_power_on_delay_ms =3D 0,
> > +     }
> > +};
> > +
> > +static const struct hw_prober_entry hw_prober_platforms[] =3D {
> > +     { .compatible =3D "google,hana", .prober =3D chromeos_i2c_compone=
nt_prober, .data =3D &chromeos_i2c_probe_dumb_touchscreen },
> > +     { .compatible =3D "google,hana", .prober =3D chromeos_i2c_compone=
nt_prober, .data =3D &chromeos_i2c_probe_hana_trackpad },
>
> These strings are a bit long, perhaps wrap on one member per line?

Sure.


ChenYu


> > +};
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

