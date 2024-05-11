Return-Path: <devicetree+bounces-66473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 110198C333F
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 20:47:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5F980B2102B
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 18:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 435331CD31;
	Sat, 11 May 2024 18:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eB1FrXnt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429071C698
	for <devicetree@vger.kernel.org>; Sat, 11 May 2024 18:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715453262; cv=none; b=csfwCW4y8AvfTjHcu2wX28MfXQ+KX73GN9OMmzE/PDbD/vsQJAZrVAx8JV3I33w6D7k55k/7CLxruVOl/2fyaaNMZny461A4Td8hQ5UspasZq5D0vOvZb9H6A40hxK8583tRP9FMm1QdoCk+MvNRbKz5/ooHzY3zlH9KJ7GMQ2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715453262; c=relaxed/simple;
	bh=YVOdlFgTphP8iWkdNlurQhMrD26ZChBnbBkDzPU2aRQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S+Mhz2uAFYE8FN0FQGpB3NYsF+LzY8pZ79wjlJMSt7gDhE1ALZYZlR2EQeiGwaZ1jOxKArDU7Tpd1zDzO17lQr2fiPxTRMBxUrQOSnePIIN6ADZRPNRqzgwB8eHphwrywP0O4qmGzrxaCl3nbejR60KbRFFCbry9+Ia6D/N7i6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eB1FrXnt; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2e09138a2b1so40036051fa.3
        for <devicetree@vger.kernel.org>; Sat, 11 May 2024 11:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715453257; x=1716058057; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BuJ6CwAMNvaLdIW7Ij5QqE6r9837KCVxY1U3dFFJNyg=;
        b=eB1FrXntt7AkMenK4PFJm4pXaF5r1aCXKaSCX5JwUGYlnJmtgF/kvQCgh12+GRQYxs
         qKcGi1e/5UoFNKdpyEPHinAA2bpW8R4aSZksR3DmedxVtJ6mbDYjO2wvEZUTG6+V58rz
         SLKVsQbdHBahcm+48cEISh9SRGl14/IcMl2KgkFpJ/DtLR9nVj8BVd4x2DjpOV60RxJH
         F+r0zgVC6CujqiOqvvrTLSh0PsGbvRespqro2SzMrWw9xjGCYLaTWXM28caBxMmtiSaE
         9dHAQhmKv7rH1c803ETD6QR1CizD+PdKhmKvRZgbXQ9ngaCcfu0PCvuIwscr07x5x5Mo
         oHgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715453257; x=1716058057;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BuJ6CwAMNvaLdIW7Ij5QqE6r9837KCVxY1U3dFFJNyg=;
        b=gRVpQtvxX0ZiWwpl+MeUt4Mi4gJalcDe0civSktt9oI08MufkqKPnoTsMQdBnEdMQq
         WGeq+VCut8TIC8jT2snM2n9RPvQY/O+6JtjY+eRJVCdyDok9SYvc/no+lam1Yw2jNJu+
         9aJZO5yMNIGr4RWC9/3yrg+FM+TrIQCRHCjMLjxRjKn8QUzA4TZTwMsvBbwF5myIxDF8
         uWGWnTHwdu5ZedcC5IQ3fjeGXQQq5AZBrX5sUWAdElwkF49ooHuS5Hdr0bhq+wWspisL
         pgpbVEdTlGlCwtKDkekOyi2nLG2/wMFnCSRsf1sV8zMl+nqrCBG0lA/qA7Jb2o82ELeQ
         YW+w==
X-Forwarded-Encrypted: i=1; AJvYcCX2/P7+yYstDC7oYAqeeFYl+KaYJwQDFCXOHtjW2Dh8+HeCwfUNVjs5hmddsnE/KrAca00lacjj2adcmOuVyWAzMaBa50iqfggG7w==
X-Gm-Message-State: AOJu0Yzz+cy970/rzXFxSrHG8pEQjtmWj6wef/fYQ/cOODLQyvpf6lbc
	mpBoMwwdNUSSXJcVOCSj5b9n4gDYJCy9lHP1p/yPKqHcn/FSPDnpElqiVbI+X+VGV7eU7jWIqzW
	uB+EwL6L3TM5vJYalCX4fjMJbujCKMgXrLatVyQ==
X-Google-Smtp-Source: AGHT+IGj8EW8cP9HdJkRuf6X8EYKSYb8VGuoFRypZ4xZxIbbcBdpQwwEMt4n9/cs066lBCUiOGPepJWdPvsEQNjXQss=
X-Received: by 2002:a2e:8794:0:b0:2d8:34ec:54e6 with SMTP id
 38308e7fff4ca-2e5204ccd8fmr33387821fa.33.1715453257450; Sat, 11 May 2024
 11:47:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240510064053.278257-1-Mariel.Tinaco@analog.com>
 <20240510064053.278257-2-Mariel.Tinaco@analog.com> <CAMknhBFXk07HbP_pPg5wkW-9Ah2-66kGzZFvcvBNrbjfguHb4g@mail.gmail.com>
 <20240511172500.718fe12d@jic23-huawei>
