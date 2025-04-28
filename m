Return-Path: <devicetree+bounces-171355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FCAA9E88B
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 08:51:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA9243ABE92
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 06:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E52A51CBE8C;
	Mon, 28 Apr 2025 06:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="1K6otC4L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7EB64CB5B
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 06:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745823078; cv=none; b=HovLQdHd1xePZLjSLODKzJROZRmvjKa6b4agGHp6QSSHDVc4N57E2rBiBBUmnfQxjfCktIXaTXfOMztJBFQXS5zY5EnMlco8Q4Pac8Tebkb4/7EynRa2LC8ifBUT0OgKbHbamAJuFFkqSc5z4tzCpSIGw1NAyX7DdDzpV4OHdLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745823078; c=relaxed/simple;
	bh=yPwiv3LIPXq7QwC+Z6qeGGumORWMUcAQ8Rt34+S+TqA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eyUhaQJgiRnr1dgShBrPxYOAgqGjqeGsji7tDUX0nLVJGwelcEdD+vvDTt48ptNlmmiXTJsT39hdDIQB3CKdTrcu+22cug4yTQXQc0LfmZQU/3gGeySX8T6Sfpyn0d1XzAR5OE8enZAp9yWsJK84lhCZf+zcxB2PIdn6olTiE1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=1K6otC4L; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ace94273f0dso262836966b.3
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 23:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1745823074; x=1746427874; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=olp7njR9Ybm79qV02JWYfEZZNtFSE8MfHDfoR2yiSUc=;
        b=1K6otC4LVS8Mr2e6mKhawp9VCVtNjoaiXCOU8gPOnpx/XLl/euBLq5mV+dzC8MRa9u
         xyD/rBCRFZ2eOrfwngfGPbTYBhMA7O4xaJ8h9GQKDMiLIN6zKbjHtVBA72pG8tc4wNy8
         r93ENVJB9hSzfvDyd+6Ogdx+48I7BRzwGceuOtj4aGnt5SI1tBwletGkBUsg1AcM1mx+
         yau5zc/m4KGbPKUZdH50LBq7TvHx+k1jM8yNY28SWcZHZx0KZOWzjthAEhJ0xGhKYU7K
         lWqSlyZDLLff1ywCcDvWOXXJ/EOPC/Gzo2G7WILW5jiyPDSDcQZerUA97EgJHHUllxdt
         tFtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745823074; x=1746427874;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=olp7njR9Ybm79qV02JWYfEZZNtFSE8MfHDfoR2yiSUc=;
        b=M7610s2f1xosb6YfMakYAQnpyi4UFW8Agp9u3O17NLRuJoIRThCQlXbGDRLaZm1Os4
         nKNhMot+Lawn1SjSG02nrBscoZlfgkXH4Gzgb/G8z0xES5iWBb4llnz8dbQEuKnVD4YI
         s6DXK6ghqDZPX4r4ExYxWKkOjHW0QF5i7/3v/HOI2jFfGwR0VdldFAvZN+mPqOoy/JMu
         Oa2PpyJOr34HhdIX2udkzfJ6GaCqyecb7U47quBnHrOmOJX6gbTN/n6KD5HpwRQTBVAN
         aMkqg1Ugn9padoUsM/w5qmpcXSydH6wNkopU6rvPux/vZYFTrfx2zod8jbC/NxOKa1PH
         xjSg==
X-Forwarded-Encrypted: i=1; AJvYcCVKC8bzXwLE2uKvcjal/uzNTiNhDdkxV9S/BHy9h+PUqF4BWoEiLknIbExNS7doc8cI+hbhs23VFI2p@vger.kernel.org
X-Gm-Message-State: AOJu0YyfcChwjffiu7tI8+koki27uCjaQRbnoRf+X6d3toZk0dGA3rqY
	yGP/NrnuZJaMy2cpKLdCIq1TCJHqan010xJZGTUrO9C8CHkS58A+75MZAZxQEUZdcBqHjROPhro
	DI4i1JlHK8k4pnyWbRhi+VJLXt8Fh18amZMgg9Q==
