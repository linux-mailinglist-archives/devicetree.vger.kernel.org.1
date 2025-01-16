Return-Path: <devicetree+bounces-139044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 71951A13C1B
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:25:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF1417A1EB6
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:25:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2A6322A7F6;
	Thu, 16 Jan 2025 14:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="rQVC52qz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0556222A7F1
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 14:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737037512; cv=none; b=dfVP317p/npCXQ1geGa2Pz6ZGaECiT8JbLYFRNWP3Om61/FM7O+ol7jLA0FYYWbaQt1NKV4BZCEEfKyoHzw0OauztiAqDy8Ozv6SaSHSPIfKVZND2/4SeFZv/G/LA1tYOaTN0fHYU/6FxX3kNHO2bPT9Q8y3ED30rQ4MMmdqSII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737037512; c=relaxed/simple;
	bh=rNZvg+QYClvxzm9fnaeFU0DvqZSY4a46/YJeVv+sdLQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UHc3X1HVgPgiXdhwcnryyCxD8v+1Yc9APlpzJqZ6yNq5+LHkdZmmC6s9cHTrGiEM3h86FS7nHWcaVjPtl5bR2OxH7ey+rMJIf47nUtnI5aE5nakczLI5tkFtzxCS75szOd1pfQEsg7D1SgyyBUJNXImRxb2G5aQpS2vS0uEqtXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=rQVC52qz; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5d414b8af7bso1776402a12.0
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 06:25:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1737037509; x=1737642309; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ndR2GSYTnnC1N6SVtdWE6jMlGFC58Iod4RG0DPQCgww=;
        b=rQVC52qzIbdtLaRJsRkRvAfIjLOpe0UabdKKtJx3ORu11bGHqKU8G0RwEG02IPXQz6
         zrQuE8Nf41EH0NP6WWCjEaoyLH5SHzHhWXamanod2gtG4K8BZFxS6QU56BxFEyr2KQK/
         mgdOXzkRjF8XCowOCwTSqJCHtTrLQOBPe/iLvRsYMFyDqit0qLF9fH5z8MuRHv36nYWp
         2e5NJvLUpzDrLCxygRmwFy3ZBPRaSXSekCwmIbf4U/3Cuxaul6pn2esJ43cAF7u+FWUa
         WjS+ctZtYnEjPcz19cWp0TLsTtmC4fHffQXp1oIF6+FiAn7TAF0AA30+RHYNGp2o/H+W
         Omxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737037509; x=1737642309;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ndR2GSYTnnC1N6SVtdWE6jMlGFC58Iod4RG0DPQCgww=;
        b=joZ4q+YAqOsgmYoTQFB1DgyTBDDReOR4IRfSTTLdrL9sRvyQN4wQyxZ03gYaS9bP5Z
         U2Pemfntd+I+dSiyfSEQfAaSJunMim4GHHhM0XDTHr9iWODf/YxJJ+ivNsaGGNwrLwFK
         DA1sqbFowH+kRPeek9ZPPiIgqJ7g95Wm9YM/lns0N9unPOdEO28ZcceofJZiAjjLMqju
         zchKlTQk8U8HzcBujoicyxOkOjMek7MkLlyQ4+j3FB/hTJTWi4kpAdEo4CKS5E8KOv13
         0JSYvSal3APmI39E+Xta8YBV1gBIUMQkwGncOXv3dTkwvllxw/hWNZU3ER220x1P0Aes
         JA5A==
X-Forwarded-Encrypted: i=1; AJvYcCWxNDq2sgDJ4U4qWLgHwVqqJ6gRPx/r4L9Vc/oWIoh9dV49im7MWZdRk6lUk1A68bFniZ1w9aGF7xzm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7Fo41ZxyEpIH6AzAMFwL+ZVbzRh2tFCM4vlRghP3KgJAuQRcU
	nJsFUj1Cqq1hkG6UjWT36CfRTtxdOhf7cEb2zJosl5lY6zxxRP0+Mjuut3bd+1xGLnrkj6t0Urk
	gBcq6zM334iPm56SZyAm+sEhU0JP8v9N59m4=
