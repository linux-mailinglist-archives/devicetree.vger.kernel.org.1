Return-Path: <devicetree+bounces-96632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8333E95ED8C
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 11:42:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41ACA284732
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 09:42:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 754C813C667;
	Mon, 26 Aug 2024 09:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EZK1ziPF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C4129A2
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 09:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724665361; cv=none; b=DoPnljs8FVBWQB6O4yje0W0P9wPYYN3O0jdISkVLiBF8NQ6hsNaX/BIOEUGAG6ZuagG1dqAZCJb29HaWnNFwjE1RZVOvu+xiQFuI94nzLurdB6Sn1jjKxaZjujOiWWC56+W0OW4XuEzv3plW9RdE60jrqDqBvH6Y/iM1rnYvJ3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724665361; c=relaxed/simple;
	bh=UEc80ObWhu2axDgM7w2gCK2Z7ddiegXdkbdTjfVTIJw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CRg0Va1wQ6c5T3lyjtrTbdp56oNJkTuihldiwP9akPoJikUrRIoSiLXjGUxJDI6aoTwPwEOay2YCn4KLpVZFTaUmYR7YEkk4c9EU5kwUx2AEemPoRFiu+T639wPCRxZJpw7OWRQoDPn1OjHtgdFgF/vaQ0YCc0gYKv9nVFQpqZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EZK1ziPF; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5333b2fbedaso6854564e87.0
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 02:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724665358; x=1725270158; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AVYhHA3HG2UY8+Vcymfdj0fB1iRyPGdD56Dm85jLt/c=;
        b=EZK1ziPFRtaGDsaPyvjgK41PZ3bBKNE4iz6OAzD4zKEHX0N+iFZNElBcL0QM/S4ah0
         9VhXQVbo6iUmAyGwd1uCUdYuCsptQCARD7em26gxqJlBdwnlMsMMgvzrAMbC8cdFL4W5
         w+4ijj37AmdGsQu2+wNjwDAIvcJ+odTmQAZEwSRAaeqO/FndceivjWYahNa4BGqMK5yj
         j1CjZLhHLdKwgjMUv6HiOwbjpfdHv0yfe1bmf2bGwwiQuA43YJJxmxtEc/4UGHlCtsOp
         p2U2/DlTxCtUU4qPPrn8n2xef+NDIjQZCIGeyIERW8//sUCXwhehRZoRQd+oOqt0ZUAI
         6Kkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724665358; x=1725270158;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AVYhHA3HG2UY8+Vcymfdj0fB1iRyPGdD56Dm85jLt/c=;
        b=vW1Ot3sX1dKg60UOTKmBT3RZyD+GNQ7tlUbMdngir15pt8HjlKZIuyEMgCajWoky2J
         q0Wr4m7dtc41BPqkNJ/XcNrUP0VXPJjQnmjuYRrqlo8XcXYpMzSfreqaSlYblpxtOA1i
         mG2iFL2xudIqnprUhnjz8N4frEYIU92z5Dg7TlrJ9C8OBBhRyUSUwJsXPrw/DQjsbCV9
         D4ufsX9k2oqN3+ZXr1oODCEh8TqjGoxOUvTBfsCOx8zWxAyxQXYdLdnSWgB9zCMqtj4J
         AH3V8cUiFt8sIVXpeViYoCvWyDkWj9O7OIPpG6HCsrkkRowWoQlZCpyD9twKDCWbOubi
         LFUA==
X-Forwarded-Encrypted: i=1; AJvYcCXlEgStFf6NGJ2LKxY4oNx2mFZuIIPtSn6w0caAojEnL15tIouUvIGA8zJoZkLLS6DRMjWhGveHxj5X@vger.kernel.org
X-Gm-Message-State: AOJu0YyRAXNSzB31aenjxDoypoaVogmU5fRxSBjFsBpnEE3PGQ9cH7d2
	qKJlBZU+kcEWKk6k3PYRmX1NRwXhDEWyRlh3eweaSyWx08YyH0u6BTxZHRGh8h0ZyoP61kbI5SR
	gkWypMy3vrVbf4Fr7WNO9F2JUETzauyTRPtEmoA==
