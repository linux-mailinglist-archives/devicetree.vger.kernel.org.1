Return-Path: <devicetree+bounces-96096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B60AB95C953
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 11:36:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0FF4AB20F24
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 09:36:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4739214D431;
	Fri, 23 Aug 2024 09:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="STJAmEAr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B4414B963
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 09:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724405774; cv=none; b=q1vB6fC0AqP603tYRBIG8Wct0IPqCxLizcyW+nwQnlJoWHpv1sdK6/jCCQQgpi8Yq9W6MTDs7/p5U8ZF6+PYFcOozwSXWZEY/SpPxlCLpD1j+fDvNgs5cDEF7OsV9Cb88VAqa2Npq3JR4zhtLRWybLNr/JKe5FmCxJrCdnFA4Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724405774; c=relaxed/simple;
	bh=shF/qqqOiqstk81XmXkkiNOvhN8dscyG9qUExLpBsDQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H0KhrHwpWBis/qaqREAMnAKO1siEk8i71eb9+zZCCYYmrmelauxpQSznWofYo9oaR3JgP0w4k61QAnHbaKyXCs/NmFX9SCxo+bC21waSllrmTzkZkz2y+opMwIv5Pa8iqLgli8cErq91otPIbvZTkwahyZqBPjUxoA7Xr1bz33g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=STJAmEAr; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5334c4cc17fso2387452e87.2
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 02:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724405770; x=1725010570; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M99BvE0ak8pOlurdL9IHAiYs0yZwQ7ZlfzDedMoUuTo=;
        b=STJAmEArsIRFsEaAUOOUEMHtLqZAcd3UH9A5OOXGYcYxnDiA1K/fMs+uhdQjaDF0Vg
         G9R2vc3nJhuotaaiX7SbGu8vSh97Zoq0LZF9nThDolYgB+25FSaJCKDZsQ3Bm0iKlwrs
         2452UC/xoKE1OKdRj3oLHxQzaE0wQTwpNKX4g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724405770; x=1725010570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M99BvE0ak8pOlurdL9IHAiYs0yZwQ7ZlfzDedMoUuTo=;
        b=oBNSuK7iStOTQc8hB9wkU/s09uip5K/fAEBbJrSzyPz4pI0DfmPFrdrVu8WPNloxle
         wn5TcTzOC6PZ3ZGDQRCHZIdYeoFeOV3BGO3mVNeLTYwkewyudDM5/3va5Il0wkxPP2kB
         rMq1HZMriN7Krcr6+eASsziHNoM7a7zAb8fe3ieTpWGkLVTZEiVWU0UtSVBitxf+Ug4a
         R4YKaIPb9xSUPM7I+TeKoRsNQ+Uz74BQP6oB/KTfVF1iHPe0/MpcmfhlYH0sZpZ8iLC6
         tLVDdi/6RfNwZo6F/pTIR1DMlClPAJxd7GokW756a1nP88ljpcs/pG3jTjKlu1ZIdbWW
         S67Q==
X-Forwarded-Encrypted: i=1; AJvYcCXx5b0thvnE2pRADeImNdZI8cPy0sG0yKP1noHUani6RfG+C4Y3BIvcRwiw6rCeXRqk97ChtkyCtLbZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwWyLMUfoHABAP1h4VACnPR3leO77ErJqhd8MdCcCedE3BcHYXm
	YYm33rjZxUtL78mvwW3n+Zqax9owD2vt/adJRaPqlLxLrw9ZlKwqYtFep39eA5yclVCvff6VKY6
	ycZPjPh+tNfVy7cETDnahdq2fhWOiRRKUvT7p
X-Google-Smtp-Source: AGHT+IF8+5/bPoCsCz59rChJbumZ9VHK/EHdKiSLptyL22YMjMEjXODaeoJvtP8nB6l8BDKCdUWw053JwFUxmGAyPbY=
X-Received: by 2002:a05:6512:ba0:b0:52e:91ff:4709 with SMTP id
 2adb3069b0e04-53438772179mr1273014e87.21.1724405770181; Fri, 23 Aug 2024
 02:36:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240822092006.3134096-1-wenst@chromium.org> <20240822092006.3134096-8-wenst@chromium.org>
 <ZsdGlMyq4pwWAOk4@smile.fi.intel.com>
In-Reply-To: <ZsdGlMyq4pwWAOk4@smile.fi.intel.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 23 Aug 2024 17:35:59 +0800
Message-ID: <CAGXv+5FWaN4gGksCF7k3emuDyCmAtx7+DBwHHbFhf_FLpP+=aw@mail.gmail.com>
Subject: Re: [PATCH v5 07/10] i2c: of-prober: Add regulator support
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

