Return-Path: <devicetree+bounces-259688-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CxYFKgfeGkKoQEAu9opvQ
	(envelope-from <devicetree+bounces-259688-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 03:15:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEB18EF22
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 03:15:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 108D6301E21B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 02:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEBF62C028C;
	Tue, 27 Jan 2026 02:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Eyt1RvnU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5FF42D0614
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769480057; cv=none; b=Rso0KawAfnoYYh83MM4/l5aGBj/ptj/9zxXcNit6Fyh/StybeplWSjYOzEw/+2CPKPt6sjKP+2/40KF/6qKxjOR3ryw9Qcl3RPxQ+roQ3148rWWui9IYp5sWiTQgFiTwB2U/AvpPAwTvwG0zc6eHBJC3e8w0FCuhYcqr1L4bO9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769480057; c=relaxed/simple;
	bh=Z6FKSJ4ik0isyMON2BUlYrXhP0sSTcGhFzDo5n6krps=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uF7EFeOhF9oqY9eYgpsVqxHgyBxITxLHKinKc6FdS9BQzJ477AWwxxNP4N28y6/BSbUyhcMWMTU9kRyQQV/DzHv+5Q9z8oVSvFP2XJOW6kQt1Kd0lZNXYOYIQAbkPf2T9BFFx9T+RsKY3+ZNqvnqBPFsbt8Cnsurn72UZCeXsHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Eyt1RvnU; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-88a367a1dbbso91327976d6.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 18:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769480054; x=1770084854; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vkJAiqPJ0RIuEVTSHTXvdfZdv/4BNy1OhAhyG+OYEiU=;
        b=Eyt1RvnU1S5FyouffFylP5FiIPtCpmKUvUBhGg/Vo55LjKE2fxzmw4ap6T06GxooI9
         CrwCUY56/eUBy9R2sVH6fha45hT+HT4R8ekTAYlCevrkxfAUOhOZRbAJtDFvHlcK6PhD
         CvJ5cIMonHPOa8jyJ0aJyLJaC14hWizbmqLn4VDt7otvRc8rT2Gl0kbPvDvzf9JL2h9N
         pig5dLdpWLOOzeeXtgiUI9/ofNWgCM51tucO+GOaGjgZJU45OsaaYTTqlazQu+iFPUmi
         XRoKiW1g/6JHAMQi7XvG29pZCoqj3PI2PjKjxOYx15rocJH0wvyNwDBEnVJieuPySTCF
         tPxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769480054; x=1770084854;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vkJAiqPJ0RIuEVTSHTXvdfZdv/4BNy1OhAhyG+OYEiU=;
        b=IkWra0E09GOIEnq2OdFTE5xgN/fx7caxMkdYhcOzbhie6iMLz7J0Z5MpoiR06HgdKT
         s0cb0Oo5LJsYALEWri1eKnfIFK1p0Vk6W4XZt8WLnbTe5qiLxlQAB9Cca2iRQZxc1+dH
         CCsxB61cCAV2ARjzTNfV9o/I76sy2vumo/O8yLiez02hpS4aBwLUt4yjfY8z+aA1tPVz
         udHkoMxFt02aD3xj6MVlk6Teb4/u3EbPpA1aMEYB6lpFaBi71u8r6PccKSukP9nKsAS4
         6vAUX2sihYkqxZbyIm0x4cBtdQ8NIwnj4L2eCbLRIiNcokdoI/9YMlGjnOafDI9VncMr
         Y+Lg==
X-Forwarded-Encrypted: i=1; AJvYcCWg2kkcXKdHUUSfe8v+KYGRQ5YbSiUXAr5fmH6vzc6u0h33S7o04i5BoLrOmx7U1+ZL1xaqhdFWMuaC@vger.kernel.org
X-Gm-Message-State: AOJu0YxTfT8hY7tITP/Y6VLEaX95VyfYq2GjtPN8xGOC+VGqn8UeUxMd
	nIcSUghA/RJVZvHKkRaFINi22ibpO3gzLfZ8jVukbd8Y8Pa4HPWb3S8KKb1RQGD0
X-Gm-Gg: AZuq6aJxKerFawTdeZ8tep6JRYgfYR/ihSRmZ/mjdEVOX+KJKJZtJ18PZIi4t7Fa958
	wwVXtb8bOkrRohxYthg+RGFr6DOjT6HgiX9XFE8p5AaTRrS5uLKKmAuvN0yqkmsQLNOMQjS+JC6
	ePQ+DXm/ODaRLoIhtIvTLbfwoGi5cGxsCjNdUWSYzgCsGRLTLBJbUIufIdI9q3NC+522ZhYRNAz
	uaOfpF8EEL9EZfx2UoXirhj2mPkN2g01H6MEXrXFeVKvKCbm0Wx/bUSrALEUT11WGHc3HgJolo/
	hwTuKtEFJl0uHC5Qh0tT4wpGbwWT/XroSIRwCvfqVGgM5FfEteTRbVzYk8um4v14xTQEQYaIFTH
	v7yYzceR796DYT23YbI++7kmDYOoDQ2M6I68tfgtMHwXNNzpltzQTXBC1P/DTuZfHj5/mZJESMD
	8/KD4RwpGYCyviQDe0kfCaIOyD
X-Received: by 2002:a17:902:cf4b:b0:29d:df04:fcdf with SMTP id d9443c01a7336-2a8453248e6mr56918905ad.42.1769472964310;
        Mon, 26 Jan 2026 16:16:04 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802fdd123sm98625565ad.96.2026.01.26.16.16.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 16:16:03 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 26 Jan 2026 16:16:02 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Mayank Mahajan <mayankmahajan.x@nxp.com>
Cc: corbet@lwn.net, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, priyanka.jain@nxp.com,
	vikash.bansal@nxp.com
Subject: Re: [PATCH v5 2/3] hwmon: (tmp108) Add support for P3T1035 and
 P3T2030
Message-ID: <2138f2dd-cf45-4a74-b974-2bcce3793ca9@roeck-us.net>
References: <20260119040459.2898998-1-mayankmahajan.x@nxp.com>
 <20260119040459.2898998-2-mayankmahajan.x@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119040459.2898998-2-mayankmahajan.x@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-259688-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email]
