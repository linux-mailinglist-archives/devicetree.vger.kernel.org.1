Return-Path: <devicetree+bounces-252247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C72ECFCAF9
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:53:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8E473012DF4
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 781052E092D;
	Wed,  7 Jan 2026 08:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="N3QJmVtE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC65E2E0920
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 08:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767775978; cv=none; b=GnsNwuTpwAWYrmj0z0PY48URDg2/TWZh9BElkgM5wXLVxiBFksbISILjz7Fiyryobmj5zIelQhEZs/5t1vAkDPcbEFcnTjbDu8QJCrGoC0Y1cPhNYtQI2724SvlB+HX5Xfc5pjMBfnY0JeVXS/8H5oaz+vkM5QtpX2dctM6j70k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767775978; c=relaxed/simple;
	bh=AJLa3JYQfz0DQQzpNgfhQGKPkYNQ+104HNJBWZv6MME=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H0RQhOsA6prI5nbfdL0iR4/HQ6x6LkqSh7s0IsJgCQHSINX/Or+e56VCyLi6v3ZyiZ0gOSqile16802z5MAVl9K5eHyN+mJ0A+F1UIFH9i4LbsZ/fRso3GR2x/8tXJXFiEmJQFOPhGPW6sqGcLhnSQDWZQ2GwwiGN40TKJrOwBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=N3QJmVtE; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59b6df3d6b4so860157e87.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 00:52:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1767775975; x=1768380775; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TiYR95RCX1Rsmkrjr01bGS++uVqFK5QqSvIRMgYOyW8=;
        b=N3QJmVtEe/e1zL+eDBkGamB+UxlwW1QxOe1SLGFIIuFXmWv7kBkqF9Fbf1SFid4p2q
         jPJ2EfDZe94OBnz1gYVHSl8TYIgd3O9+7Bm6cLbmCuaUJwCCq8R3+bwF9KvvqdDLl1oS
         Cv37bwMCqO5eGQL7kYTqeDAEMagVCg1hrJsmENrTUW7dvQU2ICVR8JGbvE9tGACHgRCO
         gsxk0pmxVceXT3Tss8SbzJOOmQsGLvlB5LCp7J2ETHiGg340+cKemtl80X36/Gm3CkXd
         ts/y/rn+LHZL7wkdGOyUTc5HZRnK/fM12GvLMoElZaRYqXe2S/1hpwZDDKMcUncvylni
         JiHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767775975; x=1768380775;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TiYR95RCX1Rsmkrjr01bGS++uVqFK5QqSvIRMgYOyW8=;
        b=EGVGh8BPmxdvAxb5tLbptUnOkG++dsXc78KV4Ch+RVGG0Ia0KLkRZ3ubm3RB98vFSj
         7Gyu3ezkmBJknVxJqutPFipHRMLyAz/RcsPof2rI673XOR3I0ixQnzlj4PNWkS+ZExay
         iD7B463ekRPqxQc76QbLy99GS717PqClcol1noq7Jlc6aaMD3hzjtSVMRJ+kO8/9+ENb
         d+EciNOMTuFbcySC/qD4McITLMx9OssrRpXbUifVvoxm5o11UFgV9eMrX5ftKgihwwqe
         uUKaYcDELaCJDGQsncv8XbiQ5ZlpW+Sj0Uq/qFeBFwV2EiqCaL8SVfGajJBSzZgSQjQ7
         qsGA==
X-Forwarded-Encrypted: i=1; AJvYcCUHy+Ar/1kgMmVvbXlQRN8SmEgtYqDxBpqWgYjFyM81Kym3WfN1Omk61Dr4qjiVu9SPhojltOShzKTx@vger.kernel.org
X-Gm-Message-State: AOJu0YxqalQlbh/Z+G+Ghrsl7CdhxLy/LN1w/JnuC3EsQlCFiQWfHgkG
	1fOWN4oLhJHAxZGrrAoiPNjwxme7hvC6MuLmV62OymPiK7ioMSi3dMi8bFYVNSS996tGuxTEc34
	a44MAqIvwnhYxJv6thjA4+9lToOG5xJNsARaW1pmvRw==
X-Gm-Gg: AY/fxX6Q3gTGtLtzv03gNSgdRgmN5V5eFgk9YjrPL/Ds1bcyYM09SNieiIIMjwG3Y8o
	+/oRRTXZPAOj+5HvLWheuXqAsKNpwyIbafc64zi2dDyKQ5ADUiAfTBMVmn/iedkGFJxoHHVVjq7
	yH1HKC2n85Dhl45M11BiceAR+c+rEfxKAYULbWlHFNgYbLwbze6zezHRDdYL4AzSE6HIlZtpyDT
	pbgKBFMT/cUSGVujDZ80Nk5CBkspsU+yhgqJiq6dLw+f0rZPBJNBLubtbBOLM2J+pLJ+rYRJX+S
	u50Gj8isrqyF1N7eA/xFXz3zWA==
X-Google-Smtp-Source: AGHT+IE9IVx704FMY0XD6xTVrtJ1kGE4oZVgAqbPN1AOhslR6/+G3yMJ6iR/bp+3qHVsWrcNGzl0iyDagp20t0YM4bI=
X-Received: by 2002:a05:6512:1285:b0:595:83fe:6994 with SMTP id
 2adb3069b0e04-59b6f02d0ccmr596669e87.33.1767775974640; Wed, 07 Jan 2026
 00:52:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251227180134.1262138-1-jelonek.jonas@gmail.com>
 <20251227180134.1262138-3-jelonek.jonas@gmail.com> <aV4b6GAGz1zyf8Xy@stanley.mountain>
In-Reply-To: <aV4b6GAGz1zyf8Xy@stanley.mountain>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 7 Jan 2026 09:52:42 +0100
X-Gm-Features: AQt7F2rgT-aQYEeRjaKCZ2mkK0VP9row9BrTgcIIcAVVObF4MOOZhMaX6OJo4Eg
Message-ID: <CAMRc=Mc39GNBXFX6DOAr3mgk=FdPTUZBaxr=6jUA+zBbNizt9A@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] gpio: add gpio-line-mux driver
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Jonas Jelonek <jelonek.jonas@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Rosin <peda@axentia.se>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Thomas Richard <thomas.richard@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 7, 2026 at 9:40=E2=80=AFAM Dan Carpenter <dan.carpenter@linaro.=
org> wrote:
>
> On Sat, Dec 27, 2025 at 06:01:34PM +0000, Jonas Jelonek wrote:
> > +struct gpio_lmux {
> > +     struct gpio_chip gc;
> > +     struct mux_control *mux;
> > +     struct gpio_desc *muxed_gpio;
> > +
> > +     u32 num_gpio_mux_states;
> > +     unsigned int gpio_mux_states[] __counted_by(num_gpio_mux_states);
> > +};
> > +
> > +static int gpio_lmux_gpio_get(struct gpio_chip *gc, unsigned int offse=
t)
> > +{
> > +     struct gpio_lmux *glm =3D gpiochip_get_data(gc);
> > +     int ret;
> > +
> > +     if (offset > gc->ngpio)
>
> This is off by one.  Should be >=3D.
>

And it's not even needed, GPIO core handles it. I'll send a patch to remove=
 it.

Bart

