Return-Path: <devicetree+bounces-104621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF0B97F121
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 21:12:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A4795B20CC2
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 19:12:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4591181BA8;
	Mon, 23 Sep 2024 19:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Fy2HA/PH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31AE1A28D
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 19:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727118754; cv=none; b=AcC2RO3mP4DLWE6yktNwczjQbqWGhc4ysVJaRpnDfiJSWWs57OOOEB86pa31kofM971UTFND8D9QwOMmSVVHqF2ReYpfpm5biYAwoq8Tv+PP7uXmzrXdOC6YL3z30fNYgqPG5K9a+nqQq4gbOhLh9DEv6ZLLLRzGxLgkPnficGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727118754; c=relaxed/simple;
	bh=xf364lZIbnjp5yXv/kYTrKS69WYtJ5dXPHV7dU2ANQM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ewr1E//TO0cvm5llC5soSuZBtAqrEvuACaR4n+XW8Qhep24CTdY66kK/Ii5BYyaPflxIC0Or2YpRdnoB99r6Koq0I6vLXA1r0QdnX+oIeVqERIkS3KzIDJD5rB5hxUXBq4c/o8xO4vPDgd2omcKQfjaoi9N4vcxXWPapKpyZKK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Fy2HA/PH; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5365aa568ceso5470752e87.0
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 12:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727118751; x=1727723551; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FTdpdNtDHKc5MwXK6gfkOgHrOXbWdY15It+qZL/P+lM=;
        b=Fy2HA/PHwzwmDH+z/zYibcHxGIhdToC7rf4xSL7rMhvnn+RI9geRIzlu1Ws4pWY1Oq
         8KXogjlpOi8wCw1JOddBjZdMu5mj58BpwuI/vvTfVtoGMgjb340R4ApqF2aFn04JwU4f
         z1Tbmfv9asK5yZIsPQc4/Wz1zJyxQvppfOr1o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727118751; x=1727723551;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FTdpdNtDHKc5MwXK6gfkOgHrOXbWdY15It+qZL/P+lM=;
        b=Xezp1mISFLanggtHsAQju1i4Sau9baJOy2bi03m+LxY1yy1u05dhIb/5LZkmZjLzKQ
         qfaAtxlo4PkvmElkXxIZlDD/dKTL3N5/taedbrmhMRQsYSghs0vhOSg0D/IisVqkcIeq
         GxGFMs4nCyzonIQHbBKHeQbxrxmyKCRLdAkqem4ZD95he1vk43mAF0TIzP/+lFPFrUIR
         3JsTvU4IGMqbG6rygX4OMAEywGouKqmeHx6riGzuLC937ERk/QCrXBxxcKQWbasjTaSy
         Aq5Kxif+XR3Wn5wFywatc0en/Gyk49r1exGSstTdx3rSHsk8u8o/kmQDDCjqJkqw4755
         12wA==
X-Forwarded-Encrypted: i=1; AJvYcCUh+WT+F3fptTXXHj5M34rt2toQJfcsOzGfQfX90yqe6q1LJGRP1LimziODlVK/UNmtaQzAqQr+gqVO@vger.kernel.org
X-Gm-Message-State: AOJu0YwbWmXpD8InWYRhEDqVL3UXrGsueWUYxOxIfXHTUprchxa9zO2q
	M/rq5ilPgKMFvaFm71Bib1rkXFwKnc7WrkOy/wCksPjj1BHw4o8cIkFdHx04TXJW+IJTNdq70Vp
	53N6q
X-Google-Smtp-Source: AGHT+IHSsLpFWlqvS9NLPhBMzUIJRdcdjCN5lZ7cfMRgDyCq2NN0e3QAlvpnbszM7DxTaccfgcOgXw==
X-Received: by 2002:a05:6512:108a:b0:535:ea75:e915 with SMTP id 2adb3069b0e04-536ac3405f8mr8750728e87.56.1727118750685;
        Mon, 23 Sep 2024 12:12:30 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com. [209.85.167.47])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536870b8c09sm3447858e87.268.2024.09.23.12.12.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2024 12:12:30 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5365aa568ceso5470729e87.0
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 12:12:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUEljxYww45OdLvioBEB/1GVFDna41pIxn3iUP+z9yGI/57eABti8aWurdl14eyiXTPHDCFOTVbBLFJ@vger.kernel.org
X-Received: by 2002:a05:6512:280d:b0:533:4505:5b2a with SMTP id
 2adb3069b0e04-536ac2f5b48mr8261806e87.28.1727118750042; Mon, 23 Sep 2024
 12:12:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240911072751.365361-1-wenst@chromium.org> <20240911072751.365361-9-wenst@chromium.org>
 <CAD=FV=XvPA0UC87fQ+RvFzPv9qRSEP6eQhT79JOx9Arj87i9Mg@mail.gmail.com> <CAGXv+5EcxGfdzvarg8hmk1zR9X0s8KUzayQdxfWTrasEGpj=1g@mail.gmail.com>
In-Reply-To: <CAGXv+5EcxGfdzvarg8hmk1zR9X0s8KUzayQdxfWTrasEGpj=1g@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 23 Sep 2024 12:11:49 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wv1uFmxFsaxT9tY=-fwnPsXDjnabNxQ-cK3hm2a9Wo7A@mail.gmail.com>
Message-ID: <CAD=FV=Wv1uFmxFsaxT9tY=-fwnPsXDjnabNxQ-cK3hm2a9Wo7A@mail.gmail.com>
Subject: Re: [PATCH v7 08/10] i2c: of-prober: Add GPIO support to simple helpers
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Sep 17, 2024 at 5:41=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> > > +static void i2c_of_probe_simple_disable_gpio(struct device *dev, str=
uct i2c_of_probe_simple_ctx *ctx)
> > > +{
> > > +       if (!ctx->gpiod)
> > > +               return;
> > > +
> > > +       dev_dbg(dev, "Setting GPIO to input\n");
> > > +
> > > +       gpiod_direction_input(ctx->gpiod);
> >
> > This is weird. Why set it to input?
>
> It seemed to me this would be more like the initial state, without knowin=
g
> the actual initial state.

In this case, though, you're trying to turn off the resource, not
trying to get back to the initial state. IMO deasserting the GPIO is
the way to do this. If the output needs to make it an input in this
case then it can use some type of open drain mode.


> > I would also say: given that you're providing a parameter anyway and
> > you're giving the GPIO name, can you please move away from the "raw"
> > values and move to "logical" values?
>
> I disagree. When hardware engineers design for swappable components, they
> likely look at the electrical compatibility of them. In this case, an
> active-high "enable" pin is electrically compatible with an active-low
> "reset" pin. If we use the logical value here, then we would need more
> logic to know when the logical polarity has to be reversed.
>
> Note that this doesn't work for components that are electrically
> incompatible. But in that case a lot more board dependent code would be
> needed anyway.

As we talked about in person, that made sense in the previous version
of the patch where you were looking for all GPIOs willy-nilly. Now
you'll be specifically asking for a GPIO by name and we should honor
the "active high" or "active low" nature of it.

-Doug

