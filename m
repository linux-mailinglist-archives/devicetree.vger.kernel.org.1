Return-Path: <devicetree+bounces-250762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1FECEBB3D
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 10:36:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B99ED300E79D
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 09:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E82B3191D0;
	Wed, 31 Dec 2025 09:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="EIxj/j/7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6021314A6D
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 09:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767173811; cv=none; b=Kr4nvesY5lZ3kMaMyWnN14SJ0nL0ZFtm4USaMSvg1j6K+C0NlqYI3SKQZuhEoILF2xJqRPS23pc6bzjFslkC05QlAIz1ZYedcOfmyxppxF/w3CanVEc7ixUgWUl/i8+aEf5o9u9sqW68hIyUN66EZgSXr/foOuK7J6/mICNxGtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767173811; c=relaxed/simple;
	bh=NFYMGA676SEkVsJALqldtmkMw4qPeRAQ2FzyKMLEA+8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MEYKAU+QIsA6GM2VtHoXSmBz7yVdhTp3PubHo+khDMhgv0LHTeihUArr/LtkSFYrDw48Y4fmrCwrIQKbNQ5rVDv1v51j+9mEk9o5JOK4JXLorOiLmAla9/1JEQOPqTX+UfSXPT9uHtCBY0H+i05huvQslsKHVYnEvWAUDA8bNmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=EIxj/j/7; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-78fb6c7874cso96157447b3.0
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 01:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767173807; x=1767778607; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i/3+RSe7fQelQU4YkqbPxOBoE/8zH+jlMkgHbbjEj8c=;
        b=EIxj/j/7T1lRwkkfasDov9FLNelzieN4UIijBE2MaN1cUOefmsreA+8TS1AMmUkWYj
         bwaEBt2RAC3BmyFoeo8ntHvbKUk5F8pWBl/B4Lg0xOTrrL3VCewuj1tYfw1AsnQlQ2CU
         IMydpeFOGyexZdJ4Tl7BVaT4onbEDs0uhUB+5OW/LstmzwNbFWl/X6azT/XrxTZmgEeq
         eeV1zAFvl/O9J6sy0+EGqF08wGv+OF/1WiP/0kvOUBo7erE2q/kQQ9pCu3ezvRKROi31
         6EJnHAAe3GYqa51O1guB+4h9EpP5pv4m7/bDXYE09NebQTQ1evupkxLGNqdk9iDERGBm
         9NVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767173807; x=1767778607;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i/3+RSe7fQelQU4YkqbPxOBoE/8zH+jlMkgHbbjEj8c=;
        b=LOXE7NgF6fcD3QsuuR32X0mylJTpzs/37C6Ykeovd5zHXnnIJVlwMxNZJ4QDSHtJ3c
         1Xwo46fLQF/h/+SNrdebF7XM3nPZ83CertaMl8dxv32hv4+EbpdC7G2ZRwFbzdxZ9sSa
         C+uN1YqJWVJqXRlazhRarB5cbovOroJIpxpybIHKnd0Fl3naGITm0nN4uUdBuIVZ/mdp
         Q8oSz6EBq0W48w4V+0lO6StaJElX2foOhh6uyv/r6ShiK1KsfHYGMhqMoNcUfpSysEC2
         a9jSPuryghttjhydPH4jxOHIY2cw93eTzfH8Flo+TYMa8N/TSPekVUWzPfeq8neT3RJU
         SpNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOwoIQxJocqc45qoxZ81foTjaPO0uNMiKcmZCN96xXpu+FwyGTr7Bhii5Dy7xrkj3t+A5NSdTrcfxj@vger.kernel.org
X-Gm-Message-State: AOJu0YzgoWZtvQEhED+XNj3g8Otp3s7YHKf44y44VqG3+xqR+m8D7dpP
	tM3Sa3Kq6JtMvVsh4LXV0gZJG+BUYivcjOqvsicheL9aPro08849TuNPjuAqEkPk2+fUktZEpvx
	HbpUdjQQz1qeNhfRfEtxI+DPi1hmfFV1nGVhYwYQHsA==
