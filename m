Return-Path: <devicetree+bounces-256106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E71D321DA
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:51:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 563E930731FF
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:51:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EAC1274B5C;
	Fri, 16 Jan 2026 13:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i3WslThW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B97228851E
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768571467; cv=pass; b=XBojXcORfJQg20X1/PPy855a2r80QNV09+KCmejxRrn0wCpF+nmy4nmnYGc3HRnx9VgEm80jrNmFEZ/4JGsLRiusuQQ82Xmo1T1xGIyrM+IaCuDZC3+S6IdSdFV+aUud02hHjMvTY+rJi9sIk970WOcwWH+JRY+Pm7Ht/6LMOkU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768571467; c=relaxed/simple;
	bh=0imWy1cM2Yh3ijKRNIflaY8vhnL/+2L4VY5uCrifH/k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DGlar3ceHQ8rs5ahntBzul7ea0NCz/44gIyQAdr5+lm6myCGz4CT/R37pgaqL5RPeAazWYsyQgtDj0JDgwEE+knu4sImYcMDmO8NPg5hFGUcLNK1vHNzyJr+l4gBbJq/6TJgehHRMNCbUY5KHopMlIYvwSVBfc+fA0gYndaWm5I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i3WslThW; arc=pass smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b8010b8f078so342643466b.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 05:51:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768571464; cv=none;
        d=google.com; s=arc-20240605;
        b=UFByoFnCdll1nSCNftq3KV1jKcNTIJs+ffuxzv2QC+SrOxGdp5thhXVL6MvGIiTP0h
         hw1XXiKB0x+weDjgyFXQuc0okkszy+41esvrEYKWrb73Mr1lgYXx3emG14rGvEqZXVsj
         JygLlqadCxjZpUxnzf3HAH1UWSLzuXe0blu0cxjxwhH94FXoI2k1km4PgvGWAWaMB/tj
         lZBmRe6jTBAPYqSX9whMbZERvvPc0dSCvrF7lkr9NB2Vg8ewiMr9lrWIb9dzE0Yr1cXJ
         fakbcbi6cdZYLN29ZdF5mt0wazF+jHdXl3r5FajWjxhnAZ0GW74+MQcHprM0YY9V0HRl
         y4Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vP98g39yyougRsxlmtaspRwBSt2K8dov2JxcZQzReas=;
        fh=g94WY3dU4qMfyIPBUoHZTMrpLaE2n9eX79hiBIBhkaw=;
        b=TdKd2VwBNG8f7Kk5z+NMgDFAt9bttY/d6lp+tkgAs9m3A4VgavDrD48ExCDg4JtEHn
         xTSJ3GHo0FfueaB3RzwRNdwgVd9iMyNPcyMOGIhEu5pqru19knxTD0ZEatF8ouIJC0Wk
         s+rEpy81dAZ2IFLMX2VF+T0fgOUK5l645yPCch/AoavDgDHl4rsD7spaj0h6Vhx5XdSS
         FkftMXd7tUqKVU8UXTQdDLjSDKJ5eX9QjDZ84zmhIcrdmoDaaPKCwp4X+YZIoM3D54Dx
         dWfTAHa1cRvuHb0XX6oG+FhurgMkH966YMvyJA4cV3NYmN3rl9imnpXInbj8KT54lEZT
         SysQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768571464; x=1769176264; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vP98g39yyougRsxlmtaspRwBSt2K8dov2JxcZQzReas=;
        b=i3WslThWc1Xd+/crfe/XdxS+0Nsp58RaMSbabGhjGVY0L4gL07QRI8Mfn8Dqoz59Ll
         ZXOMW/ekCsToVc57Lc3ryRXxw67yjHXtS27iCkxHAs/5SSxEMRkTIYVCjA5keU+HDXJh
         c0z1Sc6EJmf6LVp1j8a+PrYLAlIzh6hthujW67yci8qW60cEBd1fXU/sspn82dpeWNm6
         mD32OJgg/yDjIbKmcG4ZgsqG0YuOR+l/9t2hRzfz/Qb/DLm2c1w/QaeCzg0z23w2iXJb
         EhEUwyKbcs+HNF/4xQDmhnU+cDfKlSo7dWONZHX4X4eJ4WBwdEnJ+kWijmiHp5LJUEQ7
         l5gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768571464; x=1769176264;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vP98g39yyougRsxlmtaspRwBSt2K8dov2JxcZQzReas=;
        b=gKlkm2qn7zfVhbcvcUGSRdmBcJ5exFF60TgQ3FCop5ni1U0qjP9FS6ykJM7oTLy71z
         v8A0rVjhqgQF0h++91ycSE5ZYj1wjViKje1YNW4a64AGtc7MKEnLmKv5utdP+OJZi9WZ
         fGNqpEWBC2rXp9Vm9EbTh/qpXlk1HN1p64YtIf35W0iYpgm0RkLs4MuwH7FM4jglgQ2z
         69HcDXRBYHCa9DebOoBX/ptNDWkBEoj/x6ypPMZAu9BxAZ6fVadLKwQ2Zb+Hw3xu7ocn
         HRdphWTYwSA2PObBgaXKHQ5jKSCL6BOVi/61RVv9lCwU0Wb1mFR8LVgGzDXid/cdFWEO
         CCJA==
