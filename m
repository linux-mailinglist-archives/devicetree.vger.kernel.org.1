Return-Path: <devicetree+bounces-44409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 860BB85E1AC
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 16:45:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F08CF1F24B79
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 15:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADD6380C02;
	Wed, 21 Feb 2024 15:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UiBU70eP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8EF79DD6
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 15:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708530297; cv=none; b=oayGuUpY0hiCGDoEUQrzI2ZNPCwhWLv9MJBF+fkOqd58L00lyBG39TO8SmH0v7d6NzEEUf9EGf2CwEVIL0FogPuZv9nSmCtrJr+NxpSfyB0DFJxUv0GhqT94FDtuJqGDhySMl27epYLLYNNE42GcgjO7BD7s407lRw5a0k2vy3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708530297; c=relaxed/simple;
	bh=v7xENna07dOPYtuJ7TmCIX8PyRwRMSPGrpmiGon5vdM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tgHnGM/kovur6RviNfDV45ibphfpHBPB2RIz9YbUMj/OXrlvJ8GguFW8lvprq7NaKrBB2mrEXl85FiYNC5kYsbNzp30M7vJVw3NUpA61Hq9oDhkEMbzLbpmgTG7a9hn9vCUk+HO1jgDyIDFfoq9r97PLOup1fgqI6I3mQLk5xZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UiBU70eP; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d220e39907so75229041fa.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 07:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708530293; x=1709135093; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8/c7XUwFLRKiENJ2ttxrXFWUv4lnYluY1pRWORvLrOE=;
        b=UiBU70ePtZFNj8bD6ZQVvcnLzrLrzJgriQeyyN59N+MiROhdQvPtLWkpzwFkXbDsfV
         61Xqn+NBCaqxtvLxSBsn8DySpwAKruTFnQ9mboFv629b2qCZ5jyumvpmglGH3/oLtoRl
         m3Vj2v6/B5NYBzLqQnZnME7OKzdxvTiyStoQz13FtqAuN+46QfUcXX1EtzA1qflFG64R
         JrWj1ARkc65dofPm1aWPZamQpNkCJYNZX867vVQy/DOJjKGI4j0ZEDD3Pjo/k+yeg4u6
         xv+gxWtSicUCZiOI0UmL4O1PVX7qvO8dzCg+4B1+nMFqzLyEBRvJUij0RCh8VtKIz2Sf
         vRDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708530293; x=1709135093;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8/c7XUwFLRKiENJ2ttxrXFWUv4lnYluY1pRWORvLrOE=;
        b=SDFq43iO5TKTRa3SpQSEqSi2SvLN6oG4GpQP6pHtaoPXZpiLsbx6SAqeDjqpnXxqhf
         IoYAPFzPTAZX+nNJ5Po3oHXKyNkBP/pJONXOE7TEPr8GCqVp3t0+KvLpVQy6X/SgzcPv
         mRmmA4EkGxIQ+YbQoMEEKWSpAXbfhvy4ujqOFCowmnq60CP2P+V2/IbpiTfNI8B373pX
         LbtYk4zdJfq5XLTDW3WtPIxL/iiv50RhMOLiv32sZyIm53npFy0qgorpqzG0OsvsNfII
         VV+NCgYdArAtbTmc6o1zuSHarKiwORu2DYNt1H4voI+Yq33LgSNGsEWV7M3HXBvaiiCT
         zyUA==
X-Forwarded-Encrypted: i=1; AJvYcCXfH2+Vdtfv9d+gawyNtSFkSTjApVgW+s/HiBUXx68Snw2G3tsUbpO5xKL4MJvjJsZozu8bKS1hCMHOlbKFOcwt8cdaRmME9MEvEA==
X-Gm-Message-State: AOJu0YxvFwMH4dEMOIcfnFlu5ugzSdThD+jBvSkte3hwo8neHIlOfuLN
	zom8jrTmd5OoABWDsCm4sxwfnigoQob1nwpETngBQ9z+KikDToQZVTgHV2VqlZ0kFdKRYWURVZn
	yN1YjUIwb+SRJ3NFg1w7+/fGngReJlsjaN8133A==
