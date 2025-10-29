Return-Path: <devicetree+bounces-232630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BF2C1989E
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:59:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 20BD54FBA8D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B294326D50;
	Wed, 29 Oct 2025 09:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nYrJzveS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C407F2405E8
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761731726; cv=none; b=d2Xf8g0VAwIozF7aA+v8+p3W/T3xsUJGMWyvj3GNjp1B0gVsbbD4GbIOXYHcPl26VM7JHDRnEU3Nx/6SXykOqBWPF1p6n5Bcy1a+vVd8dRiknUUsc+QUJb/hW7eeMwzSl9nVzxU0LA/j8krzv477phXsLok3f3mhFiws8PSg0/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761731726; c=relaxed/simple;
	bh=CEVLSmmGtrYPqdsFBl3/9NjdCu+LrNCxo8jPERVyZJ4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=FiyJpHN041lnU4orQjHuBYgnRI/ZpNvU7HSOShYUxJ2VbdpABH1PYLAWiOdtuZNJJbLj5CdnHXlgae8VjbYSDcSjQP3AhOGaamqVMIJtg0Hqr9m6bjTeyN97ywerLqFsosCv0NQws8KGa2FZaNOQDfQ4kXtDxAviv9oCKp3dTro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nYrJzveS; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4298bada5bdso6416852f8f.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761731720; x=1762336520; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=13VMLdAQhhcKNL0YMLmH92qPxD3rRrqfJ/A+uX2cNUg=;
        b=nYrJzveS441XlD+8qzM6hm5zVzw/850HyOgCsLBqET69pSEl6DGODLP5NpF4q/cSKW
         OAm4n5hbtO2i5EnLU1FfWXttlVGNskKfLceFyG84FLlSHOJa0AFFhKBng1A7DRjK3ADm
         lJcKv5zQknSnsvOEDZU0h9uxYu+OsfSnu/DcEgeuNJra/GYlPErdZcXO7k1mBwXwn/+o
         gH5/i+Kr/c+gsb8HRYZjOPqlCEkfe39T1wI5j2BPIKR1FDeTFaXW7NmtsB8K1fnRqhHl
         o82Sm9eGovpN61mRQkmKpER2sDpn7PXusyecJ0pwccezGa2p6eUhJoAnobwNNiy4gT6r
         Gqlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761731720; x=1762336520;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=13VMLdAQhhcKNL0YMLmH92qPxD3rRrqfJ/A+uX2cNUg=;
        b=j+NSC68wZXe54QSRRA4j9oTq64iSsCSi1P0ET4C/Lns+xD0iziHYZHDy1sd+WDLa3D
         +pd/HypeD/1+1m7iSht5SIAn/G4Sv/Iyw8C4ILCjL5t8HSzf2qUt56KnAOMx+ZtCVdya
         nkL1sn1P3/78SnvrQ7Jz5Pm2xlaqMkaIx9p9MQl395fmlgjTwG081Z5JbtJ2apCclmKk
         wEVUWTxtb+TpoK992BDYLhrv+drSKEPRIaPjCis0O+uYky/Q/5r1fVhpyEPvr76+uxX6
         jggsQXTNSCAKIkeXh/Ftr/Q8egmKSGiDn0tgG8wG7SjEKeQG7lYSL8YrBmiD9pnrJrbm
         3Ryg==
X-Forwarded-Encrypted: i=1; AJvYcCUPzjw4FtzAdaWht2r0eRztdjkuJpjuoV6Ui/skikc3b7Ye8KINNWjO8Id59/w2tpC4Et8f+mAyDwME@vger.kernel.org
X-Gm-Message-State: AOJu0YwOjzOHsB29TXVBpn7JBdKWMhqUq8vN5eJetbTLliTP/TChObn7
	chHYn0aCJ+yBlzJdR4h5XBfMt4Nxi9gELpUTHmzORx4yX38A8XbF9fPH
X-Gm-Gg: ASbGncvNZiBy9lgHbcRTg+bMwAg6Lgi9qi6/Jdo+blv2HBqHGNz7K53bWhNiR6Ff+eW
	cCf96aKNJf/ifYFVSXSdQ/oCnB4UXsi/pdgLA34WJIxbkWCBwOZaUPS9s3puoYSnS5hDDEYHayi
	K/d9PisQgqNHy4CPLKg1mg7iDd7ZhCAl0OjQL7wScw8IWndbRsKkJ3KZ2mn95o97oxqSpAWxOmV
	/AqWzwxfjWaevIBTUVgkAbWlA8yQHC4LmkgzJ22FIh25kzXRA52FLr3y/PBYfnrXS4aZZc9MvTY
	rfm6xjxlZFgCxbNBbuH3C/ZFMwxrJjAqOtBCekkFslvfTMQBaMp6SaWUluYu59/F8XUGBynJP8t
	/SW0OTMt0n/zAsSuMwPa+LP2zQ6G2IWBVbGDs5+I52743EY9q3zawUMggMmCkz63wQ2MKUzqlg5
	ZHW0jBUHkO
