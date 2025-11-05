Return-Path: <devicetree+bounces-235267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCF5C36783
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 16:50:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F133463069
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 15:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EA1132779E;
	Wed,  5 Nov 2025 15:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="SfrmACU/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71516262FD3
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 15:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762357045; cv=none; b=Q2hrzVMZi2Wcp8UdYNOxahrTwW2WJMfMQJ3JlyXURha963dP1XEXOQTaxVFR73gix88NqE3Z38lcyhnOoJPVCMtkM+9YPrcjxyeMmWqDphelpUQYzhbyegcLvb4tO+qkRLJ99gVpIJ/WDdzi0+sQlr9OZPjeZ68s2+YmgfnHHC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762357045; c=relaxed/simple;
	bh=tsjWVsRRSjnvoclSRHwK3diHpWnX1Sxoum+6RmQp7f0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cqYU/EpLPPyXssGEJrrVzC3JGW3JVkWUcnfJYlJhdMT04By7CubGa+xVRhXOoMmYDnpGtEa1Fz3IihkMx+31ClHwK39PVA3krZ6oD9Wzf1y3JsmFJVCulXW3TYb0YHWL0sSj/o2UCkznuZA/O5lq+g5nRwH/hQxKtZBENHqlitY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=SfrmACU/; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-37a3340391cso35480371fa.3
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 07:37:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1762357040; x=1762961840; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KQVK9c2pVcdVjyDwid4GqvWLwTZQh0fbwLctVK8OiSw=;
        b=SfrmACU/IaruvTLTM/8Y5f58WVjlsUz3ZQgyna9ZhhrN9Ep2dui8B2FZ+RyWkk4534
         xeO9xYWeF9VW3kGPjgYBfkwbACDJsFm1lCwoKdanOMXQs5ZVhvPW+NBEjwAbxT+iO7EV
         CrwDDGhFyVYUKPc2haSUD4utdCPJWiWvc0WpNaL9dXl1IUkpVi1iydp/Eb/trQY/3Jug
         izYn1EY3zvDPy3R8G3sBxQoG4GZ1rsdM1GXfNpz7JSwDopVniUprTcolFZDq6na2KboL
         RBlpO2YCopdLkL7N5kx57yTRmaV6w/dG2CWOgsUe4x8tl/+JOTHdUcguPtGx+cNwZEdi
         4dNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762357040; x=1762961840;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KQVK9c2pVcdVjyDwid4GqvWLwTZQh0fbwLctVK8OiSw=;
        b=Wip/Ge+y4vwzACmZ5ukIN+uygNbPT/7SrPa31kvMcn2iqyOXI1nrm9oN+qLdf6ypk2
         WP7a0znsbjy9fpEBNzi3QqARwWigcoM4MNtUHGLtyYD9zRgmUcaWdhWqt0yQvq7g61Ro
         3yK9R0piyY+JrKd1OJTnKvtOmuSKK9DjuNdHOmBCB4yTJ7xStAKZXSBGGrFauLxZZCJk
         blMwD3T7lwD/uvJEL0c67DYGaaKFAyeCEgHki0zaMzoLj6yhGpeRW4CvR0Cf/viqyN6/
         wXBnAbUTlc/KcFjlPmFHjll4MPUbPDkw7qCDkRnrecJ9pfHMjZCncKdl0+qn12tMlshG
         0j/g==
X-Forwarded-Encrypted: i=1; AJvYcCXiBTzn5qzptOCxTqEn7JAymJb7wyWx37QPXPJ7ZIYe7ZUMsJXf/Lbp/QjzxfjFI+yAR9/89RtuhTo7@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx0XM2QcOw0kjk1tBtCYXEVm8JyYaHnXwFSJijgVpU2Ab6seJJ
	TzdymXOQwhumqbDmKJuBNf8DQ7D2NE4ecR9iO2AmIEm+UzFjSuOeH7+5e4Y3aOf87X7zQHPd9lB
	mODsLK9iuWG9j14DRhIRcRJMn+pz+4azDPkpzjGFE/LMusWM7O7Xtgy1nxA==
