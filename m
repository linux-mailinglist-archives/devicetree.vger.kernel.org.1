Return-Path: <devicetree+bounces-244047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F896C9F56E
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 15:48:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 0F02E3000187
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 14:48:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D29F3019C6;
	Wed,  3 Dec 2025 14:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="faUnit+e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80D73301460
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 14:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764773290; cv=none; b=UKwoPKVt52E2GO2UI+vtV6xzpwP8vgGroMeBDG4Dvi7CuUQ44xwRVDOoJM2r3jT+/Ay9lFYva9TPHCoAU8Tmbluj4m0eIMa+SowFI2WaiNtkOF/5hmFWr/TyI5ovA8EMzp/kTI8Ag8gdANT6mYrTg633DJO9vkGb/s+PsLuc+4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764773290; c=relaxed/simple;
	bh=oL35OKvGOxDskjgVdfPaKqYXVuHhqzw09HymFZTzoDY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=GYlKb4btLrtb3ISsmD1MMN3sHIYE2LyUUNuAi+BdjxmulZEYi2O1/16N0Oyi5705AzMYbMZqMu0ULx9a74/OjEtkWqLDrbAVK7tCj/KX/ALTu4Jegg1abv1YWuCrqvdItaOsaJyehCSaPPVwAD59e03oQzTBMs9FpkSAGf8mcBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=faUnit+e; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b7636c96b9aso934682066b.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 06:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764773286; x=1765378086; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oL35OKvGOxDskjgVdfPaKqYXVuHhqzw09HymFZTzoDY=;
        b=faUnit+eZTfoiBFjAP2wYoa0lbqq8nu9I3p4ocoBPQdVN5NHvI8YuOAmsnOqwdoi6S
         SHeq/cDFjfg/CaO1FuwWjgIJDK7yKVT39NFRkjBlBcB59U5jCHHf13Tlfe9tYTGcuKHt
         1nB70HxWvq+GLM9U4K0Ig5QA4cCdUhTw9y/kDdfEBRnizeFDzob+jj5O9PGRSebpmk/Y
         IG8qMftvRrJC1VIa8i4vtog8xlupAVd+/Nc5qqbWjElzKREcft/JriI10bSgnF/QFn0M
         z5dcvDRxp5wRjElcvnL0dRZxn2TcByh9SFxsoIy+W4iDTVI8CtnZEDNq/FxYroZcNEQd
         wl4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764773286; x=1765378086;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oL35OKvGOxDskjgVdfPaKqYXVuHhqzw09HymFZTzoDY=;
        b=H8aXxYAUYAg2dAi7IBrW4b1rX8AhTvQZNBfq+EnZTOInVlDpfBDXcqB4byy/1yj6C0
         7+cFRMlcDy/50utuZ5Uu6YSMCn6ZRrdhsTb6K3NuGWIyhZU5p3bnrPj4F1oy+i852QmV
         0ZIGX3Zx8G9cO3vPYKM6wsiXcGqRwf2o8J2LdSjJTqfU9qOLbvyyXMT26Z+8vFdx8HxZ
         +Mnkn59srAkSWr0FLVRY9srMP7AvKZjPGTjas/8znRK0Uy5O2pfGDPruHCLvaQhph/1s
         thM3TDCH/oq3u4ihtWUC9fkMfAU/p9Ge6QQjMCF249D+EabXqcA/LCHJGUATdHBM+i9e
         whJg==
X-Forwarded-Encrypted: i=1; AJvYcCUEZVbYsvmGyhrPrXX3D4mp5/qaxuH2FO8WbN8qLM/i5QfEX51HO1K3TdIzRHHd9RwgOf5V1+FjjjbT@vger.kernel.org
X-Gm-Message-State: AOJu0YzwBh6IeXf8D3u3Qi636DMTE5Yiq8H6NugcIGYj4EYkZL2816WV
	PFM5Txw5e/fK+8QY1T7p/Kc4qNegmb8cLSmFGtY2hMWFYuPrQAf8/U/r
X-Gm-Gg: ASbGnctMj5qhMD4oIPwteXxfza1SxP9EtPZnd+I5Q18m8C8cwv9S6bkl6p55yBFuXb1
	k+MK1kl32oGqrPhm6Ob6E0FzZNL14jafbebcSPE97L8SXf/SlPntGuM8oszibkclFQodDfBWOkb
	MsoK1wtGcEI/VqvjisC5lg3C95x0YZT3vTBLOz0tPLlY/V6/fEqR/OGJ0LCRWhg+Ovs7CCfBuL1
	iw6ZXHRg0ZmymcnzyOUktcpF3VyjOLZeUclmGkhpiYMXcwHmvGqG2UV+XBRj/qPX2J5ZS7qMhFG
	bhgs10M8a+uZXtWKnuQttadhTGsiV3PNKqjpVVoFGldZrNYr9qBfFNyQB72AT2uyfVsTxsUYIBm
	hOIdrm7ZljVDdCLWkSYwIHx7ZeKy4d8O3/WuGMPo+5E6hGfsPtqa32oO4zcqBoly/QPMC1HdlYO
	K5ypa4MCDuptU=