X-Google-Smtp-Source: AGHT+IGbq7ljwmrluObN8qXHvrPY2eMFV3Lkeef8SpMkUZ/r8KGjy+QgvzrxzVRPPMXPYFW+hXUCkg==
X-Received: by 2002:a05:6000:288f:b0:429:8d46:fc58 with SMTP id ffacd0b85a97d-429aefd2c2cmr1776438f8f.60.1761731719590;
        Wed, 29 Oct 2025 02:55:19 -0700 (PDT)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952df6b9sm26296777f8f.44.2025.10.29.02.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 02:55:19 -0700 (PDT)
Message-ID: <3a9441f01e82dfcbdf146a809ba4a6f9604c63d7.camel@gmail.com>
Subject: Re: [PATCH v5 2/2] regulator: max77675: Add MAX77675 regulator
 driver
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Joan-Na-adi <joan.na.devcode@gmail.com>, Liam Girdwood
 <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Joan Na
	 <joan.na@analog.com>
Date: Wed, 29 Oct 2025 09:55:53 +0000
In-Reply-To: <20251029023253.150257-3-joan.na@analog.com>
References: <20251029023253.150257-1-joan.na@analog.com>
	 <20251029023253.150257-3-joan.na@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-10-29 at 11:32 +0900, Joan-Na-adi wrote:
> From: Joan Na <joan.na@analog.com>
>=20
> Add support for the Maxim Integrated MAX77675 PMIC regulator.
>=20
> The MAX77675 is a compact, highly efficient SIMO (Single Inductor Multipl=
e Output)
> power management IC that provides four programmable buck-boost switching =
regulators
> with only one inductor. It supports up to 700mA total output current and =
operates
> from a single-cell Li-ion battery.
>=20
> An integrated power-up sequencer and I2C interface allow flexible startup
> configuration and runtime control.
>=20
> Signed-off-by: Joan Na <joan.na@analog.com>
> ---

Hi Joan,

Some comments from me...=20

> =C2=A0drivers/regulator/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 9 +
> =C2=A0drivers/regulator/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 1 +
> =C2=A0drivers/regulator/max77675-regulator.c | 861 ++++++++++++++++++++++=
+++
> =C2=A0drivers/regulator/max77675-regulator.h | 260 ++++++++
> =C2=A04 files changed, 1131 insertions(+)
> =C2=A0create mode 100644 drivers/regulator/max77675-regulator.c
> =C2=A0create mode 100644 drivers/regulator/max77675-regulator.h
>=20
> diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
> index d84f3d054c59..93131446e402 100644
> --- a/drivers/regulator/Kconfig
> +++ b/drivers/regulator/Kconfig
> @@ -649,6 +649,15 @@ config REGULATOR_MAX77650
> =C2=A0	=C2=A0 Semiconductor. This device has a SIMO with three independen=
t
> =C2=A0	=C2=A0 power rails and an LDO.
>=20
> +config REGULATOR_MAX77675
> +	tristate "Maxim MAX77675 regulator driver"
> +	depends on I2C

Looking at your code, I would expected OF to be a dependency as well.

> +	select REGMAP_I2C
> +	help
> +	=C2=A0 This driver controls the Maxim MAX77675 power regulator via I2C.
> +	=C2=A0 It supports four programmable buck-boost outputs.
> +	=C2=A0 Say Y here to enable the regulator driver
> +
> =C2=A0config REGULATOR_MAX77857
> =C2=A0	tristate "ADI MAX77857/MAX77831 regulator support"
> =C2=A0	depends on I2C
> diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
> index b3101376029d..cdd99669cd24 100644
> --- a/drivers/regulator/Makefile
> +++ b/drivers/regulator/Makefile
> @@ -78,6 +78,7 @@ obj-$(CONFIG_REGULATOR_MAX77503) +=3D max77503-regulato=
r.o
> =C2=A0obj-$(CONFIG_REGULATOR_MAX77541) +=3D max77541-regulator.o
> =C2=A0obj-$(CONFIG_REGULATOR_MAX77620) +=3D max77620-regulator.o
> =C2=A0obj-$(CONFIG_REGULATOR_MAX77650) +=3D max77650-regulator.o
> +obj-$(CONFIG_REGULATOR_MAX77675) +=3D max77675-regulator.o
> =C2=A0obj-$(CONFIG_REGULATOR_MAX8649)	+=3D max8649.o
> =C2=A0obj-$(CONFIG_REGULATOR_MAX8660) +=3D max8660.o
> =C2=A0obj-$(CONFIG_REGULATOR_MAX8893) +=3D max8893.o
> diff --git a/drivers/regulator/max77675-regulator.c b/drivers/regulator/m=
ax77675-regulator.c
> new file mode 100644
> index 000000000000..c1281f07fe43
> --- /dev/null
> +++ b/drivers/regulator/max77675-regulator.c
> @@ -0,0 +1,861 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2025 Analog Devices, Inc.
> + * ADI regulator driver for MAX77675.
> + */
> +
> +#include <linux/module.h>
> +#include <linux/slab.h>
> +#include <linux/of.h>
> +#include <linux/i2c.h>
> +#include <linux/regmap.h>
> +#include <linux/platform_device.h>
> +#include <linux/regulator/driver.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/regulator/of_regulator.h>
> +#include <linux/bitfield.h>