X-Gm-Gg: ASbGncvpiVsb/2g+uXnAPdYdQTrx4YS3q3mWu9DoJTCuCCy9MVTchO9jhDhjQYU8mhT
	tRiHHMSmASEmKX5NGwc0UpFV0k8anPLv4JXPVY0yjCexXJEOG+uDVb2xe6Rgx9urn3utUH61+jK
	R6+vtOT6Me/7VTeCVasdySgVCFrhkRCayncI30EPT0h2rXEhEMdL5M0RN0f3lQWWVl/uPD4+Vvt
	tJWP009FZfhKggHhiiITHO3MKm3P7U2N5PORn1aFy2zRG1jAlP7B+LJcs3EjFkD63UtBkhL+eo6
	RS2hrmjTh9hW3d+u
X-Google-Smtp-Source: AGHT+IGZLSyHZwdSHoXOFtP2iNbjQMFV/+/RajiafeSS7vcfUC9MhdnV6BD4cJxWmnaWMlh79AK6+5Ypz4lKmcTRIqk=
X-Received: by 2002:a2e:b88a:0:b0:37a:3412:1415 with SMTP id
 38308e7fff4ca-37a513d8404mr11832991fa.8.1762357040210; Wed, 05 Nov 2025
 07:37:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105103607.393353-1-jelonek.jonas@gmail.com>
 <20251105103607.393353-3-jelonek.jonas@gmail.com> <CAMRc=MdQLN5s+MpkLUF2Ggc4vYo30zOXrA=8qkGmXvu7N3JjeA@mail.gmail.com>
 <12efb5b2-058e-4a9c-a45d-4b1b0ee350e7@gmail.com> <CAMRc=MehBmd+-z5PRQ04UTWVFYzn7U4=32kyvDCf4ZQ4iTqXhw@mail.gmail.com>
 <74603667-c77a-e791-d692-34d0201e5968@axentia.se>
In-Reply-To: <74603667-c77a-e791-d692-34d0201e5968@axentia.se>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 5 Nov 2025 16:37:08 +0100
X-Gm-Features: AWmQ_bmO335tsrm3LPxOxIYQ6LeZj7W7E6BVgAdcHPrSnLlU0JTYxziQYjrCYrc
Message-ID: <CAMRc=MdkkRnwxx3vcMB3duOteQNdC9eb+A1P4GActou=xY9yJQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] gpio: add gpio-line-mux driver
To: Peter Rosin <peda@axentia.se>
Cc: Jonas Jelonek <jelonek.jonas@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Thomas Richard <thomas.richard@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 5, 2025 at 3:19=E2=80=AFPM Peter Rosin <peda@axentia.se> wrote:
>
> Hi!
>
> 2025-11-05 at 14:24, Bartosz Golaszewski wrote:
> > On Wed, Nov 5, 2025 at 2:23=E2=80=AFPM Jonas Jelonek <jelonek.jonas@gma=
il.com> wrote:
> >>
> >> Hi Bartosz,
> >>
> >> On 05.11.25 14:15, Bartosz Golaszewski wrote:
> >>> Hi Jonas!
> >>>
> >>> This looks good, I'm ready to queue it but I'm afraid the consumer
> >>> label "shared" will logically conflict with the work I'm doing on the
> >>> shared GPIO support[1] as the shared GPIOs will appear as proxy
> >>> devices containing the name "shared". Do you see any problem with
> >>> changing the label to "gpio-mux"? I can even change it myself when
> >>> applying.
> >>
> >> Another name is fine for me if it conflicts with your work, as long as=
 the name is obvious
> >> enough. Not sure about "gpio-mux" though. Maybe "muxed-gpio"?. Just le=
t me know
> >> what you think and if I should adjust it or you do.
> >
> > Yes, "muxed-gpio" is good. I can change it myself when applying.
> >
> > Bartosz
>
> Isn't that the name in the device tree?
>
> Is
>
>         muxed-gpio-gpios =3D <&gpio0 2 GPIO_ACTIVE_HIGH>;
>
> really satisfactory? Can you really make that change as you apply
> w/o a re-review of the binding?
>

Ah, that's what you get for revieweing with a fever. :/

You're right of course.

And yes, we'd need to modify the bindings.

> Or, are we talking about
>
>         glm->shared_gpio =3D devm_gpiod_get(dev, "muxed", GPIOD_ASIS);
>
> and
>
>         muxed-gpios =3D <&gpio0 2 GPIO_ACTIVE_HIGH>;
>
> ?
>

I would make it: glm->muxed_gpio =3D devm_gpiod_get(dev, "muxed", GPIOD_ASI=
S);

Jonas, could you please send another version with that addressed both
here and in the bindings?

Bartosz

