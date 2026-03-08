Return-Path: <devicetree+bounces-272607-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GbFKjWzrWk/6QEAu9opvQ
	(envelope-from <devicetree+bounces-272607-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 18:34:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF54231713
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 18:34:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1E3BF300644C
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 17:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B9C6361673;
	Sun,  8 Mar 2026 17:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dN9VgWI5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D6E4C81
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 17:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772991283; cv=none; b=Ty3Yi1tdf62iRQ8yGYH4rlU/ysfZ1cju9NKG0dfIlFepGGOjqvRaZL+ReWlJhNbjY2WX3nseNwlXiks+YfMNhTn7WLbE8WncnsbQCPIwdJj/0Q4aqEGtqMN3ykuukiKqBSsUg0UGbSoWPyz0flUM8/3WkoqBo87g6RFm6QBWF40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772991283; c=relaxed/simple;
	bh=eQ5hlI3vgUf9rlJcgQ07JXsapvXneGIZp4TpqI+70Bg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TSea5/ea4SrsaPVbHvb4Rfr23rwcvl7JdLdaZCcuw5knDFkwb0d6oZevqtYFnNoaPd7WaaX9j2bwA5UkyFNw+8X29L6SOO4FuobGc+xhO8DISm25r0jkt+vujgvPfYck215TXbuJgsnFbsGpJeGgpbKw7+xfzqlilIAIw27I9mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dN9VgWI5; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2ae505619baso43538435ad.2
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 10:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772991281; x=1773596081; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WL0HsBRBkkHgBOwL69XfPNOVZWpVtL9CtLnpRauXWrI=;
        b=dN9VgWI5/gU128dx1FlT9emgi5oNCTLy0R3WLxpOEPVKkjc7En0huESH9u9+Z0x20B
         aMwFhOyTIOVWF8g92fzXX5KAB/kCiqLCVPsgN668dZJW/nA+GgvCPOgxjGUo+r9FQ6Rd
         452eB1EPsE9MyMCovJdy8RvNPauu7EKLHCCtXYfupmo/WP03G6uX/qc4aqV74IF+lgb7
         GJBQ9JvwuEJbVzU2EvAPgWemdhlROZ5MBOwhl7Rsz7I5Jh8o0PxYg4LeqakbD9kyZEH2
         3NAFw0dcrUqtfYX3uUAc/pS6tHVoSQvZtim09k+5cGdOt1xjwuJld39+Th28ayGJXSIL
         OCMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772991281; x=1773596081;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WL0HsBRBkkHgBOwL69XfPNOVZWpVtL9CtLnpRauXWrI=;
        b=sabIBoifpTsQre2WTH4mB6FlIwSu2T7rPXB4qtuRHAI8VA6Rgpl6eAEav3NMjhMQLw
         FRvfrMLVCh4pAC/YabDj2igzrPe4nrb8fDE/G70kY26I+jrmp8KX5XeaeP4neoQAppvc
         KKRV3FAtbHoR2yIxCu+7fPEwzjc41NBYM7UxeOtfa8O6p9GjmrVm44300jTjumFUxLVm
         mAdsBBPbEG2kL/liF1t3GvIVodKFxWD7JrXUb02L8b4T68jp33KMIS3k4vrajQl6HXFe
         zJ3X9dnd7/1kPS9MjcD1EvWr1zrZMS/DXtne2I88WJwKq+ZtxMF/BK0I94LeQe1czbuL
         Vvxg==
X-Forwarded-Encrypted: i=1; AJvYcCV56D1ZH6HjNnHPFQZmrdWe5G2mNLBM97RF3PnzJ8WWreLDEQbMUr6iJ2ncV1sLpqO2STMc4B4wIgcN@vger.kernel.org
X-Gm-Message-State: AOJu0YzPc3ryaEhA1orgBldPVPJ0oDmPNHfe2X1tQRCLphoTHsypb94a
	8WrGD+IOfouPiFc2UrXrzVCL9sWY4HtUTbJUigl5gbkUr7XAm3ePmTYb398fJFYO
X-Gm-Gg: ATEYQzzz6ekIHuzwSNQ6yHeoNZBQb15SctpOfDXerr5O5X/vv19RPWhGdXbQQBog7MN
	8ZwOvYVUOuhg/HKG0420knvbxRT+ZUn4/vYVHSrzD/1l0111RM/LGFueO3zHT4I4t5ehrHAihvA
	FtvFVZKptvAzsK3yTAH3LdcGUepVDSR2JtbpQez7Rm38B0sS0qAy4dORBSEeJkXss7ImQa7sY6j
	NRIW97xG2CBD/i5vjB4E2sDZ0nx7uKSyJvgAKol8u4JQ1HUt6+8r1ASkxU0TYQy360cu9XjFK1a
	YlPc/dujKDPjfE+U6T1QaSjzqIWf13M7NgLB/JaO9oJpMqluO9cEkJjmKjR1a856Qr7kxk67kyD
	DRTH5QxCvXH7pLCZZhDV4DAyniEGD+GaN94aVf3l0Piv8jWUwc8jIAfGPC4YmW5fRSU7FcmC4SL
	xdBCeSt6AaQkV274T0zELaDUsqUPKcRV8dNoxX
X-Received: by 2002:a17:902:d544:b0:2ae:7efa:c5b0 with SMTP id d9443c01a7336-2ae82538b70mr86897085ad.56.1772991281183;
        Sun, 08 Mar 2026 10:34:41 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e57b14sm110217825ad.19.2026.03.08.10.34.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 10:34:40 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Sun, 8 Mar 2026 10:34:39 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Stoyan Bogdanov <sbogdanov@baylibre.com>
Cc: jbrunet@baylibre.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, corbet@lwn.net, skhan@linuxfoundation.org,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] hwmon: (pmbus/tps1689): Add TPS1689 support
Message-ID: <0b2f3bdd-e79c-4892-8523-2cab87596d97@roeck-us.net>
References: <20260217081203.1792025-1-sbogdanov@baylibre.com>
 <20260217081203.1792025-4-sbogdanov@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260217081203.1792025-4-sbogdanov@baylibre.com>
