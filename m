Return-Path: <devicetree+bounces-136632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD724A05B03
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 13:08:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A10B3A31D3
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:08:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B21791F9400;
	Wed,  8 Jan 2025 12:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="S7d8Cst0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A09F91F8F16
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 12:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736338132; cv=none; b=ZbdCVzjuCVVRUnnMLHNmrEVfrVvpUqM/U0cK8wNRWA0OnBgAojofCBFbq+kPYSOC2xTkTUUDXjx30xh7R4Gz7/NalXDVTyq3CsRy9ajxVHc9kxBi48VyjE0LgyNrkr/DKDuaLDxpX30j9iN8HZzdiW07J6Ht4nRs4FTy/N3KegE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736338132; c=relaxed/simple;
	bh=Q1GTUTmKjX8jfhiEVy0rIQ1l7Rafq0ylK8yASgB6NQw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U+Hh1giCL9S6sUsA6Kzno0KkKH7xMwt6AOZoiSsha1qjUyiORuYzO9wPuyEPRrbHbezfXDTrWSVs/MbBwyUOuX+bdbTMQTkYjqRrLnecwXV4P9ZNLp2fY3VgYSSis+kQOM83nkTJOcNz5evUpJutXp+90wepGJSVAcCHEz5ajvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=S7d8Cst0; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-3003c82c95cso137427441fa.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 04:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1736338129; x=1736942929; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WHYq9u3fK0PbCc5B7zHvSgROeh3nh7BEAUFJXMqDAtE=;
        b=S7d8Cst0yPy3WaaIMzeRk+2dPoNgZlcinadmx3b/h3xpKcAuaj8ykoFIiux6b18iwW
         t4YrljB6n4dqj5E0muBuRtEw1NZip+OIitAGdZ2rRfAuYiav+Jtd5WNw4cx8QWr//iwS
         kTPZgK/WzWBaQChGrPPC35QLilbpMjTBJqGek0MLBT8rlLoDX26CyVz0x+jgxIgb+ImJ
         ZSyQ2KwmZOiE4QttFrW0XYgRKi6yEP09knLZzoCsDYuEn6jcw2LKb1JgDK5CWVKutUh6
         6R0R8TZRlfaEZsGryUwXHN3OJAAg8iollbyH3WkLJbr7GJOtc2XpcTa6OTAT57Nm8PBc
         8N0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736338129; x=1736942929;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WHYq9u3fK0PbCc5B7zHvSgROeh3nh7BEAUFJXMqDAtE=;
        b=VpnyXEolPuBJJqmjEy1wm9PB9Ib+grKXEn8Gf8n0sRQ30m7iD0g4mbmxlunpq+4TRm
         SeXBpictZ234Bc6wYwpeWlvKTpPXvR7PRtoiOqvjvsWMPO2q5V7teR3cK081VTY3Vv59
         h4Uej990w++6SubgnTBdK96sQH++esoqbvoq9n6aKjRyBnmnodaykPUvQ003aBhqWNE1
         nbblkVNt/APdD0Pd3EHtssk7eR7FP65OedyvUJbj3EkdTZzHsyNroAcrnMynjI0ny75+
         AiCe9hRxEw0VGNW02PQHQrUPrs+TjWjeWdozR82u1h/MoTC9b6wZC5ysWAuigbrPYGrx
         Fpug==
X-Forwarded-Encrypted: i=1; AJvYcCUWmA9zRSdPXI4SHzhRZMCst+0NttKmIQwiHSo7o08qkiH5O7knI5MMIRWvi5043RttZI0A26pl1Jg2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5DYmrXKx8Uh2/a6KyTA+pGhjOHTur6Y3r35EBaNjNBYe4YYFH
	MlhkopLtsd13deSQXExH4jRKEFSsHedzVOr8fTtlzEJ5bCXwWFpOYcqaWqqUMVMRi1AWQwfagc7
	Q4TIEIfM61SB3i6Ap5dqU60K1UTjWzFXGouloxg==
X-Gm-Gg: ASbGncvnFC1ctxeRyrbw4uJGKl+kvtEq29EF3HjPc7wYsfXtMQPfpoAdgJwNFpy5IlZ
	BLWXmzO/Ef24qR6MkMAhDyEDzEXH+ptSpjkiQ6lhNIUxsKT5ZeRzqRHfRjkCKojbRs0FvAQ==