In-Reply-To: <20240511172500.718fe12d@jic23-huawei>
From: David Lechner <dlechner@baylibre.com>
Date: Sat, 11 May 2024 13:47:26 -0500
Message-ID: <CAMknhBE9mJUXsKYVwHb=6d3tVk9DiODWjqtzv9q+zSer5XqrqQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: dac: add docs for ad8460
To: Jonathan Cameron <jic23@kernel.org>
Cc: Mariel Tinaco <Mariel.Tinaco@analog.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Marcelo Schmitt <marcelo.schmitt1@gmail.com>, 
	Dimitri Fedrau <dima.fedrau@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, May 11, 2024 at 11:25=E2=80=AFAM Jonathan Cameron <jic23@kernel.org=
> wrote:
>
> On Fri, 10 May 2024 12:28:19 -0500
> David Lechner <dlechner@baylibre.com> wrote:
>
> > On Fri, May 10, 2024 at 1:42=E2=80=AFAM Mariel Tinaco <Mariel.Tinaco@an=
alog.com> wrote:
> > >
> > > This adds the bindings documentation for the 14-bit
> > > High Voltage, High Current, Waveform Generator
> > > Digital-to-Analog converter.
> > >
> > > Signed-off-by: Mariel Tinaco <Mariel.Tinaco@analog.com>
> > > ---
> > >  .../bindings/iio/dac/adi,ad8460.yaml          | 67 +++++++++++++++++=
++
> > >  MAINTAINERS                                   |  7 ++
> > >  2 files changed, 74 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/iio/dac/adi,ad8=
460.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad8460.yam=
l b/Documentation/devicetree/bindings/iio/dac/adi,ad8460.yaml
> > > new file mode 100644
> > > index 000000000..924f76209
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad8460.yaml
> > > @@ -0,0 +1,67 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +# Copyright 2024 Analog Devices Inc.
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/iio/dac/adi,ad8460.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Analog Devices AD8460 DAC
> > > +
> > > +maintainers:
> > > +  - Mariel Tinaco <mariel.tinaco@analog.com>
> > > +
> > > +description: |
> > > +  Analog Devices AD8460 110 V High Voltage, 1 A High Current,
> > > +  Arbitrary Waveform Generator with Integrated 14-Bit High Speed DAC
> > > +  https://www.analog.com/media/en/technical-documentation/data-sheet=
s/ad8460.pdf
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - adi,ad8460
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  spi-max-frequency:
> > > +    maximum: 20000000
> > > +
> > > +  vref-supply:
> >
> > It would be nice to make the property name match the pin name since
> > there is more than one reference voltage input.
> >
> > refio-1p2v-supply:
> >
> > > +    description: Drive voltage in the range of 1.2V maximum to as lo=
w as
> > > +      low as 0.12V through the REF_IO pin to adjust full scale outpu=
t span
> >
> > I don't seen anything in the datasheet named REF_IO. Is this a typo
> > and it should be REFIO_1P2V?
> >
> > > +
> > > +  clocks:
> > > +    description: The clock for the DAC. This is the sync clock
> > > +
> > > +  adi,rset-ohms:
> > > +    description: Specify value of external resistor connected to FS_=
ADJ pin
> > > +      to establish internal HVDAC's reference current I_REF
> > > +    minimum: 2000
> > > +    maximum: 20000
> > > +
> >
> > I see lots more pins on the datasheet, many of which should be trivial
> > to add bindings for (we prefer to have the bindings as complete as
> > possible even if the driver doesn't implement everything). Potential
> > candidates:
> >
> > sdn-reset-gpios: (active high)
> > reset-gpios: (active low)
> > sdn-io-gpios: (active high)
> >
> > hvcc-supply:
> > hvee-supply:
> > vcc-5v-supply:
> > vref-5v-supply:
> > dvdd-3p3v-supply:
> > avdd-3p3v-supply:
> >
> > It also looks like there is a parallel interface for data, so I would
> > expect to see an io-backends property that links to the PHY used for
> > handling that.
> >
> Ultimately yes, but the parallel interface might require some decisions o=
n
> binding that are non obvious until it's actually implemented. So maybe
> don't need that bit from the start.  The rest I agree should be here.
>
>

Since the driver patch uses a DMA channel that isn't documented here,
I am assuming that the parallel interface is being used so we do need
to consider it now. :-)

