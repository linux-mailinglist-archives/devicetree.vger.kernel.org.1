Return-Path: <devicetree+bounces-250107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6B0CE64BC
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:32:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 64E14301069B
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 09:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D926224A076;
	Mon, 29 Dec 2025 09:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AN5pxHJD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BA01C862E
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 09:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767000742; cv=none; b=uO5i+Zi7Pyhntgqm6S7n4UUo/41WTbo4Ei9lQQ04Ix001l0PqpWZWBIwNgH3mqGTCRpMvzvd4ynEcCOaFWe+JYlzBam9SsBkab/90kLVnaNbcSs044p6eqrLhfIoWx/6ZmoDPa3927U0fgBqfpHn3/A1noOOeWj4A2dX8NNRef0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767000742; c=relaxed/simple;
	bh=dImMfejdK5RjQ6LN3eitqmAz7Fk97Jy9iWoRpeyXGw0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PxUiCqqPPiw97jatjF7e39sWrSuo0KEvp3tA61kx4JgMiVS+MeiDj9ny0hdz973579Et9GnKXPAofoYJiNM4x1+uXP6hhZ/x4wLIK5JHswmcnBc58QASb48fWWOX/M1AV6J+vE45sSbi15WnQuy+RubAbEGs0aPstlIuZDQ33AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AN5pxHJD; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b725ead5800so1246143266b.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:32:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767000739; x=1767605539; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dcWwbJlNpQHu5DLugJEAUoJP+cZi8f/CAzmkuu67ywM=;
        b=AN5pxHJDmhm7NKvQfEZeRMJN9euNWHDwmH+snA9RfUgn1HTeK+PUhOsnxAIoX1aeYn
         LQ8aogt0sx2AyE1xHhtqc8umi5IUEUd9BQFguU3sjgdO1D66WmKneebi4n/yjX22it7k
         KvWtbaq6BC+v5wi5nv8oRspI++N7r8ErBIUeboWLEtHq+d3M1CVsAqKtydcA8ywjX9lz
         gbtkv1x4cCrXKbOZFA5mlnDDBGfBtckWXIBWZH3rqY4d4l5+C6ZbiVwMM22XwxJL1igQ
         ozwqc3BKr85UyOhxxZo0mCuB0rRqrUDpmyDfspxZHMukizzS/oa46XFZh8Y93RuSXw9D
         PYTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767000739; x=1767605539;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dcWwbJlNpQHu5DLugJEAUoJP+cZi8f/CAzmkuu67ywM=;
        b=ut30WcGIHOZVUBdNc/G8r+aAVjLf2dtoUQhP/3NlG5CirjoTSOZwi8JVAut9CKnlXh
         VxHKSFSC68RXTUGvbTVgFTMq5iDYSu+jEiL4NdwWnbtUImMg3plyhkMtKHYybVezt3w9
         KLtmC0oR7H9fot3u6euFl8zLkJWUVjtv2HrhdpQVgdz228gg0EeFjAHDMZrDyBr75Pj+
         gwEo1r/bX4SuZWup6kb7OFytHEQEaagjl8gfsFlnpfhOgICIZnl+4zZHFvix+3DQ8bgY
         WdUo/Kak4Rr98CAS7p15Edj82SBtZ16qEc16EXUZo8uusGcar0gEhrT2dqDb0Sql2MQc
         Pt/A==
X-Forwarded-Encrypted: i=1; AJvYcCW3jXwhvclDNVNsrmzRMcl6j53AUool2bJFhHrwCf8AtYkwiRuyFDOPI1PAJwn/wti7YY/UiI7dEOxT@vger.kernel.org
X-Gm-Message-State: AOJu0YxqkuVo1XVcFDIXXk5BoneFRcm4/qSZFaKvaHRfg5v/VsOOmdaP
	kTr0/E6OFHxO+bPsaiHk0hHvRyN0LHdI/gWYvgvNJBhl28Rjc12OykIUo/t0DmtCEU1cznPnQrY
	xpeIzUvc68dF5MJZsPEf3BGzo47V6168=
