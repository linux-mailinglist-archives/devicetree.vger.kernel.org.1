Return-Path: <devicetree+bounces-186443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2E2ADBD60
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 01:07:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04709169A48
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 23:07:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 976F5223DF6;
	Mon, 16 Jun 2025 23:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JB7QoIWt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F4922616C
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 23:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750115271; cv=none; b=kSpoMJOdaeE+WCbFOOw49Ta14WEn1c+z49SGJQYlCB6Kr7fFZkk9ZHWciA2scqjIKWg4b3YoahmWvCIrAPG7ubuDdqF4Kmc60TJfCyWzBy0AgxuetSQTR68RddYM6ZIG4m6ytpcPgmXBspCOEWkj+3CClFiN+n2danVMxWUHzqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750115271; c=relaxed/simple;
	bh=S2KjDfuvJk7RAVqaBIIafu+yLF/UClohLtXe7bra3Ys=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KC8IqHUZbLMZwh10nWhVu3CXefQXEkCgl4KPGzpviRQc7Z28SOko1Vd2AvgX91q2ZGHWB7606S5pxapynYxJx/SygJAN8k3DMwr5eWcX4ydgq6WIe8SY52H1w6LaPREZz7B/qgNF9ardJDuHLXdqco+PyikKYt0PoF4YwYfAyWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JB7QoIWt; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ade48b24c97so792821766b.2
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 16:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750115268; x=1750720068; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5R4pSmLptT/Kb44nIyS+WzGZxck97g8OPoP+XOYYK8A=;
        b=JB7QoIWtaUhmnQlYINPZPhLKRa7OuBb1f4ccl/YzI+oT3FawqZhXm4lxFdIxtu3XI+
         ITxTkVXMCXdrKG3pWghpHeZXeCeQDR7G9y7DYGcs7HFqeRk0t5l7qEU6p2TUG8lwU7hY
         rXVEuYO0D/69x0wyYv2k+JSJ8qSsk1IQpgjgee2e0mmJmAgJjUx5OhECmcUHIcgPeVFX
         V6w4YaAfh+KwJ4zAb3HqzZKJ5hxzJLMmT15kzguWYMj1gcbCXBNczFJD3PpIuRHtOXs5
         l9ExaFZoHXnkv1aXJ4Fxi+NAPN91CRtVSndtSggMNH20zZZ0pow8VuZ9Pf/HXDGcKO1W
         Azxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750115268; x=1750720068;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5R4pSmLptT/Kb44nIyS+WzGZxck97g8OPoP+XOYYK8A=;
        b=KAeuga33lmL+gXFwiVstsOxt5JpAx0elE4MtevCb874vvYJdScFhhL0EO9kTQzUgrY
         +879YbReBWM7bmlXbvnLHGloKOo6FjBHT882EmHqd/lWKAyU8xTb3VKmCR84Ci0ocFi8
         6q/i2oMR7Cu6ZNoQSEahNUVchk5Kw1hxwyRtC0ZlLBtRvBlr/xDnYkIhD8QZvdMMxCSK
         yMrFghZ1OPEABwBy5I4K+KNnLwQd9O3Oq4ndg+OpGUuazp+XghSUtgiQeqBjvt7fVBaf
         /XrDMJLw8jd0BgA6HHUUm/bDVSXDgzXk7Cv5MAn+QZDWPu5o8vGjaN1ZML4JQDNxnKjK
         aSHQ==
X-Gm-Message-State: AOJu0Yx0MC74eeAoO2baTlKGpd2mUaSWcNabngQ/Z2qAzYQwUBf7eNlF
	bdLKd1nNrlT4c1eOOgA+LybEFwqsK6Sk3ipvi33o2lpQ4KD29GJu3ivwIx+qwQY5w56GgvrKOP9
	V6JIC7seKOjsi7vWHv155shVNB/IPtnCqZW4kjo4=
X-Gm-Gg: ASbGncvhAXonvd69AF2A01R46AjPGf4dv6yaB2fFuDEr1lVx3NnV1o0wqN6yN6AkWOs
	ZoCLZ4ISz50MEIzAVslzMdP97d3OfZt6OrNH3WKWfnAIGu/hlld2kntJ7rsbOdrI0NAwJE9R4d/
	g8V0hbke/uHvkl50K2Q8ub//sdx944K1YUqQjWKH9Yd4a3G8Hns8d4BxE=
X-Google-Smtp-Source: AGHT+IHm6auPEJtMnkU94uLPjc6NIM7ZkOvToQZS7Dmz7GpMYkKHVnKMxU6jbo9nW8qJiTLnohgynL5ysjAO1JOMd44=
X-Received: by 2002:a17:907:7e89:b0:adb:e08:5e77 with SMTP id
 a640c23a62f3a-adfad30ee96mr1099198166b.20.1750115267557; Mon, 16 Jun 2025
 16:07:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CADsqogAs1DCSJfkAkj_mwMwS--WMFPzvmWLonuiCe3XaNABVxA@mail.gmail.com>
 <CAHp75Veq5Tms2X2j=hNuBt84mYrfKgYcbZpOVn49+7PhmeN+zw@mail.gmail.com>
