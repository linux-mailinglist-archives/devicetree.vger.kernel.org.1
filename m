Return-Path: <devicetree+bounces-216432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5158FB54CCC
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:12:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7246A015C3
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89AA9301470;
	Fri, 12 Sep 2025 11:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wlzrzEMQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A74A272E5E
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757678359; cv=none; b=saKY0xZg42il0s9qiyLjkaXA37q+GvRe9ZJK62644jp272gupXG8bRzBre0IjA6bALNlyAso4ALQ8j9AWHglyLcEITN68MG+5ZSJ6gjVvNb6Tr751K1uJHh6Yh+wYXDB2lbvp74kvJRca7YP5z+CSPMDPKmdvShuZqRexKapxQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757678359; c=relaxed/simple;
	bh=8/a/qJABGQQsO7MWth/gWIdU5R1QGpf9oLF4k9j7v3M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cCwSFb98/BHipUIzBapQFhY8cZqwi+Q4Ww7tGTFo1RTWO3bfEoV+TMg/DF/jFmWiavhfSf2/3NESRaZq1iToAbg8bxXkvenZyxnHdD/A7NbR5JH2oD9mYXGtoZD9swilpleYSLzF4T1510YTK0cuqSm5hcleFpUBFJXCbxFUTyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wlzrzEMQ; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-55f6017004dso1974734e87.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 04:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757678354; x=1758283154; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lg7qWRUKABPmJe9YUV85wwqlEXsnIyAFDE3XX1No4O4=;
        b=wlzrzEMQNu6ErC/7l/p84M6LxoXED0PH473liusmpqhVyBDBYUfvFd8lskx9wwz5op
         CwMeXSjcBVlABWh6A3ek/oFYCtIk2y28CMXwPtTNrpuXfa3kz3nWk8ZOyo6EtyGSZv7P
         g1Y+1fh8LdAP7PDLi9tMkZGkvZ7CVcTI5tgkzTlAB/OA8zwnadl6p2IDnOrVERk0X0EC
         3uvaOT8TKviuDZ+njDtoGzhZDaWVS8xpGjYfw/uFTHnvnUEru4FLaZR8Fyksr6JzUnth
         Vg9mztynBQHCPcHTXh7Sz2Gebfy4XBlUWzFumQYozSIcGoUSZ+2h/OXjylI2Ee3nTvye
         y2aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678354; x=1758283154;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lg7qWRUKABPmJe9YUV85wwqlEXsnIyAFDE3XX1No4O4=;
        b=Ml3u5unjFGuavKFoK0y7W7HUOE9VY2MRIYL0sDQtaa8LIUBfl2WSsZPXME25ZVQop7
         mKsooF96IL0yz0IlMPtfDUdb4gZ7QtOuJqX5hXSwbpV5G8TpyDVOoBeNNV+/D3dPcyTh
         1EFXVJtnwVwEgSiHxwMUZYug9hhGHYWtDTVfLnUpmh3xDpfqBA6dtIXBpmlwhsc4yGv/
         7TmMCvPsMsjQrIVq4LalC7b9v5PSf9rW5J0bz4GQV4l61lknRXsk665lAUpVYirJ/wZV
         /v2uGlvb7KHJWDRQr3GcZrT66rjYaLSD/oDrfpg/7Atbf9yozUdqGz996k0LK/JpTxK7
         7qlw==
X-Forwarded-Encrypted: i=1; AJvYcCW/x6zKc1PKmWbYcQ6X5G9+ZLqKh89kwEYoAt3NTwYd1SNm1Oe4qW2MP6hIuvtQjz0BWmzOuVBHHGaT@vger.kernel.org
X-Gm-Message-State: AOJu0YwdyOiBpVPffoS8asUryRRpsLG627gxkO6i/IfOcXvMjQaHuunG
	sjqs4U0Ybih6+9oH+Nckp9CI5uqBhUlYItMGjWf4SjlOZrub6dyfT1UfTVOqZcFfz8twWHm6X+T
	ls/fnW0VmX7Kkt3LOck5hLuFe6rMiI9hEk56gZgZkiZRw2uBfwe4gWWIqsw==
X-Gm-Gg: ASbGncvZPncVXeY3V7uXASOqqKvxrfoY3YAtIaVggoxfLZip0cfo7X1q8nxpWcQgfCQ
	ZJKCKL2u5fa+YQn1O09tqxfK8HiWAbOY+fkL64EykU9Jbe30UQ/lwJprP+eQEzQqDb9VDjg8HfH
	Nz/g8njhl775Xg4XJKBITrQzmxg8Ixbz9wD/ivE0njKpPdvvJGxbPsaW9ZYvjoxnI0gZQrbJLT3
	VfCJDE=