You're clearly missing (at least) mod_devicetable.h. I know that at least c=
lang allows you to get
iwyu,

> +
> +#include "max77675-regulator.h"

Why do we need the header file? Just include everything in the source code =
unless you expect to
share something with another module (which I dunno)?

> +
> +struct max77675_regulator_pdata {
> +	u8=C2=A0=C2=A0 fps_slot;
> +	bool fixed_slew_rate;
> +};
> +

I would get rid of the _pdata suffix. Implies some legacy way of doing thin=
gs (but kind of a
nitpick)

> +struct max77675_config {
> +	u8=C2=A0=C2=A0 en_mode;
> +	u8=C2=A0=C2=A0 voltage_change_latency;
> +	u8=C2=A0=C2=A0 drv_sbb_strength;
> +	u8=C2=A0=C2=A0 dvs_slew_rate;
> +	u8=C2=A0=C2=A0 debounce_time;
> +	u8=C2=A0=C2=A0 manual_reset_time;
> +	bool en_pullup_disable;
> +	bool bias_low_power_request;
> +	bool simo_int_ldo_always_on;
> +};
> +
> +struct max77675_regulator {
> +	struct device *dev;
> +	struct regmap *regmap;
> +	struct max77675_config config;
> +	struct max77675_regulator_pdata pdata[MAX77675_ID_NUM_MAX];
> +};
> +
> +/**
> + * Set latency mode.
> + *
> + * @param maxreg Pointer to max77675 device structure.
> + * @param enable true to enable latency mode, false to disable.
> + */
> +static int max77675_set_latency_mode(struct max77675_regulator *maxreg, =
bool enable)
> +{
> +	return regmap_update_bits(maxreg->regmap, MAX77675_REG_CNFG_SBB_TOP_B,
> +				=C2=A0 MAX77675_LAT_MODE_BIT,
> +				=C2=A0 FIELD_PREP(MAX77675_LAT_MODE_BIT, enable));
> +}
> +

I would drop these one liner wrappers. Personally, I don't see a big benefi=
t on it.

> +/**
> + * Set DVS slew rate mode.
> + *
> + * @param maxreg Pointer to max77675 device structure.
> + * @param enable true to use DVS-controlled slew rate, false for fixed 2=
mV/us.
> + */
> +static int max77675_set_dvs_slew_rate(struct max77675_regulator *maxreg,=
 bool enable)
> +{
> +	return regmap_update_bits(maxreg->regmap, MAX77675_REG_CNFG_SBB_TOP_B,
> +				=C2=A0 MAX77675_DVS_SLEW_BIT,
> +				=C2=A0 FIELD_PREP(MAX77675_DVS_SLEW_BIT, enable));
> +}
> +

Ditto for all other places.

...

>=20
> +
> +/**
> + * Set debounce time for EN pin.
> + *
> + * @param maxreg Pointer to max77675 device structure.
> + * @param debounce_30ms true for 30ms, false for 100us
> + */
> +static int max77675_set_debounce_time(struct max77675_regulator *maxreg,=
 bool debounce_30ms)
