Return-Path: <devicetree+bounces-198459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECB4B0D123
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:18:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D770F3B06C3
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 05:18:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 309CD28A71B;
	Tue, 22 Jul 2025 05:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CB2hntlr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7FB19E7D1
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 05:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753161535; cv=none; b=qtzY0AXmaKF4bHUF8YJ8CKCcj7Enj2zYVBe7oeuR2utcqTCXAczrA5vxvLPrUkxLBQblcV9ZjKwXyvodUpyOT6+dxAkDg4cvpeQ0EeH3IV0EjBdkr/kNxaI8tdwRQCYuA16Bxv6n/31tSuypJxoVhYg/VoTnpbrUnEEI/HQe2mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753161535; c=relaxed/simple;
	bh=POdV82zo5cmGp9v09l4JU1CbdGoMK0JAOxCCL+dJfos=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QFdx6hCDZOE69ZF588SgINycDNnT8Q6Y1vWdx2jiiCMgnNzzy55z5Mv2H/dOJqBn0/25tQqWULYOA7TGVY3ozcVPUoezMzNPwM8YQihrU6SdK9VvJUEa9ICRKYoLNWX/7f6b4rSj7mynDV9s1ejmw3oJRuqxVxJ6K5Vil0CB6C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CB2hntlr; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-32f1aaf0d60so50634751fa.1
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 22:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753161531; x=1753766331; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fbjWKy8Lcwc8GEbZTAM6i4MM4xiUxqjSvPPv7uBUtNY=;
        b=CB2hntlrqJC1/+fXuarM9HiGl98n8xIpTySomLWfO8dI1vwv2Sx/AKHmPe3FHhyrcw
         xDz4pMM8/HTE1aVHB6Ik2QIxA0BFqVx902m9TwZH+DmZE+ciVHmhWz9BVJDG0qgvt1Xa
         2uauPnFMnmgpqlcRqfJghSy3cKsa9LFhaAKKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753161531; x=1753766331;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fbjWKy8Lcwc8GEbZTAM6i4MM4xiUxqjSvPPv7uBUtNY=;
        b=kkWfQ3jUDmgd77lsEKZ0g20F3CXDJa9aMF/l/tXU+EUiUN2ZoMe/Kk7WutXU7AEkTh
         3aokiVPkzQfEAhAAIzsZNPmU6c5KPHWzmTFZeVqoQWM07sBeiShavO/4nBanRu8938dC
         11qtTSajPm4oQYVXhZ63QTJZCOZ9nPbWjZrzQ9STtJZE4PN6U9y9hCkPIMzNvAQY4Hyy
         krVb4j6wcyk8wtFi93I6xzcU7YhA2cqfZBcsmQV9NQek7ML9exUkeLuddp3qNqapNZrN
         XX+FFApHGtxiHNiCYWWWiVuZUUkk1ZY75evuw/rzxvfldBqbieQiDda/UgiCzg6Y3+3I
         HIqA==
X-Forwarded-Encrypted: i=1; AJvYcCUX+5NAlqcvVh8z94lr3ayv0bKXc2KE4cBWcMP2NYc20MTLlMUdJxjmydOtL3JldGTawDNvLPOvN8cc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8+rD7znr6IinbNP8K/UuqJ25byBD62QdSpujIzdY3TfdQzp00
	wmyyanhdY3apuXGP1verYvhlN/0jT48zV06PNX+qMlTNtW+Stu2MXNSpA9iXIXeb3wdlfRbszxk
	5MA241dyJJs8SebOU6idUu5JmTfMpxmqEMSn1xR8w
X-Gm-Gg: ASbGncuUHvCCTujXoZNMv17VyfirR1GSggGS8KzkMcB9ujXwgl6X3FKeaIm3ixseAv7
	FnC56X/c7cyThc6BHNd+/gc8Gns6+6VkSjxYgVDoVPSHXgjXlM0Ff3G3sgupe+AuHM9HSpOqlUO
	3H/I4X+kGm72mt2MeLwrfkNkMEHq+uvhNuhHjmzQyTkvSQnHUCnsjhGGJp+5rydx+mo8zqMiyjd
	n+zqSTuN6rdylABE98K0HttUXRUajUmfnM=
