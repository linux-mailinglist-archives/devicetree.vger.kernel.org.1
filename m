Return-Path: <devicetree+bounces-186628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C3CADCA2F
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 13:58:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31EF03BA982
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A43862E06E8;
	Tue, 17 Jun 2025 11:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VBJEGoR8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EB52E06DA
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750161500; cv=none; b=PcTJXJnVSlGAlZBA2Gd/xwYUNSkiRjANZndQWP50STcdr54VZFUeKwdCsiWmKfOBxgcqfL3yX4N+yHYbvhdDWukuH7XhxcE4aoAH5GZLvTiqb3/lyplwcrREyh7+zqxaKpiG/+S8ZeOfzMrhYzTBovRC1mCz73hziCC3PMXPNk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750161500; c=relaxed/simple;
	bh=+uyLKm9hSUfEzGUyKtnEgciW/igj3ZiBhyjPInVlGhw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YnMeZxAG3f/2nCJNywVFyCgDqySR1UTtX8bVqRjIsPWNJVEQSjWxOlEDY8ydVmuSzNBC9tSemXqzlHqHos4sCt8g98oRk4ewO5bmQbIH1fFU+ELenMvMvkes9A5dvAzlhZeLSVH/h/G3QY2Oq7MMHK4j+xrMGCiHacxlR5S/uMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VBJEGoR8; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6097de2852aso1782330a12.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 04:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750161497; x=1750766297; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=keaSv+pR2b50s5ZT4OSlONeLUOBJ7yafZmfnmaE00lo=;
        b=VBJEGoR87l1fhlS8pGEA4sVc6aPeK9QD7v8Mm9k86Ng3k1Taw7rmki9oCzNctSYdE0
         XAVhH/91afOoWHW1IRQIxwbYidjXeQktVJRAXyo8Wq1ElSZiFJ/VqzfABytiH/x/8Op+
         tHX/z93nEavwQOCuwzOPDP2hHdirMeLh/SqwbGqYEhXinFABYqMSIFdQZCLIRjn8PWic
         H/fVSSPe7xWxvHZ9VJdJM7ZUN120eYLvfL9vZuu7Lp19SmkprYi2HOHBIzdgV3k/rVTC
         4butSLvtu3M/hoJwg8EbO/47heL5zf9MrwwA+SMR25mM64KqHXpQ12D7gzKse9UITMFC
         /4Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750161497; x=1750766297;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=keaSv+pR2b50s5ZT4OSlONeLUOBJ7yafZmfnmaE00lo=;
        b=NPyVVYwrtzs1yt6EYXtp/DEwHeVr05nbGC9x+YpHfoXPv4Y4/wFBM5xTTn29tcg5S7
         B9rp2gOIgZlqxFv6U1jxI1x4B//+eEGHW1gzhn9MaeOkv1Ps+VB/VIU6psnQR3uxsNDj
         B35gVSFCFzDjHg653cpn2ZoT/pqfU0uJWBv72Rsrv7lqb8GPBF/y99plTJ3C2KdYzK28
         hWSLjpMOmEWPKKiGm0A2XlghSrngpSqmziQoGdvuT3+Lt/S0WM8NO41Qff0WnoHVCnr7
         eJTsQJUZ3uYmQHnUa7g83bR23kNTjZGSjmrAWpjguAP+d1DbSo5+pO88qKwx7JQV2264
         7ggQ==
X-Forwarded-Encrypted: i=1; AJvYcCUoj33gdpXix0p8Sg0Z9OkSOMTH0aj3kSaHQb5nGbMLKE7ZjIfUsvspnbaBsMQYftmlE4mKvj7WIgSC@vger.kernel.org
X-Gm-Message-State: AOJu0YyIZdyntfc4HXzte2eXw78HCDUmcLjwObgVJp4CQFE1mpVlW49M
	F+5A94wqvdH4jigL3AEFaL5mvTqV1zIKVVWKq7MNr2KsEESHufDbFlQERnoJj6mXRAz9+1KV56K
	qly/GulHDwlJz0cIHU6YT3lZ2QS7OmKg=
X-Gm-Gg: ASbGncvDl7+G3r6ddx5gRTn2lorBQvKPfCmKovkiPVz6WinInfPwzw7Vj6RDXte9Ob7
	SUJSg0+oLGeggViSz38sYoZSWIzyFfkD5H57Syh015NM15/0RW6PZpB/lA3jY1QvhGkzGC9SHVE
	vIzi4jtw+bKwHSuyo2uFcKgwu9SJLyWd7x/iD7Cbr4Lavqow==
X-Google-Smtp-Source: AGHT+IHPTkScUJLvVuKhNiG5y+ImEDicfyiqzKZH+OeWEhPv8WuYXvFQQIY+76XSAzEZMBjVUs1Ak9s3l2r5X4gqMMk=
X-Received: by 2002:a17:907:1c8c:b0:ad8:87a1:4da8 with SMTP id
 a640c23a62f3a-adfad326befmr1275205466b.14.1750161496858; Tue, 17 Jun 2025
 04:58:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CADsqogAs1DCSJfkAkj_mwMwS--WMFPzvmWLonuiCe3XaNABVxA@mail.gmail.com>
 <CAMuHMdXVEOBRU+pzcmRXq7YJXhYnhPjK72Oh31y=n33VZR2JKw@mail.gmail.com>
In-Reply-To: <CAMuHMdXVEOBRU+pzcmRXq7YJXhYnhPjK72Oh31y=n33VZR2JKw@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 17 Jun 2025 14:57:39 +0300
X-Gm-Features: AX0GCFsdFLBNVzNe3x2xNIT7VOWe3cMexLSS_pxt9AfzAxnBU2UWiwrC1vW6nyw
Message-ID: <CAHp75Vd8U-zJ1b+Atpr=8WXhPpB9sFcYJsmC0aStiRKSZWYKBg@mail.gmail.com>
Subject: Re: [RFC][DT] Guidance on device tree property prefix for
 TM16XX-class LED display controllers
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Jean-Francois Lessard <jefflessard3@gmail.com>, devicetree@vger.kernel.org, andy@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 17, 2025 at 12:43=E2=80=AFPM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
> On Mon, 16 Jun 2025 at 22:06, Jean-Francois Lessard
> <jefflessard3@gmail.com> wrote:

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
> >
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
>
> Personally, I am a bit reluctant to try to describe the segment mapping
> in DT, as it can become rather cumbersome.

Yes, the segment mapping is implied already by the mapping table for
the characters and...

> The alternative is to use
> a device-specific compatible value, and put the mapping in the driver,
> like I did for the Adafruit 7 and 14 segment Featherwing displays in
> drivers/auxdisplay/ht16k33.c.

...as Geert said, if required, can be bound to the compatible string
and hardcoded in the driver.

The problem is, that often segment mapping is PCB level of the wiring
and to be honest I dunno how to distinguish such a scenario easily as
one would need to check compatible string for the component _and_ for
the board.

--=20
With Best Regards,
Andy Shevchenko

