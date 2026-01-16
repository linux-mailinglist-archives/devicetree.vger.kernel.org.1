Return-Path: <devicetree+bounces-256107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DC462D322AA
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:55:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 35E583019490
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81CA12853F2;
	Fri, 16 Jan 2026 13:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eM2rntib"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182A2299922
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768571675; cv=pass; b=rMvpdpd/pd8dzqjt2dM/0paFC67YpM+SA39df3FH+Gqs+pmNukz3r+HtWfqZrS6KcaQITwHk+gX1yuI9Eq/gKyYkahAfr+z4LBcUHLjL5Bc2pu++ErLwH/wB0eylwGXC+Fmm9sFO6vG5vpgHndmKxTVPB00us5BerIX3q2YFuqU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768571675; c=relaxed/simple;
	bh=R8kBBE34ZNMYFTudNvOv2beFXalia1gR/fPFdf8uKYg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pbe6cw5pp4kOFF/uyDWxvHauEbojWKDSPCGeYHyQDYjORiWzCl8c/G2juC0skfl0bpNC2JjAW1J9NOo7hMhmN6552aceKXSgIGCwu88/VTLyJsWZNS8o6SmPtuksqPwCIMD2Ovsh76IZ2fTel8oQDmy3NGs+6Zlj9oW1PaCMuGc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eM2rntib; arc=pass smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b876c0d5318so299216166b.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 05:54:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768571671; cv=none;
        d=google.com; s=arc-20240605;
        b=YJc7Ot3cz9jSFFxghqcJlR9sWoCo5HdDO5lBlhNDtXhMNp1uQIlAWOTlCcVYtQoFzs
         SkwM3ChVh8wqHWJj0l9x1Qbkia9wWY7hVSiZfzFZuBqcrT0aizM856je6t4eeWoFX25L
         k2O2k5jX3v6Z5ZpBa5X/ZSnXwTr3FP5DpArTgIvLCxppNkqiFbX2t01+3JzBznGzLUfp
         qhDAfhjsRYIFv9x83UYK0qV2hVAWp2bD56Hjgro5VbBHCb14W77oz8OB6iE21nfRGB/Z
         zKNAsL98oSt8v8GtCum3h2mZu3Cgv3Uk4G0ATJiHBQlRYdm+bQ4c3Q1y7JhZTxQQwLN0
         qiYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=RotkfXlDeAeLy5OveUiI64+KfXV2VpL9+J6GoWK/2KY=;
        fh=Uw85jYu+DC/aUKTA1Cw94yHt5xRzJYa+oCSxCFYdwi0=;
        b=fU8MF3LbNbSzN+mu83Q9xg5tLumwTFyo+Mp2G/JMIWt41XpSxwsITMElw+ABSiSguC
         JpwGsOT7MT22NIgqQm1zk68fYGSxVKiIg/IIoVB+h6M9ufOn5Ygs+6fo4UASGu4ve5jV
         5MxCU0IPtmxdVvteeDHqQ5M8RYVqjs8/qbD28EsGCCZy8PQtRmNj+8JydTfZgRWaLWLw
         TXBIxN7zo+M0C7yLQ3nw5jDFTDOi0mYBbKdtq1n6rn+G6Qyu/G+7Ox7SugekuJIq+pwH
         2SU9VIps9nrr4oXi6Rh6Cf1Zr3xFfePZYVszWsoOjZFoGi/y4xdZNMifAinENEROk6vH
         W74Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768571671; x=1769176471; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RotkfXlDeAeLy5OveUiI64+KfXV2VpL9+J6GoWK/2KY=;
        b=eM2rntibBC6HsCk0aSXkFVNCs0lA8sodjRpwnc1dDdpuuHe9SJH3zyGlKhGLeXLHZ+
         JwpVJIUOplR8xgkEwG7MNk8eLJ0e8xqR2gSGvmpQxP3C/KhPzKc4ZfAo0ghmBsUrg3Ay
         0blZfPjFikCZoFXcI7PD/LzOw+EX0Cv2CSMAit5VmWq1zKyDr/ysYqK6NVuujzNqKsxr
         8N7xJJoRz8YvNamSsB2KhwI4hIei46KHaygqIeTLVfXk34O4MBm/5589wzvRS3jP5t+b
         hbPSG+f66w+KYwR+BKZ5h0Mwh+c2FAZKu75iNahMIEfQm/0ob6VeMHYUDZ0n9ql8rPAY
         t8xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768571671; x=1769176471;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RotkfXlDeAeLy5OveUiI64+KfXV2VpL9+J6GoWK/2KY=;
        b=mfQi1S/Q8lZg2UKVW7TwG2zZYQw7dW4OHrTkyzYrs2O6siNXnTq6EY/gy0coFstp8N
         /uIzH9fPjoJB2WWSsUD1O71dFMFAdwstJglKFpMfmT78xEK0zbgdXVV2KyrzKZL0bM6h
         /U1IfbKOcV5P1/rtVMu2IQewDieyEZVHJAZBC8WHIikfOi5Ox2qmgOndyvA9LMYXhQnC
         vX/wSfsQxLU8ZbxWTf3jFjkmBnEktr2WGXRqUH/DqmlXcyPmmp2Xt+Y6ziceuQvv1aSU
         Dzja3Q416v1makveMeAyzpu8OZYuwr6apESGGwfBFvsZW+VMhQBMz+sc1kR9TGMiGJN1
         yoSw==