X-Forwarded-Encrypted: i=1; AJvYcCWlynqcc6qwru5QkwafqwGy6tJW9Y5jZIDfH2qxn/rJLfeJKa21MsKyT2AkkCSgYMSUrNDpoD0Xk3t7@vger.kernel.org
X-Gm-Message-State: AOJu0YxII6H6lTP1kZQPz4RFuKqSb66IalY52wNwYvWzg+KioDA345mi
	lmyrtyDh+AXAPhglL2u8vyNP7B4piwwY95hoOZxKqdrBuNoO4dOcsElNi5tagaxoGX7I4N3m9it
	QTjMW5jCqxgnuYRM0Sf9qN4XQcQYFDdM=
X-Gm-Gg: AY/fxX53PMC0a1cuI+l5cow7BJWqjo8eQFTUL2yfunD7+KyA87y/CrlmLW9fXiBw3Hf
	rAE56BKfo4FqD2UPsOkJlMZHd83mjpocnGiy6EFGZC9h1HZ5mkON6WW4DlvnhOjjahYmpBG4LF9
	rWqocqW1+9G/OfiT/FuLlV06H8Oft1XutrrbZCsRzd0hSMl/XOpxebUv+KubvawjEjSKztUnR31
	qsZGGJN1CzRgkoJgtbTI1BH72RGk5rrx4lBC/KUSIfdcuGNNo1txgaGWkG0SR46BEyDzQKQ7QhG
	Ky0KDe4BEaLNjchKXDHgLPCd9v9a3+GtHyAaKpRynAE9AceFRYvrQip9cSM3WuUH7Rqb9gs=
X-Received: by 2002:a17:907:1c10:b0:b87:1b64:a63 with SMTP id
 a640c23a62f3a-b87968a9716mr191242366b.6.1768571463652; Fri, 16 Jan 2026
 05:51:03 -0800 (PST)
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
 <zgz6g7pvzijrt77lwdi6q23lgkscm33imcdfbnu7mxvzarygst@ve3wi5l6dv3d>
In-Reply-To: <zgz6g7pvzijrt77lwdi6q23lgkscm33imcdfbnu7mxvzarygst@ve3wi5l6dv3d>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 16 Jan 2026 15:50:27 +0200
X-Gm-Features: AZwV_QgMV3VtbpdpsZAd3s2CqQZWxMYfJmVw_nvg5Cuzp2P6oYGHfb6siqtNym8
Message-ID: <CAHp75VccDF6QfkZ729qCTQcd5bbnTO2SX+FG8QNPRSC9=LneMg@mail.gmail.com>
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

On Fri, Jan 16, 2026 at 1:32=E2=80=AFPM Rodrigo Alencar
<455.rodrigo.alencar@gmail.com> wrote:
> On 26/01/13 09:32AM, Rodrigo Alencar wrote:
> > On 26/01/12 12:57PM, Andy Shevchenko wrote:
> > > On Mon, Jan 12, 2026 at 09:56:25AM +0000, Rodrigo Alencar wrote:
> > > > On 26/01/09 08:55PM, Andy Shevchenko wrote:
> > > > > On Thu, Jan 08, 2026 at 12:14:51PM +0000, Rodrigo Alencar via B4 =
Relay wrote:

...

> > > > > > +#define ADF41513_MAX_PHASE_MICRORAD          6283185UL
> > > > >
> > > > > Basically I'm replying to this just for this line. 180=C2=B0 is P=
I radians, which is
> > > > > something like 31415926... Can we use here (2 * 314...) where PI =
is provided in
> > > > > one of the used form? This will help to grep and replace in case =
we will have a
> > > > > common PI constant defined in the kernel (units.h).
> > >
> > > Any comment on this?
> >
> > will adjust as suggested.
>
> I am finishing putting the V4 together and I decided to leave as is.
> doing (2 * 314...) might lose precision, by not much (maybe negligible)
> but it does, as (2 * 3141592) !=3D 6283185.
> And that it is part of the reasons why PI is already multiplied by a
> power of 10. I suppose there would be multiple constants defined:
> - pi in micro radians and nano radians
> - 2*pi in micro radians and nano radians

The problem is that we will have off-by-one errors in plenty of
drivers. Depending on the driver the PI may be floor()ed or ceil()ed.
That's why I think it is best to use 2*PI with the precision you like.
In this case it can be as simple as

((2 * 31415926) / 10)
But you might actually want to have the maximum 32-bit PI, as
314159265 for the same reason.

--=20
With Best Regards,
Andy Shevchenko

