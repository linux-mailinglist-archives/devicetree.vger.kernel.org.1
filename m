Return-Path: <devicetree+bounces-186840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C29ADDB8F
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 20:41:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BD523A4887
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 18:41:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 591A82EF9A2;
	Tue, 17 Jun 2025 18:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VHDV1Wak"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5782EF9A0
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 18:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750185683; cv=none; b=Ra14z/ofbht0TRm2Mx3RiZB+AHUOU2e/ff2t+5JqgFAbqTc2GeEuoyrLljMUXkBwndoWLihurIgRpCfnTlYYsP9h4H48ysno+Da45QhuaNkz99vbZW8nAdqgHhtzd06l8DV+sXC1pf+x0YYUvq2UEBi+aF5UO5WGtDSr/+nEHJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750185683; c=relaxed/simple;
	bh=4F2+pAeVGLLKDh/8BHZGs/Pr3KU0RMbuhrCiHba9csA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bpyfk7kbBg1wom5rr0CQytS+buaOBtET/FEPKXS57BgDGFBN9Bms90Q2SZ3YhmWE4y1JLk7Y3TES9guCAxy1MU9ZXVfjckAJlePV5S6+0YZMhsVx9Akm1plbYXYGh7CbSuOx/clvOq+lEL31J2r6CETdkhfoMhWwq6Ygn9/JYBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VHDV1Wak; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ad8a8da2376so1001156266b.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750185680; x=1750790480; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E75tmwHMAYTb44aFXv+MbuJROdCb8dg5pahllHi6I7w=;
        b=VHDV1Wak5HG4TGQLyQtN2dqNWo2BN66kyO8O474y8DTxZdEpgqP8I+Ak1mstKIl980
         a614QA5oIPZUZ5EBG1BbCl0ARS5ZWSp5uhTIZgUeEMPtsO66eqfpeNP8QiO22TFRuC7e
         32CwTtMM2NRlX+wcicqxo4WsyBVtvQSabwzIn3XuPc2LSNrg3J9RRU8YhAVG5nI6UaQk
         gTdstZWgYVL6c/5MpKZ6Ko0vV8GcANM7SyAVWyLj7nBs9+IThmdS/ShrXXooaSbdIWYM
         pnthX86QJ0yr5j0wuypyeNa+pbn4nW+soW6rKnonI/ox9hzqJeAMozqXEngdi7potIM7
         C44A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750185680; x=1750790480;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E75tmwHMAYTb44aFXv+MbuJROdCb8dg5pahllHi6I7w=;
        b=AC2k5HJye33FVKLgq126dvcWlQFQLIgtYWFul1+u6hDUqMKArPktJG+8B2U4A5GOv+
         p76Qrpr9QJRxPwmlGXWmYZzagEnKdEGzfRS52YAYxbXvqKlPenXdNulqjraksU96XGs5
         gnsfbHQfwk2Y0Plba/dz4TolIBTToGrZs02Cg1Ab4V626/4ZQG3nXXGOA9XJCHdTAkkk
         C/0MYoWrNJiO1YaaDPDe1yWmmOgcIQJZipSw+F6eZQQ4sMwjLtn2Vi0lRq4J6ekqpoVJ
         95vg5f6YdcoP+dAGS1rIc2BkU4dHLOuvIdZCh2DYdAWet3+fM4y8489xm/cFzw1kiDws
         6Lgw==
X-Forwarded-Encrypted: i=1; AJvYcCXLieKoXKSyr7TyFLrpmbOmNkkiLPEwcSfgbYbC8O+4Y7jx42/Yui/NVVcIvNsFnNkeF7wjGKiP/Htk@vger.kernel.org
X-Gm-Message-State: AOJu0YwVjG4Md5Gk8x0hWGQf5vIUTHfWNokbjyniZuYZsGiHG7wX5HeW
	7SMfTt3MRIWreI54bLWS4OWNQkr+GvMHp1l99Xvb/rhY4OOoCiIy6cZ8RMI/oaA2EWNjuxmwVK4
	zXCaxQpidvFrP0nMEvTqltVEOor0glho=
