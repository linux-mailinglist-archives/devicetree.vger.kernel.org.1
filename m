Return-Path: <devicetree+bounces-207450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF1FB2F830
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 14:36:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9AE8C5C24BD
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 12:35:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A434A305050;
	Thu, 21 Aug 2025 12:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ECUKSgZ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD0F7230BC5
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 12:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755779725; cv=none; b=NCRToOfgWpfzA6SfwK7X+0FmjogCZr8TDXBszS7UkhlOJJ0YprR0M8/mITHO1FbAbmzs7vamDoxWoQJpF0H/4m1CR4mkkly6ZVhyEmp0fye/Um3GpsrbpwRSLW7EroL5+RqK0o6rW6DtByEm768FvfT/8P4pQ01VxvQx955fuek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755779725; c=relaxed/simple;
	bh=6SsyLR5JLHjbKtKd89+UE2OomTPPbF3m8LLiO2yv1Fw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bru29yOpTB9GjAVmAFSKx5CygA58kInINVNlDvwZ0/LtLdThqNvpJpVoX8cOSrai0GgXDCwzk7K2wRDeMMwDzdHlJ5uIOqlD+phbu783OY6ZaI/D+c9MzmUBjg7vsU0EYga4lJoxA1+cZAaND1mpLClFK1Ycthht/muJnT3+Isg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ECUKSgZ8; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-33548b0f979so6191291fa.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 05:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755779722; x=1756384522; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GhK/5iEdOsHso7WQOtGlojYYvxbDlPHKTAFa/LVoWKk=;
        b=ECUKSgZ88yvUOQQSqH+KAq94mlBisWLvZo0kYCGyDd0SC2CIdfiMf76EY0kcPO/P5I
         BuxRrVAHVr6TvExHV+Vv5JlsXY8XytQZ+fmiDIc+L8g2G9L3iLI9UVIzwdjowxOd/lHY
         2I4nl9Y49+L3N0tcV3wQalryQqti1anNDxdmaxNNP/MYLSHX1FvBlaWsr+4DIpdc6gKs
         InwKiDuhwUGQndmCuG2tEvIQ31seIwiLoSV9RJcDYJtUsQj9/qqC3E8lJPV6+oLNmzMq
         AhB+hcYNahK8VuJuvdgtZG1KbbOwkuo5ZYVjhoEMsywnOk0eTClY1FLAcmh9zIyyOpBp
         TvkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755779722; x=1756384522;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GhK/5iEdOsHso7WQOtGlojYYvxbDlPHKTAFa/LVoWKk=;
        b=pXWdcqJaCWoYbJtDLQ+37MR0p2/jcvxlmPI4fuaCvUKM1hd07gYEGoIstmVBxC/xO1
         aaFn4M+TsGTx4BXnzPCga2ONL+6FgSYq5VTEQKTJGlewdf8A4nAm1MX9thr9tjtEXshz
         r6MjVdBgN/NnnYZvSe3di709q7GF5iJQVpMFSYVpDKOaWq4VwloUYNnQMTYeDQhqn9l8
         T19FmeIP1lsEDQTGe4dptD7R7foHtyYirWrZ1pu36Fd/ObeMK4wnF7rdOeRbnWVhfveq
         AnTwxodOf2iW0m4LH9XAbR3AbVISz+5VBchXxlT+kV/BzrfL0rjgiwgbs/H/8KJESL8s
         d+2w==
X-Forwarded-Encrypted: i=1; AJvYcCVCeTIVX2QFsnE2UZC92mbWGvq6Q8IiK5jBe2UabZZj7dXTLy4rROGEG2fm1AupvmMgmiSfaDVel3xv@vger.kernel.org
X-Gm-Message-State: AOJu0YwrcEUcnnIRbplOFB//jSLR2jZPsAjrEUFn/5JC1Uimz0qK0ki9
	0dUT0z+ai0SttLdm3hrUyI1sAP4KS+iEgQjZykIxXxX1oUKGtHagVSp3wPjVIOsZ7sd5JdN+VPi
	O0c4edyyWjFDkI928iEdK64/JmnPE3hgO/y6lgnboNQ==
