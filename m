Return-Path: <devicetree+bounces-172269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F88FAA454B
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:27:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16D7D188D484
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 08:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9269215F5F;
	Wed, 30 Apr 2025 08:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sfaMJUWz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD52C1F0999
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 08:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746001640; cv=none; b=ZE7b5MEM6i0NWw9ODqYfaHu6kIGp0leHizbA+cXt+Mjclb8mJk6QdccCtaFG7TfS/0liXYT86fWw2lEiHeRH1UL0NZ88TJ5Q+3LgVIw+/YDG3K6WB/iBVJfHJ0/uuOGne5YtrQu1wkDe/CHa+NeDHA0GYOl8w4FI5YvLdxXjcvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746001640; c=relaxed/simple;
	bh=nVqpkxvrkBQ7m9ihCa5HhM6ifP7VLjbv7c8Y8Iyf2ME=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=UdSXvyr8uMHPBkim4g9jK81iZLenBGdBC/SnZA3y38LN6FguX8MrhfO33haQpJjwiayt3+r9DgiDsSso02VsJLnU70NHrc0R11adoGD4j8JF5/TEoepOXWRgdrhDx+BtGLliCLzo+6P2GPhys58xdkgiPXeDfpXq0zbmKcA8eaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sfaMJUWz; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43cf848528aso49707835e9.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 01:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746001637; x=1746606437; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tM1VuxlxmAKqV45c2DIXsj1+JXKhlzv/Nid4UniVACY=;
        b=sfaMJUWz8kT8rRnUrHyOUvJ5MQYWTcXy448bp3RjUNheVoWgb2MTjYTsTkGZXb/cUb
         gUf/QtclDDN6BIcf2+0t9vTXcr5CdXJJaXjDRl3rQNhD0Zj5Nccp2YqNZ1GGjg/QrBHY
         wXdB0DU4ZV+wZ9vplzMJIHPi/luM0jGwr9DWQlpb5S9ElOuFkRJnY7H60nivQvvSNLC6
         k3vG1wr/y5QJcvZ5P3fd6EyOOcirBcoOEjIHnMhSpMmpfojeA1SXb9BZJ2dxORW1sL0g
         JSLhBq0V/xcbvDTH3NiPZOny/bUVsmoYnl1r3wQzn/2/KByWQm4vSB17gbpJFKbeu0bA
         tGMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746001637; x=1746606437;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tM1VuxlxmAKqV45c2DIXsj1+JXKhlzv/Nid4UniVACY=;
        b=rtAIG8BRr5lamr4EiZhD/kCdV0e2gUNwtQujhUnyXDbkRhYKF9m4yZEOdu7r9RoQDX
         yVpnRkgFkLF+/iO4JKxfgO1ZZax7dd8W4kGBkSPbrJsZnoZlrBcSTQ3ALKY1zWNnmpKP
         QQ4ZAVvCNeuwPTmo6xG/Fko0TRTEMCu8aiDPgLQgNA4xNf5E4Bzhoao671rD7BkVxCrQ
         Gt4CDLxTxFp5m+afljhUr7qn1+p2d/8hZhmkORiOL7IzTwwsFOZ3TpRlLfV16Zs/AN5e
         QBGHQ96hVWW5xJgzUz4t9rXkNqSc0bn8xHQ5/Wux8y/dWCokKmlBlDsBOfEeHqQfS63Z
         aLOg==
X-Forwarded-Encrypted: i=1; AJvYcCV/8AEkwim+PTpxYVjYuLW1w6qKg0Nxe+08ObYA6LCKLDTm9LSPjyhY6pNnytGfzyDEJqnlM2Tr/H1N@vger.kernel.org
X-Gm-Message-State: AOJu0YziKqrAwF02rjP/WAd9quEglAkPOB2bH7nnK8YtU4I6w83/83Cr
	+tDxdTw6g7taTQa/lGbBVwPGa5KZ/Vp+KQ6cL4P5yrX98yUt0JAKNUSYyVo8HvQ=
X-Gm-Gg: ASbGncvD7OXNSwoA2yRqwzLeSnJwv0tnSEK8WqQv7E+nNFXpf9A2dt762hBnxpqqQY6
	wzH915b/Xv2UWHVPM8LQVYAkDbYdiJOwujhf8LSkH8t8jY8TAG5Ky1CJ4wb38KFP8iRlkQKZF7D
	NtMME91epsGyjn0J4/ZnOGK4p4uH9Ypfir2JrZdLFcExkSKfKZhHyN390sM4A8kyP6Bj4W5LlOG
	DTsId8Xw4peUP+50r7eVKiLb8oL3OS7/l501NgN6TfANXU3135U0djVlZZveADGtgSR7GJLZHbN
	PBzHZDwFJy8EJBkZxwXzQtX2ZgnHOrHQwo68buNn9RuX
