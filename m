Return-Path: <devicetree+bounces-213019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C1EB446C9
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 21:57:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20AB0A063EB
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 19:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74C04277C8C;
	Thu,  4 Sep 2025 19:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Iv+32+pl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 905A52773EA
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 19:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757015861; cv=none; b=sNQ2h+DpfdT5UNmFcnMnq//VQ87hvFM/zqpMooXfXlqgWbeQ/JVmyPi56sPtm4xEudg+NKfXjC0LLW5EN81KagqgCBkHY1NMRc15fbkkOwgCrdl6LzORI+Zf2f64Lexgy01fFrqPjRbIQ/tNiIHm6pItvrJ+0PuX4mDm9gebh2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757015861; c=relaxed/simple;
	bh=AkQDfljW56aeK9hFyEplI/9Ee67wMd+uq6QJcRF62eo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fhQ195x1PBE957fmPrHS/vHOGhfJgz83PYz3yuDKakl3aYs1ShJCmd3WXpQVkLiJv3O7TtM7WiTu+XqG+84fAuwglT5ezi3sQ2D2Kf1mQzcmeu4BCPpslxBH3M3Finnc7Shcp57jthimOc6L5gKn/k3n/Jq0MRb/w+P5HI/Fa30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Iv+32+pl; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-337cc414358so13324641fa.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 12:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757015857; x=1757620657; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6kwPz46AfjWSljE81nGPsJRjk/PBKufX3IFU3DIxO20=;
        b=Iv+32+pl+RF/5u9CXQ2H/5eyAmAkycT/gu4sr+1dppOQN7ClaN1+UkvsAo99TDI91J
         JZTVbf1mcgBfbJyKlqFd/ymeo2YWyWes8minSpK/VUiXqtkViDeOzo2lbrRAE5bQek52
         q7j1d2+8Ch3M7w8baGcVVxySNOnd3S8w3zQ1FKgO/1yjTjh5HXjnSgWETLcT72Gu/vjb
         ffs9gc7cT4wIel3sXqOYcTnic/NCW8dGMWJ7sHdrnzLj4QQ/LSUXF7Rmr0UlikLNkxeq
         gW2jIybvjzI3HKgnIZedva/HORa3f5dytWHHplPHe20DUd1v5W8Uzb2HzpDXsUZFSytk
         aCsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757015857; x=1757620657;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6kwPz46AfjWSljE81nGPsJRjk/PBKufX3IFU3DIxO20=;
        b=rACuhAR4QEaAFz3gaX9s4tZalLvbg8caRnEuwhmb5c9i3e1yImdadpBkjXEkujODD2
         efkrEIqclkXGqHhIAYl4vZWpRH+mtuErYaugJYRe+6PVCOWxuf1Zp7hPm3DeFr4L/xpz
         4redZ7kXoxfrdNyz/VUCJ3I7wu7peIX7UC9QLSkr08pZCaWu9TxX+UPaYgNSnGfqWrDS
         MHjcC0ditFCZr+GrHSbPJR1vNONNo5hJ9OTCvuTMhGzlFtY1+zmtjU0JwPDol+IrBPZz
         B+04jw4fqE4oFceR5cSO1DNzGe6f3f1TyHO56iHtfLGKhK/Ld8KlUCJHBM0aFdUFRElI
         QOxw==
X-Forwarded-Encrypted: i=1; AJvYcCVzhh0oGdqiw/5B/aGvwqfJUlgu2Wlu0u25NDRi5IXyHQtu5oMLkVwiHVUECZPW9uCMA/az1rbxiLGI@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5oQO+VXq8TSKa+d9iuiyE9xl/avUgDOCsPes3xBZ+jq9YIJKc
	HtSpS6oVZeG8a0HcSdj74izTQe+cmKJ7LGzCTHZtHwAY4lVlJ5/z662YOmaNxuCX0mXC7haiX2i
	563eiJ0mzzF6/NV6KREmw4zMC1whqRY4dD8jRqXk7kA==