X-Forwarded-Encrypted: i=1; AJvYcCUM8hKWb7WNOl63RoDUYvvaLJvcv18LQKvEfHIhzhVTB5uO8Bw8LlQuKuA3BXkgCtMHIF6zCmIS88Qb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw76l/AzJO1DpgK6y4ACZRQu02diy5ggV7f6a4r2WtGitg/TyaA
	3qTcqJ2Mu+FGInkLUUsvgLHPdrlhR6RKeFcS5Iqs4spfgxpOSbbnxzA1U6wPK2nY6Wbb3hz/0qQ
	k0Ofa6PdqAeN9rxI7GMA2NjfLreQF/6M=
X-Gm-Gg: AY/fxX43jljWjWDXmpa34c3LAV/TYk1gsm1lgj6nOBFS537JjXTLQMdmyuplp+96daM
	Ktv7l7SXaGOVeYuSLutnLLOBtgNdMDKVAmhkyUKRp3cxqk72JzL/04fl+9eoKxuZlYTUwD//yyn
	+swsE48Yo+1p3/CLkXF8T2EpqOxmzKmVqi3eJwy/hoEbYxhcNfgKDUtwkeTsUQptkz5fuTZro8w
	hwusrJIaDboVYVOJ6vPMwq0yOmheNmOKWrDwPUi8Cv8PslGmdf/NuO93x3cQXnKieurebf8vkkv
	wjEDrypAF0Euaca1NKYwhHdLIF3yXTh5fKYxn+iMMkFFWdw7Wydp6QVY0YbIHLFfSEeb5tFOyLw
	8GOSFBg==
X-Received: by 2002:a17:907:3cc4:b0:b87:2b1a:3c55 with SMTP id
 a640c23a62f3a-b8792fc438cmr299318466b.39.1768571670823; Fri, 16 Jan 2026
 05:54:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108-adf41513-iio-driver-v3-0-23d1371aef48@analog.com>
 <20260108-adf41513-iio-driver-v3-2-23d1371aef48@analog.com>
 <aWFPEa9HI4wmYLpn@smile.fi.intel.com> <6hcqrcy3meskddrklb3jtlpca2snrs4upwms56lhq7mkes7krm@vdiaqkfc6lgg>
 <aWTTs1n_N0dVjpbV@smile.fi.intel.com> <lwqhf3pm5xewtx4hhq7ei2yil4skmtkstqfifif74u4e5jmtzh@wedhpibvjepw>
 <zgz6g7pvzijrt77lwdi6q23lgkscm33imcdfbnu7mxvzarygst@ve3wi5l6dv3d> <CAHp75VccDF6QfkZ729qCTQcd5bbnTO2SX+FG8QNPRSC9=LneMg@mail.gmail.com>
In-Reply-To: <CAHp75VccDF6QfkZ729qCTQcd5bbnTO2SX+FG8QNPRSC9=LneMg@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 16 Jan 2026 15:53:54 +0200
X-Gm-Features: AZwV_Qhnb5ASdJPz3Ird7Y1KuJggzpYW4SdF5HLUhFubm0H1G0jhHHLVxjuzeXs
Message-ID: <CAHp75VfMFF4-NPtuAENc9YRx7xrhiNAs6x2VoafUJbOzH=_SFQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] iio: frequency: adf41513: driver implementation
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, rodrigo.alencar@analog.com, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 16, 2026 at 3:50=E2=80=AFPM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Fri, Jan 16, 2026 at 1:32=E2=80=AFPM Rodrigo Alencar
> <455.rodrigo.alencar@gmail.com> wrote:
> > On 26/01/13 09:32AM, Rodrigo Alencar wrote:
> > > On 26/01/12 12:57PM, Andy Shevchenko wrote:
> > > > On Mon, Jan 12, 2026 at 09:56:25AM +0000, Rodrigo Alencar wrote:
> > > > > On 26/01/09 08:55PM, Andy Shevchenko wrote:
> > > > > > On Thu, Jan 08, 2026 at 12:14:51PM +0000, Rodrigo Alencar via B=
4 Relay wrote:

...

> > > > > > > +#define ADF41513_MAX_PHASE_MICRORAD          6283185UL
> > > > > >
> > > > > > Basically I'm replying to this just for this line. 180=C2=B0 is=
 PI radians, which is
> > > > > > something like 31415926... Can we use here (2 * 314...) where P=
I is provided in
> > > > > > one of the used form? This will help to grep and replace in cas=
e we will have a
> > > > > > common PI constant defined in the kernel (units.h).
> > > >
> > > > Any comment on this?
> > >
> > > will adjust as suggested.
> >
> > I am finishing putting the V4 together and I decided to leave as is.
> > doing (2 * 314...) might lose precision, by not much (maybe negligible)
> > but it does, as (2 * 3141592) !=3D 6283185.
> > And that it is part of the reasons why PI is already multiplied by a
> > power of 10. I suppose there would be multiple constants defined:
> > - pi in micro radians and nano radians
> > - 2*pi in micro radians and nano radians
>
> The problem is that we will have off-by-one errors in plenty of
> drivers. Depending on the driver the PI may be floor()ed or ceil()ed.
> That's why I think it is best to use 2*PI with the precision you like.
> In this case it can be as simple as
>
> ((2 * 31415926) / 10)
> But you might actually want to have the maximum 32-bit PI, as
> 314159265 for the same reason.

That said, the preferable way for 32-bit arithmetics is to have

((2 * 314159265) / 100)

In this case we can use that PI as a reference in many drivers.

--=20
With Best Regards,
Andy Shevchenko

