Return-Path: <devicetree+bounces-235229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 112D1C35D12
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 14:25:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E4E924F2EEB
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 13:25:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA2AB31D735;
	Wed,  5 Nov 2025 13:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="H5aM/14D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1355B31BCB8
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 13:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762349107; cv=none; b=NyWDw2rTQfjlezEtScsy6QquKLm8yerqSpNUwU2VAL4PFbw419x+syWf1ysE5lx1ZceHhoT/g8Qc0c9Ful2b8qTs45o1vlT9BqbIG0i7cyjF2ESRsuo5ByALMXsnjE9SC4Ii0H+P6d2z1WBMA5hfcExI6cEEoHKWVRKbpA7DDGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762349107; c=relaxed/simple;
	bh=TrSa4ghZQKzIuSKDGuaDiLF4L2HFeJmSO5cfB35UcUY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fvWzHCzK1sioUcPDW4F0HHiLJHoD5w+N3J7QGl6DLxNLQl8OtLbdo62Cyi9pZibbsxbXF/PW+rCHkkOJ6thcI/po5Wph5agtL6GRgrmJb5RYGM1ApbMuYjWIowjIp4JrmQNhgT2wR2vgqkikE13M4E5FZJa0ARBuRkm9P8HpI4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=H5aM/14D; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-37a48fc491aso13301221fa.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 05:25:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1762349104; x=1762953904; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TrSa4ghZQKzIuSKDGuaDiLF4L2HFeJmSO5cfB35UcUY=;
        b=H5aM/14DDS2y2yasv44lvw7tjSSWgOIZHByPwh7LtVvMeAdcXuzL4MXWYO1gwVDhJl
         WW1Kzm+/xwtpOkYFksTd15StQ67V4L3qwgm/U7B6EEtt75fSr2g6Hc5yUOZHBE5qe/f5
         x6JPMQ8GjS0F/ogyQh2Hy5n7Pk+HuiMPHnKga1Tf17xcnyQiifPGxTWRJr5Tdot3XDKg
         fjgB3Ox9H+EOfGOFwDzrr4wudlI1ppPqeZxeL6jqEKrzuGN92b61UmONrukX4m3xUNKo
         Xw7bvkrwsBGyARIqGtmAHk5vfWCPmmurJW+AkbOCexCPdxHecU7n7mQijCqjEDkM/UYj
         DeGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762349104; x=1762953904;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TrSa4ghZQKzIuSKDGuaDiLF4L2HFeJmSO5cfB35UcUY=;
        b=vCgS57qUZo+K4wV47rhOy/OEZge9SxMxsVqOAConWv5gGLet9mQWhm2lXa0ozxaV/3
         b0oHlSe1JGw9pvy8qS1JWrDFMZWiuFsb5xBNI6bT52QVe96/Xc/b3ogn93rdJvoLW3R6
         MKcGRFBkUV+/Qhai1zhRAiZqEDDVKQikXVpeA+VGBeur9wWbnBo4W1GOg4IKHzTnMmhL
         4wd0+IqNuuNi7JO4Kl2glnuLg068iPBQkIC5JXmk8tu5+3JJAj+FqvDMGh8blEDWq37K
         htAdG2IJuqQuIgxGnqYt/33zj9CnxY6t1CaCoPWTsnClQBDqE8bq925iF1eb6+2wr2ZO
         FbQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKJkIHP1lpXiIW3TQxGa6HO1acYvts0A3axzouVJQuqkJGHk4ZisAliw8lSorsM/KNRF2hx7lnlktR@vger.kernel.org
X-Gm-Message-State: AOJu0Yzuy6y8FXfambNRLCDqzkRhBtmpIDHRbPGilR4IT1j+/0304Cav
	3nxTKgvILTTITJUf7UQmUzSNdTVimUEobfOnYXwRs/tw16v/u8T3LMO9EMrJ2LFrJkT62pfXF5h
	E4ogiMYUgAGyGAH/h3tfnNH4znpzR98VSuIK7l2CIpA==
X-Gm-Gg: ASbGncuXk80g0FdBJL+6Fh8o2+rx6KsXMd8vNVVf2wqnC1S6oW0pLtkDLbVGvf67uUt
	QZ1QrjMR+Hlhg8v5vzWeInGd6g+SmEEd8UV/G26UuqU6RV960wdoflg89QMGVlfU90wHfPigs9/
	IMMqR7I4k0XuGAyVQgmbf8dK+u8/qu/beZYBvVGqFt9mNFKr1GsWeFlI4RphjjTBuHV7JGfPxhv
	FMXQ13fjl0E7PTkuxRG/JbG+a93BRBTLu79P7ZHze+6EiTODSfp3kth8BiW/XC9ULkMm9uVjDEq
	3hnMjBws5UCOya32
X-Google-Smtp-Source: AGHT+IGm329bASqpQbGMOOPH57UpX4cZo4K9TUQscnkpdCvPtrdbzBWsruITlGGdHpntoOIdxoHEKnC7zRfEUlIFYrc=
X-Received: by 2002:a05:6512:61a1:b0:563:2efc:dea7 with SMTP id
 2adb3069b0e04-5943d7c9126mr1161326e87.34.1762349104205; Wed, 05 Nov 2025
 05:25:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105103607.393353-1-jelonek.jonas@gmail.com>
 <20251105103607.393353-3-jelonek.jonas@gmail.com> <CAMRc=MdQLN5s+MpkLUF2Ggc4vYo30zOXrA=8qkGmXvu7N3JjeA@mail.gmail.com>
 <12efb5b2-058e-4a9c-a45d-4b1b0ee350e7@gmail.com>
In-Reply-To: <12efb5b2-058e-4a9c-a45d-4b1b0ee350e7@gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 5 Nov 2025 14:24:52 +0100
X-Gm-Features: AWmQ_blr-G19bOwpzIuYCmZgKOMhVIdGSCKsTqCX17CAXGfOa6NJEbc7vw0NKFQ
Message-ID: <CAMRc=MehBmd+-z5PRQ04UTWVFYzn7U4=32kyvDCf4ZQ4iTqXhw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] gpio: add gpio-line-mux driver
To: Jonas Jelonek <jelonek.jonas@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Thomas Richard <thomas.richard@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 5, 2025 at 2:23=E2=80=AFPM Jonas Jelonek <jelonek.jonas@gmail.c=
om> wrote:
>
> Hi Bartosz,
>
> On 05.11.25 14:15, Bartosz Golaszewski wrote:
> > Hi Jonas!
> >
> > This looks good, I'm ready to queue it but I'm afraid the consumer
> > label "shared" will logically conflict with the work I'm doing on the
> > shared GPIO support[1] as the shared GPIOs will appear as proxy
> > devices containing the name "shared". Do you see any problem with
> > changing the label to "gpio-mux"? I can even change it myself when
> > applying.
>
> Another name is fine for me if it conflicts with your work, as long as th=
e name is obvious
> enough. Not sure about "gpio-mux" though. Maybe "muxed-gpio"?. Just let m=
e know
> what you think and if I should adjust it or you do.

Yes, "muxed-gpio" is good. I can change it myself when applying.

Bartosz

