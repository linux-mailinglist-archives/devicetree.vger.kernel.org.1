Return-Path: <devicetree+bounces-170299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 81876A9A6E4
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:53:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2856B188B25D
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:52:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DC7820E716;
	Thu, 24 Apr 2025 08:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DB7L+g0E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C6EF20102D
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745484540; cv=none; b=fI7KN0/+n9ZTFfqf1OKjIvZbK8/lmza0nAIXobOuO4LSKYSSCpTFgi69RXvd0aDJghWjWu7pynUV5WKuIxlcE1WP7maXL9IOCGs7NDwvUAhX+yjUPI8Z4qkhcu5hTt2HXLmt9fYhbyFMFy6na/m8hI4v8JX0CO7iMGfFQYaMo9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745484540; c=relaxed/simple;
	bh=bN+ogKEKRzfQQuY4t0TN0TGxrm6Tw0q/1hhOwW1I+ow=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kjmHmTLNhFhd2FhjxKp53YB0OKqq6tJ17e0actlrRB4pm65oHMXyjvDjAgQXpvpgo4iuMUWde13E5Al0T51ajSx3gaAsyRTtzmhbXlux/Xy3e+ImrQa/sfdY3X0oKGNMZ4klhxYsxij/nB21uXTRlRXLngllIA8uNVCmBEp2CtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DB7L+g0E; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-310447fe59aso9859121fa.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745484535; x=1746089335; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KQRA7d452oryDtFvJjN4gzdIi0T+CiF3zcn8EUThZUo=;
        b=DB7L+g0E8n/ocHOXDvLaDw7VMLHqrc0CM2WTDAL4ZwfHtEpDLarD9elbKn3DsT5ukd
         7MCado8Uanz7ectGCeyPsQYZLqeo4IOiKHX/igv6BIvu4w3L8I86EXieQfjdIyybA1bl
         W7lK8GT63sZBO4+cZff7i3frbKidUMOAJOaHUAXTpKZRySXDPgdSuJbI4vjo2PUpcDTj
         NGDoF9M4+2qxY4EsBWts9rjIooLdL9zZLsBXx2c8cdg9zvgF3jsNX3IHq0jQyPr+yHKW
         iTpP4GTefbbB5A66FcwRh4iZqDm/arVSfbyeQLfjo2OyaaCh8VA4bDB6y4XQgW2Ldblg
         mB+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745484535; x=1746089335;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KQRA7d452oryDtFvJjN4gzdIi0T+CiF3zcn8EUThZUo=;
        b=g6L0N2YzezEdCGky362+W5OneQZz6LGy3Zp0KgScGYKX2DwQLN2adKNUQi20vbxkwt
         CMSsGuhzYNtIBtW+FmGlOR5Q7XzLWGZW9QXO4oJ1D9N62RrHx8hzx1npYt84EU2ts4Wx
         HC7u/+pkjA27y8E+OqUw3EiRfhuCkl62rLXfsVznfbCU6dHaqnTIgjAfchsQKRaFxnsP
         vIGjkMYwc8UmbEu30XOSgQgIiiIQZsnN6xWTDGbIwz33/ILAl13XRvCk1g04UOdnueaQ
         uE7ZDXwtpbjs6JU6fG+3vv7BHd1R42tdDP4Xea92AuTeAEIo+HgHVB/rb/U+FMQmuVNK
         Pacw==
X-Forwarded-Encrypted: i=1; AJvYcCXgWvtcRnjvOijIQggcRYPQL9iSjmA2FqCURTDV+fHGAIYu17ivGD7i7oRugS6uEknPtUaz1SDSDDLY@vger.kernel.org
X-Gm-Message-State: AOJu0YxXMIm7ewtCU98Ulq7FxTKyqMsv1744RvE0dEpdsyxVi89qQVFZ
	goCW+LvarlxjrxjA8vr3pMXD3tXXCKHCQKYO9zhL9cEcgn7lZO9RFUFDD4YUiAgw8r1fwvQ+wG6
	sFUiYXGKswdXuGdUWo5KME5MR4Jh6PRHSAuL9QpN5yOzgbIgAYqU=
X-Gm-Gg: ASbGnctZxoPCKqojziPDIgz7Jw5EUo8CW2ybazlCxdISWhY7fqV9Va2EpjAbjhcdF73
	GR7liaJ3xbf40SwXohAsFpwLrk/XoHRpvsswvAvdEAgcc/HdNbyOv16q9c9L7sLZqJtlqoFMYx+
	tettuc2R1NHuYenb8HLOLDaQ==