X-Google-Smtp-Source: AGHT+IG9+mBoVfuFZsSy3AwJh8ZczldRvcThwYGVbzvcL8YQZRS+lmMJMo0olXC03NYW48gy6CBSeA==
X-Received: by 2002:a05:600c:4f53:b0:440:6760:d06a with SMTP id 5b1f17b1804b1-441b1f2efb2mr14215575e9.5.1746001636943;
        Wed, 30 Apr 2025 01:27:16 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2bbbecesm15466895e9.27.2025.04.30.01.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 01:27:16 -0700 (PDT)
Message-ID: <bbd392787a28743a499312069c51f083929e546f.camel@linaro.org>
Subject: Re: [PATCH v8 6/6] nvmem: max77759: add Maxim MAX77759 NVMEM driver
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Linus
 Walleij	 <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Kees Cook	 <kees@kernel.org>, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, Peter Griffin	 <peter.griffin@linaro.org>, Tudor
 Ambarus <tudor.ambarus@linaro.org>, Will McVicker
 <willmcvicker@google.com>, kernel-team@android.com,
 linux-kernel@vger.kernel.org, 	devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, 	linux-hardening@vger.kernel.org
Date: Wed, 30 Apr 2025 09:27:15 +0100
In-Reply-To: <aBEtzh8w5PZKSntr@srini-hackbase>
References: <20250429-max77759-mfd-v8-0-72d72dc79a1f@linaro.org>
	 <20250429-max77759-mfd-v8-6-72d72dc79a1f@linaro.org>
	 <aBEtzh8w5PZKSntr@srini-hackbase>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3-2+build1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2025-04-29 at 20:51 +0100, Srinivas Kandagatla wrote:
> On Tue, Apr 29, 2025 at 09:21:42AM +0100, Andr=C3=A9 Draszik wrote:
> > The Maxim MAX77759 is a companion PMIC for USB Type-C applications and
> > includes Battery Charger, Fuel Gauge, temperature sensors, USB Type-C
> > Port Controller (TCPC), NVMEM, and a GPIO expander.
> >=20
> > This driver exposes the non volatile memory using the platform device
> > registered by the core MFD driver.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > ---
> > v8:
> > * replace MODULE_ALIAS() with .id_table (Krzysztof)
> > * drop previous tags
> >=20
> > v5:
> > * follow API updates of max77759 core driver
> >=20
> > v2:
> > * align sentinel in max77759_nvmem_of_id[] with other max77759 drivers
> > =C2=A0(Christophe)
> > ---
> > =C2=A0MAINTAINERS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 =
1 +
> > =C2=A0drivers/nvmem/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0 12 +++
> > =C2=A0drivers/nvmem/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0=C2=A0 2 +
> > =C2=A0drivers/nvmem/max77759-nvmem.c | 162 ++++++++++++++++++++++++++++=
+++++++++++++
> > =C2=A04 files changed, 177 insertions(+)
> >=20
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 0db5e1fe64930e85265913e6a7dd2669c645cf42..b821502afc48f95d48fb8c6=
ac6941d1dd8e63582 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -14670,6 +14670,7 @@ S:	Maintained
> > =C2=A0F:	Documentation/devicetree/bindings/*/maxim,max77759*.yaml
> > =C2=A0F:	drivers/gpio/gpio-max77759.c
> > =C2=A0F:	drivers/mfd/max77759.c
> > +F:	drivers/nvmem/max77759-nvmem.c
> > =C2=A0F:	include/linux/mfd/max77759.h
> > =C2=A0
> > =C2=A0MAXIM MAX77802 PMIC REGULATOR DEVICE DRIVER
> > diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> > index 8671b7c974b933e147154bb40b5d41b5730518d2..3de07ef524906ad24a89e58=
abdfe93529a83c80f 100644
> > --- a/drivers/nvmem/Kconfig
> > +++ b/drivers/nvmem/Kconfig
> > @@ -154,6 +154,18 @@ config NVMEM_LPC18XX_OTP
> > =C2=A0	=C2=A0 To compile this driver as a module, choose M here: the mo=
dule
> > =C2=A0	=C2=A0 will be called nvmem_lpc18xx_otp.
> > =C2=A0
> > +config NVMEM_MAX77759
> > +	tristate "Maxim Integrated MAX77759 NVMEM Support"
> > +	depends on MFD_MAX77759
> > +	default MFD_MAX77759
> > +	help
> > +	=C2=A0 Say Y here to include support for the user-accessible storage =
found
> > +	=C2=A0 in Maxim Integrated MAX77759 PMICs. This IC provides space for=
 30
> > +	=C2=A0 bytes of storage.
> > +
> > +	=C2=A0 This driver can also be built as a module. If so, the module
> > +	=C2=A0 will be called nvmem-max77759.
> > +
> > =C2=A0config NVMEM_MESON_EFUSE
> > =C2=A0	tristate "Amlogic Meson GX eFuse Support"
> > =C2=A0	depends on (ARCH_MESON || COMPILE_TEST) && MESON_SM
> > diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
> > index 5b77bbb6488bf89bfb305750a1cbf4a6731a0a58..a9d03cfbbd27e68d40f8c33=
0e72e20378b12a481 100644
> > --- a/drivers/nvmem/Makefile
> > +++ b/drivers/nvmem/Makefile
> > @@ -34,6 +34,8 @@ obj-$(CONFIG_NVMEM_LPC18XX_EEPROM)	+=3D nvmem_lpc18xx=
_eeprom.o
> > =C2=A0nvmem_lpc18xx_eeprom-y			:=3D lpc18xx_eeprom.o
> > =C2=A0obj-$(CONFIG_NVMEM_LPC18XX_OTP)		+=3D nvmem_lpc18xx_otp.o
> > =C2=A0nvmem_lpc18xx_otp-y			:=3D lpc18xx_otp.o
> > +obj-$(CONFIG_NVMEM_MAX77759)		+=3D nvmem-max77759.o
> > +nvmem-max77759-y			:=3D max77759-nvmem.o
> > =C2=A0obj-$(CONFIG_NVMEM_MESON_EFUSE)		+=3D nvmem_meson_efuse.o
> > =C2=A0nvmem_meson_efuse-y			:=3D meson-efuse.o
> > =C2=A0obj-$(CONFIG_NVMEM_MESON_MX_EFUSE)	+=3D nvmem_meson_mx_efuse.o
> > diff --git a/drivers/nvmem/max77759-nvmem.c b/drivers/nvmem/max77759-nv=
mem.c
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..df7d1998fa2f116450d2fd5=
0eba70d9b61a24574
> > --- /dev/null
> > +++ b/drivers/nvmem/max77759-nvmem.c
> > @@ -0,0 +1,162 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +//
> > +// Copyright 2020 Google Inc
> > +// Copyright 2025 Linaro Ltd.
> > +//
> > +// NVMEM driver for Maxim MAX77759
> > +
> > +#include <linux/dev_printk.h>
> > +#include <linux/device.h>
> > +#include <linux/device/driver.h>
> > +#include <linux/err.h>
> > +#include <linux/mfd/max77759.h>
> > +#include <linux/mod_devicetable.h>
> > +#include <linux/module.h>
> > +#include <linux/nvmem-provider.h>
> > +#include <linux/overflow.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/string.h>
> > +
> > +#define MAX77759_NVMEM_OPCODE_HEADER_LEN 3
> > +/*
> > + * NVMEM commands have a three byte header (which becomes part of the =
command),
> > + * so we need to subtract that.
> > + */
> > +#define MAX77759_NVMEM_SIZE (MAX77759_MAXQ_OPCODE_MAXLENGTH \
> > +			=C2=A0=C2=A0=C2=A0=C2=A0 - MAX77759_NVMEM_OPCODE_HEADER_LEN)
> > +
> > +struct max77759_nvmem {
> > +	struct device *dev;
> > +	struct max77759 *max77759;
> > +};
> > +
> > +static bool max77759_nvmem_is_valid(unsigned int offset, size_t bytes)
> > +{
> > +	return (offset + bytes - 1 <=3D MAX77759_NVMEM_SIZE);
> > +}
> Do you really need this check?
> nvmem core should take care of this boundary checks.

I think I went by what qcom-spmi-sdam is doing, but I now realise it's
doing a little bit more. Will drop.

Thanks Srini!

A.


