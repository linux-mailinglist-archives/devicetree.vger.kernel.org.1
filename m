Return-Path: <devicetree+bounces-186697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 514F3ADCD9D
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 15:39:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED3837A5DDD
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 13:38:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AC822C030A;
	Tue, 17 Jun 2025 13:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WjmVhV/5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9C718DB35
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 13:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750167586; cv=none; b=nMv2CYkqkeoa28Ek9cV+LcEHIhfuCkwDsxl3bXIYWolhe8SZ+x01KARECalLsaImyI+7cKy0b/Jeo6DXdyrA536wW0/sXuQREiPhNYy04UjhBk1HxvofmYfQi6KxL8D7OyaajkU4oalWtmyJkJJsgQ0ezlNAg7agkGNwIVidRn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750167586; c=relaxed/simple;
	bh=vp5ElPdRI9yAUREsgQr9WDU9LpEpyG8VOZraVE5rMDI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rfVNfLnfnoA+p+joLhAjV8R8LytO/cfrP+nqdToHAlVo0gI6LYzmPqMIf2jywTNQuKtaf/2gU8MRBKMBfpLZnIc2T+ol2my/QY4dqNgNOHe+XTwf5v/ITXP9coXSReiLC4zuYRwWT4+RESGm4N/+3kcu4S/P+FUb19kSuPNYfQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WjmVhV/5; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-adf34d5e698so790944966b.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 06:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750167582; x=1750772382; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i1x+kjQtuWWPkhzJuQaZK9rYbi8hQSkC8V9GywlBQDE=;
        b=WjmVhV/5YBTjndFz7KicbENYFUch9M001lwDxHvUgxd7hdYtyiJg7S6Ji3AYvYrf4t
         W+19Z+7Aka6AMaKjzJkOjwnwDYqXIVOIjGUveZdCA65mF8tQ2tmwQxT+/tKbOlIxQ5d0
         aMAzakbGLiOWEY2l5LtHuBAuia2q8XsBvWH1IL/mXmjCgJaX2CO3vD7XJUj7sV6BEEoM
         z3+wDIvgwfIi5i6ngTLoEws6E3JCeUwmmYibOsL8iluS1XervbY0F9eaGC5wngWvLFv8
         hIVMa25l6gU0zLlah2cHsIeqgxg+GoJ1vClPmA7EwYRAyM6HuSejn94EVepr6CLLrdDk
         xasA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750167582; x=1750772382;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i1x+kjQtuWWPkhzJuQaZK9rYbi8hQSkC8V9GywlBQDE=;
        b=OXZjZhZQSfQ3QZoHvSKHKoG6LiGCujGm+h+FMtBk8/cZ16+sOkWMoYrYKnggvfdgHk
         W+jbZxZiMXIPCSq2jpdv1D7JNw2nFJ8pigXqlPYU0pjllCKU8piCcZUAnU1ABCjKxbon
         PkeIR3s559dozwoWgCoOnYUfglEdUHCzcfncMlPd+XC48TI5/H+sncJjmSqB2CQTxeG6
         3LaQPW10obAjUYzHN+Cb1C+erLYcNEKedDN76XgXws/lAmXEtwhikKtf3pRU/vJHnx2y
         kJPuoXNAm8n1hf2jW0uTWiRwwvNikzPX0SkfK0ZD9vOlCk4P0dQykijLl+RaoxBy0kMO
         fOKg==
X-Forwarded-Encrypted: i=1; AJvYcCVSvem79aUXIG/DjgOOq5a8Tebl1uDzKMrDHdMxlZwYT8rubfnWeKNkbUR9I4f8+63fB0jCqLa2RtRB@vger.kernel.org
X-Gm-Message-State: AOJu0YyslKPl6JCZwKvWhEdwyTuW1+qPwj6MvhtEKSFOoKpqY7foLn9k
	lKcjTWGkKVaD8IaHYVjaaffy0RFCeGMgrWLjPusXheq/fJnU3jZ8kY6+7UogfYROV5lH96scb2j
	pDP9ZZA+PWlF6uI+/01IboiBgvzjYux8=
X-Gm-Gg: ASbGnctxik5uerQftyBnDZOQVWz3L91Wg02Blb4J9FB0cLxKlMrzUHChIhmTkZWcxhI
	Yg0eVnv8dvI1XvGrdp4w2XNPKCwvnULHnAkBIRHKn8bO7EOOtMj1cnxXto/BvtcbmdWSgQTQWwE
	tbGrloZLMaIGHK1HvjCt7sV13zr4o8NHrYtruFWdmg2FU4
X-Google-Smtp-Source: AGHT+IFO6smoLItzBchBbBk/AtdlI0WLp+AaakaaylNpbnmGilF7qiNt4755x4sVOLYK4R6ajUmAe7wsLeK4V6DiJ6c=
X-Received: by 2002:a17:906:c143:b0:ad5:2d5d:2069 with SMTP id
 a640c23a62f3a-adf9c458189mr1348680666b.13.1750167582151; Tue, 17 Jun 2025
 06:39:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CADsqogAs1DCSJfkAkj_mwMwS--WMFPzvmWLonuiCe3XaNABVxA@mail.gmail.com>
 <CAMuHMdXVEOBRU+pzcmRXq7YJXhYnhPjK72Oh31y=n33VZR2JKw@mail.gmail.com> <CAHp75Vd8U-zJ1b+Atpr=8WXhPpB9sFcYJsmC0aStiRKSZWYKBg@mail.gmail.com>
