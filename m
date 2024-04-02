Return-Path: <devicetree+bounces-55480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDC88955FC
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 16:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ADF901C22117
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 14:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D1A84FA9;
	Tue,  2 Apr 2024 14:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RpaHx4tC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965F784FA5
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 14:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712066425; cv=none; b=ntM1QSbhBPA2IKBc1cOYncaXq7XeVzq2yK2urSgufF8ZlxP0yjwCebp4QZv33DsbY5hGqjAJ0/dW4DwbprEwrwIgmO1cG7lMMezkzWD4vuzQG2FHNyniJ8nNbaAajmovY/0TKK1wSQ13KQUF0eJ61L4s2+n3Yg7ovY5xSTd6iAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712066425; c=relaxed/simple;
	bh=zQsUVohe62XDCv8RPmVhbR0HOvcb2ANjyDfd2BTRSTA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dQMGQ3rle+rRgw9JmYXuOu45s7b+oQIWroB/3rUIqLFGJS4P7u+IlxzqIdR98WdQztEjaDy0eSmGpC4DtzuoNQjIQdbBPNFe4pqLjRtE/O+HwrYqdSFw0PTH+dBbetlpU443gqUje1mKJOEBOo5cPXwLXGlon4BLHazomUUQxJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RpaHx4tC; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d82713f473so17418411fa.3
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 07:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712066421; x=1712671221; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8rDbZVm/05+TD8i00zno4F1FPbK9cGt0EA7D+/0NFvM=;
        b=RpaHx4tCJ3BDi1LLkthbtY6JG/Zklfc19v14leIe4bGroL1Y29/a9k9R3ZdmD7pZ0n
         U6Nnp5IqS6lJ6H93XpfLsjwovzdOG1INNTRZu5tXeyg7oRqAeDQxOqrqzXDrDFZMGXBy
         bZsytrh2FxMjzozGNVEgEUQskkDZ94Mj4oH01DybFJVEk1eSJe8GOwSTFN7JpL9UoI0d
         ZviYNMcovL0sRChW5cDxNzEsEgwTCAmIXqpDYldWUC/OkDYNEPcmZID9V62HLvAKHmVR
         X6V7S0brqQS+Q9gDrsR6MCSxuO37S0fbquuAsNnfw39Jgpu+okcAt8VQwdK6VmFEHfr9
         h27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712066421; x=1712671221;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8rDbZVm/05+TD8i00zno4F1FPbK9cGt0EA7D+/0NFvM=;
        b=VduOgpr1HQXOtyV1b9CPYFGLws/HjmGUQX9mE+wAE1vS1tCeV2TU3noPsmmQzatfMt
         STnboQJ4ZFnqy2zBkOpHBO4XrtWePvinuY5nnXNGc8l9SU+vKfIPry+mfv6HM536P1s7
         u5+5ygy3e4ayp0VNRZ/ESphvEWDKFT053S7DkfYll6DJFyzQj0Xa3c1JdIB1C7rLCPCR
         7jNjS/EpjLAVK3IHeW0+X/HEf2jGzH1VSAP3tz0s2/zl6miuh0tKdop26KnOVH4v1Kbv
         OlHO8BDbBhM/VhksLTfl8INl9V8+HoR5z2EGc55yLcoLKdDH2LM26Q+1Sf3z0ISgvEHx
         hK/w==
X-Forwarded-Encrypted: i=1; AJvYcCVOnjsgU0QMUOfnQrQ/FCbVzpDahZ1aTL2qySMPMDQlwKjzmRiLsF4SWlidkIItNP9ZvyIMqu+p9r0SqF78c9thNUBZVvt7Y3tx/Q==
X-Gm-Message-State: AOJu0YxEoSMqP+L6rrclPhCN5NSLxgR4TMDmP39LmzT+6L5FUnC4rMYT
	kfKJF/E2bRF0K5z+oX8y13MbQEUwDqz8dOnGI8eV8LUGSSjGTShrzMTcX0c99GML6vVgCywgxak
	oJfWCgsTnHSdYNr1C25k/cLCM4STTe0FYsXk5fA==
X-Google-Smtp-Source: AGHT+IHCFlw3ou3Ij39/rVMdq0w422umliw3LKcflbCanJZ8AoG55GlMVztIqNJgFjjdkFnQ5BoSu74kXlmLHaTCgpw=
X-Received: by 2002:a2e:8049:0:b0:2d6:8868:f1a6 with SMTP id
 p9-20020a2e8049000000b002d68868f1a6mr1601468ljg.43.1712066421456; Tue, 02 Apr
 2024 07:00:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240401-ad4111-v1-0-34618a9cc502@analog.com> <20240401-ad4111-v1-6-34618a9cc502@analog.com>
 <CAMknhBFdtv84E_S4wa4UW0pO2yiUEk9=jn=_i4F=b8VHdR6v+w@mail.gmail.com>
In-Reply-To: <CAMknhBFdtv84E_S4wa4UW0pO2yiUEk9=jn=_i4F=b8VHdR6v+w@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 2 Apr 2024 09:00:10 -0500
Message-ID: <CAMknhBHf_9kFfLySJmRyoUS6UFfTeLW3bfEi1-3ApEDHyyVhCw@mail.gmail.com>
Subject: Re: [PATCH 6/6] iio: adc: ad7173: Add support for AD411x devices
To: dumitru.ceclan@analog.com
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Dumitru Ceclan <mitrutzceclan@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 1, 2024 at 2:45=E2=80=AFPM David Lechner <dlechner@baylibre.com=
> wrote:
>
> On Mon, Apr 1, 2024 at 10:10=E2=80=AFAM Dumitru Ceclan via B4 Relay
> <devnull+dumitru.ceclan.analog.com@kernel.org> wrote:
> >
> > From: Dumitru Ceclan <dumitru.ceclan@analog.com>
> >
> > Add support for AD4111/AD4112/AD4114/AD4115/AD4116.
> >

...

> > @@ -1028,15 +1204,22 @@ static int ad7173_fw_parse_channel_config(struc=
t iio_dev *indio_dev)
> >                 *chan =3D ad7173_channel_template;
> >                 chan->address =3D chan_index;
> >                 chan->scan_index =3D chan_index;
> > -               chan->channel =3D ain[0];
> > -               chan->channel2 =3D ain[1];
> > -               chan->differential =3D true;
> >
> > -               chan_st_priv->ain =3D AD7173_CH_ADDRESS(ain[0], ain[1])=
;
> > +               if (reg >=3D AD4111_CURRENT_CHAN_CUTOFF) {
> > +                       chan->type =3D IIO_CURRENT;
> > +                       chan->channel =3D ain[0];
> > +                       chan_st_priv->ain =3D ad4111_current_channel_co=
nfig[ain[0]];
> > +               } else {
> > +                       chan->channel =3D ain[0];
> > +                       chan->channel2 =3D ain[1];
> > +                       chan->differential =3D true;
>
> Expecting chan->differential =3D false when ADCIN15 is configured for
> pseudo-differential inputs.
>
> Also, perhaps missed in previous reviews, I would expect
> chan->differential =3D false when channels are used as single-ended.
>

After sleeping on it, I came to the concision that these parts are
probably too complex to try to worry about differential vs.
pseudo-differential/single-ended (what the datasheet calls
single-ended is really pseudo-differential).

So I take back my comments about expecting differential =3D false in those =
cases.

