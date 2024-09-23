Return-Path: <devicetree+bounces-104620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 380AB97F11E
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 21:12:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A1F5DB211E5
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 19:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75A94181BA8;
	Mon, 23 Sep 2024 19:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ud/wCCEk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE3B317BCC
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 19:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727118747; cv=none; b=NFM9TRvGqOxslRJ5UM32EwSIj+kmKcP5jPihBiP8+1tF5tCSpMdrYCdbdFtH9nnZkidFgsty2OeX3SGux2CQ0q4hhlOZqHeiBoLXwX9sS88fU7a6Sd/zrUOFv4aqc6/bWwQLZ5v2YVUGZq6HNs34CwL2YW2BTNKPVQJaCcWK9EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727118747; c=relaxed/simple;
	bh=xf364lZIbnjp5yXv/kYTrKS69WYtJ5dXPHV7dU2ANQM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=h7kKbueCeOSRs+aNZWTk1ySzM+GTgNca6ppTlgxRQ2GSSoKoJ4YXAg5qhr3OqRdXmfHikVrnKED7XTRMsssOPlrsOGQ2E/zwhwlQ1tpIrwWU6ya+UyV/uFKsdiPq5+K+vda+U/qo0oJpE+qxcxdy+gu6AaAGtRFIMTs6sUke3Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ud/wCCEk; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a8a706236bfso342671966b.0
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 12:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727118741; x=1727723541; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FTdpdNtDHKc5MwXK6gfkOgHrOXbWdY15It+qZL/P+lM=;
        b=Ud/wCCEkHuYwvqa0kKHbjJyhFJyGDLKiyKG/6OP9/SjHvoR6p34t/lG4xdJb136ZJD
         rrEUMEkf9y3KDU4GKxGV+vvbvZ+1sXSsMyGhYNkJURi9dHVR4CeisukpMHGPv5NE8iYU
         530AwrSWpKftMFbPfBOVLa3KYO202Vd8tgSGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727118741; x=1727723541;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FTdpdNtDHKc5MwXK6gfkOgHrOXbWdY15It+qZL/P+lM=;
        b=Ae6UIz/Pixt90/jC29TwEkltBBjTXyUCx52kR3mzqjk5YJ5tci7fqiR6zOETAd1nPx
         iHUZ60i66FINoafImYlmh59QZSOfjFUZm1fUoSoJwzOF+JJWt6ebIYp8Jt0J6R9FSbDX
         co2H5fpgCPhBmDY0cWCyVn14rPZLp5pjrpCNFyBme9ggrvikiITlBzfK2SXh4aXyIKWe
         IAPRk89JISWijw5huxco8ofMCbr68FYSak7Z2+sqeLW5Ka9Ng4Re/N0iJllBMfEOSdQU
         DOd1KAk7/YvuNPIJdXr6Kz/lCdbf4olrrS6Tb1HwLUa8ihycv6s9BiDmuyJlAv7XvZvc
         AIaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXXwRwY6GRfTYCxQwJUAfqCVJ8D9Je2jaL+cuYZKhr5N5JVZoRrZkLhAkd7DCAimN0UDtTUVnnCMHi@vger.kernel.org
X-Gm-Message-State: AOJu0YyNl+nnxyK/+FcmK6WS6LWmN+hd/rzeynDBuZ2ab0tyS3Ty9Ilt
	f8scTg5fapqrVosFMEgxn5pgur+y61NVJwdJvtPbh24UgJGlqXH3StICEkO/kvRwniCUyyEZiAg
	NIQ==
X-Google-Smtp-Source: AGHT+IE0fwzKPXE3et6TTUs8ZhcPhsmMM1cEb7lX94s+bwJqIm2SoczWXWid/uRrTyREvRaj6E7VcQ==
X-Received: by 2002:a05:6402:2789:b0:5c4:6307:dc05 with SMTP id 4fb4d7f45d1cf-5c464a7e674mr20975834a12.34.1727118741076;
        Mon, 23 Sep 2024 12:12:21 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com. [209.85.221.47])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c42bb6037bsm11225420a12.58.2024.09.23.12.12.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2024 12:12:19 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-374ba74e9b6so3891339f8f.0
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 12:12:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXNKtMYxM+08DxBJhdmksQabyjyWQemthv9n59KBHx1GwUk4sI8l1TuuxFgCW+iFpu9NRo4LfXSuJVm@vger.kernel.org
X-Received: by 2002:a5d:4741:0:b0:374:c6b8:50b5 with SMTP id
 ffacd0b85a97d-37a422783aamr9933862f8f.17.1727118739230; Mon, 23 Sep 2024
 12:12:19 -0700 (PDT)
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