X-Google-Smtp-Source: AGHT+IE2jKiwWEUrCCoIvtI9A8GIbL8yLwVMX2t69LD0QqhK1FpKoYRVbIXn9VjUSpzRsw9bvzLU5Cehq1ppTDpUuPs=
X-Received: by 2002:a2e:8018:0:b0:2d2:37d6:350c with SMTP id
 j24-20020a2e8018000000b002d237d6350cmr8461819ljg.12.1708530293554; Wed, 21
 Feb 2024 07:44:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240216-ad7944-mainline-v2-0-7eb69651e592@baylibre.com>
 <20240216-ad7944-mainline-v2-1-7eb69651e592@baylibre.com> <20240221152226.GA2868707-robh@kernel.org>
In-Reply-To: <20240221152226.GA2868707-robh@kernel.org>
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 21 Feb 2024 09:44:42 -0600
Message-ID: <CAMknhBFytGYNo8FviHepoxLApoGyo0mVhL2BzVmm1vt8-Evn9Q@mail.gmail.com>
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

On Wed, Feb 21, 2024 at 9:22=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Fri, Feb 16, 2024 at 01:46:18PM -0600, David Lechner wrote:

...

> > +  adi,spi-mode:
> > +    $ref: /schemas/types.yaml#/definitions/string
> > +    enum: [ single, multi, chain ]
> > +    default: multi
> > +    description: |
> > +      * single: The datasheet calls this "3-wire mode". It is often us=
ed when
> > +        the ADC is the only device on the bus. In this mode, SDI is ti=
ed to VIO,
> > +        and the CNV line can be connected to the CS line of the SPI co=
ntroller
> > +        or to a GPIO, in which case the CS line of the controller is u=
nused.
>
> We have a standard property for this.

As discussed in v1 [1], the datasheet's definition of "3-wire mode" is
_not_ the same as the standard spi-3wire property. I can add that to
the description here to clarify (I hoped changing the enum name was
enough, but perhaps not). Or is there a different property you are
referring to?

[1]: https://lore.kernel.org/all/20240216140826.58b3318d@jic23-huawei/

>
> > +      * multi: The datasheet calls this "4-wire mode". This is the con=
vential
> > +        SPI mode used when there are multiple devices on the same bus.=
 In this
> > +        mode, the CNV line is used to initiate the conversion and the =
SDI line
> > +        is connected to CS on the SPI controller.
>
> That's "normal" mode.

That was my first choice, but the datasheet uses the term "normal
mode" to mean not TURBO mode which is something else unrelated to the
SPI mode.


>
> > +      * chain: The datasheet calls this "chain mode". This mode is use=
d to save
> > +        on wiring when multiple ADCs are used. In this mode, the SDI l=
ine of
> > +        one chip is tied to the SDO of the next chip in the chain and =
the SDI of
> > +        the last chip in the chain is tied to GND. Only the first chip=
 in the
> > +        chain is connected to the SPI bus. The CNV line of all chips a=
re tied
> > +        together. The CS line of the SPI controller is unused.
>
> Don't you need to know how many chips are chained? In any case, you just
> need a property for chain mode. There's some existing properties for
> chained devices I think. Standard logic shift register based GPIO IIRC.

Thanks, I see #daisy-chained-devices now. I missed that before.

>
> CNV are tied together, but must be driven by something? I suppose
> cnv-gpios?

Yes.

> But wouldn't that be the same as the SPI controller GPIO CS?
> Does a SPI controller CS line connected to CNV not work in this case?

Maybe technically possible if CS is inverted on the bus since the line
has to be high to trigger the conversion and during the xfer.