X-Gm-Gg: ASbGncvKXz+Y31FCRTjPDRinACnbeQJyaVw+x/OjJAzi9P3YOoz30iOuI4qBBAJkeC3
	2vDjKM3PLZ+iQLf4mMd+A6Vrl4Ul6zNv/BdPXwYjQo5Qt+D5akHznYSWyKmN+WQ2RsS42uleVtH
	OPBln/faZubb+445aEVEANPOWOTC/LWOVIHg4835dTOiA=
X-Google-Smtp-Source: AGHT+IG35vQW5TNIz/uRQ6oM+HRIzC+IOp+/0Jmiy71hn7DTsL8kRnUzx0SevxvokWBGsP+wyxQ/HrUQBbz+WF29Wr0=
X-Received: by 2002:a17:907:7fab:b0:ade:31eb:66f7 with SMTP id
 a640c23a62f3a-adfad53360amr1528195266b.58.1750185679368; Tue, 17 Jun 2025
 11:41:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CADsqogAs1DCSJfkAkj_mwMwS--WMFPzvmWLonuiCe3XaNABVxA@mail.gmail.com>
 <CAMuHMdXVEOBRU+pzcmRXq7YJXhYnhPjK72Oh31y=n33VZR2JKw@mail.gmail.com>
 <CAHp75Vd8U-zJ1b+Atpr=8WXhPpB9sFcYJsmC0aStiRKSZWYKBg@mail.gmail.com> <CADsqogCfvR7b02HowsbZ5qkhCOi92TGkJMeCn_sFwn8=KbaWGw@mail.gmail.com>
In-Reply-To: <CADsqogCfvR7b02HowsbZ5qkhCOi92TGkJMeCn_sFwn8=KbaWGw@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 17 Jun 2025 21:40:42 +0300
X-Gm-Features: AX0GCFuRJqVfjKcwJ4xwmewqTPMFYb46GwUBxdN0Uo-IaYJ4hFGyIes7KY1Pv7M
Message-ID: <CAHp75VewPpAy3JeOGt-uotiir7=hfXWvA=-h4Hu5fA-8jw7mdw@mail.gmail.com>
Subject: Re: [RFC][DT] Guidance on device tree property prefix for
 TM16XX-class LED display controllers
To: Jean-Francois Lessard <jefflessard3@gmail.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, devicetree@vger.kernel.org, andy@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 17, 2025 at 4:39=E2=80=AFPM Jean-Francois Lessard
<jefflessard3@gmail.com> wrote:

Please, stop top-posting!

> Thank you both for your feedback, it=E2=80=99s much appreciated. I=E2=80=
=99d like to
> clarify a few points that I hope will help explain the design choice
> behind the proposed DT properties.
>
> While these LED controllers are related to traditional 7-segment
> displays, what I=E2=80=99m trying to describe in DT is somewhat distinct.=
 The
> controllers manage a grid (matrix) of outputs, where =E2=80=9Cgrids=E2=80=
=9D represent
> rows and =E2=80=9Csegments=E2=80=9D represent columns. This follows the t=
erminology
> used in the controller datasheets. The 'segment-mapping' property is
> not about logical digit-to-segment mappings (which the driver handles
> through 'map_to_7segment.h' and similar helpers), but about the
> physical wiring between the controller=E2=80=99s matrix outputs and the a=
ctual
> display elements on a specific board.
>
> In other words, these properties describe board-specific hardware
> wiring: how the controller=E2=80=99s generic matrix connects to the
> manufacturer=E2=80=99s particular display layout. This varies significant=
ly
> between devices. Some boards wire grids to digits and segments to
> segments; others wire grids or segments to icons. Some even transpose
> the matrix so that grids drive segments and segments drive digits.
> That=E2=80=99s why I proposed the optional 'transposed' property to switc=
h the
> matrix rows and columns in software to match the board=E2=80=99s wiring.
>
> Importantly, the 'compatible' string already maps to the specific
> controller type and its protocol, but it can=E2=80=99t capture the board-=
level
> wiring configuration. The same controller model is reused in many
> different boards with different wiring. For example, across 74 display
> configurations I=E2=80=99ve looked at, there are 39 distinct combinations=
 of
