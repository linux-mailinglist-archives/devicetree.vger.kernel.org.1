Return-Path: <devicetree+bounces-240276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 940CFC6F906
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:11:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id E22272F966
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:07:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E59FE364E85;
	Wed, 19 Nov 2025 15:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RrleG8O0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A40361DA7
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 15:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763564674; cv=none; b=sqAsN7N4Z+uqNu0vX6uTZfdE1/GaMtRtMxEA1I7yLybShZwHZ2RNmZa/nxiqQErkikgR+Un4WbaodwqxJjBwqLVjz3cl9srMW7djwxt9Taq2c6Z6PeoBcTttDUTaZcmDkASBaSiruskBKMJJeXMxwk6ID+mkCsLsbsANJqsnHAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763564674; c=relaxed/simple;
	bh=2pGdmEQ8tcNTxTNUzh0gshNDtu9TrQnkKUxRwS4d/yY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=NXDzFfBDGWyDSRLQdYMi40Nead03QaRi9KgrKX6SmCmj99n9hVRNo9giVechYvkYtQ6P7ijTZUkIx0TH79BFrxp7KF0tf7kHezqztLyK+U8sL4+Gsx7DteSn1TyNecOL2KZSLyNpcPMlFkEefD0Ddv9xoRqwu84w1EbCzPphW9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RrleG8O0; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47755de027eso46607085e9.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763564670; x=1764169470; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hQ+wPKZ5wbbEqM0E6GKph1xRS7ddtp2l6WjQhWQmUPM=;
        b=RrleG8O0pZ5TDASnX7q1BCnlSPWBzX84/+UkZOMWgeIPcp8H6Iuwh7VZLAoR/WHHCR
         3MlZbBlLTJGVnQWC21svLw6UPaN8xhETaTvkxQx6fkMz5uapAZoSThkpqoywsmb+H0ZX
         SJhuggVmG5LSPmvaIGoVkhWokLGyZyC3kaFrlSLSgr9bRZsVDtoFCtQDN1LXAIRQDfVm
         BMa9gkGEzyKCyc5XW76I6QMoWgmhQ9MihTeBQxVouvfutMH5yZtCWpNK6Cp9SJqdqmYt
         iK6kL/UEyrBqhsE8LmWXJz1lUANPz8lutjYaFlnhKwe7/gjo53BhtMI767YeqC2qH6K/
         l6EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763564670; x=1764169470;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hQ+wPKZ5wbbEqM0E6GKph1xRS7ddtp2l6WjQhWQmUPM=;
        b=F3nJE4MLqilK5DG4kP/cumr9Uxtv8OrImi5b5OGKTr6t9zc1J8oWyACE7109sEi/fU
         py4zp5MKvZsMCR3UiVXG3y5mAtRzP9/evlDY+4+BkQkT8zU+2E9QvJTzPzMXrx0T+9gL
         6le6Y74wgNOGrNOqTayLCqPUgwJMbprmB66d8eihRTcLahyJFioIeyyELMsTFWRXcsZV
         91wMBfvv2igMgAhs79zrzvMsKHefH3QrIwN12biXx56R0+/XJSzUEFRqbFv8B71VUool
         iSScSkTLj1mvcALfHGEie31JVURqYb5ClYAv3DS/r1tdx2OEIejoutg8bJlIs+mnDJwy
         dUEw==
X-Forwarded-Encrypted: i=1; AJvYcCUjRj+CEgDAPIQ58jTwlvdWAoQv3NKs4BG0rfNf2/xhPGg+gFULkNiTZ8oWSmAmGFxJEHluVzleq9gY@vger.kernel.org
X-Gm-Message-State: AOJu0YyBgPPVJGwtB3olALBqxqBAbLAzkG56yM0FIlQ0BHRz5/Lp0RXO
	nQ1n+0V/KSv/jXfczaJFe5wAdtjgiWOgNdgLPghuZrI/wNLkk2m7n3di
