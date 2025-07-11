Return-Path: <devicetree+bounces-195591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B47AB02352
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 20:07:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 135E0A4029B
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 18:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D7052F1FC8;
	Fri, 11 Jul 2025 18:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FQwzFBCb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CC01FFC55
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 18:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752257234; cv=none; b=sjumvALKOf/8yjgsXjaaMmWX1ABMtNAKBKimiJbv8eNb+9Ij530wEomt9CQpqup8IZC736G7raj/HelCdcBPB4wm9E/2C9ZxmviwEYA8ig3bWc4nqkFcnIlA3TP+qk26iOZ9ff4bbYBda8JvGYxdA0sbKWkJEqEPBb5CmSfT6Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752257234; c=relaxed/simple;
	bh=yExFakHAJfI3qosFSAAl5RB1xxS2y15BsBL7kfeIt3E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eA8AaOG8CilyluSj1rhTZFZvRz+0GS53ZFSyuFqfB1a0VLhhi4XGkRAVWzyHSXHoYjEbvCdOwI+7IHzvSQSL/olXUVrd7StKOftUuiCa5MpTi56wu8oy/O7/GLPP7shKQeJESAE+RWbZ6O5MkxL9VG7QGnAfViUr4VoZx4HY7Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FQwzFBCb; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-32b2f5d91c8so17879551fa.0
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 11:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752257230; x=1752862030; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nv3w+fmUK+KORgHTnerP5clwh8BNPjGSYNzQTi6VZkU=;
        b=FQwzFBCb4AjO/Z2QecOvAJhHUdUr6ikaoVpRID4LuKF7AOIijQzOYyu7LeXC9ecPLi
         UzvqHJ8oyGt1gZYW7NRM3cejh65tT2CBnMdurxkRziwQXKnTbDxK1jBNNGyGph26EoNB
         gF3tOkT73OW/NRcDkAeHrPs5SKS/jAD6rxnErxYX7WzVw3iS325TJKsj5M9ARPpHmSaI
         nXxqTdl6WxHbeu4Q15vu7/tTZ5KGx7vALBrftD51EGcL8rVkHqA8fwR6SRVgWh2zcan1
         2HDsuto7H36hgTSsVNH/w8TFX3Vh6DuKKkeCNoVZsOCoJDPCnnNkR6EuKwqi5BcXF0zc
         yatA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752257230; x=1752862030;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nv3w+fmUK+KORgHTnerP5clwh8BNPjGSYNzQTi6VZkU=;
        b=GzsdPjzVwFaLckeJzyu/VCKGImxdJSQZmgVe7arxFpWZSaq9hFCifizQAWXMMqkWb0
         yo4/lfE0u5P7F7jCxn/+amqV54tOacBJs8xeKwBw3nzBZy9yrbl0NDFuwwr0DAzg84Wf
         Ag05fxdvvhqBi45Tt7q6uMwnQxWtD8LaCUuZFf3QiwrWllW+/nlV0d8SBM7q+BvNrdiP
         ScVf4DrHNssaja6cK9Stxf2q7vrgs5oMQooCsp57cVMaWkDKGDkzIcFi2YUcsvTCU7nR
         QHms9QKC8NBVZpFHwExNX1fmP7S9jEf+hvWpwXZi2ACQxdrIvtdeB0EeSc2Tls9j8gmH
         Zv9g==
X-Forwarded-Encrypted: i=1; AJvYcCUsgWvXT2vsADgP5xVwbyaM3zNxQ0RAP33nWgolR4lHKuVFcR/TGFv6ZpTioFyjd/Z6sTKgStPAgmJX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5NaDQ4lrQv/JznSKEERXUGUmfSPBf88nz5Tqk6E7RK6B8ZYZ8
	bkqTxhwAJjPkgKP8FG5RbV4uMWZk2yW0TYiqcVtqRPialZH/O1WMHMC85tXDbNUDlvYrvaMT0Q2
	wv2rQDlxcZO6gArJ3EtUFFOmRztB5sohHOgUmH+bmcQ==