X-Gm-Gg: AY/fxX6WJgvt3ACMG56IuAYPJVGmopUgHUJ4QOOHwv/a+RdqsOo3zu7MncvFgjEBdTS
	jCHUxkKO+De7fuwG/576GehvQnU5dYqhd95n6yH2aOOeqizEas9kGYVqTKtuBKi90cHdwgwa9tH
	B0cPq4QsubGtge9xrfbIL0NBo+XoAUkFDMR8dzTseBfqhrby0TkOlifkOE+R9LjOQ9BhQ2t2UKk
	Qb1Km4y9IbZDQu/jc3H2wU2mK3twJKekMy2FW38EzoAKjQGD9S2uH98VVzOdqnZX3J1XsDnHSvS
	UQMgYwUGy5+tGBzxFUeNADkrye6kAK1BY/HANmYFqbao
X-Google-Smtp-Source: AGHT+IH9+gy6Ia0VNNIYxSU2fLYpk13oP/Tm8jYmi+Mtb2LEUjTmajm/ISPd0dJ9fMuHW6e5GpVdviDj+Wzpgl4ZTjE=
X-Received: by 2002:a05:690e:4cf:b0:644:60d9:8674 with SMTP id
 956f58d0204a3-6466a8d74famr22435914d50.89.1767173807173; Wed, 31 Dec 2025
 01:36:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251229-k3-reset-v1-0-eda0747bded3@riscstar.com>
 <20251229-k3-reset-v1-3-eda0747bded3@riscstar.com> <20251230-dashing-black-skink-45e5a6@quoll>
In-Reply-To: <20251230-dashing-black-skink-45e5a6@quoll>
From: Guodong Xu <guodong@riscstar.com>
Date: Wed, 31 Dec 2025 17:36:35 +0800
X-Gm-Features: AQt7F2pQEjLh6AvJYpaZgx8RA130bkC0nRocUhcFJ6RvAy_4of4qZC5SF6hClOo
Message-ID: <CAH1PCMYG6DEj-oq_S8GNddF0m=tt+h313i9HXjFi7DkeRc7DiA@mail.gmail.com>
Subject: Re: [PATCH 3/4] reset: spacemit: Extract common K1 reset code
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Alex Elder <elder@riscstar.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

