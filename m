Return-Path: <devicetree+bounces-110796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D279799BF0B
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 06:13:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 560CD1F25101
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 04:13:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A0F013C836;
	Mon, 14 Oct 2024 04:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fOrjtmr9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88BC234CC4
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 04:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728878791; cv=none; b=pTtaQvyBykTzkw/HT8mbdjl9lNb/iUWSTc+vyRz9FVtV/9/T8MuCf1nGIKWdn9k81dHdr9PkOC1gqSdveT5Mo7/FJtfJuWKFJrUd57Q1SDjG9PZRMYCs3ETlSqqF4X/1TNo7Rqwzv6/IFcBeL3gO7ZeX2QXweLPNqFhfkMgG5is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728878791; c=relaxed/simple;
	bh=6XMY82kHwb1/XGELiVpYOSMalSat/OmAEwuN9ofu9jc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fylvm6p7NeFWUHUhswEoz5po4xn8Xnq5/VTrD7F+ck6aepNng1wbdO5jpvn4tzTwALoXj5I1d+nJqsjKCh+2E8JahbjluP688Jd8wO9K0E6WoJLmEawWh2Dc7jXU0jnARhUeWxaTZ/b1sN2Sazi5b/klj9WavUWABk8/OBM0oKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fOrjtmr9; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-539f84907caso395940e87.3
        for <devicetree@vger.kernel.org>; Sun, 13 Oct 2024 21:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728878788; x=1729483588; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pwgD744i+ZALkiommnSs81xuS9bpxKIuuRPbiBw3DbE=;
        b=fOrjtmr9jo5tMhwMQ7sReG/Q/9N5P5gzu4DfCRM575qCxrrdJ7aGj1HNq6Hqx30aIt
         B/0SfW1PqpkEKcYjMACXSopX3qsjkTqq6/hU1VQ8m0uQyIgS0cbBxPRg1SuvHd7wDcva
         Zwzv0GnKTwQM4QW5OzHEzK1otll+eUhBzLnTs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728878788; x=1729483588;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pwgD744i+ZALkiommnSs81xuS9bpxKIuuRPbiBw3DbE=;
        b=DgTNO9UDykdIBvEz9PLMKXVrgyT/Iww6gvZhelEd1PJvoaeXEZCNt6vAW/zjUJxDNc
         KY5lTOJJb/PLkZ+X5MBxrKEeoQQ60q5rb7Z4HSeH3eYUGG2FeUxNdKkpOdj4MnLqDHy8
         iT4VoOFoiFJeahF3T5qE3ft8mHgiISlUyvcrmoS1bW4y8kzM4rdJDCT98B+FTKHRct48
         YVzYpN8qI7idwg0Q/2ow8uRFtwRxG3tyyCRwEu6QkKU49fryvZ8gh3m6m3PYVSPVUxec
         swz2dBbguJc9Oz0RUl2ugAyCGGH7UaAC0gsDLWSbBOoY8/JmTM6/STJjZh1druR5/rUq
         G2Xg==
X-Forwarded-Encrypted: i=1; AJvYcCW8CrCJr4xFjdqNb5HGF+zoP+XUieSdF4q/rhBXEoVopxTbuztjo/NTClFYZvW4oo2ebJArJGfqId/E@vger.kernel.org
X-Gm-Message-State: AOJu0YzlCjxk+KBvZo6kJn75edpJHvPVB8y4Sm51zuDPAREVym0JG1iE
	mHJru2kxOaVpdp1zzCX49VdjiB1xyWg/hEGYV8QNjn4JluIROVa/m/HtWb+wCUq6S1yYKQtgGb4
	sfqUT/of8ytbfjI4QN5eyCVWybzjG16djRgJO