X-Google-Smtp-Source: AGHT+IFa3R2ndq55NhKWU1ao89iSflN8dGnIqgIJvNfkd7iWWkr+SCY7vOTKmYqjO3DLDzwPCXA/s7eaAZV3KmJo5mQ=
X-Received: by 2002:a05:6512:138c:b0:540:2188:763c with SMTP id
 2adb3069b0e04-542845b0b55mr753264e87.37.1736338128530; Wed, 08 Jan 2025
 04:08:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241224-gpio74-v2-0-bbcf14183191@posteo.net> <173593634037.257292.1488097273042214180.b4-ty@linaro.org>
 <CAMuHMdUqvTrSsiGuJ=VvNqsQm4eQs9rNTU8VBg+FzHJZxRnXow@mail.gmail.com>
 <CAMRc=McAm3A1movK-8q67UbKuPb8FQzVwD_me7Q6x-gei2PA_A@mail.gmail.com> <192e97dd-698a-4434-bd32-c1181ec85ba3@prolan.hu>
In-Reply-To: <192e97dd-698a-4434-bd32-c1181ec85ba3@prolan.hu>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 8 Jan 2025 13:08:37 +0100
X-Gm-Features: AbW1kvZnk6_fgKN1eHWtfPj2SS6UYja6sVBaHC9BI-DUFwEoYlH6fNeZYLCvfd8
Message-ID: <CAMRc=MewCR=W=_0RKFZR0gW2mvkMD-pKBWpXCeqOY4j8CXBSXw@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] gpio: 74HC595 / 74x164 shift register improvements
To: =?UTF-8?B?Q3PDs2vDoXMgQmVuY2U=?= <csokas.bence@prolan.hu>, 
	=?UTF-8?B?Si4gTmV1c2Now6RmZXI=?= <j.ne@posteo.net>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>, 
	linux-spi <linux-spi@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 8, 2025 at 11:26=E2=80=AFAM Cs=C3=B3k=C3=A1s Bence <csokas.benc=
e@prolan.hu> wrote:
>
> Hi all,
>
> On 2025. 01. 06. 21:16, Bartosz Golaszewski wrote:
> > On Mon, Jan 6, 2025 at 10:19=E2=80=AFAM Geert Uytterhoeven <geert@linux=
-m68k.org> wrote:
> >> Do we really need to document and add driver support for all variants?
> >> I can easily come up with a list of tens or perhaps even hundreds
> >> of xx74yy595z parts that are all compatible, as far as software is
> >> concerned.  As SPI was invented by Motorola, the original part is
> >> probably named MC74595 or MC74LS595 (yes, ON Semiconductor bought the
> >> logic division of Motorola).
>
> I second this, no point of having a new compatible which is a guaranteed
> 1:1 equivalent of an already existing one. Especially true if the only
> change was that a different company bought the IP. By the same logic, I
> could start to sumbit patches to change all `fsl,` compatible-s to
> `nxp,`; `atmel,`, `maxim,`, `smsc,` etc. to `microchip,`; `ralink,` to
> `mediatek,` and so on. There would be no end.
>
> >> Perhaps we need a separate vendor prefix for the 74xx-series[1]?
>
> I don't think that is the case. Rather, we should document that the
> existing binding/compatible should be used for all such simple cases (it
> is called _compatible_ for a reason, after all, and not
> `exact-part-number`).
>
> >> The xx-prefix and z-suffix don't matter; the yy-infix for semiconducto=
r
> >> technology rarely matters (there are a few exceptions, though, mostly
> >> pinout, which doesn't matter for software).
> >>
> >
> > I missed the fact that Rob actually responded to patch 1/3 with a
> > similar suggestion (fallback, instead of a full compatible).
> >
> > I can drop this series from my queue if it needs more rework.
>
> I think you can keep 3/3 (the one commenting the use of `latch` as CS).
> The rest can be replaced by another commit commenting on what it means
> to be `fairchild,74hc595`:
>

J. Neusch=C3=A4fer: do you want to send a follow-up for this?

Bart

> * tri-state output
> * 8-bit output
> * OE pin (or latch or whatever it happens to be called in their chosen
> manufacturer's datasheet)
> * SRCLR does not seem to be used by the driver, so we can probably skip
> that...
>
> And telling people NOT to add a new compatible if their part satisfies
> these.
>

