Return-Path: <devicetree+bounces-149397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3C5A3F47E
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 13:35:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96423421D01
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 12:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85F2520B1E4;
	Fri, 21 Feb 2025 12:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="MMQmj+rk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2DA1206F02
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 12:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740141222; cv=none; b=S6CR2aqIPrBquBaw628U2bngCXgaz1X4IQP47HpLfCYtFX/iXOyeaelZYs1X9lVvlOc+qDgS27KsfPsjcv5g0K6r4qhQ+E9UFDFUUqn0AXpCaJElLoaW4I0pLb1y2JxYJAt4c4N3VFjEYaOt46cMtXnP2kjmeJciGtZzHLmgnW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740141222; c=relaxed/simple;
	bh=kfzbwTjAyVRMgJOs6AmC7N34SpH3lxEox/yHKjIhldQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ge7LoukJoMDwjDJaYh68F7zGmG6KBRA3YTREPeJCWKUrG+xLqXQP7zskmJP6VjDWuZAeb7sNZV4KUZMr+2bXIoVXqmNGDv8YXHPWEEAK23ogzVeqLk7tnIB9NsoyABAbFTVKyJy3hBs/6uEIXehAdgZ+uwbO+082P+YFfXiWalA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=MMQmj+rk; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5461b5281bcso1818839e87.3
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 04:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1740141218; x=1740746018; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=laCji0wgcejA8pX+AF6wxbOGQS4OFrsspaTrAMdESBk=;
        b=MMQmj+rkbua7cJj2CYuIUYtz8cSniy9F/3OiPGurOFnU6kvo+o4il0g8FHzuoaZXdU
         6knQjAtCuOlS/GX3qAzwgy8Fm+sTCZ8/K9dIUo8CYvwdwrzU37e6TNgUeQRb8tHQcXJI
         2swzAYMkTneiVc1m2+5I5sTkanoLaNVOsIDcf71Mxt2pkU1Z/hrCyFawyfiYAfuBtrut
         Peh/azaa3hHrl4k/rXO7TbBTLNl8zzDTUaksIbnWc3eq3Kl7coFFVfJIJjVVdE4+wohy
         M80pLr9UZDShioD+dfXNIp8bN6Op/pbj+2w5fdkrfJNAxv6xfS0UmMhLhGEwcKuEkHrf
         hbMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740141218; x=1740746018;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=laCji0wgcejA8pX+AF6wxbOGQS4OFrsspaTrAMdESBk=;
        b=ZkjNKB7wxZjjkz/czvax0ISgXWwgJsEtawhhIL+I4Q5xBcslaPolIM4lx9VBtbDUfa
         L8czTos4qlZ9zstjRUbUPi9/VAjpzH1oS858OJPSESiHySMNd00KmQ3Rx4Ps5ygfDp5f
         jOpCFU3fXYc/8Y3JrijWputvZF14mmsuk9CECGhy/LtIm8bLN5qG2oFHHt/z4cDX+nMh
         RG7OiPDFUYDG5NjDR/SZhocMgz1XK7ADaC0yhqj+2Dg90ePRe9cu+JdmLVHcc0M6cXoZ
         xjWvtq9wQbMCKXcDXsW5CVr2ycVitHDsgPiBZc8v8cTuAPz/hR3gPVzS4oIHIOIxv+0w
         Wy1A==
X-Forwarded-Encrypted: i=1; AJvYcCVunWsFWrhpMIy6bXE5bLGxaNDTyP2swIr7bY8KC0F5d0me4Gnc5I2vbWFoBYXGqFfIyQUVF68BASJf@vger.kernel.org
X-Gm-Message-State: AOJu0YzVch70NH2qp8cgK7+GMj2Fr18LZyv5dhNNxxUt4T6geTQpJSWw
	WBLbb2YqR0Gn8eBjP3YyVnEIFw4RmyguW7uC9QLgFiaiGeW7R/rUOnIlDeB7e+awx0azZGeCmkK
	ptKuPTSzzUFCO5QAvtONzgm7LTzjG918GDos44A==
X-Gm-Gg: ASbGnctNCUjCpXVhFrizUvSPTvuOee4ThgVjHP63gFWb/9ZE4ZQoJtIUuCPrFBapYmU
	+XzA8XcpMv3gTA9FerUyLJVcq87lutti+GloA3zUWLrNnzhtDqgRd8xNuJYN0bhIjxphyAeo5Pl
	9OpjK3VUoIzjb7DdLIs07b33fomeZYtKV/B7zKV7M=
