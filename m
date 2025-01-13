Return-Path: <devicetree+bounces-137908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FFFA0B0EF
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 09:22:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04B493A0641
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 08:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21ABF232792;
	Mon, 13 Jan 2025 08:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="OAxeDN1l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7433C23DE
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 08:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736756542; cv=none; b=Bau/BLgs4RO5BueT2fA6THNJx7aZmIVV5Kta1ekqlR0uTQ4qpPst/BjMncP1viBtPQpflIwhTBFrILwVCAhMxVXUf9n8PYlYi+k8SlNsd+xDugrdsIOIr8NGDTNs10413HepppAr+sBGrV0uCBxZz36EOFrU3B0j2SsOFKWDXUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736756542; c=relaxed/simple;
	bh=YURCukiWphcO8E6TR3Dg5L7aYgHDbbFS6wjV7IvJoEc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EXtHLBz1gH3LbwWPYopd/Z1+pll1SIiCATojIsENLtzC7ShHpDPe13N0LeEq6kC99vikbNrm0EQMuV21ttAoWYxyv0orujtHLeSrmrtk/vR9LkkqcsUj0O1I6KI/lx8kl8+4woSXL9wwgypOAQkStRGQR46bLW1Wl1ZSTkQL+r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=OAxeDN1l; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-3003c82c95cso29031601fa.3
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 00:22:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1736756539; x=1737361339; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LYZnAapdMVIwTLso2tw2X7Yx3EGSsdzYujFlr9hYQ8s=;
        b=OAxeDN1lBzAiWHVrgTHOVYXfG9zX0L9k6DwrGRvFK2GWxhUP+Uguw1wLAUV7EBxDn6
         ASFPdKWL4Ho12ymNlqMjXVSlceDJCz/9WDZKHvxeFzW+Uut928AnPU2knWc/RN+LyadQ
         9FP0Wd6fmhk88xP8hxN+Zn8o82t1/b7jTNVTVF8oUcM1t+2+2pDDxJpdehxYkrQYlG9+
         GK5PU//9Sx8JzvDscSKFP6W6ZZgjJqZIirWwN9pgXZlvoOTbuQbajpq1BzH5zJ/EMxyj
         uVaomJxsyxqwX6vJyUmDmPzXmsyMOqD0nRAkcXZ9qfCeH++/bdDYJK7tcJ6lQMDz+2HQ
         MxFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736756539; x=1737361339;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LYZnAapdMVIwTLso2tw2X7Yx3EGSsdzYujFlr9hYQ8s=;
        b=RqjxrgJ63PgqMowXnsczm0cXLPmnlKROn+wFs25Qp+YH2bMisKhQl0X7+OU3x3845N
         iXatXrRgwwMO7ExVBUeOT8QppaR9Ji2mOp5luPdfjut5EubCZPO5L2H9AEzG2f5xWQJi
         2iuncegfLNnI+ZEpcOPFjnJWw18snubyrBWykSkVoE6qDRQz3oq8tT03fGU+obwe8a/8
         azLXVL3E8AeZaLuzb/klHgcGl/9uzw73rp4iAacsCFwIhHt308UtuFsVuCknM+9fHAIq
         /6sPwyfk0b8S+6ha8WQsf7obCLISprbf3M5WC4E+uOhW7OcSud6NWmMwVhMeVRlETLl0
         Smtw==
X-Forwarded-Encrypted: i=1; AJvYcCXQbkoCk0vTpnrol2I3YnaNSV5a8QU4EO/sxU3vlQFeLoMQo4E/9zcVWTQSAejgV74u3DzXpkrKI4Vp@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3s00EYwTrk1OGGmbDJnHZIPDKAP2YrKxhkfJAIYP5I1x9R3OP
	TCByBCIQr/fc6SL4l4BdAXemyvZHLJbaUDC4TPMFV7tLhZFvU0SARBVJuEWd+XDEBiVH5VsVtK0
	q3kUHP6xqcPRT7mlZbCMBxdJGIjbE8iLzKz2FcTZMbTRh6nTV
X-Gm-Gg: ASbGnctUkIK+kQ8+z8mke/dIZoEFG/YdqQpWVCGnmN1Ix01zeD2S7L9aSHP8W+CT3r2
	nk6W3wdlIlnDNRqsrzchfjwJ8qAXxodczAidiuVgaH03WcbjtcWge7N57fFzK5O+MKMw+eA==