In-Reply-To: <CAHp75Vd8U-zJ1b+Atpr=8WXhPpB9sFcYJsmC0aStiRKSZWYKBg@mail.gmail.com>
From: Jean-Francois Lessard <jefflessard3@gmail.com>
Date: Tue, 17 Jun 2025 09:39:30 -0400
X-Gm-Features: AX0GCFuRNetSubvSdj8V-KJi8twt1seqz3JkjHc6Y_uGYIcpwwyYKO7rKT8I5yY
Message-ID: <CADsqogCfvR7b02HowsbZ5qkhCOi92TGkJMeCn_sFwn8=KbaWGw@mail.gmail.com>
Subject: Re: [RFC][DT] Guidance on device tree property prefix for
 TM16XX-class LED display controllers
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, devicetree@vger.kernel.org, andy@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andy, hi Geert,

Thank you both for your feedback, it=E2=80=99s much appreciated. I=E2=80=99=
d like to
clarify a few points that I hope will help explain the design choice
behind the proposed DT properties.

While these LED controllers are related to traditional 7-segment
displays, what I=E2=80=99m trying to describe in DT is somewhat distinct. T=
he
controllers manage a grid (matrix) of outputs, where =E2=80=9Cgrids=E2=80=
=9D represent
rows and =E2=80=9Csegments=E2=80=9D represent columns. This follows the ter=
minology
used in the controller datasheets. The 'segment-mapping' property is
not about logical digit-to-segment mappings (which the driver handles
through 'map_to_7segment.h' and similar helpers), but about the
physical wiring between the controller=E2=80=99s matrix outputs and the act=
ual
display elements on a specific board.

In other words, these properties describe board-specific hardware
wiring: how the controller=E2=80=99s generic matrix connects to the
manufacturer=E2=80=99s particular display layout. This varies significantly
between devices. Some boards wire grids to digits and segments to
segments; others wire grids or segments to icons. Some even transpose
the matrix so that grids drive segments and segments drive digits.
That=E2=80=99s why I proposed the optional 'transposed' property to switch =
the
matrix rows and columns in software to match the board=E2=80=99s wiring.

Importantly, the 'compatible' string already maps to the specific
controller type and its protocol, but it can=E2=80=99t capture the board-le=
vel
wiring configuration. The same controller model is reused in many
different boards with different wiring. For example, across 74 display
configurations I=E2=80=99ve looked at, there are 39 distinct combinations o=
f
controller type, digit grids, segment mappings, and icon assignments.
There=E2=80=99s no standard wiring for a given controller chip that the dri=
ver
could infer from 'compatible' alone.

That=E2=80=99s why I felt it was appropriate to describe this board-specifi=
c
wiring in DT, keeping the driver generic and agnostic of any
particular board layout, while letting each board describe its wiring
explicitly.

I hope this clarifies the motivation. I want to make sure this
approach aligns with upstream expectations before preparing formal
patches. Please let me know if this seems like a reasonable direction
or if you=E2=80=99d recommend a different solution.

Thanks again for your time and guidance.

Best regards,
Jean-Fran=C3=A7ois

On Tue, Jun 17, 2025 at 7:58=E2=80=AFAM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Tue, Jun 17, 2025 at 12:43=E2=80=AFPM Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
> > On Mon, 16 Jun 2025 at 22:06, Jean-Francois Lessard
> > <jefflessard3@gmail.com> wrote:
>
> > > I=E2=80=99m working on preparing a new driver and device tree binding=
 for
> > > auxiliary LED display controllers of the TM16XX class, and I=E2=80=99=
d like to
> > > request guidance on property naming conventions before submitting a
> > > formal patch series.
> > >
> > > The driver (tentatively named tm16xx) supports LED controller chips
> > > that share a common hardware design and programming model, produced b=
y
> > > multiple vendors, including:
> > > - Titan Micro Electronics: TM1618, TM1620, TM1628, TM1650
> > > - FUDA HISI Microelectronics: FD620, FD628, FD650, FD655, FD6551
> > > - Princeton Technology Corp: PT6964
> > > - HBS: HBS658
> > >
> > > These devices are functionally compatible and appear in various
> > > consumer and embedded hardware (e.g., Android TV boxes) to control
> > > both 7-segment displays and custom icons that may look like this:
> > >
> > >           ---    ---       ---    ---
> > >  [WIFI]  |   |  |   |  -  |   |  |   |  [USB]  [PLAY]
> > >           ---    ---       ---    ---
> > >  [LAN]   |   |  |   |  -  |   |  |   |  [BT]   [PAUSE]
> > >           ---    ---       ---    ---
> > >
> > > My current binding defines properties describing hardware layout, for=
 example:
> > >
> > >     tm16xx,digits =3D /bits/ 8 <0 1 2 3>;
> > >     tm16xx,segment-mapping =3D /bits/ 8 <0 1 2 3 4 5 6>;
> > >     tm16xx,transposed;
> > >
> > > These describe hardware characteristics (grid/digit arrangement,
> > > segment mapping, transposed display output) that apply to this class
> > > of compatible hardware, regardless of vendor.
> >
> > Personally, I am a bit reluctant to try to describe the segment mapping
> > in DT, as it can become rather cumbersome.
>
> Yes, the segment mapping is implied already by the mapping table for
> the characters and...
>
> > The alternative is to use
> > a device-specific compatible value, and put the mapping in the driver,
> > like I did for the Adafruit 7 and 14 segment Featherwing displays in
> > drivers/auxdisplay/ht16k33.c.
>
> ...as Geert said, if required, can be bound to the compatible string
> and hardcoded in the driver.
>
> The problem is, that often segment mapping is PCB level of the wiring
> and to be honest I dunno how to distinguish such a scenario easily as
> one would need to check compatible string for the component _and_ for
> the board.
>
> --
> With Best Regards,
> Andy Shevchenko