X-Gm-Gg: ASbGncuoEvbhuBK6for3l3WuCNYINfX6iq2MoZNf8Qc33hBu9p3GigXYCP7L57iN8H6
	8k/loxnPbE0gXA5Wz+SnD5c9VnQHg/8yjuq0iEY9Q1gUk9rma6oJAxE9/62RZyNRsep2A7nR3Eb
	R0y+Bby1Vhk5WznhjkIwLUawr6mrPRicIAcRRXHFYxWZf/Rbyxtx6YS6StVCMSXZgEl9t+Uyhmr
	d9HC44=
X-Google-Smtp-Source: AGHT+IGFT1SOHRHnznv0j24jQt6OItG+VkUUqGfuDCNg03+god9R2F302j/+MpxBGP6QnhkRVuIKkbhRbFIemE8O8FM=
X-Received: by 2002:a2e:3314:0:b0:32c:b83d:64ab with SMTP id
 38308e7fff4ca-33549f4a0e2mr4716741fa.24.1755779721325; Thu, 21 Aug 2025
 05:35:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250821004232.8134-1-andre.przywara@arm.com> <20250821004232.8134-7-andre.przywara@arm.com>
In-Reply-To: <20250821004232.8134-7-andre.przywara@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Aug 2025 14:35:10 +0200
X-Gm-Features: Ac12FXyGD4nO__iucr4UwJuUtNZrpHlCHuWUThm0Y3PsAmwji1zokHx8_NHiyLM
Message-ID: <CACRpkdb-cudZE6mZH7vEOLU=aJFaNLX2dHz8Q_=2cfh1-JBRgQ@mail.gmail.com>
Subject: Re: [RFC PATCH 6/9] pinctrl: sunxi: add support for set/clear regs
To: Andre Przywara <andre.przywara@arm.com>
Cc: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andre,

thanks for your patch!

On Thu, Aug 21, 2025 at 2:45=E2=80=AFAM Andre Przywara <andre.przywara@arm.=
com> wrote:

> -       raw_spin_unlock_irqrestore(&pctl->lock, flags);
> +       if (pctl->flags & SUNXI_PINCTRL_HAS_SET_CLEAR_REGS) {
> +               if (value)
> +                       writel(mask, pctl->membase + reg + DATA_SET_OFFSE=
T);
> +               else
> +                       writel(mask, pctl->membase + reg + DATA_CLR_OFFSE=
T);
> +       } else {
> +               raw_spin_lock_irqsave(&pctl->lock, flags);
> +               val =3D readl(pctl->membase + reg);
> +               if (value)
> +                       val |=3D mask;
> +               else
> +                       val &=3D ~mask;
> +               writel(val, pctl->membase + reg);
> +               raw_spin_unlock_irqrestore(&pctl->lock, flags);
> +       }

This is now starting to re-implement the generic MMIO GPIO chip,
which I'm not so happy about, this is simply the difference between
passing just a single data register to the generic config or
passing a set and clear register.

        ret =3D bgpio_init(&g->gc, dev, 4,
                         g->base + GPIO_DATA_IN,
                         g->base + GPIO_DATA_SET,
                         g->base + GPIO_DATA_CLR,
                         g->base + GPIO_DIR,
                         NULL,
                         0);

...

I also notice:
pctl->chip->of_gpio_n_cells =3D 3;

Is Allwinner one of those drivers that could actually start using
select GPIO_GENERIC nowadays?

Please look at
commit bd3ce71078bde4ecbfc60d49c96d1c55de0635cc
"gpiolib: of: Handle threecell GPIO chips"

And the example user:
drivers/gpio/gpio-spacemit-k1.c
esp how it uses spacemit_of_node_instance_match().

If it's possible to switch over to GPIO_GENERIC this hopeless
maintainer would love if that could be done first so the picture
gets more clear.

Yours,
Linus Walleij



Yours,
Linus Walleij

