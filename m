Return-Path: <devicetree+bounces-254284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A7DD16E49
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:50:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 94BDA303B440
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 06:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94AFF368283;
	Tue, 13 Jan 2026 06:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OyTqHz2U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08C834FF77
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768287033; cv=none; b=X8nrJWXLout7gOxBIqnq2gbhsEHWMitOPmjZ5SjbFFD2e3HG28QhukZsbXsuUQfMjK03mdCn5kgycvw/BFZoagfa3mltqQwupA35gUi85EAPaQY1t44TCFkMLSQ/jiZrNTv0teB4kdfyCitmee/CCMYcxDXQ/XiJYht3LN0iWfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768287033; c=relaxed/simple;
	bh=vWWkI8Ucxv7LLsC4EwcqO0otoFPc0wLp32vKoD8J2lA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pwofmJaUgJGERv3Dg/v7O/NAwGw1G+yXhTTQFNgVxZaFIP4GX3enXNXqMW5X9zcAWM4C5xnnYUDOij7Xgh06RlI9MCtn1UGF02k0AO6lorTBBU34fjorBEGyCjDPojgp6qfxVjHRvWLvA45x8+LqFPGKoAHe23bcR2FKHwUy1r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OyTqHz2U; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b8719aeebc8so298779366b.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 22:50:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768287030; x=1768891830; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BDFhHs1bZ2tXFlSAK9bO89iNUEo/gzgYCa9HumpSvtU=;
        b=OyTqHz2UJ5gF0nbcpvmiXsVxpOKwFBZPHllNFaar+NAna44jvrRk4ryHLw5TS7Bsu8
         f1KUKfACf9iufQCp41GfCZSgdiL9oiDIc0oXdzP+uXUC+lnarmFXG6AT3dQO1uWM/8UH
         xMDRNzVq7QJMoaOMtnaHbk4mDFU7AGA4r01p44Cq6QCJZsWeo21YGItX836I5yb7mUOT
         nbqiUWNqs7pB8QrMHHwJJNOfWqghoRBUVTiTJ6B3F9X2/ysx38AxmeOFfxRL3HAHAXCh
         iMfNskvPL1IaQgtFDyCtkGZU0toN9LDCD8g8MDoDh3dMuDXacC+r7LYPrM4cuc0+5LYx
         dq+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768287030; x=1768891830;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BDFhHs1bZ2tXFlSAK9bO89iNUEo/gzgYCa9HumpSvtU=;
        b=EwxJb3wC/JZIss2gVD9LcedUcC06ABsrQhrjGJ3P5Y+M1vFH+Qi7BFKViN2OLPkgcy
         PpG85Ar2ZzsliHbXhhynA4QD/UEgHd7C9qODKF1UJb5i+tt4QgXiZmtwBiiawRSkRB2G
         qm/3di5mmq0JIN/OAoqME1ykeSq9NXLvIwQOIC88aZYq8EwVEEAxHLypYwRqsPfK3OFW
         VBZY6xlQlS0iGgvZ6PeZj0UKFzmMq/ZBL2esgttqzt1Y23fdJGOXDIvrHVvHlXan7B2Q
         puGIHu9JEz1rVYwBhBYUuwivHgJD3NoDrBF9fhdGz/zFfRRxQEC4XbIGbWCMvnLi7Xhw
         l8Dg==
X-Forwarded-Encrypted: i=1; AJvYcCVjMtlpBXXsZ+r2qzsZ5XC+zM8NH2+klNIW1vB30xPJo9SfWeKzL0/bFu3IdntJ2rrANIp2ZeMSDVhr@vger.kernel.org
X-Gm-Message-State: AOJu0YwYKbltndfA4hcT6M+Nx2wiCILXdMtPD0oLXv3NcRjstnwcZVf8
	RX3ROTj0Yk/I5o7M8X0Q0nmSU+N3Lx7JMSDvPPtxeDWXjcj7BWyygphoOfrdK/ixOFLb6uvl6tV
	CXlz8O/sijz6vWqXJrDgFk1uIeZGmkq4=