X-Rspamd-Queue-Id: BFEB18EF22
X-Rspamd-Action: no action

On Mon, Jan 19, 2026 at 09:34:58AM +0530, Mayank Mahajan wrote:
> Add support for the P3T1035 & P3T2030 temperature sensor. While mostly
> compatible with the TMP108, P3T1035 uses an 8-bit configuration register
> instead of the 16-bit layout used by TMP108. Updated driver to handle
> this difference during configuration read/write.
> 
> Signed-off-by: Mayank Mahajan <mayankmahajan.x@nxp.com>

Applied.

Thanks,
Guenter

> ---
> V1 -> V2:
> - Disabled hysteresis in is_visible function for P3T1035.
> - Added tables for conversion rate similar to the LM75 driver.
> - Implemented different bus access depending on the chip being used.
>    - Removed regmap for 8 bits; now we are using one regmap as before.
>    - Added read and write functions for i2c and i3c for use with regmap.
>    - Mapped the 8-bit configuration register to a 16 bit value for P3T1035.
> V2 -> V3:
> - Remove changes not relevant to adding a new device in the driver.
> - Address warnings due to incorrect usage of casting operations.
> - Remove the usage of P3T2030 as it's functionally identical to P3T1035.
> V3 -> V4:
> - Add GENMASK for getting mask for conversion rates.
> - Add static arrays for containing sample times for different sensors.
> - Remove redundant code such as checking for NULL pointer in probe.
> - Improve readability by removing double negation.
> - Remove type cast where not required; make reg_buf & val_buf local.
> V4 -> V5:
> - Remove device ID and use a separate parameter structure instead.
> - Revert formatting in the device structure back to the original one.
> 
>  drivers/hwmon/Kconfig  |   2 +-
>  drivers/hwmon/tmp108.c | 197 +++++++++++++++++++++++++++++++++--------
>  2 files changed, 161 insertions(+), 38 deletions(-)
> 
> --
> 2.34.1
> 
> diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
> index 157678b821fc..31969bddc812 100644
> --- a/drivers/hwmon/Kconfig
> +++ b/drivers/hwmon/Kconfig
> @@ -2398,7 +2398,7 @@ config SENSORS_TMP108
>  	select REGMAP_I3C if I3C
>  	help
>  	  If you say yes here you get support for Texas Instruments TMP108
> -	  sensor chips and NXP P3T1085.
> +	  sensor chips, NXP temperature sensors P3T1035, P3T1085 and P3T2030.
> 
>  	  This driver can also be built as a module. If so, the module
>  	  will be called tmp108.
> diff --git a/drivers/hwmon/tmp108.c b/drivers/hwmon/tmp108.c
> index 60a237cbedbc..ae258fa7676e 100644
> --- a/drivers/hwmon/tmp108.c
> +++ b/drivers/hwmon/tmp108.c
> @@ -17,6 +17,8 @@
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/slab.h>
> +#include <linux/util_macros.h>
> +#include <linux/bitfield.h>
> 
>  #define	DRIVER_NAME "tmp108"
> 
> @@ -70,10 +72,36 @@
> 
>  #define TMP108_CONVERSION_TIME_MS	30	/* in milli-seconds */
> 
> +#define TMP108_CONF_CR0_POS		13
> +#define TMP108_CONF_CR1_POS		14
> +#define TMP108_CONF_CONVRATE_FLD	GENMASK(TMP108_CONF_CR1_POS, TMP108_CONF_CR0_POS)
> +
>  struct tmp108 {
>  	struct regmap *regmap;
>  	u16 orig_config;
>  	unsigned long ready_time;
> +	const struct tmp108_params *params;
> +};
> +
> +struct tmp108_params {
> +	bool config_reg_16bits;
> +	const u16 *sample_times;
> +	size_t n_sample_times;
> +};
> +
> +static const u16 p3t1035_sample_times[] = {4000, 1000, 250, 125};
> +static const u16 tmp108_sample_times[] = {4000, 1000, 250, 63};
> +
> +static const struct tmp108_params p3t1035_data = {
> +	.sample_times = p3t1035_sample_times,
> +	.n_sample_times  = ARRAY_SIZE(p3t1035_sample_times),
> +	.config_reg_16bits = false,
> +};
> +
> +static const struct tmp108_params tmp108_data = {
> +	.sample_times = tmp108_sample_times,
> +	.n_sample_times  = ARRAY_SIZE(tmp108_sample_times),
> +	.config_reg_16bits = true,
>  };
> 
>  /* convert 12-bit TMP108 register value to milliCelsius */
> @@ -101,21 +129,8 @@ static int tmp108_read(struct device *dev, enum hwmon_sensor_types type,
>  					  &regval);
>  			if (err < 0)
>  				return err;
> -			switch (regval & TMP108_CONF_CONVRATE_MASK) {
> -			case TMP108_CONVRATE_0P25HZ:
> -			default:
> -				*temp = 4000;
> -				break;
> -			case TMP108_CONVRATE_1HZ:
> -				*temp = 1000;
> -				break;
> -			case TMP108_CONVRATE_4HZ:
> -				*temp = 250;
> -				break;
> -			case TMP108_CONVRATE_16HZ:
> -				*temp = 63;
> -				break;
> -			}
> +			*temp = tmp108->params->sample_times[FIELD_GET(TMP108_CONF_CONVRATE_FLD,
> +								       regval)];
>  			return 0;
>  		}
>  		return -EOPNOTSUPP;
> @@ -192,22 +207,18 @@ static int tmp108_write(struct device *dev, enum hwmon_sensor_types type,
>  {
>  	struct tmp108 *tmp108 = dev_get_drvdata(dev);
>  	u32 regval, mask;
> +	size_t len;
> +	u8 index;
>  	int err;
> 
>  	if (type == hwmon_chip) {
>  		if (attr == hwmon_chip_update_interval) {
> -			if (temp < 156)
> -				mask = TMP108_CONVRATE_16HZ;
> -			else if (temp < 625)
> -				mask = TMP108_CONVRATE_4HZ;
> -			else if (temp < 2500)
> -				mask = TMP108_CONVRATE_1HZ;
> -			else
> -				mask = TMP108_CONVRATE_0P25HZ;
> +			len = tmp108->params->n_sample_times;
> +			index = find_closest_descending(temp, tmp108->params->sample_times, len);
>  			return regmap_update_bits(tmp108->regmap,
>  						  TMP108_REG_CONF,
>  						  TMP108_CONF_CONVRATE_MASK,
> -						  mask);
> +						  FIELD_PREP(TMP108_CONF_CONVRATE_FLD, index));
>  		}
>  		return -EOPNOTSUPP;
>  	}
> @@ -251,6 +262,8 @@ static int tmp108_write(struct device *dev, enum hwmon_sensor_types type,
>  static umode_t tmp108_is_visible(const void *data, enum hwmon_sensor_types type,
>  				 u32 attr, int channel)
>  {
> +	const struct tmp108 *tmp108 = data;
> +
>  	if (type == hwmon_chip && attr == hwmon_chip_update_interval)
>  		return 0644;
> 
> @@ -264,8 +277,11 @@ static umode_t tmp108_is_visible(const void *data, enum hwmon_sensor_types type,
>  		return 0444;
>  	case hwmon_temp_min:
>  	case hwmon_temp_max:
> +		return 0644;
>  	case hwmon_temp_min_hyst:
>  	case hwmon_temp_max_hyst:
> +		if (!tmp108->params->config_reg_16bits)
> +			return 0;
>  		return 0644;
>  	default:
>  		return 0;
> @@ -311,6 +327,106 @@ static bool tmp108_is_volatile_reg(struct device *dev, unsigned int reg)
>  	return reg == TMP108_REG_TEMP || reg == TMP108_REG_CONF;
>  }
> 
> +static int tmp108_i2c_reg_read(void *context, unsigned int reg, unsigned int *val)
> +{
> +	struct i2c_client *client = context;
> +	struct tmp108 *tmp108 = i2c_get_clientdata(client);
> +	int ret;
> +
> +	if (reg == TMP108_REG_CONF && !tmp108->params->config_reg_16bits) {
> +		ret = i2c_smbus_read_byte_data(client, TMP108_REG_CONF);
> +		if (ret < 0)
> +			return ret;
> +		*val = ret << 8;
> +		return 0;
> +	}
> +
> +	ret = i2c_smbus_read_word_swapped(client, reg);
> +	if (ret < 0)
> +		return ret;
> +	*val = ret;
> +	return 0;
> +}
> +
> +static int tmp108_i2c_reg_write(void *context, unsigned int reg, unsigned int val)
> +{
> +	struct i2c_client *client = context;
> +	struct tmp108 *tmp108 = i2c_get_clientdata(client);
> +
> +	if (reg == TMP108_REG_CONF && !tmp108->params->config_reg_16bits)
> +		return i2c_smbus_write_byte_data(client, reg, val >> 8);
> +	return i2c_smbus_write_word_swapped(client, reg, val);
> +}
> +
> +static const struct regmap_bus tmp108_i2c_regmap_bus = {
> +	.reg_read = tmp108_i2c_reg_read,
> +	.reg_write = tmp108_i2c_reg_write,
> +};
> +
> +static int tmp108_i3c_reg_read(void *context, unsigned int reg, unsigned int *val)
> +{
> +	struct i3c_device *i3cdev = context;
> +	struct tmp108 *tmp108 = i3cdev_get_drvdata(i3cdev);
> +	u8 reg_buf[1], val_buf[2];
> +	struct i3c_xfer xfers[] = {
> +		{
> +			.rnw = false,
> +			.len = 1,
> +			.data.out = reg_buf,
> +		},
> +		{
> +			.rnw = true,
> +			.len = 2,
> +			.data.in = val_buf,
> +		},
> +	};
> +	int ret;
> +
> +	reg_buf[0] = reg;
> +
> +	if (reg == TMP108_REG_CONF && !tmp108->params->config_reg_16bits)
> +		xfers[1].len--;
> +
> +	ret = i3c_device_do_xfers(i3cdev, xfers, 2, I3C_SDR);
> +	if (ret < 0)
> +		return ret;
> +
> +	*val = val_buf[0] << 8;
> +	if (reg != TMP108_REG_CONF || tmp108->params->config_reg_16bits)
> +		*val |= val_buf[1];
> +
> +	return 0;
> +}
> +
> +static int tmp108_i3c_reg_write(void *context, unsigned int reg, unsigned int val)
> +{
> +	struct i3c_device *i3cdev = context;
> +	struct tmp108 *tmp108 = i3cdev_get_drvdata(i3cdev);
> +	u8 val_buf[3];
> +	struct i3c_xfer xfers[] = {
> +		{
> +			.rnw = false,
> +			.len = 3,
> +			.data.out = val_buf,
> +		},
> +	};
> +
> +	val_buf[0] = reg;
> +	val_buf[1] = (val >> 8) & 0xff;
> +
> +	if (reg == TMP108_REG_CONF && !tmp108->params->config_reg_16bits)
> +		xfers[0].len--;
> +	else
> +		val_buf[2] = val & 0xff;
> +
> +	return i3c_device_do_xfers(i3cdev, xfers, 1, I3C_SDR);
> +}
> +
> +static const struct regmap_bus tmp108_i3c_regmap_bus = {
> +	.reg_read = tmp108_i3c_reg_read,
> +	.reg_write = tmp108_i3c_reg_write,
> +};
> +
>  static const struct regmap_config tmp108_regmap_config = {
>  	.reg_bits = 8,
>  	.val_bits = 16,
> @@ -323,7 +439,8 @@ static const struct regmap_config tmp108_regmap_config = {
>  	.use_single_write = true,
>  };
> 
> -static int tmp108_common_probe(struct device *dev, struct regmap *regmap, char *name)
> +static int tmp108_common_probe(struct device *dev, struct regmap *regmap, char *name,
> +			       const struct tmp108_params *params)
>  {
>  	struct device *hwmon_dev;
>  	struct tmp108 *tmp108;
> @@ -340,6 +457,7 @@ static int tmp108_common_probe(struct device *dev, struct regmap *regmap, char *
> 
>  	dev_set_drvdata(dev, tmp108);
>  	tmp108->regmap = regmap;
> +	tmp108->params = params;
> 
>  	err = regmap_read(tmp108->regmap, TMP108_REG_CONF, &config);
>  	if (err < 0) {
> @@ -351,7 +469,6 @@ static int tmp108_common_probe(struct device *dev, struct regmap *regmap, char *
>  	/* Only continuous mode is supported. */
>  	config &= ~TMP108_CONF_MODE_MASK;
>  	config |= TMP108_MODE_CONTINUOUS;
> -
>  	/* Only comparator mode is supported. */
>  	config &= ~TMP108_CONF_TM;
> 
> @@ -386,15 +503,15 @@ static int tmp108_probe(struct i2c_client *client)
>  	struct regmap *regmap;
> 
>  	if (!i2c_check_functionality(client->adapter,
> -				     I2C_FUNC_SMBUS_WORD_DATA))
> +				     I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA))
>  		return dev_err_probe(dev, -ENODEV,
>  				     "adapter doesn't support SMBus word transactions\n");
> 
> -	regmap = devm_regmap_init_i2c(client, &tmp108_regmap_config);
> +	regmap = devm_regmap_init(dev, &tmp108_i2c_regmap_bus, client, &tmp108_regmap_config);
>  	if (IS_ERR(regmap))
>  		return dev_err_probe(dev, PTR_ERR(regmap), "regmap init failed");
> 
> -	return tmp108_common_probe(dev, regmap, client->name);
> +	return tmp108_common_probe(dev, regmap, client->name, i2c_get_match_data(client));
>  }
> 
>  static int tmp108_suspend(struct device *dev)
> @@ -420,15 +537,17 @@ static int tmp108_resume(struct device *dev)
>  static DEFINE_SIMPLE_DEV_PM_OPS(tmp108_dev_pm_ops, tmp108_suspend, tmp108_resume);
> 
>  static const struct i2c_device_id tmp108_i2c_ids[] = {
> -	{ "p3t1085" },
> -	{ "tmp108" },
> -	{ }
> +	{ "p3t1035", (unsigned long)&p3t1035_data },
> +	{ "p3t1085", (unsigned long)&tmp108_data },
> +	{ "tmp108", (unsigned long)&tmp108_data },
> +	{}
>  };
>  MODULE_DEVICE_TABLE(i2c, tmp108_i2c_ids);
> 
>  static const struct of_device_id tmp108_of_ids[] = {
> -	{ .compatible = "nxp,p3t1085", },
> -	{ .compatible = "ti,tmp108", },
> +	{ .compatible = "nxp,p3t1035", .data = &p3t1035_data },
> +	{ .compatible = "nxp,p3t1085", .data = &tmp108_data },
> +	{ .compatible = "ti,tmp108", .data = &tmp108_data },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, tmp108_of_ids);
> @@ -444,7 +563,8 @@ static struct i2c_driver tmp108_driver = {
>  };
> 
>  static const struct i3c_device_id p3t1085_i3c_ids[] = {
> -	I3C_DEVICE(0x011b, 0x1529, NULL),
> +	I3C_DEVICE(0x011B, 0x1529, &tmp108_data),
> +	I3C_DEVICE(0x011B, 0x152B, &p3t1035_data),
>  	{}
>  };
>  MODULE_DEVICE_TABLE(i3c, p3t1085_i3c_ids);
> @@ -453,13 +573,16 @@ static int p3t1085_i3c_probe(struct i3c_device *i3cdev)
>  {
>  	struct device *dev = i3cdev_to_dev(i3cdev);
>  	struct regmap *regmap;
> +	const struct i3c_device_id *id;
> 
> -	regmap = devm_regmap_init_i3c(i3cdev, &tmp108_regmap_config);
> +	regmap = devm_regmap_init(dev, &tmp108_i3c_regmap_bus, i3cdev, &tmp108_regmap_config);
>  	if (IS_ERR(regmap))
>  		return dev_err_probe(dev, PTR_ERR(regmap),
>  				     "Failed to register i3c regmap\n");
> 
> -	return tmp108_common_probe(dev, regmap, "p3t1085_i3c");
> +	id = i3c_device_match_id(i3cdev, p3t1085_i3c_ids);
> +
> +	return tmp108_common_probe(dev, regmap, "p3t1085_i3c", id->data);
>  }
> 
>  static struct i3c_driver p3t1085_driver = {