X-Google-Smtp-Source: AGHT+IESo1EpDdRnIB/kucNnisTBAnG+tBvFztK55h8yZxs6sHljZkuSVUDgsUgWnaQt2tk4uTQijGTGLbkHtHh8j5w=
X-Received: by 2002:a05:6512:159e:b0:52f:d128:bd13 with SMTP id
 2adb3069b0e04-534387bcf46mr5643646e87.39.1724665357384; Mon, 26 Aug 2024
 02:42:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240826084214.2368673-1-andrei.stefanescu@oss.nxp.com> <20240826084214.2368673-3-andrei.stefanescu@oss.nxp.com>
In-Reply-To: <20240826084214.2368673-3-andrei.stefanescu@oss.nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 26 Aug 2024 11:42:26 +0200
Message-ID: <CACRpkdaZbHsi1zeHr+HyUgfdCDHm1DaA1=peH8BjVSirga_sVg@mail.gmail.com>
Subject: Re: [PATCH 2/3] drivers: gpio: siul2-s32g2: add NXP S32G2/S32G3 SoCs support
To: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
	Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>, Larisa Grigore <larisa.grigore@nxp.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	NXP S32 Linux Team <s32@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrei,

thanks for your patch!

On Mon, Aug 26, 2024 at 10:43=E2=80=AFAM Andrei Stefanescu
<andrei.stefanescu@oss.nxp.com> wrote:

> Add the GPIO driver for S32G2/S32G3 SoCs. This driver uses the SIUL2
> (System Integration Unit Lite2) hardware module. There are two
> SIUL2 hardware modules present, SIUL2_0(controlling GPIOs 0-101) and
> SIUL2_1 for the rest.
>
> The GPIOs are not fully contiguous, there are some gaps:
> - GPIO102 up to GPIO111(inclusive) are invalid
> - GPIO123 up to GPIO143(inclusive) are invalid
>
> Some GPIOs are input only(i.e. GPI182) though this restriction
> is not yet enforced in code.
>
> This patch adds basic GPIO functionality(no interrupts, no
> suspend/resume functions).
>
> Signed-off-by: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>

As Krzysztof points out: the driver is based on something really old and
needs an overhaul. Luckily GPIO drivers are not that big so it should be
pretty straight-forward.

> +config GPIO_SIUL2_S32G2
> +        tristate "GPIO driver for S32G2/S32G3"
> +        depends on OF_GPIO

select REGMAP?

You are using it.

> +#include <linux/err.h>
> +#include <linux/init.h>
> +#include <linux/io.h>
> +#include <linux/gpio.h>

Drop this include.

> +#include <linux/platform_device.h>
> +#include <linux/module.h>
> +#include <linux/gpio/driver.h>
> +#include <linux/pinctrl/consumer.h>
> +#include <linux/bitmap.h>

Really?

> +       raw_spin_lock_irqsave(&dev->lock, flags);
> +
> +       if (dir =3D=3D GPIO_LINE_DIRECTION_IN)
> +               bitmap_clear(dev->pin_dir_bitmap, gpio, 1);
> +       else
> +               bitmap_set(dev->pin_dir_bitmap, gpio, 1);

This is just an unsigned long, just use the nonatomic
__clear_bit() and __set_bit()
from <linux/bitops.h>.

> +       gc->set =3D siul2_gpio_set;
> +       gc->get =3D siul2_gpio_get;
> +       gc->set_config =3D siul2_set_config;
> +       gc->request =3D siul2_gpio_request;
> +       gc->free =3D siul2_gpio_free;
> +       gc->direction_output =3D siul2_gpio_dir_out;
> +       gc->direction_input =3D siul2_gpio_dir_in;
> +       gc->get_direction =3D siul2_gpio_get_dir;

Since it is backed by proper pin control I would expect
a generic .set_config() implementation, but no hurry with that
I suppose.

Yours,
Linus Walleij