> controller type, digit grids, segment mappings, and icon assignments.
> There=E2=80=99s no standard wiring for a given controller chip that the d=
river
> could infer from 'compatible' alone.
>
> That=E2=80=99s why I felt it was appropriate to describe this board-speci=
fic
> wiring in DT, keeping the driver generic and agnostic of any
> particular board layout, while letting each board describe its wiring
> explicitly.
>
> I hope this clarifies the motivation. I want to make sure this
> approach aligns with upstream expectations before preparing formal
> patches. Please let me know if this seems like a reasonable direction
> or if you=E2=80=99d recommend a different solution.
>
> Thanks again for your time and guidance.

You need to talk to the DT people for this. I'm not an expert, but as
I said it feels (and you confirmed it) as PCB level of the
description. I believe it may be part of DT, but I can't tell you how.

> On Tue, Jun 17, 2025 at 7:58=E2=80=AFAM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> >
> > On Tue, Jun 17, 2025 at 12:43=E2=80=AFPM Geert Uytterhoeven
> > <geert@linux-m68k.org> wrote:
> > > On Mon, 16 Jun 2025 at 22:06, Jean-Francois Lessard
> > > <jefflessard3@gmail.com> wrote:
> >
> > > > I=E2=80=99m working on preparing a new driver and device tree bindi=
ng for
> > > > auxiliary LED display controllers of the TM16XX class, and I=E2=80=
=99d like to
> > > > request guidance on property naming conventions before submitting a
> > > > formal patch series.
> > > >
> > > > The driver (tentatively named tm16xx) supports LED controller chips
> > > > that share a common hardware design and programming model, produced=
 by
> > > > multiple vendors, including:
> > > > - Titan Micro Electronics: TM1618, TM1620, TM1628, TM1650
> > > > - FUDA HISI Microelectronics: FD620, FD628, FD650, FD655, FD6551
> > > > - Princeton Technology Corp: PT6964
> > > > - HBS: HBS658
> > > >
> > > > These devices are functionally compatible and appear in various
> > > > consumer and embedded hardware (e.g., Android TV boxes) to control
> > > > both 7-segment displays and custom icons that may look like this:
> > > >
> > > >           ---    ---       ---    ---
> > > >  [WIFI]  |   |  |   |  -  |   |  |   |  [USB]  [PLAY]
> > > >           ---    ---       ---    ---
> > > >  [LAN]   |   |  |   |  -  |   |  |   |  [BT]   [PAUSE]
> > > >           ---    ---       ---    ---
> > > >
> > > > My current binding defines properties describing hardware layout, f=
or example:
> > > >
> > > >     tm16xx,digits =3D /bits/ 8 <0 1 2 3>;
> > > >     tm16xx,segment-mapping =3D /bits/ 8 <0 1 2 3 4 5 6>;
> > > >     tm16xx,transposed;
> > > >
> > > > These describe hardware characteristics (grid/digit arrangement,
> > > > segment mapping, transposed display output) that apply to this clas=
s
> > > > of compatible hardware, regardless of vendor.
> > >
> > > Personally, I am a bit reluctant to try to describe the segment mappi=
ng
> > > in DT, as it can become rather cumbersome.
> >
> > Yes, the segment mapping is implied already by the mapping table for
> > the characters and...
> >
> > > The alternative is to use
> > > a device-specific compatible value, and put the mapping in the driver=
,
> > > like I did for the Adafruit 7 and 14 segment Featherwing displays in
> > > drivers/auxdisplay/ht16k33.c.
> >
> > ...as Geert said, if required, can be bound to the compatible string
> > and hardcoded in the driver.
> >
> > The problem is, that often segment mapping is PCB level of the wiring
> > and to be honest I dunno how to distinguish such a scenario easily as
> > one would need to check compatible string for the component _and_ for
> > the board.

--=20
With Best Regards,
Andy Shevchenko