X-Rspamd-Queue-Id: 3EF54231713
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272607-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.977];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,roeck-us.net:mid,baylibre.com:email]
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 10:12:03AM +0200, Stoyan Bogdanov wrote:
> Extend tps25990 existing driver to support tps1689 eFuse,
> since they are sharing command interface and functionality
> Update documentation for tps1689
> 
> Signed-off-by: Stoyan Bogdanov <sbogdanov@baylibre.com>
> ---
>  Documentation/hwmon/tps25990.rst | 15 ++++--
>  drivers/hwmon/pmbus/tps25990.c   | 91 ++++++++++++++++++++++++++++----
>  2 files changed, 92 insertions(+), 14 deletions(-)
> 
> diff --git a/Documentation/hwmon/tps25990.rst b/Documentation/hwmon/tps25990.rst
> index 04faec780d26..e8bc9a550bda 100644
> --- a/Documentation/hwmon/tps25990.rst
> +++ b/Documentation/hwmon/tps25990.rst
> @@ -9,26 +9,31 @@ Supported chips:
>  
>      Prefix: 'tps25990'
>  
> -  * Datasheet
> +    Datasheet: Publicly available at Texas Instruments website: https://www.ti.com/lit/gpn/tps25990
>  
> -    Publicly available at Texas Instruments website: https://www.ti.com/lit/gpn/tps25990
> +  * TI TPS1689
> +
> +    Prefix: 'tps1689'
> +
> +    Datasheet: Publicly available at Texas Instruments website: https://www.ti.com/lit/gpn/tps1689
>  
>  Author:
>  
>  	Jerome Brunet <jbrunet@baylibre.com>
> +	Stoyan Bogdanov <sbogdanov@baylibre.com>
>  
>  Description
>  -----------
>  
> -This driver implements support for TI TPS25990 eFuse.
> +This driver implements support for TI TPS25990 and TI TPS1689 eFuse chips.
>  This is an integrated, high-current circuit protection and power
>  management device with PMBUS interface
>  
> -Device compliant with:
> +Devices are compliant with:
>  
>  - PMBus rev 1.3 interface.
>  
> -Device supports direct format for reading input voltages,
> +Devices supports direct format for reading input voltages,
>  output voltage, input current, input power and temperature.
>  
>  Due to the specificities of the chip, all history reset attributes
> diff --git a/drivers/hwmon/pmbus/tps25990.c b/drivers/hwmon/pmbus/tps25990.c
> index 33f6367f797c..f9ff4edadf53 100644
> --- a/drivers/hwmon/pmbus/tps25990.c
> +++ b/drivers/hwmon/pmbus/tps25990.c
> @@ -58,34 +58,38 @@ struct tps25990_data {
>  	struct local_direct_value *info_local;
>  };
>  
> -static int tps25990_raw_to_value(struct i2c_client *client, int param, int raw)
> +static int tps25990_raw_to_value(struct i2c_client *client, int param, u32 raw)
>  {
>  	struct tps25990_data *data = (struct tps25990_data *)of_device_get_match_data(&client->dev);
>  	struct local_direct_value *info_local = data->info_local;
> +	int val;
>  
>  	/* Formula : X = (Y / 10^R - b) / m */
>  	if (info_local->R[param] >= 0)
> -		raw /= int_pow(10, info_local->R[param]);
> +		val = DIV_ROUND_CLOSEST_ULL(raw, int_pow(10, info_local->R[param]));
>  	else
> -		raw *= int_pow(10, -info_local->R[param]);
> +		val = raw * int_pow(10, -info_local->R[param]);

Can the calculation in the 'else' branch overflow?

If info_local->R[param] is -6 (as it is for TPS25990_IIN_OCF), then
int_pow(10, 6) is 1,000,000. If raw is a 16-bit word like 65535, the product
is 65,535,000,000.

Since val is an int, it will overflow on 32-bit systems (and even on 64-bit
systems if int is 32-bit, which is the case in the kernel).

Should val be a 64-bit type for the intermediate calculation?

>  
> -	return DIV_ROUND_CLOSEST(raw - info_local->b[param], info_local->m[param]);
> +	val = DIV_ROUND_CLOSEST(val - info_local->b[param], info_local->m[param]);
> +
> +	return val;
>  }
>  
>  static unsigned int tps25990_value_to_raw(struct i2c_client *client, int param, int val)
>  {
>  	struct tps25990_data *data = (struct tps25990_data *)of_device_get_match_data(&client->dev);
>  	struct local_direct_value *info_local = data->info_local;
> +	u32 raw; // return raw up to u16 -> u32
>  
>  	/* Formula : Y = ( m * X + b) * 10^R */
> -	val = (long)val * info_local->m[param] + info_local->b[param];
> +	raw = ((long)val * info_local->m[param]) + info_local->b[param];
>  
>  	if (info_local->R[param] >= 0)
> -		val *= int_pow(10, info_local->R[param]);
> +		raw *= int_pow(10, info_local->R[param]);
>  	else
> -		val = DIV_ROUND_CLOSEST(val, int_pow(10, -info_local->R[param]));
> +		raw = DIV_ROUND_CLOSEST_ULL(raw, int_pow(10, -info_local->R[param]));
>  
> -	return val;
> +	return raw;

Does this change handle negative results correctly?

If (val * m + b) is negative, assigning it to the u32 raw variable will
result in a very large positive number due to underflow. Subsequent
scaling and clamping in the caller will then produce an incorrect result
(e.g., 0xf instead of 0).

The previous implementation used a signed type for the intermediate result.
Is there a reason to switch to u32 before the final result is determined?

>  }
>  
>  /*
> @@ -281,7 +285,6 @@ static int tps25990_write_word_data(struct i2c_client *client,
>  		value = clamp_val(value, 0, 0xff);
>  		ret = pmbus_write_word_data(client, page, reg, value);
>  		break;
> -
>  	case PMBUS_VIN_OV_FAULT_LIMIT:
>  		value = tps25990_value_to_raw(client, TPS25990_VIN_OVF, value);
>  		value = clamp_val(value, 0, 0xf);
> @@ -370,6 +373,15 @@ static const struct regulator_desc tps25990_reg_desc[] = {
>  };
>  #endif
>  
> +struct local_direct_value tps1689_local_info = {
> +	.m[TPS25990_VIN_OVF] = 3984,
> +	.b[TPS25990_VIN_OVF] = -63750,
> +	.R[TPS25990_VIN_OVF] = -3,
> +	.m[TPS25990_IIN_OCF] = 7111,
> +	.b[TPS25990_IIN_OCF] = -2133,
> +	.R[TPS25990_IIN_OCF] = -2,
> +};
> +
>  struct local_direct_value tps25590_local_info = {
>  	.m[TPS25990_VIN_OVF] = 10163,
>  	.b[TPS25990_VIN_OVF] = -30081,
> @@ -379,6 +391,60 @@ struct local_direct_value tps25590_local_info = {
>  	.R[TPS25990_IIN_OCF] = -6,
>  };
>  
> +static struct pmbus_driver_info tps1689_base_info = {
> +	.pages = 1,
> +	.format[PSC_VOLTAGE_IN] = direct,
> +	.m[PSC_VOLTAGE_IN] = 1166,
> +	.b[PSC_VOLTAGE_IN] = 0,
> +	.R[PSC_VOLTAGE_IN] = -2,
> +	.format[PSC_VOLTAGE_OUT] = direct,
> +	.m[PSC_VOLTAGE_OUT] = 1166,
> +	.b[PSC_VOLTAGE_OUT] = 0,
> +	.R[PSC_VOLTAGE_OUT] = -2,
> +	.format[PSC_TEMPERATURE] = direct,
> +	.m[PSC_TEMPERATURE] = 140,
> +	.b[PSC_TEMPERATURE] = 32103,
> +	.R[PSC_TEMPERATURE] = -2,
> +	/*
> +	 * Current and Power measurement depends on the ohm value
> +	 * of Rimon. m is multiplied by 1000 below to have an integer
> +	 * and -3 is added to R to compensate.
> +	 */
> +	.format[PSC_CURRENT_IN] = direct,
> +	.m[PSC_CURRENT_IN] = 9548,
> +	.b[PSC_CURRENT_IN] = 0,
> +	.R[PSC_CURRENT_IN] = -6,
> +	.format[PSC_CURRENT_OUT] = direct,
> +	.m[PSC_CURRENT_OUT] = 24347,
> +	.b[PSC_CURRENT_OUT] = 0,
> +	.R[PSC_CURRENT_OUT] = -3,
> +	.format[PSC_POWER] = direct,
> +	.m[PSC_POWER] = 2775,
> +	.b[PSC_POWER] = 0,
> +	.R[PSC_POWER] = -4,
> +	.func[0] = (PMBUS_HAVE_VIN |
> +		    PMBUS_HAVE_VOUT |
> +		    PMBUS_HAVE_VMON |
> +		    PMBUS_HAVE_IIN |
> +		    PMBUS_HAVE_PIN |
> +		    PMBUS_HAVE_TEMP |
> +		    PMBUS_HAVE_STATUS_VOUT |
> +		    PMBUS_HAVE_STATUS_IOUT |
> +		    PMBUS_HAVE_STATUS_INPUT |
> +		    PMBUS_HAVE_STATUS_TEMP |
> +		    PMBUS_HAVE_SAMPLES),
> +
> +	.read_word_data = tps25990_read_word_data,
> +	.write_word_data = tps25990_write_word_data,
> +	.read_byte_data = tps25990_read_byte_data,
> +	.write_byte_data = tps25990_write_byte_data,
> +
> +#if IS_ENABLED(CONFIG_SENSORS_TPS25990_REGULATOR)
> +	.reg_desc = tps25990_reg_desc,
> +	.num_regulators = ARRAY_SIZE(tps25990_reg_desc),
> +#endif
> +};
> +
>  static struct pmbus_driver_info tps25990_base_info = {
>  	.pages = 1,
>  	.format[PSC_VOLTAGE_IN] = direct,
> @@ -428,18 +494,25 @@ static struct pmbus_driver_info tps25990_base_info = {
>  #endif
>  };
>  
> +struct tps25990_data data_tps1689 = {
> +	.info = &tps1689_base_info,
> +	.info_local = &tps1689_local_info,
> +};
> +
>  struct tps25990_data data_tps25990 = {
>  	.info = &tps25990_base_info,
>  	.info_local = &tps25590_local_info,
>  };
>  
>  static const struct i2c_device_id tps25990_i2c_id[] = {
> +	{ .name = "tps1689", .driver_data = (kernel_ulong_t)&data_tps1689 },
>  	{ .name = "tps25990", .driver_data = (kernel_ulong_t)&data_tps25990 },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(i2c, tps25990_i2c_id);
>  
>  static const struct of_device_id tps25990_of_match[] = {
> +	{ .compatible = "ti,tps1689", .data = &data_tps1689 },
>  	{ .compatible = "ti,tps25990", .data = &data_tps25990 },
>  	{}
>  };

