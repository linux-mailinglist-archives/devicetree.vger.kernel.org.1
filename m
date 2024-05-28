Return-Path: <devicetree+bounces-69821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E7D8D1A57
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 13:54:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 98C3E1C20C8B
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 11:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61D9A16C866;
	Tue, 28 May 2024 11:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n+trmbeZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BE04C97
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 11:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716897282; cv=none; b=C7sJj1vp/aeRZ3Xi8GAtALnUGg+0yXoZ4nK6bzvUErMa0fLHxDNBJ10sz5U2dqdXqi8LdkrJs6zV4K1l2FENl6lrQxJ+fXib5yRjre/dWqUxDFymz7IOWVs6xGMgV4GLX18LLeIDLheQ/ArsvqcQVbdxx4MH9Wc486l2BxtlwaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716897282; c=relaxed/simple;
	bh=rOVJH4nneZooWwYT28snd/nHe+v09VIVntLIbqJ6SHM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tit504ygML7X2z1WF2egTXf0gDwpFl41xY3ZkasAV1ey5/pIES7LgMgSx99c94ATzDnG81nQrYtmQ3vCj0rygUXXWgi9xqSkERoTygordx3+uJrtZN5L76zpm9cCFtjLf38GtrXRZBGraknyfjGVttDXVIbRE3rynTsGWNSdjGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n+trmbeZ; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-df78b040314so754941276.0
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 04:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716897280; x=1717502080; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t2ZiDWbd+rmrEps4dsEoh3/axBJ9SRQHNITtFJg7aIA=;
        b=n+trmbeZdJ1fWWgxL56w5DaT459zEN55sma0Amvtrhbzgz2Y0/8O2QAEPhBHwDogol
         kTAR1LIrbGIndI6PicSQXUG86k2U8vB/6tFx7k8KfRyTUibKvB/+RD3EyHo11xsaBG/w
         4B5kj3sau+ZOM7Mfvz30LepjHHVrMUbpwGmFEHDHwwY0Ma/CNBuxd7yEUOo/NdrhDkP2
         xvU/kuIduXk3kzwSOU6BWZbruyVVgHNa6M9tkIGdNoYZ/iTwrxk6DDjI/cyyrafQVall
         NpqA0xybjCnDSjbHh5OkTvoRG4PdinSRRU4TzEFirlsdexs2Q2qEmsaFkB0IALAz6Ae3
         he7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716897280; x=1717502080;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t2ZiDWbd+rmrEps4dsEoh3/axBJ9SRQHNITtFJg7aIA=;
        b=bxP9ANAADvcJjjj9ed/DgLPzFRfSn3j2viNbi4bbGoH6rkG6mn2CJ7wOusw952oopl
         bjOt+IxlFgMHwtHLFIEIqWDM1JADY1TFoRSTFrKGliqWViwFlgof2n+qvvPNxC3a+qXa
         /X0MyxVkjEWf7e4PtpnXLWv7WSQF9F1/7Zn/QwQ8li0G9hbiZpMCrKuTpDKitthxJyFp
         giCcPbmA3ooHR+pX3IUcWLU8bxJqABtJ7vcymQtzsF0W/s8q4U9yeoumgPNjotxOK3nG
         z+0A2lGdfswB1lwgA7tIhv6lxiZ54OecDQRsmnwxTO9YSwUz4m8Vz85tVBKgDXubK3jw
         jpLA==
X-Forwarded-Encrypted: i=1; AJvYcCWsAy9OvCZtmc2/UPG1gaZPsR0Dk4UkHsQNXGoRkXjtRVPEzLfoNE7kXXrI/KeOyJTpqBJvRSZV9xY+lHHBys38sEZbVf37Cgl62g==
X-Gm-Message-State: AOJu0YzVTElQ3+ykoLJ/8vuwIeDqlewA+TvquNBWvVtNfP01kvoIIJiU
	H9Fjw8yAV8JKlI3n/KmhnFvcamDDQ/LYWOVgyoIAO0+Dl4qVvwaAGcpBaiUtZXiZTCgOD4hG9B1
	gqLG2bCeuW8ZdJbIZOoVXeTk352aVaNblqgJ2mQ==
X-Google-Smtp-Source: AGHT+IEEmlDgJX8py9oRVhTs9SrjHN2VKQehB1aTAo8maPSVXq5jzMhl0pQ6oyZ4KdZq6BzPizDGQdL5TnBpH0uaUA4=
X-Received: by 2002:a25:d0d2:0:b0:de5:5067:6b4a with SMTP id
 3f1490d57ef6-df772180300mr13087888276.2.1716897279862; Tue, 28 May 2024
 04:54:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240520195942.11582-1-laurent.pinchart@ideasonboard.com> <20240520195942.11582-5-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20240520195942.11582-5-laurent.pinchart@ideasonboard.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 May 2024 13:54:29 +0200
Message-ID: <CACRpkdbAq1Cqr4X8fjEjOTxw7ky9b6V0ye1NYKfDy5E1BmAX6g@mail.gmail.com>
Subject: Re: [PATCH 4/5] gpio: adp5585: Add Analog Devices ADP5585 support
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org, 
	Alexandru Ardelean <alexandru.ardelean@analog.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
	Rob Herring <robh@kernel.org>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Haibo Chen <haibo.chen@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Laurent/Haibo,

thanks for your patch!

On Mon, May 20, 2024 at 9:59=E2=80=AFPM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:

> From: Haibo Chen <haibo.chen@nxp.com>
>
> The ADP5585 is a 10/11 input/output port expander with a built in keypad
> matrix decoder, programmable logic, reset generator, and PWM generator.
> This driver supports the GPIO function using the platform device
> registered by the core MFD driver.
>
> The driver is derived from an initial implementation from NXP, available
> in commit 451f61b46b76 ("MLK-25917-2 gpio: adp5585-gpio: add
> adp5585-gpio support") in their BSP kernel tree. It has been extensively
> rewritten.
>
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

(...)

> +static int adp5585_gpio_direction_input(struct gpio_chip *chip, unsigned=
 int off)
> +{
> +       struct adp5585_gpio_dev *adp5585_gpio =3D gpiochip_get_data(chip)=
;
> +       unsigned int bank =3D ADP5585_BANK(off);
> +       unsigned int bit =3D ADP5585_BIT(off);
> +
> +       guard(mutex)(&adp5585_gpio->lock);
> +
> +       return regmap_update_bits(adp5585_gpio->regmap,
> +                                 ADP5585_GPIO_DIRECTION_A + bank,
> +                                 bit, 0);

First, I love the guarded mutex!

But doesn't regmap already contain a mutex? Or is this one of those
cases where regmap has been instantiated without a lock?

> +       gc =3D &adp5585_gpio->gpio_chip;
> +       gc->parent =3D dev;
> +       gc->direction_input  =3D adp5585_gpio_direction_input;
> +       gc->direction_output =3D adp5585_gpio_direction_output;

And chance to implemen ->get_direction()?

Other than this I think the driver is ready for merge, so with the
comments fixed or addressed:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

