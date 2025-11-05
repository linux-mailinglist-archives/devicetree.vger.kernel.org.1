Return-Path: <devicetree+bounces-235201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D72FC354DE
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 12:14:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CAE354F5242
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 11:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 849AC30F550;
	Wed,  5 Nov 2025 11:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="UUeMFiI2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F3ED30F539
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 11:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762341198; cv=none; b=fWVSmmPrjssaOk9joU/eb2F63E4WYIX/3Daig0nW4AgWFDuBsPS+DBNTffjsvdVW1/rABoNUJYHtQ3sgjPxeJvPMV7gx43AUP8BNRB9e6fr6Qbj3AU8T1Nt7LCqRC4Z0UObvYaSrNEPkodDOuFxz20jP09S3TO5ZXf7Sc1c0M+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762341198; c=relaxed/simple;
	bh=y+ju+eJvK8HzYCUKH5EbHPD0aKHBQeN8wwLP+uV2/K4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hvDN6oha8L5WsAM+2awbAU5QplV3DUsl72w6idgydsu2Amh38NvQ2lUBzVGrUgHJpVauWqyTk8fcOA2T49/DmKtJdPkOXxPQ/pV+1FT+AkErErAMdMEgtQxzakXyawjoWo5GcmkrFHnsWvTttQg2f12zpTrK6qJquADyLt/b3Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=UUeMFiI2; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-59052926cf9so7162590e87.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 03:13:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1762341194; x=1762945994; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JG51Hq++miK2Fex6Vfp0eKhsrvnsMhGhZv9+TnKZ4f0=;
        b=UUeMFiI2K5GitHqS5G/wlBFiXfsai5SRWNT+vI2Il+ujcLP3UZL3Ex4OxynSZjquvg
         bFvotS5qWWENEqHC9U4hWBSUJ9At+oaH1xxmzG6ECxtxkKwTd4ez5B1J4Qbje+a9ena4
         8AWXrIJLBCb2eOZQsf6EiTiUj9j+9Es6hpi/LbA6ZPylstxcEF1XOHn+QlXvUuoAl0Y5
         Xc0ofzcJrHRV1a1gusnDvUG3Lz+E7Lu1N8d/NU4JMLOK2TFjG+W3UN0nJru5s3gVTQec
         usdh5YzGOQ5y6glkWkh6M0RqBNqRjWPAZlTVZiFDKTnHIq736ND1N0IrD7WbNfBRySko
         VFlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762341194; x=1762945994;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JG51Hq++miK2Fex6Vfp0eKhsrvnsMhGhZv9+TnKZ4f0=;
        b=hp8G2Ihl6APkwTswCrLv2+DM93SRzmxAy70B8I/GQv1dmlfxJMBibOiGs2huAIUZ1z
         LZCRQKuH3dP74eoSu6VXZLJBj4OfLyWm/F/powXmPi9jqmnUR39sbBUsp0jHAE1R5wu0
         O7y3x5uKEwv+fBiZr3kVWmqTyHTAcf92vcXzWo0BWk24yD3DVR39UTHI2FgjF7Y7odj/
         jCp/H8doW8k2IuLU87+eRriiQlkQAEfwoRG7MQzxnuiHS8QVnq3aK79b7v9+hmZ6mRfq
         3r1cFf3FfckPaLu/PlDgjqAUyACQYL7PRfyeTWlbfgt5pZWEXzJ6MvfEi4ciblj9Vq/t
         jqxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWH2gX8gRYs8CZ6idaQiXDYoKCoQ+o90PxaNAd8wthmJX/mCvoHpsFzGrwNkpLYb1sZGGyBXbumzynF@vger.kernel.org
X-Gm-Message-State: AOJu0YwdZggwYeGcwSfRv0YB0PJnxAVNzWpeTE94dO86Gj1haJUodNYy
	ko7iuj+5Xitq3aMVREIRL9gjDfNgdtX3zrv+IMGHJbIs5bcJoLdNGuuUtoDsK+VzD5eP9Ow//PL
	kZo8SZKaPID4B9HiyrldnFlmNH07JxD1QPtV9zgt3nA==
X-Gm-Gg: ASbGnct1vY7jnFRW7bWnur7F1oMTb+c8wV4Sarfh5ifV27bkemnZHQxNTSlfZWv+agb
	AV74gxAbfEH+YB6SSHg3pECVKB5fcnjpDwNSKK+/mDMcjjEB6MnWxgAo+HyZQBoV4/ta8qjfRiL
	nEq7dzm+/l+Enk5WpBzCQiWYiwyqBPgHhOpuvoEJ3yekeVnRQ8NbI5SCxGIu0HUdY13eV6eiizS
	LnIpR9Van5nnfBcgXUWQpW2X436CX/ZD71n0IHhFNB8BYL2Ar51WjA+SpqibXMwlqh5MGIkLqBs
	C5/WDRwS8i9vqUxm
X-Google-Smtp-Source: AGHT+IHDSaXviCfITtg/FMcF5Bu77Gbwi/aiVMbNVLeu3JkIbzZIrWvYPYHyWiNt0LQo+iniDeT7EH+k0eJ0DFliQVI=
X-Received: by 2002:a05:6512:61a1:b0:563:2efc:dea7 with SMTP id
 2adb3069b0e04-5943d7c9126mr1005125e87.34.1762341193497; Wed, 05 Nov 2025
 03:13:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251104-ltc4283-support-v3-0-4bea496f791d@analog.com> <20251104-ltc4283-support-v3-3-4bea496f791d@analog.com>