On Tue, Dec 30, 2025 at 8:23=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Mon, Dec 29, 2025 at 07:04:06PM +0800, Guodong Xu wrote:
> > Extract the common reset controller code from the K1 driver into
> > separate reset-spacemit-common.{c,h} files. This prepares for
> > additional SpacemiT SoCs that share the same reset controller
> > architecture.
> >
> > The common code now includes handlers for reset assert
> > deassert operations and probing for auxiliary bus devices.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> >  drivers/reset/spacemit/Kconfig                 |  17 +++-
> >  drivers/reset/spacemit/Makefile                |   2 +
> >  drivers/reset/spacemit/reset-spacemit-common.c |  79 +++++++++++++++++
> >  drivers/reset/spacemit/reset-spacemit-common.h |  53 ++++++++++++
> >  drivers/reset/spacemit/reset-spacemit-k1.c     | 113 +++--------------=
--------
> >  5 files changed, 158 insertions(+), 106 deletions(-)
> >
> > diff --git a/drivers/reset/spacemit/Kconfig b/drivers/reset/spacemit/Kc=
onfig
> > index 552884e8b72a..56a4858b30e1 100644
> > --- a/drivers/reset/spacemit/Kconfig
> > +++ b/drivers/reset/spacemit/Kconfig
> > @@ -1,10 +1,20 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >
> > -config RESET_SPACEMIT_K1
> > -     tristate "SpacemiT K1 reset driver"
> > +menu "Reset support for SpacemiT platforms"
> >       depends on ARCH_SPACEMIT || COMPILE_TEST
> > -     depends on SPACEMIT_K1_CCU
> > +
> > +config RESET_SPACEMIT_COMMON
> > +     tristate
> >       select AUXILIARY_BUS
> > +     help
> > +       Common reset controller infrastructure for SpacemiT SoCs.
> > +       This provides shared code and helper functions used by
> > +       reset drivers for various SpacemiT SoC families.
> > +
> > +config RESET_SPACEMIT_K1
> > +     tristate "Support for SpacemiT K1 SoC"
> > +     depends on SPACEMIT_K1_CCU
> > +     select RESET_SPACEMIT_COMMON
> >       default SPACEMIT_K1_CCU
> >       help
> >         Support for reset controller in SpacemiT K1 SoC.
> > @@ -12,3 +22,4 @@ config RESET_SPACEMIT_K1
> >         unit (CCU) driver to provide reset control functionality
> >         for various peripherals and subsystems in the SoC.
> >
> > +endmenu
> > diff --git a/drivers/reset/spacemit/Makefile b/drivers/reset/spacemit/M=
akefile
> > index de7e358c74fd..fecda9f211b2 100644
> > --- a/drivers/reset/spacemit/Makefile
> > +++ b/drivers/reset/spacemit/Makefile
> > @@ -1,3 +1,5 @@
> >  # SPDX-License-Identifier: GPL-2.0
> > +obj-$(CONFIG_RESET_SPACEMIT_COMMON)  +=3D reset-spacemit-common.o
> > +
> >  obj-$(CONFIG_RESET_SPACEMIT_K1)              +=3D reset-spacemit-k1.o
> >
> > diff --git a/drivers/reset/spacemit/reset-spacemit-common.c b/drivers/r=
eset/spacemit/reset-spacemit-common.c
> > new file mode 100644
> > index 000000000000..e4b3f0e2c59d
> > --- /dev/null
> > +++ b/drivers/reset/spacemit/reset-spacemit-common.c
> > @@ -0,0 +1,79 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +
> > +/* SpacemiT reset controller driver - common implementation */
> > +
> > +#include <linux/container_of.h>
> > +#include <linux/device.h>
> > +#include <linux/module.h>
> > +
> > +#include <soc/spacemit/ccu.h>
> > +
> > +#include "reset-spacemit-common.h"
> > +
> > +static int spacemit_reset_update(struct reset_controller_dev *rcdev,
> > +                              unsigned long id, bool assert)
> > +{
> > +     struct ccu_reset_controller *controller;
> > +     const struct ccu_reset_data *data;
> > +     u32 mask;
> > +     u32 val;
> > +
> > +     controller =3D container_of(rcdev, struct ccu_reset_controller, r=
cdev);
> > +     data =3D &controller->data->reset_data[id];
> > +     mask =3D data->assert_mask | data->deassert_mask;
> > +     val =3D assert ? data->assert_mask : data->deassert_mask;
> > +
> > +     return regmap_update_bits(controller->regmap, data->offset, mask,=
 val);
> > +}
> > +
> > +static int spacemit_reset_assert(struct reset_controller_dev *rcdev,
> > +                              unsigned long id)
> > +{
> > +     return spacemit_reset_update(rcdev, id, true);
> > +}
> > +
> > +static int spacemit_reset_deassert(struct reset_controller_dev *rcdev,
> > +                                unsigned long id)
> > +{
> > +     return spacemit_reset_update(rcdev, id, false);
> > +}
> > +
> > +const struct reset_control_ops spacemit_reset_control_ops =3D {
> > +     .assert         =3D spacemit_reset_assert,
> > +     .deassert       =3D spacemit_reset_deassert,
> > +};
> > +EXPORT_SYMBOL_GPL(spacemit_reset_control_ops);
> > +
> > +static int spacemit_reset_controller_register(struct device *dev,
> > +                                           struct ccu_reset_controller=
 *controller)
> > +{
> > +     struct reset_controller_dev *rcdev =3D &controller->rcdev;
> > +
> > +     rcdev->ops =3D &spacemit_reset_control_ops;
> > +     rcdev->owner =3D THIS_MODULE;
>
> So who is now the owner? This module or actual driver calling and using
> this?

You're absolutely right, good catch & thank you!

I'll fix it in the v2 version with:

 rcdev->owner =3D dev->driver->owner;

Best regards,
Guodong Xu

>
> This feels buggy, assuming this is a module and your
> MODULE_DESCRIPTION() clearly suggests that.
>
>
> Best regards,
> Krzysztof
>