X-Google-Smtp-Source: AGHT+IGeZRJRiB/LmqkbexVvmZJ7WX/3/khEzl2E2teMJl+0sV9Tw4l6WBQajDk3wJg2rzu7bsPpdTU3lciwtrFDvjM=
X-Received: by 2002:a05:6512:234b:b0:55f:3faa:7c02 with SMTP id
 2adb3069b0e04-5704e7223e3mr905200e87.40.1757678353719; Fri, 12 Sep 2025
 04:59:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250912060650.2180691-1-gary.yang@cixtech.com> <20250912060650.2180691-2-gary.yang@cixtech.com>
In-Reply-To: <20250912060650.2180691-2-gary.yang@cixtech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 12 Sep 2025 13:59:00 +0200
X-Gm-Features: Ac12FXxgQqTM_v6IlK5tuOK400vNP5lgdVRrVI1BjBu-zlzI4VXvJPt0wi-IxX4
Message-ID: <CACRpkdYgTjerG5mks_+3sjhKKYtCsFY=1NWhgw_YEuib7gZm3g@mail.gmail.com>
Subject: Re: [v2 1/3] pinctrl: cix: Add pin-controller support for sky1
To: Gary Yang <gary.yang@cixtech.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	cix-kernel-upstream@cixtech.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gary,

thanks for your patch!

On Fri, Sep 12, 2025 at 8:06=E2=80=AFAM Gary Yang <gary.yang@cixtech.com> w=
rote:

> Add the pin-controller driver for Sky1 platform
>

Add some more description of the pin control on the SoC here please.

> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
(...)

Config structure in Kconfig looks good!

> +++ b/drivers/pinctrl/cix/pinctrl-sky1-base.c
> @@ -0,0 +1,581 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +//
> +// Author: Jerry Zhu <Jerry.Zhu@cixtech.com>
> +
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/init.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/of_address.h>
> +#include <linux/pinctrl/machine.h>
> +#include <linux/pinctrl/pinconf.h>
> +#include <linux/pinctrl/pinconf-generic.h>
> +#include <linux/pinctrl/pinctrl.h>
> +#include <linux/pinctrl/pinmux.h>
> +#include <linux/platform_device.h>
> +#include <linux/seq_file.h>
> +#include <linux/slab.h>
> +
> +#include "../core.h"
> +#include "../pinconf.h"
> +#include "../pinctrl-utils.h"
> +#include "../pinmux.h"
> +#include "pinctrl-sky1.h"
> +
> +#define SKY1_PIN_SIZE          (0x4)
> +#define SKY1_MUX_MASK          (0x180)

For masks do this:

#include <linux/bits.h>

#define SKY1_MUX_MASK GENMASK(8, 7)

GENMASK generates a bitmask from bit 7 to 8, 0x180.

If its a 32bit register you can use GENMASK_U32() to be
even clearer, etc.

> +#define SKY1_MUX_SHIFT         (0x7)
> +#define SKY1_PULLCONF_MASK     (0x60)

Same idea here.

> +#define SKY1_PULLUP_SHIFT      (0x6)
> +#define SKY1_PULLDN_SHIFT      (0x5)

I would probably do this:

#include <linus/bits.h>

#define SKY1_PULLDN BIT(5)
#define SKY1_PULLUP BIT(6)

Using simple bit references to define what each bit
is for.

> +#define SKY1_DS_MASK           (0x0f)

Use GENMASK()

> +#define CIX_GET_PIN_NO(x) ((x) >> 8)
> +#define CIX_GET_PIN_FUNC(x) ((x) & 0xf)

Maybe define 8 and 0xf as shifts?