X-Gm-Gg: ASbGncuSzrlcTJQBJOfQuWSh47NF3Fh8hM79xrTTh1X7FtBZFAXHxVUxWdN2Mf4xHWm
	8GiylNEYJocFyhaFfAJfRuGcDgcO3sauTJFFMRyt80e5mLBaxDhU3Oaa1+iHXSO/6CV57LsBmYs
	G8pU/pK38AzSaps2+qNb8BiHA=
X-Google-Smtp-Source: AGHT+IEtEaxs9n/fqGJEuZ8Xotr69RVdjbKFMaVctCQmuSvnkMpXaGIdiMr0ZU582rbQFSZfQks/8XyJ+CzfPm0I+P0=
X-Received: by 2002:a17:907:1b0b:b0:ac7:4d45:f13e with SMTP id
 a640c23a62f3a-ace710a0eacmr947603266b.13.1745823074048; Sun, 27 Apr 2025
 23:51:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250420070251.378950-1-guodong@riscstar.com> <20250420070251.378950-3-guodong@riscstar.com>
 <mzfiyc2me2smqrrmiymzkzxvsyjmst6ggy7scq4wxz2yfj2ef5@np3h3k467mbl>
In-Reply-To: <mzfiyc2me2smqrrmiymzkzxvsyjmst6ggy7scq4wxz2yfj2ef5@np3h3k467mbl>
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 28 Apr 2025 14:50:52 +0800
X-Gm-Features: ATxdqUER8JSTuuOTantCFeixTZRLC93zvf7G5uIviwPU2QmuQNBr7asOpX-Fl3I
Message-ID: <CAH1PCMZ4hqYo9SLCnzHYp_EiQKs5nhgW3XpxwqLEk4eX8=vWPw@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] pwm: pxa: add optional reset control
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	alex@ghiti.fr, dlan@gentoo.org, p.zabel@pengutronix.de, drew@pdp7.com, 
	inochiama@gmail.com, geert+renesas@glider.be, heylenay@4d2.org, 
	tglx@linutronix.de, hal.feng@starfivetech.com, unicorn_wang@outlook.com, 
	duje.mihanovic@skole.hr, elder@riscstar.com, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 24, 2025 at 3:30=E2=80=AFPM Uwe Kleine-K=C3=B6nig <ukleinek@ker=
nel.org> wrote:
>
> Hello,
>
> On Sun, Apr 20, 2025 at 03:02:47PM +0800, Guodong Xu wrote:
> > @@ -49,10 +50,10 @@ MODULE_DEVICE_TABLE(platform, pwm_id_table);
> >  #define PWMDCR_FD    (1 << 10)
> >
> >  struct pxa_pwm_chip {
> > -     struct device   *dev;
> > -
> > -     struct clk      *clk;
> > -     void __iomem    *mmio_base;
> > +     struct device           *dev;
> > +     struct clk              *clk;
> > +     void __iomem            *mmio_base;
> > +     struct reset_control    *reset;
>
> Changes like these are the reason I prefer to not align the member
> names. Luckily reset is a write only variable and you can just drop this
> hunk if you use a local variable for it in pwm_probe() below.
>

Thanks Uwe for the suggestion, I agree.
I will update it in v3 by dropping this hunk and using a local variable for
reset in pwm_probe() as you recommended.

BR,
Guodong

> >  };
> >
> >  static inline struct pxa_pwm_chip *to_pxa_pwm_chip(struct pwm_chip *ch=
ip)
> > @@ -179,6 +180,11 @@ static int pwm_probe(struct platform_device *pdev)
> >       if (IS_ERR(pc->clk))
> >               return PTR_ERR(pc->clk);
> >
> > +     pc->reset =3D devm_reset_control_get_optional_exclusive_deasserte=
d(
> > +                     &pdev->dev, NULL);
> > +     if (IS_ERR(pc->reset))
> > +             return PTR_ERR(pc->reset);
> > +
> >       chip->ops =3D &pxa_pwm_ops;
> >
> >       if (IS_ENABLED(CONFIG_OF))
>
> Best regards
> Uwe