X-Gm-Gg: ASbGncszSPFc3XvvmObuf7ry+18iM/klwescEZxPV8zprKNu3Fc47Fe42zOpMGrCZc3
	dZ6UDidYHxczgdjBMvh5XJ1TS9lw3LJQI9/6TiKjU+S+ZZUxxaKcOUEClKLzUDt6DasyZkakSvH
	3RH2HMBrAa8lZYKLbEUcpe9JbI32nWGGw/+4l2SySgmRPUeJqCeEIT03ygWSgBlJ/5McvV1zV+z
	tQfpRccoCTHvMThpEk7TMgcd/7rS/XR+Qmvma1uNqruLK9bqPY/0jslaI3PsyFloKfhZnPZyOUh
	AGMzOSOooD/nwd+Lneka2c6Wb93acWtp0ffobnhpiDGOHacAV6QXQhE75whMiyy+UjLGkBgvgfw
	8+9mspNp2v4osDjQ4K1jvkeDrF/072Ir4OStpY3cAL0Bemm8IxG+87p6sTHPC+hv08eDE3umDqM
	i5qOR0pbsDhqBBe9OJWkDlSw==
X-Google-Smtp-Source: AGHT+IFpcIzrmWKVVTz+MWFSEtwWN1zDQI3jZ3sCRHa39duVmKBrF7yzNbx5EJESgwZKIv/zVeRTBQ==
X-Received: by 2002:a05:600c:3593:b0:477:557b:6917 with SMTP id 5b1f17b1804b1-4778fe4fdecmr210014455e9.18.1763564669506;
        Wed, 19 Nov 2025 07:04:29 -0800 (PST)
