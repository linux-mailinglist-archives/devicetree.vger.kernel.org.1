Return-Path: <devicetree+bounces-46538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E37E869FF5
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 20:15:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 240D7293733
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 19:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6DC951C28;
	Tue, 27 Feb 2024 19:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="atBgt5rs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B32E851004
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 19:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709061348; cv=none; b=VuVcXQdBV/hPFzlOEo81EplrkxY4ZcY5Qy93M2sl5kLdelq5z+w844nEKzTIZk4pigsiGmSUVCAjlfJL+dVdDWpZ3C/GxS/9KnLyhQz6esCz/hNTDaTjvBtOFYd0mibs+Y6341owHDNc4Um22jgsC+Sd/h+/xjD9olDYWUY//GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709061348; c=relaxed/simple;
	bh=hSOP0N0YnxaxmNk6dWKQDrgD1IqOFCwJ/jiRO1WVjPQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PFFDPAWNUSDxOvTaZoh5Arr8GNmcKYUO5nYD+XpZKuA2d5g1Cp5eVJ1q4dlxb6OqwYql73FvKXUTlGJHmAwghMccGJM+N7RLZJlVKfFTXH/NKUFVg2VBhpVT6jV6XqcRk35xSf7fpehm1aUJC1T+9Itjmapd/khueclXJiw3zBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=atBgt5rs; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d220e39907so73412081fa.1
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 11:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1709061345; x=1709666145; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nVKUFrfD0l+ZJGZDjLAoImGvdko1W6B9y4j/PD4Lp0o=;
        b=atBgt5rsptJiNIbTWTfFDb1a6h7P96eC80d3zsUMheFNN6VHGWk/pSxLVDsXnTWCSa
         3MaVwg7iJDOZL6AUQVUDkoMF+uFVVmjXOnK/skvSFv46I7Hs3LD+VP8bfHVHCq8OD080
         mQueZQJAKaF49U431E3/0UEljtVk1o4qTns9x9LpbnF6Wnvl6dDnLUIhTqADZ39bm4/D
         m88Ml6sxGlObG4CrlDdy3Z86YCTTw3uYDNoWMtowIRDxEvcMJCO/gso41MOK5fp0F+SP
         2MQpZppZlL4oAnt6t+u73KaZwHasaZMUMbmA9NfRbQ1cyaZL27VeQ0w5jOqNb/pkTSUK
         Ob5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709061345; x=1709666145;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nVKUFrfD0l+ZJGZDjLAoImGvdko1W6B9y4j/PD4Lp0o=;
        b=KGQt+jYrGjv7BEdp+Rz8xtTtSufvf0qT1PatozbfrOoq1+xF/+Uf31qFgDpxmTEGeS
         x1/BJ5tKJlE5q9EOTYaFzHZtyEmPy3HXh75DP/9py9MxhtxuFuSy+qluGPKeKbD9f5zY
         nzCkbu3YsBxzjzW3ZBExvuXtvMI/UpqGA1IXokJUr+kABMKpCj1/yBHyqNKWV6XM8vlX
         Af5alMtVympWkKaI5dWo6TPkPax+dgc+69NGkAjWQxGdJELfPGkUBKtaFKmxXtnHDYnW
         /Bqdj65IDu9Fj6IkRhXpLw/XfGPPTuxZ1rCGSZyTswo/aofsU7me8maHZCExwdWOLU0v
         W1jw==
X-Forwarded-Encrypted: i=1; AJvYcCUjAqMH83Vp096UQX4YzeJ32Roo2Gjkodg6Bwu7aGEZ69kx0c0SsC+3u4DbZ4NJQoKioEUAL5Wl83JCVlQpBSyHnZbmyTXp6Z+0xA==
X-Gm-Message-State: AOJu0Yw2kDB7GVz/C7PKU+7T2QWuRl9D8vvsBiRIBKFJtlYQKFEHIKCv
	hOsCePnoDcZJ27EGNiSjLfRDROiyYA0BwGTqsk9Ok8nyizehg3cBNtVNDV7guYHiT7S9hgRlRGx
	6Yege0fVXhQnKXyQ+tTB8h8ngcrb4WdqoAc7N9w==