On Thu, Aug 22, 2024 at 10:09=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Thu, Aug 22, 2024 at 05:20:00PM +0800, Chen-Yu Tsai wrote:
> > This adds regulator management to the I2C OF component prober.
> > Components that the prober intends to probe likely require their
> > regulator supplies be enabled, and GPIOs be toggled to enable them or
> > bring them out of reset before they will respond to probe attempts.
> > GPIOs will be handled in the next patch.
> >
> > Without specific knowledge of each component's resource names or
> > power sequencing requirements, the prober can only enable the
> > regulator supplies all at once, and toggle the GPIOs all at once.
> > Luckily, reset pins tend to be active low, while enable pins tend to
> > be active high, so setting the raw status of all GPIO pins to high
> > should work. The wait time before and after resources are enabled
> > are collected from existing drivers and device trees.
> >
> > The prober collects resources from all possible components and enables
> > them together, instead of enabling resources and probing each component
> > one by one. The latter approach does not provide any boot time benefits
> > over simply enabling each component and letting each driver probe
> > sequentially.
> >
> > The prober will also deduplicate the resources, since on a component
> > swap out or co-layout design, the resources are always the same.
> > While duplicate regulator supplies won't cause much issue, shared
> > GPIOs don't work reliably, especially with other drivers. For the
> > same reason, the prober will release the GPIOs before the successfully
> > probed component is actually enabled.
>
> ...
>
> >  /*
>
> >   * address responds.
> >   *
> >   * TODO:
> > - * - Support handling common regulators and GPIOs.
> > + * - Support handling common GPIOs.
>
> You can split this to two lines in the first place and have less churn in=
 this
> patch and the other one.

Ack.

> >   * - Support I2C muxes
> >   */
>
> ..
>
> > +/* Returns number of regulator supplies found for node, or error. */
> > +static int i2c_of_probe_get_regulator(struct device *dev, struct devic=
e_node *node,
> > +                                   struct i2c_of_probe_data *data)
> > +{
> > +     struct regulator_bulk_data *tmp, *new_regulators;
> > +     int ret;
> > +
> > +     ret =3D of_regulator_bulk_get_all(dev, node, &tmp);
> > +     if (ret <=3D 0)
> > +             return ret;
>
> I would split this and explain 0 case.

Ack.

> > +     if (!data->regulators) {
> > +             data->regulators =3D tmp;
> > +             data->regulators_num =3D ret;
> > +             return ret;
> > +     };
> > +
> > +     new_regulators =3D krealloc(data->regulators,
> > +                               sizeof(*tmp) * (data->regulators_num + =
ret),
>
> krealloc_array()

Ack. Somehow I didn't find this function while I was rewriting the code.

> > +                               GFP_KERNEL);
> > +     if (!new_regulators) {
> > +             regulator_bulk_free(ret, tmp);
> > +             return -ENOMEM;
> > +     }
> > +
> > +     data->regulators =3D new_regulators;
>
> > +     for (unsigned int i =3D 0; i < ret; i++)
> > +             memcpy(&data->regulators[data->regulators_num++], &tmp[i]=
, sizeof(*tmp));
>
> Seems like copying array to array, no? If so, can't be done in a single m=
emcpy() call?

Ack.

> > +     return ret;
> > +}
>
> ...
>
> > +static int i2c_of_probe_get_res(struct device *dev, struct device_node=
 *node,
> > +                             struct i2c_of_probe_data *data)
> > +{
> > +     struct property *prop;
> > +     int ret;
> > +
> > +     ret =3D i2c_of_probe_get_regulator(dev, node, data);
> > +     if (ret < 0) {
> > +             dev_err_probe(dev, ret, "Failed to get regulator supplies=
 from %pOF\n", node);
> > +             goto err_cleanup;
> > +     }
> > +
> > +     return 0;
> > +
> > +err_cleanup:
> > +     i2c_of_probe_free_res(data);
> > +     return ret;
> > +}
>
> Hmm... why not
>
> static int i2c_of_probe_get_res(struct device *dev, struct device_node *n=
ode,
>                                 struct i2c_of_probe_data *data)
> {
>         struct property *prop;
>         int ret;
>
>         ret =3D i2c_of_probe_get_regulator(dev, node, data);
>         if (ret < 0) {
>                 i2c_of_probe_free_res(data);
>                 return dev_err_probe(dev, ret, "Failed to get regulator s=
upplies from %pOF\n", node);
>         }
>
>         return 0;
> }
>
> ...

That would be more churn in the next patch, which introduces another
error condition requiring the same cleanup.

> > +static int i2c_of_probe_enable_res(struct device *dev, struct i2c_of_p=
robe_data *data)
> > +{
> > +     int ret =3D 0;
>
> Redundant assignment.

Ack.

> > +     dev_dbg(dev, "Enabling regulator supplies\n");
> > +
> > +     ret =3D regulator_bulk_enable(data->regulators_num, data->regulat=
ors);
> > +     if (ret)
> > +             return ret;
> > +
> > +     /* largest post-power-on pre-reset-deassert delay seen among driv=
ers */
> > +     msleep(500);
>
> How would we monitor if any [new] driver wants to use bigger timeout?

The assumption is that the person doing the integration should test for
this. This prober doesn't get called everywhere. It needs a driver to
call it, and that driver is written by someone for some specific platform.
Maybe I should explicitly spell that out in the function description?
Or even make it a parameter?

Also, having an arbitrarily large number here doesn't help platforms that
want to minimize boot time. On that front I'm also thinking about whether
it is possible to do a handover to the actual driver so that the latter
doesn't have to go through the whole power sequence again.

> > +     return 0;
> > +}
>
> ...
>
> >       struct i2c_adapter *i2c;
> > +     struct i2c_of_probe_data probe_data =3D {0};
>
> Reversed xmas tree order?

OK...

> '0' is not needed.

Ack.

> ...
>
> > +     /* Grab resources */
> > +     for_each_child_of_node_scoped(i2c_node, node) {
> > +             u32 addr;
> > +
> > +             if (!of_node_name_prefix(node, type))
> > +                     continue;
>
> Is it third or fourth copy of this code? At some point you probably want
>
> #define for_each_child_of_node_with_prefix_scoped()
>         for_each_if(...)
>
> (or equivalent)

Ack.


Thank you for the review.

ChenYu

> > +             if (of_property_read_u32(node, "reg", &addr))
> > +                     continue;
> > +
> > +             dev_dbg(dev, "Requesting resources for %pOF\n", node);
> > +             ret =3D i2c_of_probe_get_res(dev, node, &probe_data);
> > +             if (ret)
> > +                     return ret;
> > +     }
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