X-Google-Smtp-Source: AGHT+IE7By8Nl0BxiZtKTH0/jnSaFSHNwDqu5lHCKflXtrMxeoGrVVWZsRliLty3NtgjSGU/XT7xVZJZbRmvKEOyiGY=
X-Received: by 2002:a2e:bc0a:0:b0:30d:7c12:5725 with SMTP id
 38308e7fff4ca-3179ffb04f8mr8038931fa.33.1745484535556; Thu, 24 Apr 2025
 01:48:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250422162250.436169-1-uwu@icenowy.me> <20250422162250.436169-2-uwu@icenowy.me>
 <CACRpkdbGwPyQgVL18iMvUTAvh4XTjo6g3mGT4e_b2aNAjr2obg@mail.gmail.com>
 <B4C8B369-E345-4133-A106-7C5E71513329@icenowy.me> <CACRpkdYgkDpC1iJ-KaZj2GZ3A3_V=3-KQef_nCRhMDrUK=FHXg@mail.gmail.com>
 <c5efd677fd2199cbf8f9d6006905acdf19da02bc.camel@icenowy.me>
In-Reply-To: <c5efd677fd2199cbf8f9d6006905acdf19da02bc.camel@icenowy.me>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 24 Apr 2025 10:48:44 +0200
X-Gm-Features: ATxdqUHt-uv_Jd5XJrneHwwa9WAzFXDYu1AWIehUvUHevx0I0mgG49yxhuUvhlA
Message-ID: <CACRpkdbmF5BucsRjGZYgT709QA_Qnd3VrDoXg9dJdtAb_QLPwA@mail.gmail.com>
Subject: Re: [RFC PATCH 1/3] dt-bindings: pinctrl: jh7110-sys: add force inputs
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Jianlong Huang <jianlong.huang@starfivetech.com>, 
	Hal Feng <hal.feng@starfivetech.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 23, 2025 at 4:22=E2=80=AFPM Icenowy Zheng <uwu@icenowy.me> wrot=
e:

> > So clearly the entities that you affect are in the same numberspace,
> > and that is all we care about. They are not enumerated in any way
> > orthogonal to any other pins AFAICT.
>
> They just share the field width, they're not in the same numberspace.

OK I trust you on this, I just had to put a bit of pressure so we try
to stay with standard bindings.

> The design of the JH7110 pin mux control is quite simple and stupid:
>
> - First per-GPIO map configuration to map the GPIO's DOEn pin to
> internal tri-stating signals.
> - Then per-GPIO map configuration to map the GPIO's DOUT pin to
> internal output signals.
> - Then per-input-signal configuration (note that it's no longer per-
> GPIO) map configuration to map the signal to a GPIO's DIN (or fixed
> low/high).

I get it, I think.

So if I understand correctly this set-up is necessary to use any one
pin as a GPIO pin?

In that case, consider that this must probably be deeply integrated
with the GPIO subsystem rather than the pin control subsystem.

For example GPIO usually has this:

gpio-ranges =3D <&pinctrl1 0 20 10>, <&pinctrl2 10 50 20>;

Indicating which pins are actually routed as GPIO and implicitly
contains the information you need as to which pins are
affected.

There is also

gpio-reserved-ranges =3D <0 4>, <12 2>;

that can be used to say certain number ranges in the GPIO
controller can *not* be used for GPIO.

This type of inferred information should ideally be used to
infer the configuration rather than hardcoded properties.

And if you have pin control as a back-end to GPIO, the
callbacks in struct pinmux_ops:

        int (*gpio_request_enable) (struct pinctrl_dev *pctldev,
                                    struct pinctrl_gpio_range *range,
                                    unsigned int offset);
        void (*gpio_disable_free) (struct pinctrl_dev *pctldev,
                                   struct pinctrl_gpio_range *range,
                                   unsigned int offset);
        int (*gpio_set_direction) (struct pinctrl_dev *pctldev,
                                   struct pinctrl_gpio_range *range,
                                   unsigned int offset,
                                   bool input);

which you could implement in jh7110_pinmux_ops to get
a tighter connection between you pinmux and GPIO controller
portions.

I have a strong feeling that the missing piece is using these
callbacks along with the gpio-ranges to connect the GPIO and
pin mux systems together so that you can set this stuff up
in the above callbacks instead.

That would save you the weird DT properties that will be a real
pain to keep in sync with the actual use.

Yours,
Linus Walleij