> +{
> +	return regmap_update_bits(maxreg->regmap, MAX77675_REG_CNFG_GLBL_A,
> +				=C2=A0 MAX77675_DBEN_EN_BIT,
> +				=C2=A0 FIELD_PREP(MAX77675_DBEN_EN_BIT, debounce_30ms));
> +}
> +
> +static int max77675_regulator_get_fps_src(struct max77675_regulator *max=
reg, int id)
> +{
> +	unsigned int reg_addr;
> +	unsigned int val;
> +	int ret;
> +
> +	switch (id) {
> +	case MAX77675_ID_SBB0:
> +		reg_addr =3D MAX77675_REG_CNFG_SBB0_B;
> +		break;
> +	case MAX77675_ID_SBB1:
> +		reg_addr =3D MAX77675_REG_CNFG_SBB1_B;
> +		break;
> +	case MAX77675_ID_SBB2:
> +		reg_addr =3D MAX77675_REG_CNFG_SBB2_B;
> +		break;
> +	case MAX77675_ID_SBB3:
> +		reg_addr =3D MAX77675_REG_CNFG_SBB3_B;
> +		break;
> +	default:
> +		dev_err(maxreg->dev, "Invalid regulator id: %d\n", id);
> +		return -EINVAL;
> +	}
> +
> +	ret =3D regmap_read(maxreg->regmap, reg_addr, &val);
> +	if (ret < 0) {
> +		dev_err(maxreg->dev, "Failed to read FPS source (reg 0x%02x): %d\n",
> +			reg_addr, ret);
> +		return ret;
> +	}
> +
> +	return val & MAX77675_EN_SBB_MASK;

Ok, this works since the mask is 0x7. However, FIELD_GET() would make it mo=
re
readable and easy to review. I mean, I would not need to go and see the mas=
k value.

> +}
> +
> +static int max77675_regulator_set_fps_src(struct max77675_regulator *max=
reg, int id, u8 fps_src)
> +{
> +	unsigned int reg_addr;
> +	int ret;
> +
> +	switch (id) {
> +	case MAX77675_ID_SBB0:
> +		reg_addr =3D MAX77675_REG_CNFG_SBB0_B;
> +		break;
> +	case MAX77675_ID_SBB1:
> +		reg_addr =3D MAX77675_REG_CNFG_SBB1_B;
> +		break;
> +	case MAX77675_ID_SBB2:
> +		reg_addr =3D MAX77675_REG_CNFG_SBB2_B;
> +		break;
> +	case MAX77675_ID_SBB3:
> +		reg_addr =3D MAX77675_REG_CNFG_SBB3_B;
> +		break;
> +	default:
> +		dev_err(maxreg->dev, "Invalid regulator id: %d\n", id);
> +		return -EINVAL;
> +	}
> +
> +	ret =3D regmap_update_bits(maxreg->regmap, reg_addr,
> +				 MAX77675_EN_SBB_MASK, fps_src);
> +	if (ret < 0) {
> +		dev_err(maxreg->dev, "Failed to set FPS source (reg 0x%02x): %d\n",
> +			reg_addr, ret);
> +		return ret;
> +	}

I would drop the log and just do return regmap_update_bits(). Up to you...

> +
> +	return 0;
> +}
> +
> +/**
> + * max77675_set_sbb_slew_rate_fixed - Set the slew rate for a specific S=
BB regulator channel
> + *
> + * @maxreg: Pointer to the max77675 regulator structure
> + * @id: Regulator channel ID (ID_SBB0 ~ ID_SBB3)
> + * @fixed: Slew rate value (true =3D 2mV/us, false =3D use DVS_SLEW)
> + *
> + * This function configures the slew rate control source for the specifi=
ed SBB channel by
> + * updating the corresponding bits in the CNFG_SBB_TOP_B register.
> + *
> + * Return: 0 on success, negative error code on failure (e.g., invalid c=
hannel ID).
> + */
> +static int max77675_set_sbb_slew_rate_fixed(struct max77675_regulator *m=
axreg, int id, bool
> fixed)
> +{
> +	u8 mask, value;
> +	u8 slew_src_ctrl_bit =3D fixed ? 0 : 1;
> +
> +	switch (id) {
> +	case MAX77675_ID_SBB0:
> +		mask =3D MAX77675_SR_SBB0_BIT;
> +		value =3D FIELD_PREP(MAX77675_SR_SBB0_BIT, slew_src_ctrl_bit);
> +		break;
> +
> +	case MAX77675_ID_SBB1:
> +		mask =3D MAX77675_SR_SBB1_BIT;
> +		value =3D FIELD_PREP(MAX77675_SR_SBB1_BIT, slew_src_ctrl_bit);
> +		break;
> +
> +	case MAX77675_ID_SBB2:
> +		mask =3D MAX77675_SR_SBB2_BIT;
> +		value =3D FIELD_PREP(MAX77675_SR_SBB2_BIT, slew_src_ctrl_bit);
> +		break;
> +
> +	case MAX77675_ID_SBB3:
> +		mask =3D MAX77675_SR_SBB3_BIT;
> +		value =3D FIELD_PREP(MAX77675_SR_SBB3_BIT, slew_src_ctrl_bit);
> +		break;
> +
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return regmap_update_bits(maxreg->regmap, MAX77675_REG_CNFG_SBB_TOP_B, =
mask, value);
> +}
> +
> +static int max77675_init_regulator(struct max77675_regulator *maxreg, in=
t id)
> +{
> +	struct max77675_regulator_pdata *rpdata =3D &maxreg->pdata[id];
> +	int ret;
> +
> +	if (rpdata->fps_slot =3D=3D MAX77675_FPS_DEF) {
> +		ret =3D max77675_regulator_get_fps_src(maxreg, id);
> +		if (ret < 0) {
> +			dev_err(maxreg->dev, "Failed to read FPS source for ID %d\n", id);
> +			return ret;
> +		}
> +		rpdata->fps_slot =3D ret;
> +	} else {
> +		ret =3D max77675_regulator_set_fps_src(maxreg, id, rpdata->fps_slot);
> +		if (ret)
> +			dev_warn(maxreg->dev, "Failed to set FPS source for ID %d\n", id);
> +	}
> +
> +	ret =3D max77675_set_sbb_slew_rate_fixed(maxreg, id, rpdata->fixed_slew=
_rate);
> +	if (ret)
> +		dev_warn(maxreg->dev, "Failed to set slew rate for ID %d\n", id);

Do we really want to treat this as a warning (as FPS)? If so, I would expec=
t a proper
comment explaining why we can afford it.

> +
> +	return 0;
> +}
> +
> +static int max77675_of_parse_cb(struct device_node *np,
> +				const struct regulator_desc *desc,
> +				struct regulator_config *config)
> +{
> +	struct max77675_regulator *maxreg =3D config->driver_data;
> +	struct max77675_regulator_pdata *rpdata =3D &maxreg->pdata[desc->id];
> +	u32 pval;
> +	int ret;
> +
> +	/* Parse FPS slot from DT */
> +	ret =3D of_property_read_u32(np, "maxim,fps-slot", &pval);
> +	rpdata->fps_slot =3D (!ret) ? (u8)pval : MAX77675_FPS_DEF;
> +

So, can we get any arbitrary value for pval?=C2=A0I see we you have an enum=
 in
the bindings so make sure we properly validate it. Same for all other
properties. The bindings also have this as a string and here you have a u32=
?
Not going to work. You need of_property_read_string() + match_string().


Also, "maxim,"? For some time now it's "adi,".

> +	/* Parse slew rate control source */
> +	rpdata->fixed_slew_rate =3D of_property_read_bool(np, "maxim,fixed-slew=
-rate");
> +
> +	/* Apply parsed configuration */
> +	return max77675_init_regulator(maxreg, desc->id);
> +}
> +
> +static int max77675_get_error_flags(struct regulator_dev *rdev, unsigned=
 int *flags)
> +{
> +	struct max77675_regulator *maxreg =3D rdev_get_drvdata(rdev);
> +	unsigned int int_flags;
> +	int id =3D rdev_get_id(rdev);
> +	int ret;
> +
> +	ret =3D regmap_read(maxreg->regmap, MAX77675_REG_INT_GLBL, &int_flags);
> +	if (ret) {
> +		dev_err(maxreg->dev, "Failed to read INT_GLBL: %d\n", ret);
> +		return ret;
> +	}
> +
> +	*flags =3D 0;
> +
> +	switch (id) {
> +	case MAX77675_ID_SBB0:
> +		if (int_flags & MAX77675_INT_SBB0_F_BIT)
> +			*flags |=3D REGULATOR_ERROR_FAIL;
> +		break;
> +	case MAX77675_ID_SBB1:
> +		if (int_flags & MAX77675_INT_SBB1_F_BIT)
> +			*flags |=3D REGULATOR_ERROR_FAIL;
> +		break;
> +	case MAX77675_ID_SBB2:
> +		if (int_flags & MAX77675_INT_SBB2_F_BIT)
> +			*flags |=3D REGULATOR_ERROR_FAIL;
> +		break;
> +	case MAX77675_ID_SBB3:
> +		if (int_flags & MAX77675_INT_SBB3_F_BIT)
> +			*flags |=3D REGULATOR_ERROR_FAIL;
> +		break;
> +	default:
> +		dev_warn(maxreg->dev, "Unsupported regulator ID: %d\n", id);
> +		break;

Should not be a warning. Also wonder if it can happen at all?

> +	}
> +
> +	if (int_flags & MAX77675_INT_TJAL2_R_BIT) {
> +		/* TJAL2 interrupt: Over-temperature condition (above 120 degree) */
> +		*flags |=3D REGULATOR_ERROR_OVER_TEMP;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct regulator_ops max77675_regulator_ops =3D {
> +	.list_voltage=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D regul=
ator_list_voltage_linear,
> +	.enable=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D regulator_enable_regmap,
> +	.disable=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D regulator_disable_regmap,
> +	.is_enabled=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D regulator_is_enabled_regmap,
> +	.map_voltage=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
regulator_map_voltage_linear,
> +	.set_voltage_sel=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D regulator_set_voltag=
e_sel_regmap,
> +	.get_voltage_sel=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D regulator_get_voltag=
e_sel_regmap,
> +	.set_active_discharge =3D regulator_set_active_discharge_regmap,
> +	.get_error_flags=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D max77675_get_error_f=
lags,
> +};
> +
> +static struct regulator_desc max77675_regulators[MAX77675_ID_NUM_MAX] =
=3D {
> +	{
> +		.name=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "sbb0",
> +		.of_match=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D of_match_ptr("sbb0"),
> +		.regulators_node=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D of_match_ptr(=
"regulators"),

I wonder if we need of_match_ptr() given that the whole thing depends on OF=
.

...

> +
> +static int max77675_apply_config(struct max77675_regulator *maxreg)
> +{
> +	const struct max77675_config *config =3D &maxreg->config;
> +	int ret;
> +
> +	ret =3D max77675_set_en_mode(maxreg, config->en_mode);
> +	if (ret) {
> +		dev_err(maxreg->dev, "Failed to set EN mode: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret =3D max77675_set_latency_mode(maxreg, config->voltage_change_latenc=
y);
> +	if (ret) {
> +		dev_err(maxreg->dev, "Failed to set latency mode: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret =3D max77675_set_drv_sbb_strength(maxreg, config->drv_sbb_strength)=
;
> +	if (ret) {
> +		dev_err(maxreg->dev, "Failed to set drive strength: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret =3D max77675_set_dvs_slew_rate(maxreg, config->dvs_slew_rate);
> +	if (ret) {
> +		dev_err(maxreg->dev, "Failed to set DVS slew rate: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret =3D max77675_set_debounce_time(maxreg, config->debounce_time);
> +	if (ret) {
> +		dev_err(maxreg->dev, "Failed to set EN debounce time: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret =3D max77675_set_manual_reset_time(maxreg, config->manual_reset_tim=
e);
> +	if (ret) {
> +		dev_err(maxreg->dev, "Failed to set manual reset time: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret =3D max77675_set_en_pullup_disable(maxreg, config->en_pullup_disabl=
e);
> +	if (ret) {
> +		dev_err(maxreg->dev, "Failed to set EN pull-up disable: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret =3D max77675_set_bias_low_power_request(maxreg, config->bias_low_po=
wer_request);
> +	if (ret) {
> +		dev_err(maxreg->dev, "Failed to set bias low-power request: %d\n", ret=
);
> +		return ret;
> +	}
> +
> +	ret =3D max77675_set_simo_int_ldo_always_on(maxreg, config->simo_int_ld=
o_always_on);
> +	if (ret) {
> +		dev_err(maxreg->dev, "Failed to set SIMO internal LDO always-on: %d\n"=
, ret);
> +		return ret;
> +	}

This seems to called during probe. All the above can be return dev_err_prob=
e()...

> +
> +	return 0;
> +}
> +
> +static u8 max77675_parse_voltage_change_latency(struct device_node *np)
> +{
> +	u32 val;
> +
> +	if (!of_property_read_u32(np, "maxim,voltage-change-latency-us", &val))=
 {
> +		switch (val) {
> +		case 10:
> +			return MAX77675_LOW_LATENCY_MODE;
> +		case 100:
> +			return MAX77675_HIGH_LATENCY_MODE;
> +		default:
> +			break;

The above is wrong. You're ignoring invalid values being given and overwrit=
e them
with defaults. The pattern is:

val =3D MAX77675_HIGH_LATENCY_MODE;
if (!of_property_read_u32(np, "maxim,voltage-change-latency-us", &val)) {
	...
	default:
		return dev_err_probe(dev, -EINVAL, ...);
}

You can also do:

ret =3D of_property_read_u32(...);
/* Not 100% sure if -EINVAL is the error code for a missing property */
if (ret && ret !=3D -EINVAL)
	return ret;
if (!ret) {
	...
}

> +		}
> +	}
> +
> +	/* default: high latency */
> +	return MAX77675_HIGH_LATENCY_MODE;
> +}
> +
> +static u8 max77675_parse_en_mode(struct device_node *np)
> +{
> +	const char *str;
> +
> +	if (!of_property_read_string(np, "maxim,en-mode", &str)) {
> +		if (!strcasecmp(str, "push-button"))
> +			return MAX77675_EN_PUSH_BUTTON;
> +		else if (!strcasecmp(str, "slide-switch"))
> +			return MAX77675_EN_SLIDE_SWITCH;
> +		else if (!strcasecmp(str, "logic"))
> +			return MAX77675_EN_LOGIC;

redundant else if(). Moreover, this looks like it could use match_string()

> +	}
> +
> +	/* default : slide-switch */
> +	return MAX77675_EN_SLIDE_SWITCH;
> +}
> +
> +static u8 max77675_parse_manual_reset_time(struct device_node *np)
> +{
> +	u32 val;
> +
> +	if (!of_property_read_u32(np, "reset-time-sec", &val)) {
> +		switch (val) {
> +		case 4:
> +			return MAX77675_MRT_4S;
> +		case 8:
> +			return MAX77675_MRT_8S;
> +		case 12:
> +			return MAX77675_MRT_12S;
> +		case 16:
> +			return MAX77675_MRT_16S;
> +		default:
> +			break;

Ditto.

...

> +
> +static int max77675_parse_config(struct max77675_regulator *maxreg)
> +{
> +	struct device_node *np =3D maxreg->dev->of_node;
> +	struct max77675_config *config =3D &maxreg->config;
> +	int ret;
> +
> +	/* EN pin mode: push-button, slide-switch, or logic */
> +	config->en_mode =3D max77675_parse_en_mode(np);
> +
> +	/* latency mode */
> +	config->voltage_change_latency =3D max77675_parse_voltage_change_latenc=
y(np);
> +
> +	/* drive strength */
> +	config->drv_sbb_strength =3D max77675_parse_drv_sbb_strength(np);
> +
> +	/* drv slew rate */
> +	config->dvs_slew_rate =3D max77675_parse_dvs_slew_rate(np);
> +
> +	/* Debounce time for EN pin */
> +	config->debounce_time =3D max77675_parse_debounce_time_us(np);
> +
> +	/* Manual reset time for EN pin */
> +	config->manual_reset_time =3D max77675_parse_manual_reset_time(np);

Seems to me that all of the above will need some error handling.

> +
> +	/* Disable internal pull-up resistor on EN pin */
> +	config->en_pullup_disable =3D of_property_read_bool(np, "maxim,en-pullu=
p-disable");
> +
> +	/* Request low-power mode for main bias */
> +	config->bias_low_power_request =3D of_property_read_bool(np, "maxim,bia=
s-low-power-
> request");
> +
> +	/* Force internal LDO to always supply 1.8V */
> +	config->simo_int_ldo_always_on =3D of_property_read_bool(np, "maxim,sim=
o-int-ldo-always-
> on");
> +
> +	ret =3D max77675_apply_config(maxreg);
> +
> +	return ret;
> +}
> +
> +static int max77675_init_event(struct max77675_regulator *maxreg)
> +{
> +	unsigned int ercflag, int_glbl;
> +	int ret;
> +
> +	ret =3D regmap_read(maxreg->regmap, MAX77675_REG_ERCF_GLBL, &ercflag);
> +	if (ret) {
> +		dev_err(maxreg->dev, "Failed to read CID register: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret =3D regmap_read(maxreg->regmap, MAX77675_REG_INT_GLBL, &int_glbl);
> +	if (ret) {
> +		dev_err(maxreg->dev, "Failed to read INT_GLBL register: %d\n", ret);
> +		return ret;
> +	}
> +
> +	if (ercflag & MAX77675_SFT_CRST_F_BIT)
> +		dev_info(maxreg->dev, "Software Cold Reset Flag is set\n");
> +
> +	if (ercflag & MAX77675_SFT_OFF_F_BIT)
> +		dev_info(maxreg->dev, "Software Off Flag is set\n");
> +
> +	if (ercflag & MAX77675_MRST_BIT)
> +		dev_info(maxreg->dev, "Manual Reset Timer Flag is set\n");
> +
> +	if (ercflag & MAX77675_UVLO_BIT)
> +		dev_info(maxreg->dev, "Undervoltage Lockout Flag is set\n");
> +
> +	if (ercflag & MAX77675_OVLO_BIT)
> +		dev_info(maxreg->dev, "Overvoltage Lockout Flag is set\n");
> +
> +	if (ercflag & MAX77675_TOVLD_BIT)
> +		dev_info(maxreg->dev, "Thermal Overload Flag is set\n");
> +
> +	if (int_glbl & MAX77675_INT_SBB3_F_BIT)
> +		dev_info(maxreg->dev, "SBB3 Channel Fault Interrupt occurred\n");
> +
> +	if (int_glbl & MAX77675_INT_SBB2_F_BIT)
> +		dev_info(maxreg->dev, "SBB2 Channel Fault Interrupt occurred\n");
> +
> +	if (int_glbl & MAX77675_INT_SBB1_F_BIT)
> +		dev_info(maxreg->dev, "SBB1 Channel Fault Interrupt occurred\n");
> +
> +	if (int_glbl & MAX77675_INT_SBB0_F_BIT)
> +		dev_info(maxreg->dev, "SBB0 Channel Fault Interrupt occurred\n");
> +
> +	if (int_glbl & MAX77675_INT_TJAL2_R_BIT)
> +		dev_info(maxreg->dev, "Thermal Alarm 2 Rising Interrupt occurred\n");
> +
> +	if (int_glbl & MAX77675_INT_TJAL1_R_BIT)
> +		dev_info(maxreg->dev, "Thermal Alarm 1 Rising Interrupt occurred\n");
> +
> +	if (int_glbl & MAX77675_INT_EN_R_BIT)
> +		dev_info(maxreg->dev, "nEN Rising Edge Interrupt occurred\n");
> +
> +	if (int_glbl & MAX77675_INT_EN_F_BIT)
> +		dev_info(maxreg->dev, "nEN Falling Edge Interrupt occurred\n");

All of the above looks like dev_dbg() to me.

> +
> +	return 0;
> +}
> +
> +static int max77675_regulator_probe(struct i2c_client *client)
> +{
> +	struct max77675_regulator *maxreg;
> +	struct regulator_config config =3D {};
> +	struct device_node *regulators_np;
> +	int i, ret;
> +
> +	maxreg =3D devm_kzalloc(&client->dev, sizeof(*maxreg), GFP_KERNEL);
> +	if (!maxreg)
> +		return -ENOMEM;
> +
> +	maxreg->dev =3D &client->dev;
> +
> +	maxreg->regmap =3D devm_regmap_init_i2c(client, &max77675_regmap_config=
);
> +	if (IS_ERR(maxreg->regmap))
> +		return dev_err_probe(maxreg->dev,
> +				=C2=A0=C2=A0=C2=A0=C2=A0 PTR_ERR(maxreg->regmap),
> +				=C2=A0=C2=A0=C2=A0=C2=A0 "Failed to init regmap\n");
> +
> +	ret =3D max77675_init_event(maxreg);
> +	if (ret)
> +		return dev_err_probe(maxreg->dev, ret, "Failed to init event\n");
> +
> +	ret =3D max77675_parse_config(maxreg);
> +	if (ret)
> +		return dev_err_probe(maxreg->dev, ret, "Failed to apply config\n");
> +
> +	config.dev =3D &client->dev;
> +	config.regmap =3D maxreg->regmap;
> +	config.driver_data =3D maxreg;
> +
> +	regulators_np =3D of_get_child_by_name(client->dev.of_node, "regulators=
");

The above can actually be:

struct device_node *regulators_np __free(device_node) =3D of_get_child_by_n=
ame(...)

and then no need to care about of_node_put(). You need cleanup.h

> +	if (!regulators_np) {
> +		dev_err(maxreg->dev, "No 'regulators' subnode found in DT\n");
> +		return -EINVAL;
> +	}
> +
> +	for (i =3D 0; i < MAX77675_ID_NUM_MAX; i++) {
> +		const struct regulator_desc *desc =3D &max77675_regulators[i];
> +		struct regulator_dev *rdev;
> +
> +		config.of_node =3D of_get_child_by_name(regulators_np, desc->name);
> +		if (!config.of_node) {
> +			dev_warn(maxreg->dev, "No DT node for regulator %s\n", desc->name);
> +			continue;
> +		}
> +
> +		rdev =3D devm_regulator_register(&client->dev, desc, &config);
> +		of_node_put(config.of_node);
> +		if (IS_ERR(rdev)) {
> +			of_node_put(regulators_np);
> +			return dev_err_probe(maxreg->dev, PTR_ERR(rdev),
> +				"Failed to register regulator %d (%s): %d\n",
> +				i, desc->name, ret);
> +		}
> +	}
> +
> +	of_node_put(regulators_np);
> +	i2c_set_clientdata(client, maxreg);

I do not see i2c_get_clientdata() anywhere. I suspect you can drop the abov=
e.

> +
> +	return 0;
> +}
> +
> +static const struct i2c_device_id max77675_i2c_id[] =3D {
> +	{ "max77675", 0 },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(i2c, max77675_i2c_id);
> +
> +static const struct of_device_id __maybe_unused max77675_of_match[] =3D =
{
> +	{ .compatible =3D "maxim,max77675", },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, max77675_of_match);
> +
> +static struct i2c_driver max77675_regulator_driver =3D {
> +	.driver =3D {
> +		.name =3D "max77675",
> +		.of_match_table =3D of_match_ptr(max77675_of_match),

I guess we can drop of_match_ptr() if we agree that we depend on OF

> +	},
> +	.probe =3D max77675_regulator_probe,
> +	.id_table =3D max77675_i2c_id,
> +};
> +
> +module_i2c_driver(max77675_regulator_driver);
> +
> +MODULE_DESCRIPTION("MAX77675 Regulator Driver");
> +MODULE_AUTHOR("Joan Na <joan.na@analog.com>");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/regulator/max77675-regulator.h b/drivers/regulator/m=
ax77675-regulator.h
> new file mode 100644
> index 000000000000..0aaa30a630ca
> --- /dev/null
> +++ b/drivers/regulator/max77675-regulator.h

As said, drop the header.

- Nuno S=C3=A1