X-Google-Smtp-Source: AGHT+IFOOCfT5qLgXVlNq4RDSVuUSSjIvbst3+ktr42fu2XeJjJseZ2PRhKODqIVQssDN1WPGkGvKMEtniDLuom5+1M=
X-Received: by 2002:a2e:7215:0:b0:2d2:37d6:350c with SMTP id
 n21-20020a2e7215000000b002d237d6350cmr7283638ljc.12.1709061344774; Tue, 27
 Feb 2024 11:15:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240216-ad7944-mainline-v2-0-7eb69651e592@baylibre.com>
 <20240216-ad7944-mainline-v2-1-7eb69651e592@baylibre.com> <20240221152226.GA2868707-robh@kernel.org>
 <CAMknhBFytGYNo8FviHepoxLApoGyo0mVhL2BzVmm1vt8-Evn9Q@mail.gmail.com> <CAL_Jsq+diFUEn=Tf99_FkXqLHuyLrZW_jaYoPjGhGjGbecgivg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+diFUEn=Tf99_FkXqLHuyLrZW_jaYoPjGhGjGbecgivg@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 27 Feb 2024 13:15:33 -0600
Message-ID: <CAMknhBE7r7aRYA5Sm6UhC3pNBMhAvcB4+ZbRZcsRp=PxTG_2Kg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: add ad7944 ADCs
To: Rob Herring <robh@kernel.org>
Cc: linux-iio@vger.kernel.org, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 22, 2024 at 9:34=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Wed, Feb 21, 2024 at 8:44=E2=80=AFAM David Lechner <dlechner@baylibre.=
com> wrote:
> >
> > On Wed, Feb 21, 2024 at 9:22=E2=80=AFAM Rob Herring <robh@kernel.org> w=
rote:
> > >
> > > On Fri, Feb 16, 2024 at 01:46:18PM -0600, David Lechner wrote:
> >
> > ...
> >
> > > > +  adi,spi-mode:
> > > > +    $ref: /schemas/types.yaml#/definitions/string
> > > > +    enum: [ single, multi, chain ]
> > > > +    default: multi
> > > > +    description: |
> > > > +      * single: The datasheet calls this "3-wire mode". It is ofte=
n used when
> > > > +        the ADC is the only device on the bus. In this mode, SDI i=
s tied to VIO,
> > > > +        and the CNV line can be connected to the CS line of the SP=
I controller
> > > > +        or to a GPIO, in which case the CS line of the controller =
is unused.
> > >
> > > We have a standard property for this.
> >
> > As discussed in v1 [1], the datasheet's definition of "3-wire mode" is
> > _not_ the same as the standard spi-3wire property. I can add that to
> > the description here to clarify (I hoped changing the enum name was
> > enough, but perhaps not). Or is there a different property you are
> > referring to?
> >
> > [1]: https://lore.kernel.org/all/20240216140826.58b3318d@jic23-huawei/
> >
> > >
> > > > +      * multi: The datasheet calls this "4-wire mode". This is the=
 convential
>
> Also, typo.
>
> > > > +        SPI mode used when there are multiple devices on the same =
bus. In this
> > > > +        mode, the CNV line is used to initiate the conversion and =
the SDI line
> > > > +        is connected to CS on the SPI controller.
> > >
> > > That's "normal" mode.
> >
> > That was my first choice, but the datasheet uses the term "normal
> > mode" to mean not TURBO mode which is something else unrelated to the
> > SPI mode.
>
> What I mean is this should be conveyed by the absence of any property.
> You don't need a property for "normal SPI mode".

The binding already has `default: multi` to cover this case. But I
suppose we can just leave out the option altogether if you prefer.