> +static const struct sky1_function_desc *sky1_pctrl_find_function_by_pin(
> +               struct sky1_pinctrl *spctl, u32 pin_num, u32 fnum)
> +{
> +       const struct sky1_pin_desc *pin =3D spctl->info->pins + pin_num;
> +       const struct sky1_function_desc *func =3D pin->functions;
> +
> +       while (func && func->name) {
> +               if (func->muxval =3D=3D fnum)
> +                       return func;
> +               func++;
> +       }

Using a NULL func->name to terminate the array looks a bit dangerous.

What about adding:

> +struct sky1_function_desc {
> +       unsigned char muxval;
> +       const char *name;

const char * const *functions;
size_t nfuncs;

> +};

Then you can use nfuncs to iterate over the array of
function names, and define a macro like this:

#define SKY_PINFUNCTION(_muxval, _functions, _nfunctions)   \
(struct sky1_function_desc) {                                  \
                .muxval =3D (muxval),                        \
                .functions =3D (_functions),                    \
                .nfuncs =3D (_nfunctions),                  \
        }

And then this:

+static const struct sky1_pin_desc sky1_pinctrl_s5_pads[] =3D {
> +       {
> +               .pin =3D PINCTRL_PIN(0, "GPIO1"),
> +               .functions =3D {
> +                       [0] =3D {0, "GPIO1"},
> +               },
> +       },
> +       {
> +               .pin =3D PINCTRL_PIN(1, "GPIO2"),
> +               .functions =3D {
> +                       [0] =3D {0, "GPIO2"},
> +               },

> +       },

becomes

static const struct sky1_pin_desc sky1_pinctrl_s5_pads[] =3D {
    SKY_PINFUNCTION(PINCTRL_PIN(0, "GPIO1"),  "GPIO1", 1),
    SKY_PINFUNCTION(PINCTRL_PIN(1, "GPIO2"),  "GPIO2", 1),

I don't know about using the PINCTRL_PIN() macro here though,
can't you just put in 0, 1...?

Anyway I think you get the idea.

> +static bool sky1_pctrl_is_function_valid(struct sky1_pinctrl *spctl,
> +               u32 pin_num, u32 fnum)
> +{
> +       int i;
> +
> +       for (i =3D 0; i < spctl->info->npins; i++) {
> +               const struct sky1_pin_desc *pin =3D spctl->info->pins + i=
;
> +
> +               if (pin->pin.number =3D=3D pin_num) {
> +                       const struct sky1_function_desc *func =3D
> +                                       pin->functions;
> +
> +                       while (func && func->name) {

So here you could just for (i =3D 0; i++; i < func->nfuncs)

(etc everywhere)

> +static int sky1_pctrl_dt_node_to_map_func(struct sky1_pinctrl *spctl,
> +               u32 pin, u32 fnum, struct sky1_pinctrl_group *grp,
> +               struct pinctrl_map **map, unsigned int *reserved_maps,
> +               unsigned int *num_maps)
> +{
> +       bool ret;
> +
> +       if (*num_maps =3D=3D *reserved_maps)
> +               return -ENOSPC;
> +
> +       (*map)[*num_maps].type =3D PIN_MAP_TYPE_MUX_GROUP;
> +       (*map)[*num_maps].data.mux.group =3D grp->name;
> +
> +       ret =3D sky1_pctrl_is_function_valid(spctl, pin, fnum);
> +       if (!ret) {
> +               dev_err(spctl->dev, "invalid function %d on pin %d .\n",
> +                               fnum, pin);
> +               return -EINVAL;
> +       }
> +
> +       (*map)[*num_maps].data.mux.function =3D sky1_gpio_functions[fnum]=
;
> +       (*num_maps)++;
> +
> +       return 0;
> +}
> +
> +static struct sky1_pinctrl_group *
> +sky1_pctrl_find_group_by_pin(struct sky1_pinctrl *spctl, u32 pin)
> +{
> +       int i;
> +
> +       for (i =3D 0; i < spctl->info->npins; i++) {
> +               struct sky1_pinctrl_group *grp =3D
> +                       (struct sky1_pinctrl_group *)spctl->groups + i;
> +
> +               if (grp->pin =3D=3D pin)
> +                       return grp;
> +       }
> +
> +       return NULL;
> +}

And this:

> +struct sky1_pinctrl_group {
> +       const char *name;
> +       unsigned long config;
> +       unsigned int pin;
> +};

it's a bit conceptually weird.

Usually a pin can be member of many groups.

The only time this works is when the pin controller is of the type
where every pin is placed in a single group with only that pin in it.

And that seems to be the case, because:

> +static int sky1_pctrl_get_groups_count(struct pinctrl_dev *pctldev)
> +{
> +       struct sky1_pinctrl *spctl =3D pinctrl_dev_get_drvdata(pctldev);
> +
> +       return spctl->info->npins;
> +}

If this is the implied pattern for this driver, write as a comment to
the above function that this pin controller place all pins into a
single group with one pin and that this is why this works.

The normal (as can be seen from the pin control documentation
https://docs.kernel.org/driver-api/pin-control.html )
is to group pins, so e.g.

uart0_rx_tx_grp =3D { pin1, pin2 };
i2c0_sda_scl_grp =3D { pin1, pin2 };

Then this is combined with functions such as uart0 and i2c0:

function, group
("uart0", uart0_rx_tx_grp)
("i2c0", i2c0_sda_scl_grp)

Here you see the two pins are used for uart in the first case
and for i2c in the second case, it's the same pins, but members
of two different groups, and these groups are then used with
a function.

The possible functions for a group are then defined somewhere
so these settings can be applied.

Maybe this pattern is something you have in your driver
because the code was copied from some other driver
which use one group per pin, it's not certain that this is the
best layout for the cix SoC so look it over!

The pinconf part of the driver looks very good to me.

Look over these things, and keep posting updates!

Yours,
Linus Walleij