In-Reply-To: <CAHp75Veq5Tms2X2j=hNuBt84mYrfKgYcbZpOVn49+7PhmeN+zw@mail.gmail.com>
From: Jean-Francois Lessard <jefflessard3@gmail.com>
Date: Mon, 16 Jun 2025 19:07:36 -0400
X-Gm-Features: AX0GCFsIc-MGILg8KeZNgfYod9hn49wkk-E6KO7NXpnEVVPqFoFQ8Tetxz9y1jc
Message-ID: <CADsqogBYK1B1bO8RBYpUWWq6sX7kcBspZbtOVpOVFT+jMqDmRA@mail.gmail.com>
Subject: Re: [RFC][DT] Guidance on device tree property prefix for
 TM16XX-class LED display controllers
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: devicetree@vger.kernel.org, andy@kernel.org, geert@linux-m68k.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> So, have you looked at auxdisplay subsystem? It's mostly for 7-segment
> displays and has some common libraries (and interfaces) for that.

Yes, I=E2=80=99ve looked at the auxdisplay subsystem; that=E2=80=99s what I=
=E2=80=99m
targeting. While these chips are LED controllers, in practice they=E2=80=99=
re
used by device manufacturers as auxiliary displays. I=E2=80=99ve implemente=
d
7-segment mapping using map_to_7segment.h as recommended, including
exposing map_seg7 via DEVICE_ATTR.

> Naming for the vendor or for the properties? With applying it to
> auxdisplay, some of the properties will be available without vendor
> prefix.

Regarding the property prefix: I meant the prefix for the properties.
I didn=E2=80=99t find any existing auxdisplay properties that apply directl=
y.
The closest is segment-gpios, which doesn=E2=80=99t match this hardware. My
understanding was that only generic properties (e.g., segment-gpios)
go without a prefix, and that hardware-specific ones should have a
vendor or class prefix. Is the preference within auxdisplay to drop
prefixes even for properties that describe specific hardware
characteristics (like digit grid or segment indices)?

> The rest we can discuss when we see patches, I think.

Any guidance on this before I prepare patches would be very helpful.

FYI you can find the current draft of the driver and binding at:
https://github.com/jefflessard/tm16xx-display
(README.md, tm16xx.c, and
Documentation/devicetree/bindings/auxdisplay/tm16xx.yaml)
I=E2=80=99ll be happy to send proper patches once I know the direction for =
the
property naming.

Thanks again for your time.

Le lun. 16 juin 2025, 16 h 27, Andy Shevchenko
<andy.shevchenko@gmail.com> a =C3=A9crit :
>
> On Mon, Jun 16, 2025 at 11:06=E2=80=AFPM Jean-Francois Lessard
> <jefflessard3@gmail.com> wrote:
> >
> > Hi all,
> >
> > I=E2=80=99m working on preparing a new driver and device tree binding f=
or
> > auxiliary LED display controllers of the TM16XX class, and I=E2=80=99d =
like to
> > request guidance on property naming conventions before submitting a
> > formal patch series.
> >
> > The driver (tentatively named tm16xx) supports LED controller chips
> > that share a common hardware design and programming model, produced by
> > multiple vendors, including:
> > - Titan Micro Electronics: TM1618, TM1620, TM1628, TM1650
> > - FUDA HISI Microelectronics: FD620, FD628, FD650, FD655, FD6551
> > - Princeton Technology Corp: PT6964
> > - HBS: HBS658
> >
> > These devices are functionally compatible and appear in various
> > consumer and embedded hardware (e.g., Android TV boxes) to control
> > both 7-segment displays and custom icons that may look like this:
> >
> >           ---    ---       ---    ---
> >  [WIFI]  |   |  |   |  -  |   |  |   |  [USB]  [PLAY]
> >           ---    ---       ---    ---
> >  [LAN]   |   |  |   |  -  |   |  |   |  [BT]   [PAUSE]
> >           ---    ---       ---    ---
>
> So, have you looked at auxdisplay subsystem? It's mostly for 7-segment
> displays and has some common libraries (and interfaces) for that.
>
> > My current binding defines properties describing hardware layout, for e=
xample:
> >
> >     tm16xx,digits =3D /bits/ 8 <0 1 2 3>;
> >     tm16xx,segment-mapping =3D /bits/ 8 <0 1 2 3 4 5 6>;
> >     tm16xx,transposed;
> >
> > These describe hardware characteristics (grid/digit arrangement,
> > segment mapping, transposed display output) that apply to this class
> > of compatible hardware, regardless of vendor.
> >
> > My question: Given that these properties describe a common hardware
> > class (rather than a specific vendor design or generic LED display
> > behavior), what is the preferred naming convention?
>
> Naming for the vendor or for the properties? With applying it to
> auxdisplay, some of the properties will be available without vendor
> prefix.
>
> > 1. Should I retain a prefix like tm16xx, to represent this hardware
> > class (as it is the most recognized functional family name)?
> >
> > 2. Should I instead pick an original vendor=E2=80=99s prefix (e.g., tit=
anmec,)
> > even though other vendors produce compatible chips?
> >
> > 3. Is there another convention recommended for hardware classes
> > produced by multiple vendors with compatible designs?
> >
> > I want to ensure that the binding follows the preferred conventions
> > for upstream acceptance and clean DT design.
> >
> > Any guidance or suggestions would be greatly appreciated!
>
> The rest we can discuss when we see patches, I think.
>
> --
> With Best Regards,
> Andy Shevchenko

