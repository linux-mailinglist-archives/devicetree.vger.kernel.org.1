Return-Path: <devicetree+bounces-324502-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9Oc8NiwEUWr39wIAu9opvQ
	(envelope-from <devicetree+bounces-324502-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:39:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2997173BD1D
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:39:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YlhUiSOS;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324502-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324502-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA6BD3029AF3
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 14:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C729F377544;
	Fri, 10 Jul 2026 14:32:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7D223D7C2
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 14:32:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783693949; cv=none; b=Af2qm+r2gnhI0C+xRR5eNZIm1ZYqQVs0dE/I57mFFRiPZ8+9fHZyTqAzNMAnFH+khqrDG9ATX3QNiUnuKAdGDzjbV+yJuyl0Cvdrn4kKUNSLeaTyW/PJ3kZMvBPkAq+LPmVUlpdlwRkTnlpR3RpwFy8aPoRnoo4BXke9NsZy1PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783693949; c=relaxed/simple;
	bh=34Q8CPQ8Lo61DRCeyTpcD9vOwlejaU/j1ICNvnMwO+g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZOfEFcZ4ticq6ymp8CNq4bxI+Qx83wnlnfZc/PSIInbY0LS/KpNLpKDkBOOYISkaXmOEzrW2VYe+xWIkcLXzDi4Zhldc0K3zlwunEGV3s1JX7vOSNKrz/oyLKn6NESOcj77DN7oB++OvJwbA6p42hvmzz/Tdnl0+AFcU/xWJdPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlhUiSOS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2140B1F00A3F
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 14:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783693948;
	bh=tyJsuc9PaPdLgORfT3uiTThaK4L4eJX6fQzE7ImmQXc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=YlhUiSOSzGmf+rSOaKj0ZiAEFOTKU943wfmGijsjdjeUx9xne3kICWyWgBvyJZYR3
	 rlaqAlw1hg8myKy/Ni6IrqqasyD433iiRaUIHKNrjTxi/23j9luXFDRtTM4TX3CH7i
	 5eJRin/f/mLxksjKGGIfTZGYvRfVVzsEoSbRL/4VrQp0LWFUcoQhzLSvRGHm5CEV6h
	 MB0ji3+FvCpRKDi3iqQd3nKqwgLCmlIrfQIRKyPpz5veAwoyAaIy9D+EjXSZbKJUg1
	 aKwslhcXEcegGFiV2HN7Hso2dDMqpzANeczvSHlisf+e+P39d6fSwH3FKzHu8erNl5
	 OHIuCFOf81evA==
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-69531108f25so1634118a12.2
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 07:32:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rqr/bfCnFHRp7GuAEg20+YFKXtmb7vjc3ngIOTEJmXHUv4d3vmmtPxupTs3X/WR/B4FudK0v4PphSbf@vger.kernel.org
X-Gm-Message-State: AOJu0YzC3AJLjqDa0kDJjrSWF8Eaf9SITFyCKyKqSrI3hpnqldM8HlEE
	JccCP5sPNreMiKOSdt3LJVrcqJZkbv42E4z22RwwLWKS7uB49AM6twzvdl2dczFRhMJrrDnXmZp
	4f7pbObDBHxYuz5ZsMEaRwrMenwU5g4g=
X-Received: by 2002:a05:6402:254a:b0:698:be17:3790 with SMTP id
 4fb4d7f45d1cf-69ab44c57e4mr4834940a12.37.1783693946694; Fri, 10 Jul 2026
 07:32:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1783670011.git.zhoubinbin@loongson.cn> <e5a574b2ae0e5e0ec32fe81c0ccd03eb3ad5a164.1783670011.git.zhoubinbin@loongson.cn>
In-Reply-To: <e5a574b2ae0e5e0ec32fe81c0ccd03eb3ad5a164.1783670011.git.zhoubinbin@loongson.cn>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Fri, 10 Jul 2026 22:32:14 +0800
X-Gmail-Original-Message-ID: <CAAhV-H6Ae=J9a6y6C9WE-sfUJnrypWpc8e01VHJ3ndVt-F+RXA@mail.gmail.com>
X-Gm-Features: AUfX_mziIzRPDFM4jEXixCD6AJpuR4HyI52Kf5Ge1o84mQHZXbLbTaz_oreouGE
Message-ID: <CAAhV-H6Ae=J9a6y6C9WE-sfUJnrypWpc8e01VHJ3ndVt-F+RXA@mail.gmail.com>
Subject: Re: [PATCH 2/2] thermal/drivers/loongson2: Add thermal driver support
 for Loongson-2K0300
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324502-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhoubinbin@loongson.cn,m:zhoubb.aaron@gmail.com,m:chenhuacai@loongson.cn,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:rafael@kernel.org,m:daniel.lezcano@linaro.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:kernel@xen0n.name,m:loongarch@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-pm@vger.kernel.org,m:zhoubbaaron@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[chenhuacai@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,loongson.cn,kernel.org,linaro.org,intel.com,arm.com,xen0n.name,lists.linux.dev,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chenhuacai@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2997173BD1D

Hi, Binbin,

On Fri, Jul 10, 2026 at 4:25=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.cn=
> wrote:
>
> The Loongson-2K0300 SoC uses a new thermal sensor that requires reading
> a separate CPU ID register to obtain hardware version information. This
> version info is used as a correction factor (fix_data) in the
> temperature calculation formula.
>
> Its thermal sensor requires the following hardware-specific handling:
>  - Read chip ID register (offset 0x0 and 0x4) to get the compensation
>    value (comp_val). The value is stored in either bits [31:20] of the
>    ID0 register or bits [15:0] of the ID1 register, depending on the
>    EXTERN_ID bit.
>
>  - The compensation value is a signed 15-bit field; extract the value
>    and apply sign accordingly.
>
> Additionally, some early Loongson-2K0300 chips may have an old fuse that
> yields invalid temperature readings outside the -55 to 125 range. In
> such cases, the driver falls back to a simplified formula (raw * 569 -
> 394700) and logs a warning, ensuring the system can still function
> without crashing.
>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  drivers/thermal/loongson2_thermal.c | 83 ++++++++++++++++++++++++++---
>  1 file changed, 77 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/thermal/loongson2_thermal.c b/drivers/thermal/loongs=
on2_thermal.c
> index ea4dd2fb1f47..a7eb87070aa9 100644
> --- a/drivers/thermal/loongson2_thermal.c
> +++ b/drivers/thermal/loongson2_thermal.c
> @@ -2,9 +2,11 @@
>  /*
>   * Author: zhanghongchen <zhanghongchen@loongson.cn>
>   *         Yinbo Zhu <zhuyinbo@loongson.cn>
> - * Copyright (C) 2022-2023 Loongson Technology Corporation Limited
> + *         Binbin Zhou <zhoubinbin@loongson.cn>
> + * Copyright (C) 2022-2026 Loongson Technology Corporation Limited
>   */
>
> +#include <linux/bitfield.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
>  #include <linux/minmax.h>
> @@ -23,27 +25,44 @@
>  #define LOONGSON2_THSENS_CTRL_LOW_REG  0x8
>  #define LOONGSON2_THSENS_STATUS_REG    0x10
>  #define LOONGSON2_THSENS_OUT_REG       0x14
> +#define LOONGSON2_THSENS_CFG_REG       0x18
>
>  #define LOONGSON2_THSENS_INT_LO                BIT(0)
>  #define LOONGSON2_THSENS_INT_HIGH      BIT(1)
>  #define LOONGSON2_THSENS_INT_EN                (LOONGSON2_THSENS_INT_LO =
| \
>                                          LOONGSON2_THSENS_INT_HIGH)
>  #define LOONGSON2_THSENS_OUT_MASK      0xFF
> +#define LS2K0300_THSENS_OUT_MASK       GENMASK(10, 0)
The naming is a little strange, maybe use LOONGSON2_THSENS_OUT_8B_MASK
and LOONGSON2_THSENS_OUT_10B_MASK?

> +
> +#define LS2K0300_CHIP_ID1              0x4
Also define LS2K0300_CHIP_ID0 here?

> +#define LS2K0300_EXTERN_ID             BIT(4)
> +#define LS2K0300_ID0_VAL_MASK          GENMASK(31, 20)
> +#define LS2K0300_ID1_VAL_MASK          GENMASK(15, 0)
> +
> +#define LS2K0300_COMP_VAL_MASK         GENMASK(14, 0)
> +#define LS2K0300_COMP_SIGN_BIT         BIT(15)
> +
> +#define LS2K0300_LOWEST_VALID_TEMP     (-55000)
> +#define LS2K0300_HIGHEST_VALID_TEMP    (125000)
>
>  /*
>   * This flag is used to indicate the temperature reading
>   * method of the Loongson-2K2000
>   */
>  #define LS2K2000_THSENS_OUT_FLAG       BIT(0)
> +#define LS2K0300_CHIP_ID_FLAG          BIT(1)
>
>  struct loongson2_thermal_chip_data {
>         unsigned int thermal_sensor_sel;
>         unsigned int flags;
> +       const struct thermal_zone_device_ops *thermal_ops;
>  };
>
>  struct loongson2_thermal_data {
> +       struct device *dev;
>         void __iomem *ctrl_reg;
>         void __iomem *temp_reg;
> +       void __iomem *id_reg;
>         const struct loongson2_thermal_chip_data *chip_data;
>  };
>
> @@ -71,6 +90,38 @@ static int loongson2_thermal_set(struct loongson2_ther=
mal_data *data,
>         return 0;
>  }
>
> +static int loongson2_2k0300_get_temp(struct thermal_zone_device *tz, int=
 *temp)
> +{
> +       struct loongson2_thermal_data *tdata =3D thermal_zone_device_priv=
(tz);
> +       int calib_data, calib_offset, temp_mc, raw_adc;
> +       u32 chip_id0, chip_id1;
> +
> +       raw_adc =3D FIELD_GET(LS2K0300_THSENS_OUT_MASK,
> +                           readl(tdata->ctrl_reg + LOONGSON2_THSENS_OUT_=
REG));
> +       chip_id0 =3D readl(tdata->id_reg);
> +       chip_id1 =3D readl(tdata->id_reg + LS2K0300_CHIP_ID1);
> +
> +       if (chip_id0 & LS2K0300_EXTERN_ID)
> +               calib_data =3D FIELD_GET(LS2K0300_ID1_VAL_MASK, chip_id1)=
;
> +       else
> +               calib_data =3D FIELD_GET(LS2K0300_ID0_VAL_MASK, chip_id0)=
;
> +
> +       calib_offset =3D FIELD_GET(LS2K0300_COMP_VAL_MASK, calib_data);
> +       if (calib_data & LS2K0300_COMP_SIGN_BIT)
> +               calib_offset =3D -calib_offset;
> +
> +       temp_mc =3D (raw_adc + calib_offset) * 570 - 394700;
> +
> +       /* For old fuse which can not read right thermal data */
> +       if (temp_mc < LS2K0300_LOWEST_VALID_TEMP || temp_mc > LS2K0300_HI=
GHEST_VALID_TEMP) {
Is there a better way to detect the old fuse? Because I think temp_mc
between LS2K0300_LOWEST_VALID_TEMP and  LS2K0300_HIGHEST_VALID_TEMP is
also not valid for the old fuse.

Huacai

> +               dev_warn_once(tdata->dev, "It's an old fuse, thermal %d i=
s not right\n", temp_mc);
> +               temp_mc =3D raw_adc * 569 - 394700;
> +       }
> +       *temp =3D temp_mc;
> +
> +       return 0;
> +}
> +
>  static int loongson2_2k1000_get_temp(struct thermal_zone_device *tz, int=
 *temp)
>  {
>         int val;
> @@ -112,6 +163,11 @@ static int loongson2_thermal_set_trips(struct therma=
l_zone_device *tz, int low,
>         return loongson2_thermal_set(data, low/MILLI, high/MILLI, true);
>  }
>
> +static const struct thermal_zone_device_ops loongson2_2k0300_of_thermal_=
ops =3D {
> +       .get_temp =3D loongson2_2k0300_get_temp,
> +       .set_trips =3D loongson2_thermal_set_trips,
> +};
> +
>  static const struct thermal_zone_device_ops loongson2_2k1000_of_thermal_=
ops =3D {
>         .get_temp =3D loongson2_2k1000_get_temp,
>         .set_trips =3D loongson2_thermal_set_trips,
> @@ -124,7 +180,6 @@ static const struct thermal_zone_device_ops loongson2=
_2k2000_of_thermal_ops =3D {
>
>  static int loongson2_thermal_probe(struct platform_device *pdev)
>  {
> -       const struct thermal_zone_device_ops *thermal_ops;
>         struct device *dev =3D &pdev->dev;
>         struct loongson2_thermal_data *data;
>         struct thermal_zone_device *tzd;
> @@ -134,6 +189,7 @@ static int loongson2_thermal_probe(struct platform_de=
vice *pdev)
>         if (!data)
>                 return -ENOMEM;
>
> +       data->dev =3D dev;
>         data->chip_data =3D device_get_match_data(dev);
>
>         data->ctrl_reg =3D devm_platform_ioremap_resource(pdev, 0);
> @@ -145,10 +201,13 @@ static int loongson2_thermal_probe(struct platform_=
device *pdev)
>                 data->temp_reg =3D devm_platform_ioremap_resource(pdev, 1=
);
>                 if (IS_ERR(data->temp_reg))
>                         return PTR_ERR(data->temp_reg);
> +       }
>
> -               thermal_ops =3D &loongson2_2k2000_of_thermal_ops;
> -       } else {
> -               thermal_ops =3D &loongson2_2k1000_of_thermal_ops;
> +       /* The chip id register is needed for Loongson-2K0300 */
> +       if (data->chip_data->flags & LS2K0300_CHIP_ID_FLAG) {
> +               data->id_reg =3D devm_platform_ioremap_resource(pdev, 1);
> +               if (IS_ERR(data->id_reg))
> +                       return PTR_ERR(data->id_reg);
>         }
>
>         irq =3D platform_get_irq(pdev, 0);
> @@ -160,7 +219,7 @@ static int loongson2_thermal_probe(struct platform_de=
vice *pdev)
>         loongson2_thermal_set(data, 0, 0, false);
>
>         for (i =3D 0; i <=3D LOONGSON2_MAX_SENSOR_SEL_NUM; i++) {
> -               tzd =3D devm_thermal_of_zone_register(dev, i, data, therm=
al_ops);
> +               tzd =3D devm_thermal_of_zone_register(dev, i, data, data-=
>chip_data->thermal_ops);
>
>                 if (!IS_ERR(tzd))
>                         break;
> @@ -181,17 +240,29 @@ static int loongson2_thermal_probe(struct platform_=
device *pdev)
>         return 0;
>  }
>
> +static const struct loongson2_thermal_chip_data loongson2_thermal_ls2k03=
00_data =3D {
> +       .thermal_sensor_sel =3D 0,
> +       .flags =3D LS2K0300_CHIP_ID_FLAG,
> +       .thermal_ops =3D &loongson2_2k0300_of_thermal_ops,
> +};
> +
>  static const struct loongson2_thermal_chip_data loongson2_thermal_ls2k10=
00_data =3D {
>         .thermal_sensor_sel =3D 0,
>         .flags =3D 0,
> +       .thermal_ops =3D &loongson2_2k1000_of_thermal_ops,
>  };
>
>  static const struct loongson2_thermal_chip_data loongson2_thermal_ls2k20=
00_data =3D {
>         .thermal_sensor_sel =3D 0,
>         .flags =3D LS2K2000_THSENS_OUT_FLAG,
> +       .thermal_ops =3D &loongson2_2k2000_of_thermal_ops,
>  };
>
>  static const struct of_device_id of_loongson2_thermal_match[] =3D {
> +       {
> +               .compatible =3D "loongson,ls2k0300-thermal",
> +               .data =3D &loongson2_thermal_ls2k0300_data,
> +       },
>         {
>                 .compatible =3D "loongson,ls2k1000-thermal",
>                 .data =3D &loongson2_thermal_ls2k1000_data,
> --
> 2.52.0
>