X-Google-Smtp-Source: AGHT+IE1orh0TGasMBM1uZhGLqabgowh/X3mBeLGnxxsLSwvcm3PZp6MdB0eScoG5fQBdjANEp0bV2Y/ZCL10eWobUA=
X-Received: by 2002:a05:6512:438a:b0:539:de9c:c890 with SMTP id
 2adb3069b0e04-539de9cc99emr3721935e87.42.1728878787515; Sun, 13 Oct 2024
 21:06:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008073430.3992087-1-wenst@chromium.org> <20241008073430.3992087-7-wenst@chromium.org>
 <Zwfwv-O9ln-PVMdc@smile.fi.intel.com>
In-Reply-To: <Zwfwv-O9ln-PVMdc@smile.fi.intel.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 14 Oct 2024 12:06:16 +0800
Message-ID: <CAGXv+5F=5f4R5AExANxOwgTL6_VbpHdNKKhHnzy_PDcxtcFoEQ@mail.gmail.com>
Subject: Re: [PATCH v8 6/8] i2c: of-prober: Add GPIO support to simple helpers
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

On Thu, Oct 10, 2024 at 11:20=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Tue, Oct 08, 2024 at 03:34:25PM +0800, Chen-Yu Tsai wrote:
> > Add GPIO support to the simple helpers for the I2C OF component prober.
> > Components that the prober intends to probe likely require their
> > regulator supplies be enabled, and GPIOs be toggled to enable them or
> > bring them out of reset before they will respond to probe attempts.
> > Regulator supplies were handled in the previous patch.
> >
> > The assumption is that the same class of components to be probed are
> > always connected in the same fashion with the same regulator supply
> > and GPIO. The names may vary due to binding differences, but the
> > physical layout does not change.
> >
> > This supports at most one GPIO pin. The user must specify the GPIO name=
,
> > the polarity, and the amount of time to wait after the GPIO is toggled.
> > Devices with more than one GPIO pin likely require specific power
> > sequencing beyond what generic code can easily support.
>
> ...
>
> > +static int i2c_of_probe_simple_get_gpiod(struct device *dev, struct de=
vice_node *node,
> > +                                      struct i2c_of_probe_simple_ctx *=
ctx)
> > +{
> > +     struct fwnode_handle *fwnode =3D of_fwnode_handle(node);
> > +     struct gpio_desc *gpiod;
> > +     const char *con_id;
> > +
> > +     /* NULL signals no GPIO needed */
> > +     if (!ctx->opts->gpio_name)
> > +             return 0;
> > +
> > +     /* An empty string signals an unnamed GPIO */
> > +     if (!ctx->opts->gpio_name[0])
> > +             con_id =3D NULL;
> > +     else
> > +             con_id =3D ctx->opts->gpio_name;
>
> Can it use positive conditional?
>
>         if (ctx->opts->gpio_name[0])
>                 con_id =3D ctx->opts->gpio_name;
>         else
>                 con_id =3D NULL;

You suggested writing it this way in your reply to v7. Please pick one.

> > +     gpiod =3D fwnode_gpiod_get_index(fwnode, con_id, 0, GPIOD_ASIS, "=
i2c-of-prober");
> > +     if (IS_ERR(gpiod))
> > +             return PTR_ERR(gpiod);
> > +
> > +     ctx->gpiod =3D gpiod;
> > +
> > +     return 0;
> > +}
>
> ...
>
> > +static void i2c_of_probe_simple_disable_gpio(struct device *dev, struc=
t i2c_of_probe_simple_ctx *ctx)
> > +{
> > +     if (!ctx->gpiod)
> > +             return;
>
> Do you need this check for the future patches?

Not sure I follow. The check is needed because this function is called
in i2c_of_probe_simple_cleanup(), but the GPIO could have been released
earlier in i2c_of_probe_simple_cleanup_early(), and that makes this
function a no-op.

The helpers for the release side are quite short, but the ones on the
request side wrap some conditional and error handling. I think it's
better to keep it symmetric?

> > +     /* Ignore error if GPIO is not in output direction */
> > +     gpiod_set_value(ctx->gpiod, !ctx->opts->gpio_assert_to_enable);
> > +}
>
> ...
>
> >  struct regulator;
> > +struct gpio_desc;
>
> Ordered?

Will fix.


Thanks
ChenYu