Received: from [10.5.0.2] ([91.250.240.46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b106b03bsm54199145e9.9.2025.11.19.07.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 07:04:28 -0800 (PST)
Message-ID: <5758dedd1a0d97ddc522448502ae07b0ede4ea67.camel@gmail.com>
Subject: Re: [PATCH v2 3/4] hwmon: Add driver for wsen tids
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Thomas Marangoni <Thomas.Marangoni@becom-group.com>, 
	linux-hwmon@vger.kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux@roeck-us.net, 	corbet@lwn.net, Jonathan.Cameron@huawei.com,
 michal.simek@amd.com, 	nuno.sa@analog.com, Frank.Li@nxp.com,
 wenswang@yeah.net, apokusinski01@gmail.com, 	dixitparmar19@gmail.com,
 vassilisamir@gmail.com, paweldembicki@gmail.com, 	heiko@sntech.de,
 neil.armstrong@linaro.org, kever.yang@rock-chips.com, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, mani@kernel.org, dev@kael-k.io, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-doc@vger.kernel.org
Date: Wed, 19 Nov 2025 15:05:06 +0000
In-Reply-To: <20251119125145.2402620-4-Thomas.Marangoni@becom-group.com>
References: <20251119125145.2402620-1-Thomas.Marangoni@becom-group.com>
	 <20251119125145.2402620-4-Thomas.Marangoni@becom-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Thomas,

I'm a bit surprised why you have me on Cc. Since I'm here, let me give some=
 inputs...

On Wed, 2025-11-19 at 13:51 +0100, Thomas Marangoni wrote:
> Add support for the wsen tids. It is a low cost
> and small-form-factor i2c temperature sensor.
>=20
> It supports the following features:
> - Continuous temperature reading in four intervals: 5 ms, 10 ms,
> =C2=A0 20 ms and 40 ms.
> - Low temperature alarm
> - High temperature alarm
>=20
> The driver supports following hwmon features:
> - hwmon_temp_input
> - hwmon_temp_min_alarm
> - hwmon_temp_max_alarm
> - hwmon_temp_min
> - hwmon_temp_max
> - hwmon_chip_update_interval
>=20
> Additional notes:
> - The update interval only supports four fixed values.
> - The alarm is reset on reading.
>=20
> Signed-off-by: Thomas Marangoni <Thomas.Marangoni@becom-group.com>
> ---
> =C2=A0drivers/hwmon/Kconfig=C2=A0 |=C2=A0 10 +
> =C2=A0drivers/hwmon/Makefile |=C2=A0=C2=A0 1 +
> =C2=A0drivers/hwmon/tids.c=C2=A0=C2=A0 | 447 ++++++++++++++++++++++++++++=
+++++++++++++
> =C2=A03 files changed, 458 insertions(+)
> =C2=A0create mode 100644 drivers/hwmon/tids.c
>=20
> diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
> index 157678b821fc..2737350bb661 100644
> --- a/drivers/hwmon/Kconfig
> +++ b/drivers/hwmon/Kconfig
> @@ -2368,6 +2368,16 @@ config SENSORS_THMC50
> =C2=A0	=C2=A0 This driver can also be built as a module. If so, the modul=
e
> =C2=A0	=C2=A0 will be called thmc50.
> =C2=A0
> +config SENSORS_TIDS
> +	tristate "TIDS"
> +	depends on I2C
> +	help
> +	=C2=A0 If you say yes here you get support for the temperature
> +	=C2=A0 sensor WSEN TIDS from W=C3=BCrth Elektronik.
> +
> +	=C2=A0 This driver can also be built as a module. If so, the module
> +	=C2=A0 will be called tids.
> +
> =C2=A0config SENSORS_TMP102
> =C2=A0	tristate "Texas Instruments TMP102"
> =C2=A0	depends on I2C
> diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
> index eade8e3b1bde..4eb77be3df67 100644
> --- a/drivers/hwmon/Makefile
> +++ b/drivers/hwmon/Makefile
> @@ -227,6 +227,7 @@ obj-$(CONFIG_SENSORS_SY7636A)	+=3D sy7636a-hwmon.o
> =C2=A0obj-$(CONFIG_SENSORS_AMC6821)	+=3D amc6821.o
> =C2=A0obj-$(CONFIG_SENSORS_TC74)	+=3D tc74.o
> =C2=A0obj-$(CONFIG_SENSORS_THMC50)	+=3D thmc50.o
> +obj-$(CONFIG_SENSORS_TIDS)		+=3D tids.o
> =C2=A0obj-$(CONFIG_SENSORS_TMP102)	+=3D tmp102.o
> =C2=A0obj-$(CONFIG_SENSORS_TMP103)	+=3D tmp103.o
> =C2=A0obj-$(CONFIG_SENSORS_TMP108)	+=3D tmp108.o
> diff --git a/drivers/hwmon/tids.c b/drivers/hwmon/tids.c
> new file mode 100644
> index 000000000000..62e778202a5f
> --- /dev/null
> +++ b/drivers/hwmon/tids.c
> @@ -0,0 +1,447 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +/*
> + * Copyright (c) BECOM Electronics GmbH
> + *
> + * wsen_tids.c - Linux hwmon driver for WSEN-TIDS Temperature sensor
> + *
> + * Author: Thomas Marangoni <thomas.marangoni@becom-group.com>
> + */
> +
> +#include <linux/util_macros.h>
> +#include <linux/regmap.h>
> +#include <linux/minmax.h>
> +#include <linux/hwmon.h>
> +#include <linux/bits.h>
> +#include <linux/math.h>
> +#include <linux/i2c.h>
> +
> +/*
> + * TIDS registers
> + */
> +#define TIDS_REG_DEVICE_ID	0x01
> +#define TIDS_REG_T_H_LIMIT	0x02
> +#define TIDS_REG_T_L_LIMIT	0x03
> +#define TIDS_REG_CTRL		0x04
> +#define TIDS_REG_STATUS		0x05
> +#define TIDS_REG_DATA_T_L	0x06
> +#define TIDS_REG_DATA_T_H	0x07
> +#define TIDS_REG_SOFT_REST	0x0C
> +
> +#define TIDS_CTRL_ONE_SHOT_MASK		BIT(0)
> +#define TIDS_CTRL_FREERUN_MASK		BIT(2)
> +#define TIDS_CTRL_IF_ADD_INC_MASK	BIT(3)
> +#define TIDS_CTRL_AVG_MASK		GENMASK(5, 4)
> +#define TIDS_CTRL_AVG_SHIFT		4
> +#define TIDS_CTRL_BDU_MASK		BIT(6)
> +
> +#define TIDS_STATUS_BUSY_MASK		BIT(0)
> +#define TIDS_STATUS_OVER_THL_MASK	BIT(1)
> +#define TIDS_STATUS_UNDER_TLL_MASK	BIT(2)
> +
> +#define TIDS_SOFT_REST_MASK		BIT(1)
> +
> +/*
> + * TIDS device IDs
> + */
> +#define TIDS_ID 0xa0
> +
> +struct tids_data {
> +	struct i2c_client *client;
> +
> +	struct regmap *regmap;
> +
> +	int irq;
> +	int temperature;
> +};
> +
> +static u8 update_intervals[] =3D { 40, 20, 10, 5 };

static const?

> +
> +static ssize_t tids_interval_read(struct device *dev, long *val)
> +{
> +	struct tids_data *data =3D dev_get_drvdata(dev);
> +	unsigned int avg_value =3D 0;
> +	int ret;
> +
> +	ret =3D regmap_read(data->regmap, TIDS_REG_CTRL, &avg_value);
> +	if (ret < 0)
> +		return ret;
> +
> +	avg_value =3D (avg_value & TIDS_CTRL_AVG_MASK) >> TIDS_CTRL_AVG_SHIFT;
> +
> +	*val =3D update_intervals[avg_value];
> +
> +	return 0;
> +}
> +
> +static ssize_t tids_interval_write(struct device *dev, long val)
> +{
> +	struct tids_data *data =3D dev_get_drvdata(dev);
> +	unsigned int avg_value;
> +
> +	avg_value =3D find_closest_descending(val, update_intervals,
> +					=C2=A0=C2=A0=C2=A0 ARRAY_SIZE(update_intervals));
> +
> +	return regmap_write_bits(data->regmap, TIDS_REG_CTRL,
> +				 TIDS_CTRL_AVG_MASK,
> +				 avg_value << TIDS_CTRL_AVG_SHIFT);
> +}
> +
> +static int tids_temperature1_read(struct device *dev, long *val)
> +{
> +	struct tids_data *data =3D dev_get_drvdata(dev);
> +	u8 buf[2] =3D { 0 };

Seems like __le16?
> +	int ret;
> +
> +	ret =3D regmap_bulk_read(data->regmap, TIDS_REG_DATA_T_L, buf, 2);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* temperature in =C2=B0mC */
> +	*val =3D (((s16)(buf[1] << 8) | buf[0])) * 10;

Then __le16_to_cpu()?

> +
> +	return 0;
> +}
> +
> +static ssize_t tids_temperature_alarm_read(struct device *dev, u32 attr,
> +					=C2=A0=C2=A0 long *val)
> +{
> +	struct tids_data *data =3D dev_get_drvdata(dev);
> +	int ret;
> +
> +	if (attr =3D=3D hwmon_temp_min_alarm)
> +		ret =3D regmap_test_bits(data->regmap, TIDS_REG_STATUS,
> +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TIDS_STATUS_UNDER_TLL_MASK);
> +	else if (attr =3D=3D hwmon_temp_max_alarm)
> +		ret =3D regmap_test_bits(data->regmap, TIDS_REG_STATUS,
> +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TIDS_STATUS_OVER_THL_MASK);

Instead of passing attr and have this if() else why not passing the proper =
mask? Then
just regmap_read(regmag, reg, ...)?

> +	else
> +		return -EOPNOTSUPP;
> +
> +	if (ret < 0)
> +		return ret;
> +
> +	*val =3D ret;
> +
> +	return 0;
> +}
> +
> +static int tids_temperature_minmax_read(struct device *dev, u32 attr, lo=
ng *val)
> +{
> +	struct tids_data *data =3D dev_get_drvdata(dev);
> +	unsigned int reg_data =3D 0;
> +	int ret;
> +
> +	if (attr =3D=3D hwmon_temp_min)
> +		ret =3D regmap_read(data->regmap, TIDS_REG_T_L_LIMIT, &reg_data);
> +	else if (attr =3D=3D hwmon_temp_max)
> +		ret =3D regmap_read(data->regmap, TIDS_REG_T_H_LIMIT, &reg_data);
> +	else
> +		return -EOPNOTSUPP;

Same as above but with the proper register

> +
> +	if (ret < 0)
> +		return ret;
> +
> +	/* temperature from register conversion in =C2=B0mC */
> +	*val =3D (((u8)reg_data - 63) * 640);

Why the cast?

> +
> +	return 0;
> +}
> +
> +static ssize_t tids_temperature_minmax_write(struct device *dev, u32 att=
r,
> +					=C2=A0=C2=A0=C2=A0=C2=A0 long val)
> +{
> +	struct tids_data *data =3D dev_get_drvdata(dev);
> +	u8 reg_data;
> +
> +	/* temperature in =C2=B0mC */
> +	val =3D clamp_val(val, -39680, 122880);
> +	/* temperature to register conversion in =C2=B0mC */
> +	reg_data =3D (u8)(DIV_ROUND_CLOSEST(val, 640) + 63);
> +
> +	if (attr =3D=3D hwmon_temp_min)
> +		return regmap_write(data->regmap, TIDS_REG_T_L_LIMIT, reg_data);
> +	else if (attr =3D=3D hwmon_temp_max)
> +		return regmap_write(data->regmap, TIDS_REG_T_H_LIMIT, reg_data);
> +	else
> +		return -EOPNOTSUPP;

Redundant else if () and else

...

>=20
> +
> +static int tids_init(struct tids_data *data)
> +{
> +	int ret;
> +
> +	/* Triggering soft reset */
> +	ret =3D regmap_write_bits(data->regmap, TIDS_REG_SOFT_REST,
> +				TIDS_SOFT_REST_MASK, TIDS_SOFT_REST_MASK);
> +	if (ret < 0)
> +		return ret;
> +

No need for sleep some time? Typically that's defined on the datasheet.

> +	ret =3D regmap_clear_bits(data->regmap, TIDS_REG_SOFT_REST,
> +				TIDS_SOFT_REST_MASK);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Allowing bulk read */
> +	ret =3D regmap_write_bits(data->regmap, TIDS_REG_CTRL,
> +				TIDS_CTRL_IF_ADD_INC_MASK,
> +				TIDS_CTRL_IF_ADD_INC_MASK);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Set meassurement interval */
> +	ret =3D regmap_clear_bits(data->regmap, TIDS_REG_CTRL,
> +				TIDS_CTRL_AVG_MASK);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Set device to free run mode */
> +	ret =3D regmap_write_bits(data->regmap, TIDS_REG_CTRL,
> +				TIDS_CTRL_FREERUN_MASK, TIDS_CTRL_FREERUN_MASK);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Don't update temperature register until high and low value are read =
*/
> +	ret =3D regmap_write_bits(data->regmap, TIDS_REG_CTRL, TIDS_CTRL_BDU_MA=
SK,
> +				TIDS_CTRL_BDU_MASK);

return regmap_write_bits();

> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int tids_probe(struct i2c_client *client)
> +{
> +	struct device *device =3D &client->dev;
> +	struct device *hwmon_dev;
> +	struct tids_data *data;
> +	unsigned int value;
> +	int ret;
> +
> +	data =3D devm_kzalloc(device, sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	data->client =3D client;
> +
> +	/* Init regmap */

The comment does not add any added value.

> +	data->regmap =3D devm_regmap_init_i2c(data->client, &regmap_config);
> +	if (IS_ERR(data->regmap))
> +		return dev_err_probe(device, PTR_ERR(data->regmap),
> +				=C2=A0=C2=A0=C2=A0=C2=A0 "regmap initialization failed\n");
> +
> +	/* Read device id, to check if i2c is working */

Same

> +	ret =3D regmap_read(data->regmap, TIDS_REG_DEVICE_ID, &value);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (value !=3D TIDS_ID)
> +		return -ENODEV;
> +
> +	tids_init(data);

Check for the return value.

> +
> +	hwmon_dev =3D devm_hwmon_device_register_with_info(device, "tids", data=
,
> +							 &tids_chip_info, NULL);
> +
> +	return PTR_ERR_OR_ZERO(hwmon_dev);
> +}
> +
> +static int tids_suspend(struct device *dev)
> +{
> +	struct tids_data *data =3D dev_get_drvdata(dev);
> +
> +	return regmap_clear_bits(data->regmap, TIDS_REG_CTRL,
> +				 TIDS_CTRL_FREERUN_MASK);
> +}
> +
> +static int tids_resume(struct device *dev)
> +{
> +	struct tids_data *data =3D dev_get_drvdata(dev);
> +
> +	return regmap_write_bits(data->regmap, TIDS_REG_CTRL,
> +				 TIDS_CTRL_FREERUN_MASK,
> +				 TIDS_CTRL_FREERUN_MASK);
> +}
> +
> +static DEFINE_SIMPLE_DEV_PM_OPS(tids_dev_pm_ops, tids_resume, tids_suspe=
nd);
> +
> +static const struct i2c_device_id tids_id[] =3D {
> +	{ "tids", 0 },

No need for 0

> +	{},

The above is already a terminator so you can drop the comma

- Nuno S=C3=A1