X-Google-Smtp-Source: AGHT+IF8P3wDFcp9YKaC027dHaySwmaNX5iaDpp3C16lxDq0a06pZGaS/beZ+S8CGUUtscqFetXUQ7xQyX+bCcMlTIE=
X-Received: by 2002:a05:6512:1319:b0:545:49d:547a with SMTP id
 2adb3069b0e04-54838ee933fmr1110810e87.18.1740141217814; Fri, 21 Feb 2025
 04:33:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250217-03-k1-gpio-v5-0-2863ec3e7b67@gentoo.org>
 <20250217-03-k1-gpio-v5-3-2863ec3e7b67@gentoo.org> <CAMRc=MdJszmZ8d1MGo=bfJ8TwqOYBPLe2Jfc9MfbErDUCMQktg@mail.gmail.com>
 <MA0PR01MB567180C0FE89E3BEBAF2B12EFEC42@MA0PR01MB5671.INDPRD01.PROD.OUTLOOK.COM>
 <CAMRc=MdX6KiGk1zBRK3bZpN3iM16-8mDq40sTez6YO2kJEq0zQ@mail.gmail.com> <20250221122125-GYA35549@gentoo>
In-Reply-To: <20250221122125-GYA35549@gentoo>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 21 Feb 2025 13:33:26 +0100
X-Gm-Features: AWEUYZn-ieTWF1DGfmKnjgr1pt858szsAsKVHHDN3y-ddz38_1CC6vtmW7gZy14
Message-ID: <CAMRc=Meg6kdEQ6B+u+rfcBc1d6rMO-9Prz4oFoSF-WFZorZeNw@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] gpio: spacemit: add support for K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Chen Wang <unicorn_wang@outlook.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
	linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, 
	linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>, 
	Yangyu Chen <cyy@cyyself.name>, devicetree@vger.kernel.org, 
	Palmer Dabbelt <palmer@dabbelt.com>, Jesse Taube <mr.bossman075@gmail.com>, 
	Jisheng Zhang <jszhang@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Inochi Amaoto <inochiama@outlook.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, spacemit@lists.linux.dev, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 21, 2025 at 1:21=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wrote:
>
> Hi Bartosz Golaszewski:
>
> On 09:37 Fri 21 Feb     , Bartosz Golaszewski wrote:
> > On Fri, Feb 21, 2025 at 12:36=E2=80=AFAM Chen Wang <unicorn_wang@outloo=
k.com> wrote:
> > >
> > >
> > > On 2025/2/20 21:34, Bartosz Golaszewski wrote:
> > > > On Mon, Feb 17, 2025 at 1:58=E2=80=AFPM Yixun Lan <dlan@gentoo.org>=
 wrote:
> > > [......]
> > > >> +#define to_spacemit_gpio_bank(x) container_of((x), struct spacemi=
t_gpio_bank, gc)
> > > >> +
> > > >> +struct spacemit_gpio;
> > > >> +
> > > >> +struct spacemit_gpio_bank {
> > > >> +       struct gpio_chip                gc;
> > > >> +       struct spacemit_gpio            *sg;
> > > >> +       void __iomem                    *base;
> > > >> +       u32                             index;
> > > >> +       u32                             irq_mask;
> > > >> +       u32                             irq_rising_edge;
> > > >> +       u32                             irq_falling_edge;
> > > >> +};
> > > >> +
> > > >> +struct spacemit_gpio {
> > > >> +       struct  device                  *dev;
> > > >> +       struct  spacemit_gpio_bank      sgb[NR_BANKS];
> > > >> +};
> > > > Please don't use tabs in struct definitions.
> > >
> > > Why not=EF=BC=9FI see
> > > https://www.kernel.org/doc/html/latest/process/maintainer-tip.html#st=
ruct-declarations-and-initializers
> > >
> >
> > This is for the tip tree, not treewide.
> >
> > It's my personal maintainer preference. We do use both under
> > drivers/gpio/ but I prefer no-tabs in new code.
> >
>
> thanks for this explanation..
>
> my intention was trying to keep struct members aligned
> if tabs is a no-go, would using multi blank spaces to align be acceptable=
?
>
> something like:
>
> struct spacemit_gpio_bank {
>         struct gpio_chip       gc;
>         struct spacemit_gpio   *sg;
>         void   __iomem         *base;
>        ...
> }
>

No, that's even worse. :/

Why are we even wasting time arguing, can you just use a single space?
You'll get a driver merged and may just disappear from kernel
development, Linus and I will have to maintain the code so we do get
some degree of discretion when it comes to coding style.

Bart