X-Gm-Gg: AY/fxX562tRe+iKjBq7IZPLMJQway7Z0jILx/oHnvm5pe4UX1J/xaC4/J6WfUHfmSd0
	aAM1wGjBgfaQz4o/qh1OkZCEyaeLafGNusWRrxLyoV3gtqqr6y40WCLTjoGcuwd5l07zSvau6CD
	ogCzn+/L3IDOSygQnZM4I8B1SanxhWllXdz7QlPn9eQmwg3IB3eNZ2KuG7527DAV7jFhZyJyosy
	w2za6ZyChq3NzfKG9sNShfTOnCIYeoHr7uy2D6L+5wvzunGFUmAuIGjoRxgZFDyyBlhueUbkJz/
	0U/SF9Q2nNIIEHNgCnhNtQDr8S43OCLvRlSRxMiNJ0sEaMUatFweWadLt7jtLwu9m53gGpw=
X-Google-Smtp-Source: AGHT+IEbV+W6Jn2quXAfX5b7EVevNK7Ufa2WLFsXVdJEWhvON8IEc58ood5ScPQO7+9BK42Q6kTnVrP/URMGzLow+ZU=
X-Received: by 2002:a17:906:7312:b0:b73:58a0:e064 with SMTP id
 a640c23a62f3a-b80372590b2mr3198965166b.50.1767000738975; Mon, 29 Dec 2025
 01:32:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223155534.220504-1-maxime.chevallier@bootlin.com>
 <20251223155534.220504-2-maxime.chevallier@bootlin.com> <56c03c7f-1e5b-4586-beb0-47a1fa3bc86c@baylibre.com>
 <c386a4bd-9c7d-4b4d-b614-fdec424d57a0@gmail.com>
In-Reply-To: <c386a4bd-9c7d-4b4d-b614-fdec424d57a0@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 29 Dec 2025 11:31:42 +0200
X-Gm-Features: AQt7F2r5SnuAV69oChSaEdwhTinGV7Uzknanls5W5PYAWordHlK1nPRWO9434VY
Message-ID: <CAHp75VfDnuyqRyHpVK40qRR59XB3RHV-aDO72UDNhjLDbJHDPg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: add Texas Instruments TLA 2528
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Jonathan Cameron <jic23@kernel.org>, nuno.sa@analog.com, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marcelo Schmitt <marcelo.schmitt@analog.com>, Antoniu Miclaus <antoniu.miclaus@analog.com>, 
	Angelo Dureghello <adureghello@baylibre.com>, Tobias Sperling <tobias.sperling@softing.com>, 
	Eason Yang <j2anfernee@gmail.com>, Marilene Andrade Garcia <marilene.agarcia@gmail.com>, 
	Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>, duje@dujemihanovic.xyz, 
	herve.codina@bootlin.com, Rodolfo Giometti <giometti@enneenne.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 29, 2025 at 10:04=E2=80=AFAM Matti Vaittinen
<mazziesaccount@gmail.com> wrote:
> On 23/12/2025 20:26, David Lechner wrote:
> > On 12/23/25 9:55 AM, Maxime Chevallier wrote:

...

> > It looks like inputs can also be used as GPIOs, so
> >
> > gpio-controller: true
> > #gpio-cells:
> >    const: 2
> >
> > would be appropriate (it doesn't matter if the driver doesn't
> > implement it, we know what the correct bindings are).
> >
> >> +
> >> +  "#io-channel-cells":
> >> +    const: 1
>
> I didn't check the data-sheet, but if the pins can be set to be GPIOs or
> ADC inputs, then I would require channels to be specified. It's only 8
> channels, so always listing channels that are present shouldn't be that
> big of a problem - and it should avoid one to add extra properties to
> denote channels used for GPIO if GPIOs need to be supported.
>
> Well, I am not insisting this, there are folks that know this stuff
> better than I :)

Why would we need an extra property for that? GPIO controller has a
property for valid_mask, should be enough to handle this case, no?

--=20
With Best Regards,
Andy Shevchenko