X-Google-Smtp-Source: AGHT+IEPAuj/r28iaeMyBZpjY1aQFXNvxQmMGY3smzgjt3L/D7oNBwT431xJOlepY3Uk8zu6dFezCj4uBd/f2TxSEQw=
X-Received: by 2002:a2e:bc1d:0:b0:302:497a:9e5b with SMTP id
 38308e7fff4ca-305f455e958mr57605411fa.2.1736756537139; Mon, 13 Jan 2025
 00:22:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250110130025.55004-1-brgl@bgdev.pl> <de6b70f2-8fd6-4e2a-a6c1-466698be8a6b@prolan.hu>
 <CAMRc=MckJfEBK_ZUZ31hh7SMdbr4a-vZLtTGDCFttGK65wbXdA@mail.gmail.com>
 <CAMuHMdWhEZ0No8mXdymE8O8+rMCkD2SXAifZwReb1BbfYASOeQ@mail.gmail.com>
 <CAMRc=Me+syDKW6sycGZ86rBJysaccsm3QUYd1+5cnfzRCo6P7A@mail.gmail.com>
 <9bb482aa-a392-45c2-a21f-d08e5ce3a6e0@kernel.org> <CAMuHMdVrQms38kXjr4df3kJfcoNFm3oEm2Zr0XNuucZwg_VbxA@mail.gmail.com>
In-Reply-To: <CAMuHMdVrQms38kXjr4df3kJfcoNFm3oEm2Zr0XNuucZwg_VbxA@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 13 Jan 2025 09:22:05 +0100
X-Gm-Features: AbW1kvYPWQMfCphyDw8T05mTaqv_dHFihKqwRJp1JclVUwQo-74yiMDflHGsLNI
Message-ID: <CAMRc=Meqnr9wMu5kUNEbisBJntZf6KuQp_QspOnDPyqqX9VM3w@mail.gmail.com>
Subject: Re: [PATCH 0/2] gpio: 74x164: use a compatible fallback and don't
 extend the driver
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, =?UTF-8?B?Q3PDs2vDoXMgQmVuY2U=?= <csokas.bence@prolan.hu>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, =?UTF-8?B?SiAuIE5ldXNjaMOkZmVy?= <j.ne@posteo.net>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 12, 2025 at 10:58=E2=80=AFAM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> Hi Krzysztof,
>
> On Sat, Jan 11, 2025 at 12:00=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> > On 10/01/2025 15:14, Bartosz Golaszewski wrote:
> > >> At24 EEPROMs differ from '595 shift registers in that they provide a=
n
> > >> API with multiple commands, and some commands or parameter bits may
> > >> differ among different implementations (but usually these difference=
s
> > >> are called quirks).
> > >>
> > >> All '595 (I'm deliberately writing it like that) shift registers
> > >> should be 100% compatible, modulo some electrical specifications
> > >> (voltage levels, maximum speed, power consumption, ...).
> > >>
> > >> Interestingly, the driver is called gpio-74x164.c, while no '164
> > >> compatible value is present. Most important difference is that the
> > >> '164 lacks the output latch, which is used as chip-select with SPI[1=
].
> > >>
> > >>>> I'm especially against introducing a new, vendor-specific (On Semi=
, in
> > >>>> this case) name; if we really want to introduce a new compatible, =
at
> > >>>> least make it as generic as possible, i.e. `generic,74x595`, or ev=
en
> > >>>> `generic,spi-shift-register-output`.
> > >>>
> > >>> If anything, that would have to be the fallback that the driver kno=
ws.
> > >>> The first string in the compatible property has to have an actual
> > >>> vendor (I think, I'll let DT maintainers correct me).
> > >>
> > >> For the inverse operation (parallel in, serial out), there's just
> > >> "pisosr-gpio".
> > >
> > > Ok, I admit I don't know the correct next step. I'll wait for
> > > Krzysztof, Rob or Conor to chime in (on the subject of representing
> > > reality - the actual manufacturer - in DTS) and then possibly just
> > > remove patches 1-2 from my tree.
> >
> > Well, folks, I don't know the exact device, so maybe there is no point
> > in a new compatible if there is a claim all devices have same interface
> > and documenting all of them would result in 1000 redundant
> > compatibles... but OTOH, that's what we still do with jedec,spi and
> > at24, so if we can add specific compatibles for these, we can do same
> > also here.
>
> Except that we don't for jedec,spi, unfortunately[1].
>
> At24 and jedec,spi use a complex programming API, with lots of room
> for deviation and extension. '595 is a pure hardware part[2]: it is
> just a shift register (driven by SPI clock and MOSI) with a latch
> (driven by deasserting SPI chip select), without room for deviation.
> Anything that behaves differently is not a jelly-bean '595 part.
>
> [1] "[PATCH] dt-bindings: mtd: jedec,spi-nor: Document support for
> more MT25QU parts'
>     https://lore.kernel.org/all/363186079b4269891073f620e3e2353cf7d2559a.=
1669988238.git.geert+renesas@glider.be
>
> [2] Ignoring the rumor that all Microchip I/O expanders are actually
>     pre-programmed PIC microcontrollers ;-)

It's late into the cycle and as it's not clear whether we really need
the new compatible or not, I removed the two patches from my queue.
Let's revisit it in the next release.

Bartosz

