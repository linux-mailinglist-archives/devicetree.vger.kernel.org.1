Return-Path: <devicetree+bounces-96021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A58B95C6F2
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 09:51:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0B058B20F60
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 07:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D519313D250;
	Fri, 23 Aug 2024 07:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MKDVcRCr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C78F13C683
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 07:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724399470; cv=none; b=Rw+/K4b8lweH35SmZKHNMpdDJTZJP73mQoD0ZRdu88YIzut7SLZKNpIHNobF+7tS4GlNbfvQGvQhpvrZnkz1cdbC8V2dqvkmO0yK5T+OFqIbU+v/R6+blXpaSgX6UetIvUtCX3MS7UMWRy2fKlrGxfDHJWp2HluzK0gYCRDmp3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724399470; c=relaxed/simple;
	bh=D4dhUmGSSacH4bz6ZKMoE07XsjL2wQLHWjSO4llLsis=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qT8HnE8/B4R5NpzkZoRQp8pwHGHu2TXDWhyZTjOE8f62e1SEqnhyAZir6w0yyxGsp8VtL8rcvhXtoq3ldOMyvyOTlbTQQmhas2Xt0KiYSGGJjlGgQqxyTh0G12noqSb/KbfNneRIAlOvVwlqBV8a0iMMxCMHIPaYkmriqNTP0Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=MKDVcRCr; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53438aa64a4so404799e87.3
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 00:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724399467; x=1725004267; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uVFI/kAx4GZJG5dq3c75HD5Ktn0yw4zArYMGtwgACRE=;
        b=MKDVcRCrwnZoEeb+iUSJ6TUiVZscT7NDTYhkq0ZL6YKaO/EjTTs40ys/TYVaIr9tBI
         lWgd9shhPf3TnCOjlh15Oe5AImjSeXWcI+LgXIp4+BcH8pCPFLYy6mPu7dPIMO8sEDow
         cXuh/uszJ0OCobsVpRg8uUJXdGEPeQi29vbTs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724399467; x=1725004267;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uVFI/kAx4GZJG5dq3c75HD5Ktn0yw4zArYMGtwgACRE=;
        b=H6uVhsEJloYGUOo4xZ5AHt8v8G6WLYVMvdYO3zX7XBESnqGOWGNrvqJj05DeSSNEBY
         xbuR2A9LpAhccCNWEmCCiIz/hbFt4Cad+7bGNordO4pOyK1pKt4uz7sQsu0tmUAoZ3ZM
         YGFPxYOyGnnwySwgrhtpjBjZc1yzzGFKTXqDgmZEycu76pLnzsX+4IF35Nv7Mjz2uDbo
         ckGCLSdcRgMZlXKNaCIsniNeNDNVqe4qVkgN+4GYwQgBnYdT4WG6YY2l1oZJnB5hyEGo
         r8czivoC6wxd78xZljaIhRSfZKqmrpLW1PybNB/2EYOJxgYuO+bjbBsnaBxvgYgoNgRc
         1tpg==
X-Forwarded-Encrypted: i=1; AJvYcCVuD+r4gmU6HMNSkgwmo4KqmXa7aMNH8FXjAxJPwE5UOD2K0SKYa2bOjUvtXp/Za2Reh2rrVkuM08DX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6V1Gus5YrfRQHMMvyMxQR3CUFkiroUjkt53wqPOX+XzM8IxsQ
	B2cPeSNrXVl4gzTjlwmaBOhgxwjfkz/by5rjow2cOn/AqbMKhcE0K95M5d16CcDZcaKF9mmO+HB
	lQaAkSU2cHwgVgEzA2d2uPiNvQ7736lp6lBH4bVho4TSutlk=
X-Google-Smtp-Source: AGHT+IGwq8qrwQzH9MhG9+f2TAUzL+lDTX48ZdahHSVAEA0ONPP07O3k9tJzluNvWAvmzLEjq7LhXUIOSOn/Kv6k6WU=
X-Received: by 2002:a05:6512:3087:b0:52c:dc25:d706 with SMTP id
 2adb3069b0e04-53438868deemr943389e87.52.1724399466989; Fri, 23 Aug 2024
 00:51:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240822092006.3134096-1-wenst@chromium.org> <20240822092006.3134096-6-wenst@chromium.org>
 <ZsdNA2b9CDRrtno2@smile.fi.intel.com>