X-Gm-Gg: AY/fxX5rxuCeygjAgsDsLF2e+9Vij2/T5knBdRmlfIZk9Ls1ytB3ocnOSZh1Cb7jCXQ
	Jv4ggMEOkvfgleFI37f8l8RQO12uP6JrcU1jfRPowlAFqjk60zIjtd717N5pkUcu092/f1UTFPt
	n+1Kp2E24HveTSYRTgD+WVaTAbDjybZgHjZKzgPnJ5BsXiTNTW2ydryVwArfzHbIsKaiv+07aye
	aEAEhi+O2UEv2FOSRD5AmP5j0I6ZAiH6/WBtuJqJsPMy6Uas2GthIzxCR3ASPIWwQIfNdUsYwmz
	/EMqtrJtoeFEetI8+SFnEw1bzCJMkM1kmCdeAZ7ChaoAx0LbUNXIjtH9TbTKslO8dolbykQ=
X-Google-Smtp-Source: AGHT+IHTMaEj1d79MXWnrtD/D1BiTaFbQG661Hd0qVzPt9MGhEU4KTKvVFDgrAZVOMIFGnSyzgcpUUFGM8BY5zo4wBU=
X-Received: by 2002:a17:907:705:b0:b83:73ee:9dc0 with SMTP id
 a640c23a62f3a-b8445177102mr1831267166b.65.1768287029999; Mon, 12 Jan 2026
 22:50:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1765900411.git.Jonathan.Santos@analog.com>
 <43504217d5b3c32da946bed0ce4d81e216f7c7c7.1765900411.git.Jonathan.Santos@analog.com>
 <20251227155525.6d712f42@jic23-huawei> <CAHp75Vd0n+aTkdzMC53y9LrPW4t0mckpzmmud4Ez5gXbAdLeVg@mail.gmail.com>
 <aWMG6+ORRTy4ll8d@JSANTO12-L01.ad.analog.com>
In-Reply-To: <aWMG6+ORRTy4ll8d@JSANTO12-L01.ad.analog.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 13 Jan 2026 08:49:53 +0200
X-Gm-Features: AZwV_QhDHCn-yzHlTaIbM5IT9Av2UWj3kDnIDefGCsUzJc3Zki1Ju0XwfgtNBz0
Message-ID: <CAHp75Vffgz7mc4Z_KibtuuVCvBfVEYPG0iEPBXrEFzYkaymGKA@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] units: add PERCENT and BASIS_POINTS macros
To: Jonathan Santos <jonath4nns@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Jonathan Santos <Jonathan.Santos@analog.com>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, lars@metafoo.de, Michael.Hennerich@analog.com, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 13, 2026 at 5:32=E2=80=AFAM Jonathan Santos <jonath4nns@gmail.c=
om> wrote:
> On 12/27, Andy Shevchenko wrote:
> > On Sat, Dec 27, 2025 at 5:55=E2=80=AFPM Jonathan Cameron <jic23@kernel.=
org> wrote:
> > > On Wed, 17 Dec 2025 02:52:45 -0300
> > > Jonathan Santos <Jonathan.Santos@analog.com> wrote:

...

> > > > +/*
> > > > + * Percentage and basis point units
> > > > + *
> > > > + * Basis points are 1/100th of a percent (1/100), commonly used in=
 finance,
> > > > + * engineering or other applications that require precise percenta=
ge
> > > > + * calculations.
> > > > + *
> > > > + * Examples:
> > > > + *   100% =3D 10000 basis points =3D BASIS_POINTS
> > > > + *   1%   =3D 100 basis points   =3D PERCENT
> > >
> > > I don't understand the final equality in these examples.
> > > The top line is as it says 10000 basis points but you have it equal
> > > to BASIS_POINTS?
> >
> > Also there are pp (percentage points) and others like per mille
> >
> > https://en.wikipedia.org/wiki/Percentage_point (see "Related units" sec=
tion).
>
> Hi, Andy. Thanks for the suggestions,but I am still questioning how
> the percentage points would be implemented, since it is defined as the
> difference between two percentages and we cannot use floating points.

My comment was more about the prefix (PER) and the naming (not
BASIS_POINTS, but something from PER*), and for the comprehension I
would rather see all three defined (pp is _not_ part of these as you
mentioned its semantics is different).

> Also, should we keep this approach of unit conversion?
> Example:
> value / PERCENT -> converts a value from percent to ratio
> value * PERCENT -> converts a value from ratio to percent
>
> Just to make sure it is consistent with the rest.

Sounds good at the first glance.

> > > > + */
> > > > +#define PERCENT              100UL
> > > > +#define BASIS_POINTS 10000UL

--=20
With Best Regards,
Andy Shevchenko