X-Gm-Gg: ASbGncvoYWYV2267Lp9E3M17+n3+5ejx9O/W+PnB4AjGtwpgRuJHOjmYZyi/QBiU3f9
	OrZAhMqvuKAwZHbAdn8QHFiaMWZbs2xSuKMjQgOvWRGADoCmWNS3bLBi+BT9fK1+/Jhz+ATc=
X-Google-Smtp-Source: AGHT+IFirh5XthCR9sBR3YEGhLqSugV53uWMUHxOEIX0D8We2M5S4lesFp3DLMv5A3Q97ySFF9ZWhdTW9S6YaYwybBQ=
X-Received: by 2002:a17:907:a03:b0:ab3:7812:ba69 with SMTP id
 a640c23a62f3a-ab37812c066mr184412066b.5.1737037509216; Thu, 16 Jan 2025
 06:25:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250111080903.3566296-1-iwamatsu@nigauri.org>
 <20250111080903.3566296-5-iwamatsu@nigauri.org> <467573be-f143-4cfc-a04e-86be092d1b58@kernel.org>
 <CAMuHMdVsHrcWdc2LD=F1keJg0ZPgq19g3uZEgFGs499SQhCd2w@mail.gmail.com>
In-Reply-To: <CAMuHMdVsHrcWdc2LD=F1keJg0ZPgq19g3uZEgFGs499SQhCd2w@mail.gmail.com>
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date: Thu, 16 Jan 2025 23:24:42 +0900
X-Gm-Features: AbW1kvYnGQ6k688r1PutpMPSDCennezOB-F9_joTPVCKaRAQr3ze_jIYI98ngLg
Message-ID: <CABMQnVKFQ6ZERqswNfV13wXTaD19RkmQZYdVs+tUaBUW730Rew@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: renesas: Add initial device tree for
 Yuridenki-Shokai Kakip board
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Masato Kiuchi <kiuchi_masato@yuridenki.co.jp>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for your comment.

2025=E5=B9=B41=E6=9C=8814=E6=97=A5(=E7=81=AB) 22:44 Geert Uytterhoeven <gee=
rt@linux-m68k.org>:
>
> Hi Krzysztof,
>
> On Sat, Jan 11, 2025 at 10:35=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> > On 11/01/2025 09:09, Nobuhiro Iwamatsu wrote:
> > > +++ b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
> > > +             stdout-path =3D "serial0:115200n8";
> > > +     };
> > > +
> > > +     memory@48000000 {
> > > +             device_type =3D "memory";
> > > +             /* first 128MB is reserved for secure area. */
> > > +             reg =3D <0x0 0x48000000 0x1 0xF8000000>;
> > > +     };
> > > +
> > > +     reg_3p3v: regulator1 {
> >
> > Keep consistent naming. regulator-1 or the name as in bindings:
> > 'regulator-[0-9]v[0-9]'
>
> Please use the latter...

OK, I will use 'regulator-3v3'.
>
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml?h=3Dv6.11=
-rc1#n46
> >
> > > +             compatible =3D "regulator-fixed";
> > > +
> > > +             regulator-name =3D "fixed-3.3V";
> > > +             regulator-min-microvolt =3D <3300000>;
> > > +             regulator-max-microvolt =3D <3300000>;
> > > +             regulator-boot-on;
> > > +             regulator-always-on;
> > > +     };
> > > +
> > > +     vqmmc_sdhi0: regulator-vccq-sdhi0 {
> >
> > regulator-2? Why different styles of names?
>
> ... i.e. no numbered regulators, as these tend to cause hard-to-debug
> conflicts.

OK, I will keep regulator-vccq-sdhi0 .

Best regards,
  Nobuhiro

--=20
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org / kernel.org}
   GPG ID: 32247FBB40AD1FA6