In-Reply-To: <ZsdNA2b9CDRrtno2@smile.fi.intel.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 23 Aug 2024 15:50:55 +0800
Message-ID: <CAGXv+5H0eGEjQU8qbKjua5qfbL2FaX2bMSyQg0PMVQrFfaiR8g@mail.gmail.com>
Subject: Re: [PATCH v5 05/10] gpiolib: Add gpio_property_name_length()
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

On Thu, Aug 22, 2024 at 10:37=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Thu, Aug 22, 2024 at 05:19:58PM +0800, Chen-Yu Tsai wrote:
> > The I2C device tree component prober needs to get and toggle GPIO lines
> > for the components it intends to probe. These components may not use th=
e
> > same name for their GPIO lines, so the prober must go through the devic=
e
> > tree, check each property to see it is a GPIO property, and get the GPI=
O
> > line.
> >
> > Instead of duplicating the GPIO suffixes, or exporting them to the
> > prober to do pattern matching, simply add and export a new function tha=
t
> > does the pattern matching and returns the length of the GPIO name. The
> > caller can then use that to copy out the name if it needs to.
>
> ...
>
> > +/**
> > + * gpio_property_name_length - Returns the GPIO name length from a pro=
perty name
> > + * @str:     string to check
>
> It's property name, so, I would name this 'propname'.

Ack.

> > + * This function checks if the given name matches the GPIO property pa=
tterns, and
> > + * returns the length of the name of the GPIO. The pattern is "*-<GPIO=
 suffix>"
> > + * or just "<GPIO suffix>".
> > + *
> > + * Returns:
> > + * The length of the string before '-' if it matches "*-<GPIO suffix>"=
, or
>
> What about "x-y-gpios"? It's unclear what will be the behaviour.

I thought it was implied that the '-' mentioned here is the one before the
suffix. I made it more explicit.

> > + * 0 if no name part, just the suffix, or
> > + * -EINVAL if the string doesn't match the pattern.
> > + */
> > +int gpio_property_name_length(const char *str)
>
> gpio_get_... ?

Ack.

> > +{
> > +     size_t len;
> > +
> > +     len =3D strlen(str);
>
> If it has a thousands characters...?

Shouldn't matter much? I suppose using strrchr() as you suggested
requires one less pass.

> > +     /* string need to be at minimum len(gpio) */
> > +     if (len < 4)
> > +             return -EINVAL;
>
> Do we really need it here? See below as well.
>
> > +     /* Check for no-name case: "gpio" / "gpios" */
> > +     for (const char *const *p =3D gpio_suffixes; *p; p++)
> > +             if (!strcmp(str, *p))
> > +                     return 0;
>
> > +     for (size_t i =3D len - 4; i > 0; i--) {
> > +             /* find right-most '-' and check if remainder matches suf=
fix */
> > +             if (str[i] !=3D '-')
> > +                     continue;
> > +
> > +             for (const char *const *p =3D gpio_suffixes; *p; p++)
> > +                     if (!strcmp(str + i + 1, *p))
> > +                             return i;
> > +
> > +             return -EINVAL;
> > +     }
>
> This can be combined with the above
>
>         for (const char *const *p =3D gpio_suffixes; *p; p++) {
>                 /*
>                  * Find right-most '-' and check if remainder matches suf=
fix.
>                  * If no separator found, check for no-name cases.
>                  */
>                 dash =3D strrchr(propname, '-');

I believe this line could be moved out of the for-loop. Otherwise it
looks much more concise compared to my version. I'll omit the comment
though, as it is just rehashing the kerneldoc description, and now
that the function is so short, it shouldn't be hard to read.

I'll add you as "Suggested-by".


Thanks
ChenYu

>                 if (!strcmp(dash ? dash + 1 : propname, *p))
>                         return i;
>         }
>
> > +     return -EINVAL;
> > +}
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

