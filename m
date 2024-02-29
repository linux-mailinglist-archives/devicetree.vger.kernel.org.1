Return-Path: <devicetree+bounces-47488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6142086D5D8
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 22:11:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 637841C23B32
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 21:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A000214372F;
	Thu, 29 Feb 2024 21:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R9cM4npi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4233143729
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 21:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709240572; cv=none; b=EmdpIhvSarVAjGPqEWLaZiYj94t74WhzThFcdx3tgk+ZFtsFDHYniop7RpFH2om8Fxgp6bCuc9Ko3NrIDPdt2ymyJ7APmtiv/Gdk8NA2rN5+Ivb1JqszuuyhSI4Z1uUA4sNhTXjqTStLrJThb2pTBC2ETkPsC2QcbD78aNBVgeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709240572; c=relaxed/simple;
	bh=w8Goakld9blZJd9/ya/yCd3Qk4/5VBb72qWNnFBC0g4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HU+Z4s9vOKSTCL+OQhdZ6p3VXfuNOn2Qwi9l+hoEdxrqRqK6QQgYpKzyca/Jw4Xl8f0l6zT2aEAjRW1ypDT5wSOYDQe2emhYCiB/PVY2qRONrjHUv68i/GfOPawELzvXOM4ip4LX+h62zZQ5VG71ReGhHZ/y5nFXlGW2r+luER8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R9cM4npi; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dcc6fc978ddso1239062276.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 13:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709240570; x=1709845370; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RzH42Le6JLqPTnrmstPPgkRIyy1vLFZ8cAEfYjhK5wU=;
        b=R9cM4npi1EypKIfskw8+XO7V1LVb9YUy7YPLmnpf7/jfA8v4sfFWsDOdI6pfXnF92H
         xzq+FkNLU8QNPe0pw761/O2RWjgQXvEjFjBN3i9+kNIpJWqSEO9ZCQJjPFOymOQyYrvH
         U1Yxi6GUanaiyzYHZ3oGhTW7a8CwrtWnJ7KhPQiohYXmbTISW6uabaJsMNJ1JFvHze6r
         6y0ZD18SY3N4r0omVczT+vlOVKQ5FmGPEWjK2F6cyVHnb9/8be+dphiiOEqZTlZrdzw4
         s5NBmmAd6ih+Kd2kmugOQJpcN9UKlkwboL0ZTOtFscUokSzPWXkagZAA74qCsLoPJicl
         F6vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709240570; x=1709845370;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RzH42Le6JLqPTnrmstPPgkRIyy1vLFZ8cAEfYjhK5wU=;
        b=mj441uyUOb0zG0pLOyxa8HNUaJQwbArauoqxEb4DmPOCMb7wQvvaCElfGGIPhz6gY1
         K5DTn5q0iBFoGyTL4fZhjJW7WI/B7HVNma7hvRCre/KuOsQqG01rnRjXrePRFgdVYq5T
         zepAl1O4s5BsPbbpCOtyn/OKrV/BDIGBpmqwutQbbgQz7KgLj/n8wyduteaZR4VvYRVu
         VrnWJ/mz244ESGkdrAfdzmKyq81RXGWWEUu1xITSoR1e8mGH9ifP+ZjShCTizc4mMbEk
         huPW5H5wGJY4QpKnv36+IvMZLKlRGx6lK9rUEkL/4wssS4ZCmSLlvvep+yT30bb7Obm1
         24aw==
X-Forwarded-Encrypted: i=1; AJvYcCX7h9rvC8XAtAeOqpPY3Gakuw8VRAlAHjXUe4rKu1a7FBXeAJIbHkDBACc2u2DOXt7x/Kxb6ybxPC7gh8iNBQj2oNqEa1ck0rYziQ==
X-Gm-Message-State: AOJu0Yw9Q723Qp5A9EE8YsFw3KPaLeH02b1aQGQA78z927CsMDXG0ri6
	nv187aC/pvMyUJURx8N8AD4BTwDDjHARz3smKcFFjfc8MYHcuGJbzOxkh4VUKtGw7BRpkXsGjU2
	B0EjEYnoI8jdwJeCsxsUPrvXReGDh2Tc3gI9CN27O4a7Uew3G
X-Google-Smtp-Source: AGHT+IGrqHZZfmk+QgMoq6cpaifJe9cFgRnyEqezfeLGnwvG4l4U6/5Wq4g1VkIDnrBaM3IK6DsIiSkau/poL+aahCE=
X-Received: by 2002:a25:d696:0:b0:dcc:2671:7819 with SMTP id
 n144-20020a25d696000000b00dcc26717819mr2486052ybg.25.1709240569561; Thu, 29
 Feb 2024 13:02:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240227-mbly-clk-v8-0-c57fbda7664a@bootlin.com>
 <20240227-mbly-clk-v8-5-c57fbda7664a@bootlin.com> <Zd4moVd_-bY6Z_kL@smile.fi.intel.com>
 <CZGX0TSYLOH4.DZHG351R9KFZ@bootlin.com> <ZeBsAbPRr5IPkVZj@smile.fi.intel.com>
 <CZHNS29NK9RR.13G019Y9ZY6IO@bootlin.com> <ZeCjk9QgtCWb8Ecy@smile.fi.intel.com>
In-Reply-To: <ZeCjk9QgtCWb8Ecy@smile.fi.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 22:02:37 +0100
Message-ID: <CACRpkda-6jZUH5jDwPhyGgO-h8upRbj1z_4nT_gUisSQO9X8cg@mail.gmail.com>
Subject: Re: [PATCH v8 05/10] pinctrl: eyeq5: add platform driver
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>, 
	Gregory CLEMENT <gregory.clement@bootlin.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, linux-mips@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi folks,

lots of discussion here, lazy Reviewed-by from me, but Andy often (thank Go=
d!)
catches things I just miss.

On Thu, Feb 29, 2024 at 4:32=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:

> > > The rule of thumb is to make modules if, otherwise, it's not so criti=
cal for
> > > the boot process (and even for some cases we still may have it done a=
s a module
> > > with help of deferred probe mechanism).
> >
> > I'd call SoC pin control a critical resource for the boot process.
> >
> > I also like the simplicity of builtin better for such a resource.
> >  - If we tristate pinctrl-eyeq5 and there is a bug, there is a bug (in =
a
> >    context that we have no reason to support).
> >  - If we do not allow it and there is a bug, there is no bug.
> >    Plus, it makes one less choice for people configuring the kernel.
>
> The problem is that you reduce the flexibility. Nobody prevents you from =
having
> it built-in while tristate. But completely different situation when it's =
bool.
>
> So my argument still stays. I think new code shouldn't be boolean by defa=
ult.
> The only exceptional cases can do that (like PMIC driver or critical cloc=
k one).

I think bool is helpful for users if:

- The system cannot boot without the pin control driver

- The system cannot mount root from a storage medium without the pin contro=
l
  driver. Initramfs doesn't count for embedded systems, many of these use t=
hings
  like OpenWrt that does not use initramfs the way Debian or Fedora etc doe=
s.

This SoC is obviously for the deeply embedded usecase. If this SoC has root
on flash or eMMC and cannot access either without pin control, it is helpfu=
l
for users to have this as bool so they don't shoot themselves in the foot w=
ith
Kconfig.

> > > > > > +     if (WARN_ON(offset > 31))
> > > > > > +             return false;

I think I asked for this code in my review, because I felt unsafe about off=
set.

Maybe it's not such a big problem, but, this twoliner is also not a big dea=
l.

Yours,
Linus Walleij