X-Gm-Gg: ASbGncuKFqq0SwOUxm3RXmZlbIA8+FCRHhG8z46UzcrL0+5w/RcIuAOqcK7luFXVfkr
	ChFjtOJSd1bMsvICAJnnks2LIK7XtSVuWaK+J9imjP/eMRLw4zK+NxHjBmx2xNk1XoGYFX2Pa3/
	JOCVlo6w1shrI37UZJEPKcb4qs+tCn895OoYLjCHtEqTesfvuZqMlFoG9Uw2YJpsSW5gPi0Qrdm
	8yv2G4=
X-Google-Smtp-Source: AGHT+IGIM1KxPQRBzMcvjUyIFovix8JCnhDiSC9t8kuenx33aIRcaw671XqV4qF75MRVLZo1ysDiT3HOSqWRKHB0f9E=
X-Received: by 2002:a2e:a592:0:b0:32a:5fe2:81bf with SMTP id
 38308e7fff4ca-33053411628mr14813671fa.24.1752257230460; Fri, 11 Jul 2025
 11:07:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250709112658.1987608-1-ioana.ciornei@nxp.com>
 <20250709112658.1987608-5-ioana.ciornei@nxp.com> <0d0e9cee-2aaa-402d-a811-8c4704aadd74@lunn.ch>
 <CACRpkdYDTXA7+YN2zRCsQxu2AKEAwbDVq8-m27ah5XTw9iRNPw@mail.gmail.com> <55e7aeb5-565f-4452-bc11-55968dcc0a9e@lunn.ch>
In-Reply-To: <55e7aeb5-565f-4452-bc11-55968dcc0a9e@lunn.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Jul 2025 20:06:59 +0200
X-Gm-Features: Ac12FXzkmFH9ARMnDahmUtA_lkqp-uVRKNUJ3trz8WzNmuV5X5nO7f8132IvtH4
Message-ID: <CACRpkda+=A5R4vZZQZKmF3LnGd6xMYbNomahgTW+j9aX9swBFA@mail.gmail.com>
Subject: Re: [PATCH 4/9] gpio: regmap: add the .get_direction() callback
To: Andrew Lunn <andrew@lunn.ch>
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Shawn Guo <shawnguo@kernel.org>, Michael Walle <mwalle@kernel.org>, 
	Lee Jones <lee@kernel.org>, Frank Li <Frank.Li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 11, 2025 at 7:45=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
> On Fri, Jul 11, 2025 at 07:43:13PM +0200, Linus Walleij wrote:
> > On Wed, Jul 9, 2025 at 5:09=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wro=
te:
> >
> > > This is not my area, so i will deffer to the GPIO
> > > Maintainers. However, it is not clear to me what get_direction()
> > > should return.
> >
> > This callback should return the current direction as set up
> > in the hardware.
> >
> > A major usecase is that this is called when the gpiochip is
> > registered to read out all the current directions of the GPIO
> > lines, so the kernel has a clear idea of the state of the
> > hardware.
> >
> > Calling this should ideally result in a read of the status from
> > a hardware register.
>
> O.K, so completely different to what is proposed in this patch.
>
> Maybe you can suggest a better name.

If the hardware only supports one direction, then .get_direction()
should return that direction.

What the patch does is to
read the direction from the hardware and use that in the
set_direction() callback, as if all regmapped hardware in the
world had fixed direction, that's wrong.

I'd just add something custom in gpio-regmap if this is
something reoccuring in regmapped GPIO drivers.

bool is_fixed_direction(struct gpio_regmap *gpio, unsigned int offset)

or so?

Then the core can use is_fixed_direction() together
with gpio_get_direction() to check if it can do
a certain set_direction().

Pseudocode:

mydir =3D get_direction(line)
if (is_fixed_direction(line) && (mydir !=3D requested_dir)
  return -ERROR;

Yours,
Linus Walleij