X-Google-Smtp-Source: AGHT+IFGmiSxZ43YfANUOAK2kxqz366FrP8VXObqiHTmbXUrUCjFmKAoNnC01rZ2yC7eX7J63HXKeA==
X-Received: by 2002:a17:907:7210:b0:b73:7710:fe03 with SMTP id a640c23a62f3a-b79dc77e2a6mr310276466b.58.1764773285339;
        Wed, 03 Dec 2025 06:48:05 -0800 (PST)
Received: from [10.5.0.2] ([185.128.9.168])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f5a4b757sm1793579066b.66.2025.12.03.06.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 06:48:04 -0800 (PST)
Message-ID: <c45e24e5edb3ea668accb608f6cdffff62592c74.camel@gmail.com>
Subject: Re: [PATCH v3 2/3] iio: adc: Initial support for AD4134
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, Marcelo Schmitt
	 <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, jic23@kernel.org, nuno.sa@analog.com, 
	dlechner@baylibre.com, andy@kernel.org, Michael.Hennerich@analog.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, corbet@lwn.net, 
	marcelo.schmitt1@gmail.com
Date: Wed, 03 Dec 2025 14:48:44 +0000
In-Reply-To: <aTA0LDYDzP8s__1V@smile.fi.intel.com>
References: <cover.1764708608.git.marcelo.schmitt@analog.com>
	 <c189c25b1c46f406c3f7942e5ac4cdb0b964ee52.1764708608.git.marcelo.schmitt@analog.com>
	 <CAHp75Vf7p=aPy2ofC_zVz1PURA3R9i0WZCG63-dCEXO=xKJ0FA@mail.gmail.com>
	 <daf53d16106f29a09134b2c2a5a2f4870a0bfbe1.camel@gmail.com>
	 <aTA0LDYDzP8s__1V@smile.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-12-03 at 14:59 +0200, Andy Shevchenko wrote:
> On Wed, Dec 03, 2025 at 11:02:45AM +0000, Nuno S=C3=A1 wrote:
> > On Tue, 2025-12-02 at 23:26 +0200, Andy Shevchenko wrote:
> > > On Tue, Dec 2, 2025 at 10:55=E2=80=AFPM Marcelo Schmitt
> > > <marcelo.schmitt@analog.com> wrote:
>=20
> Nuno, may you please remove unrelated context when replying?

It was not that much. That is why I did not bothered :)

...

>=20
> >=20
> > Hmm, can you share why we should have a reset controller for the above?=
=C2=A0
>=20
> My point here is to have a standard way of handling "reset" pin independe=
ntly
> of what's beneath in the HW =E2=80=94 GPIO or other means to assert/deass=
ert it.

That makes sense.

>=20
> > Unless I'm missing something, even with the aux device, you'll need the=
 code to
> > optionally add it which (I think) will already force you to check the e=
xistence for
> > the pin (which would be a bit odd IMO).
>=20
> If this is the case, it needs to be fixed, but reset framework provides
> _optional() API, that's what should be used for the cases where reset is
> optional. Let reset framework to handle that.

Ok, I think I was also misunderstanding you. So you mean that instead of do=
ing=20
devm_gpiod_get_optional() we should use one of the devm_reset_control_get_*=
() calls?=C2=A0

Ok, I went to check the reset core implementation and with [1] I take back =
my comment. I can see now
that the framework will automatically handle creating the auxdevice. So whi=
le I still think most of
the times we'll still see reset-gpios in bindings, it makes sense to have t=
his HW abstraction in the
code.

One thing to note is that the reset framework always enforces reset-gpios a=
nd we do have places
where reset pins have different ids (just because that's how the datasheet =
defines them).

...

>=20
> > Having said the above, I would be up for some kind of helper in gpiolib=
.
> > I still see way too often people misinterpreting the meaning of
> > GPIOD_OUT_HIGH and that the value in gpiod_set_value_cansleep() means
> > assert/deassert.
>=20
> Consider this as a helper :-)

Indeed!

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tr=
ee/drivers/reset/core.c#n1038

- Nuno S=C3=A1