X-Google-Smtp-Source: AGHT+IHXtp8/VRaNj5ad5vofsP+NxzY4Q7oTBNoQECt/CXJUr6VzTFYU6ZxOTJqcdAuOysJwJg5n/tSQs5v+X4qLoE4=
X-Received: by 2002:a2e:a984:0:b0:32b:7ddd:278d with SMTP id
 38308e7fff4ca-3309a466439mr46938661fa.3.1753161531420; Mon, 21 Jul 2025
 22:18:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250715140224.206329-1-angelogioacchino.delregno@collabora.com> <20250715140224.206329-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250715140224.206329-3-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 22 Jul 2025 13:18:40 +0800
X-Gm-Features: Ac12FXxOEwd1JP0Dvkx8jUbcy4EUYQzj1kXlmFlLaoGVbfWV7CBCgyEc3biTeW0
Message-ID: <CAGXv+5GiKOTqmaJai-494XWDqk+onvrpqFyvwANr+_4_y-1WuA@mail.gmail.com>
Subject: Re: [PATCH v5 2/8] regulator: Add support for MediaTek MT6316 SPMI
 PMIC Regulators
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, lee@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	lgirdwood@gmail.com, broonie@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 15, 2025 at 10:03=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add a driver for the regulators found on all types of the MediaTek
> MT6316 SPMI PMIC, fully controlled by SPMI interface and featuring
> four step down DCDC (buck) converters.
>
> In particular, this includes support for:
>  - MT6316(BP/VP):    2+2 Phase (Phase 1: buck1+2, Phase 2: buck3+4)
>  - MT6316(CP/HP/KP): 3+1 Phase (Phase 1: buck1+2+4, Phase 2: buck3)
>  - MT6316(DP/TP):    4+0 Phase (Single phase, buck1+2+3+4)

You should probably mention here or in the driver with comments that
some parts are not described in the datasheet, or even contradict what
the datasheet says. Examples include:

  - set / clear registers for the enable bits
  - voltage selector being in weird format

> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  drivers/regulator/Kconfig            |   9 +
>  drivers/regulator/Makefile           |   1 +
>  drivers/regulator/mt6316-regulator.c | 345 +++++++++++++++++++++++++++
>  3 files changed, 355 insertions(+)
>  create mode 100644 drivers/regulator/mt6316-regulator.c
>
> diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
> index 7423954153b0..81f2acd0f960 100644
> --- a/drivers/regulator/Kconfig
> +++ b/drivers/regulator/Kconfig
> @@ -864,6 +864,15 @@ config REGULATOR_MT6315
>           This driver supports the control of different power rails of de=
vice
>           through regulator interface.
>
> +config REGULATOR_MT6316
> +       tristate "MT6316 SPMI PMIC regulator driver"
> +       depends on SPMI || COMPILE_TEST
> +       help
> +          Say Y here to enable support for 2+2, 3+1 and 4 phase regulato=
rs
> +          found in the MediaTek MT6316 BP, CP, DP, HP, VP and TP SPMI PM=
ICs.
> +         This driver supports the control of different power rails of de=
vice
> +         through regulator interface.
> +
>  config REGULATOR_MT6323
>         tristate "MediaTek MT6323 PMIC"
>         depends on MFD_MT6397
> diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
> index be98b29d6675..46c0e75f6107 100644
> --- a/drivers/regulator/Makefile
> +++ b/drivers/regulator/Makefile
> @@ -103,6 +103,7 @@ obj-$(CONFIG_REGULATOR_MP886X) +=3D mp886x.o
>  obj-$(CONFIG_REGULATOR_MPQ7920) +=3D mpq7920.o
>  obj-$(CONFIG_REGULATOR_MT6311) +=3D mt6311-regulator.o
>  obj-$(CONFIG_REGULATOR_MT6315) +=3D mt6315-regulator.o
> +obj-$(CONFIG_REGULATOR_MT6315)  +=3D mt6316-regulator.o
>  obj-$(CONFIG_REGULATOR_MT6323) +=3D mt6323-regulator.o
>  obj-$(CONFIG_REGULATOR_MT6331) +=3D mt6331-regulator.o
>  obj-$(CONFIG_REGULATOR_MT6332) +=3D mt6332-regulator.o
> diff --git a/drivers/regulator/mt6316-regulator.c b/drivers/regulator/mt6=
316-regulator.c
> new file mode 100644
> index 000000000000..952852bbe923
> --- /dev/null
> +++ b/drivers/regulator/mt6316-regulator.c
> @@ -0,0 +1,345 @@
> +// SPDX-License-Identifier: GPL-2.0
> +//
> +// Copyright (c) 2024 MediaTek Inc.
> +// Copyright (c) 2025 Collabora Ltd
> +//                    AngeloGioacchino Del Regno <angelogioacchino.delre=
gno@collabora.com>
> +
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/regmap.h>
> +#include <linux/spmi.h>
> +
> +#include <linux/regulator/driver.h>
> +#include <linux/regulator/machine.h>
> +#include <linux/regulator/of_regulator.h>
> +
> +#define MT6316_BUCK_MODE_AUTO                  0
> +#define MT6316_BUCK_MODE_FORCE_PWM             1
> +#define MT6316_BUCK_MODE_LP                    2
> +
> +#define MT6316_CHIP_ID                         0x20b
> +#define MT6316_BUCK_TOP_CON0                   0x1440
> +#define EN_SET_OFFSET                          0x1
> +#define EN_CLR_OFFSET                          0x2
> +
> +#define MT6316_BUCK_TOP_CON1                   0x1443
> +
> +#define MT6316_BUCK_TOP_ELR0                   0x1448
> +#define MT6316_BUCK_TOP_ELR2                   0x144a
> +#define MT6316_BUCK_TOP_ELR4                   0x144c
> +#define MT6316_BUCK_TOP_ELR6                   0x144e
> +#define MT6316_VSEL_MASK                       GENMASK(8, 0)
> +
> +#define MT6316_VBUCK1_DBG                      0x14a8
> +#define MT6316_VBUCK2_DBG                      0x1528
> +#define MT6316_VBUCK3_DBG                      0x15a8
> +#define MT6316_VBUCK4_DBG                      0x1628
> +#define MT6316_BUCK_QI                         BIT(0)
> +
> +#define MT6316_BUCK_TOP_4PHASE_TOP_ANA_CON0    0x1688
> +#define MT6316_BUCK_TOP_4PHASE_TOP_ELR_0       0x1690
> +
> +enum mt6316_type {
> +       MT6316_TYPE_2PHASE,
> +       MT6316_TYPE_3PHASE,
> +       MT6316_TYPE_4PHASE
> +};
> +
> +/**
> + * struct mt6316_regulator_info - MT6316 regulators information
> + * @desc: Regulator description structure
> + * @debug_reg: Debug register for regulator status
> + * @lp_mode_reg: Low Power mode register (normal/idle)
> + * @lp_mode_mask: Low Power mode regulator mask
> + * @modeset_reg: AUTO/PWM mode register
> + * @modeset_mask: AUTO/PWM regulator mask
> + */
> +struct mt6316_regulator_info {
> +       struct regulator_desc desc;
> +       u16 debug_reg;
> +       u16 lp_mode_reg;
> +       u16 lp_mode_mask;
> +       u16 modeset_reg;
> +       u16 modeset_mask;
> +};
> +
> +#define MT6316_BUCK(match, vreg_id, min, max, step, vs_reg)            \
> +{                                                                      \
> +       .desc =3D {                                                      =
 \
> +               .name =3D match,                                         =
 \

.supply_name should probably be added for completeness.

> +               .of_match =3D of_match_ptr(match),                       =
 \
> +               .ops =3D &mt6316_vreg_setclr_ops,                        =
 \
> +               .type =3D REGULATOR_VOLTAGE,                             =
 \
> +               .owner =3D THIS_MODULE,                                  =
 \
> +               .n_voltages =3D (max - min) / step + 1,                  =
 \
> +               .min_uV =3D min,                                         =
 \
> +               .uV_step =3D step,                                       =
 \

Given that the selector _always_ starts from 0 volts, I think this
should have:

                  .linear_min_sel =3D min / step,

So that different minimum values work. Or the minimum value should just
be dropped altogether to prevent miscalculation.

See below for more.

[...]

> +/* MT6316BP/VP - 2+2 phase buck */
> +static struct mt6316_regulator_info mt6316bv_regulators[] =3D {
> +       MT6316_BUCK("vbuck12", 1, 0, 1277500, 2500, MT6316_BUCK_TOP_ELR0)=
,

I just noticed that the overview section of the datasheet mentions that
the lowest voltage is 0.4V for all the regulators.


ChenYu

[...]