In-Reply-To: <20251104-ltc4283-support-v3-3-4bea496f791d@analog.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 5 Nov 2025 12:13:02 +0100
X-Gm-Features: AWmQ_bmQd858eXoItm7LwqkIZXbCZS2AkKpBWiMVEPi0lh3UwpYTx2HZMgJHzUk
Message-ID: <CAMRc=MeWyDOFfUnX8eV9+9tykinB+Hd9duf-v+UOCvcYKt9g9Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] gpio: gpio-ltc4283: Add support for the LTC4283
 Swap Controller
To: nuno.sa@analog.com
Cc: linux-hwmon@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, Jonathan Corbet <corbet@lwn.net>, 
	Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 4, 2025 at 11:31=E2=80=AFAM Nuno S=C3=A1 via B4 Relay
<devnull+nuno.sa.analog.com@kernel.org> wrote:
>
> From: Nuno S=C3=A1 <nuno.sa@analog.com>
>
> The LTC4283 device has up to 8 pins that can be configured as GPIOs.
>
> Note that PGIO pins are not set as GPIOs by default so if they are
> configured to be used as GPIOs we need to make sure to initialize them
> to a sane default. They are set as inputs by default.
>
> Signed-off-by: Nuno S=C3=A1 <nuno.sa@analog.com>
> ---
>  MAINTAINERS                 |   2 +
>  drivers/gpio/Kconfig        |  15 +++
>  drivers/gpio/Makefile       |   1 +
>  drivers/gpio/gpio-ltc4283.c | 217 ++++++++++++++++++++++++++++++++++++++=
++++++
>  4 files changed, 235 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d02fdf0a0593..76a659408c8c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14757,9 +14757,11 @@ F:     drivers/hwmon/ltc4282.c
>
>  LTC4283 HARDWARE MONITOR AND GPIO DRIVER
>  M:     Nuno S=C3=A1 <nuno.sa@analog.com>
> +L:     linux-gpio@vger.kernel.org
>  L:     linux-hwmon@vger.kernel.org
>  S:     Supported
>  F:     Documentation/devicetree/bindings/hwmon/adi,ltc4283.yaml
> +F:     drivers/gpio/gpio-ltc4283.c
>  F:     drivers/hwmon/ltc4283.c
>
>  LTC4286 HARDWARE MONITOR DRIVER
> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index 7ee3afbc2b05..58610f77a75e 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -1741,6 +1741,21 @@ config GPIO_WM8994
>
>  endmenu
>
> +menu "AUXBUS GPIO expanders"
> +       depends on AUXILIARY_BUS
> +

Please call the section "Auxiliary Bus GPIO drivers"

It's not very clear what "AUXBUS" is.

> +config GPIO_LTC4283
> +       tristate "Analog Devices LTC4283 GPIO support"
> +       depends on SENSORS_LTC4283
> +       help
> +         If you say yes here you want the GPIO function available in Ana=
log
> +         Devices LTC4283 Negative Voltage Hot Swap Controller.
> +
> +         This driver can also be built as a module. If so, the module wi=
ll
> +         be called gpio-ltc4283.
> +
> +endmenu
> +
>  menu "PCI GPIO expanders"
>         depends on PCI
>
> diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
> index ec296fa14bfd..b6550944ed78 100644
> --- a/drivers/gpio/Makefile
> +++ b/drivers/gpio/Makefile
> @@ -99,6 +99,7 @@ obj-$(CONFIG_GPIO_LP873X)             +=3D gpio-lp873x.=
o
>  obj-$(CONFIG_GPIO_LP87565)             +=3D gpio-lp87565.o
>  obj-$(CONFIG_GPIO_LPC18XX)             +=3D gpio-lpc18xx.o
>  obj-$(CONFIG_GPIO_LPC32XX)             +=3D gpio-lpc32xx.o
> +obj-$(CONFIG_GPIO_LTC4283)             +=3D gpio-ltc4283.o
>  obj-$(CONFIG_GPIO_MACSMC)              +=3D gpio-macsmc.o
>  obj-$(CONFIG_GPIO_MADERA)              +=3D gpio-madera.o
>  obj-$(CONFIG_GPIO_MAX3191X)            +=3D gpio-max3191x.o
> diff --git a/drivers/gpio/gpio-ltc4283.c b/drivers/gpio/gpio-ltc4283.c
> new file mode 100644
> index 000000000000..885af67146a8
> --- /dev/null
> +++ b/drivers/gpio/gpio-ltc4283.c
> @@ -0,0 +1,217 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Analog Devices LTC4283 GPIO driver
> + *
> + * Copyright 2025 Analog Devices Inc.
> + */

Add a newline.

> +#include <linux/auxiliary_bus.h>
> +#include <linux/bitmap.h>
> +#include <linux/bits.h>
> +#include <linux/device.h>
> +#include <linux/gpio/driver.h>
> +#include <linux/module.h>
> +#include <linux/mod_devicetable.h>

In ASCII '_' sorts before 'u'.

With that fixed:

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