X-Gm-Gg: ASbGncvEAUJbZ4v6sSvaBVVYqPmQ53CWY0wrixF3iW01RaBy+45Y8aEIfvCBv+hSYti
	4HXHb8D8v7Y+rirGLoAP2cfxlgbwTiIbQ9ptBnVHH3zG7eXJdwvXL79pJveD5vhK+MnBxOLvt1w
	izpXQhKOeerUVgxrO4z7XCQkTyHU7wEgSrxnzz1aES+hwAUFNCzcCbfGHaVXkIW7epR3UmS2/oW
	WkjEX8=
X-Google-Smtp-Source: AGHT+IGSNGuoZa0tGd2MuceeY+rWx4+fE98zKz5kXJNG5SS9yafrJ2IfBrrLXPyBqms3qzMRhIcBxsxK/c607/IOLes=
X-Received: by 2002:a2e:a4d8:0:b0:32c:abf4:d76a with SMTP id
 38308e7fff4ca-336caf58af5mr43186631fa.38.1757015856723; Thu, 04 Sep 2025
 12:57:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250903-ltc4283-support-v2-0-6bce091510bf@analog.com> <20250903-ltc4283-support-v2-3-6bce091510bf@analog.com>
In-Reply-To: <20250903-ltc4283-support-v2-3-6bce091510bf@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 4 Sep 2025 21:57:25 +0200
X-Gm-Features: Ac12FXySP_jPTakETmSTujg6AZkgjLE-3L81eBmgyMtwcrvqz9e4_hK7r8cr0mE
Message-ID: <CACRpkdbgcCjZbZ2HtrNO7vK1HXzrwxkrNFCzqGguq=ckKg3cFQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] gpio: gpio-ltc4283: Add support for the LTC4283
 Swap Controller
To: nuno.sa@analog.com
Cc: linux-hwmon@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, Jonathan Corbet <corbet@lwn.net>, 
	Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nuno,

thanks for your patch!

On Wed, Sep 3, 2025 at 12:04=E2=80=AFPM Nuno S=C3=A1 via B4 Relay
<devnull+nuno.sa.analog.com@kernel.org> wrote:

> From: Nuno S=C3=A1 <nuno.sa@analog.com>
>
> The LTC4283 device has up to 8 pins that can be configured as GPIOs.
>
> Note that PGIO pins are not set as GPIOs by default so if they are
> configured to be used as GPIOs we need to make sure to initialize them
> to a sane default. They are set as inputs by default.
>
> Signed-off-by: Nuno S=C3=A1 <nuno.sa@analog.com>

(...)

> +config GPIO_LTC4283
> +       tristate "Analog Devices LTC4283 GPIO support"
> +       depends on SENSORS_LTC4283

Could that be
depends on REGMAP && (SENSOR_LTC4283 || COMPILE_TEST)
?

Or does something blow up if you do that? (I guess it also needs
AUXBUS but more on that below)

should it also be

default SENSOR_LTC4283

Sof if that is compiled in (=3Dy) or module (=3Dm) then this becomes
the same by default?

> +       help
> +         If you say yes here you want the GPIO function available in Ana=
log
> +         Devices LTC4283 Negative Voltage Hot Swap Controller.
> +
> +         This driver can also be built as a module. If so, the module wi=
ll
> +         be called gpio-ltc4283.
> +
>  config GPIO_MB86S7X

This is placed among the memory-mapped drivers, but:

> +#include <linux/auxiliary_bus.h>
(...)
> +static struct auxiliary_driver ltc4283_gpio_driver =3D {
> +       .probe =3D ltc4283_gpio_probe,
> +       .id_table =3D ltc4283_aux_id_table,
> +};
> +module_auxiliary_driver(ltc4283_gpio_driver);

Create a new submenu for auxiliary bus drivers and add it
there. We already have a submenu for MFD so why not?

menu "AUXBUS GPIO expanders"
  depends on AUXILIARY_BUS
...

Have you looked into using GPIO_REGMAP?
I guess some specials are used here so maybe it is
not possible.

Yours,
Linus Walleij

