Return-Path: <devicetree+bounces-260085-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WA79LUQMeWnyugEAu9opvQ
	(envelope-from <devicetree+bounces-260085-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:04:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A25F99945
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:04:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 12D37300FF97
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B53682620DE;
	Tue, 27 Jan 2026 19:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F597Q6x1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0394F45038
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769540529; cv=none; b=JY38e9ojbkZrnTC2DWzix1XhrneTx0EH1TnN2eYUvHq0Tan4Dv7WSVRCpAACJEu1pX1qjxoJwVuvriCWEgQw07pqzqvI+q5+tcvp3LyNsLB89nfQC85xq/6HFLoUTcubpC2H7n6r3u0OusW9Ua8Vm8NjWStI81n//jc4kQ89vJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769540529; c=relaxed/simple;
	bh=T44VeR198I3upruOy1asKmWdrTidLtonZaA4O+DeKc8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gvU7n2vpPNMEBFSeOqXgYz+WIq2UtmPzTTJBYWOm2J4OXe1qmweKupVsxVrDweJnv3RfuEwyj0uDwjeki4PBgLaW4j6N3zdudRRfIYwm2DkNWU/CoVXCp/f9eGHSM4jKZ/bQX3w1jz2m8mODRhMCBXNedKcDWQpCyqFJbNmymPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F597Q6x1; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-947fe9e92c3so4460799241.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769540527; x=1770145327; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m0NN/cRu09v0DOapIZODcIBfVWE6w2WjO1wQzxU5hQw=;
        b=F597Q6x11Hta/OpJK3UINZnLm82aLVzO1YHYRxLzWblxofSdhym08xeYn069M6gdzp
         LTJr8YRXQdKwws2Tw4bKVoq7PC0fk8X/ALtzIejDxggtvca5JI/n6Xox8T3ocRYI1YmZ
         ax+i0kGnGS62wJ0POxLXBHePxF1gZdqEANLuEKGMdlLB1v0Yw9hXUBHljH3PsKgSTkkT
         QI9SJogVqR8qkDkWuxBccVAOpF6quhbIj3uUcyhJexUFpzkTk/XmCfkVudQdWTnu+bZv
         jDvZPJbUElrIWjUbNFYjBDQX9yZODDFVE4+rtv1tUNXpMJ9wpR2RsVRIj6qTZa4ZZ1CZ
         dyzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769540527; x=1770145327;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m0NN/cRu09v0DOapIZODcIBfVWE6w2WjO1wQzxU5hQw=;
        b=n/xMkPCd/+5OT6UFL8K1t02RvGFXYIATlsuQtTKzHN8h/q1B2VMd3nVh9U1kFeAjyo
         ANP2+TFOtqZcMap9qKHbMoFBtOMxsFEDPurVWDW9yRJ54Pm0kapawPYZRBOoCONZY4hg
         JZh/rCGMhbSPJaWP5AHbFC84Kq9i+sZnwtK/4OAvKfzxztI3jxuzFc8jlIgernJ8PH7Z
         eXV4w4BA5aYAyWTaszzLfG9mN6+gd+/efSw6SYDb9lInB0icxcTCnKKbmMN+Gpfd8qn1
         KYVJ+yqOMDIrleMlBEOydC2VnWpzMJt+yOPs2MqKO3nJzaKK1HdS6aP0tXEKO0t7Trvw
         OOdA==
X-Forwarded-Encrypted: i=1; AJvYcCUmGv/xHvdmeyDoWnOmVuqKly2Xp/jJNLc97VxGuEB+wdC1Qr2YJjyx4rk/GQj7HKBs+BeeNf3s4xDu@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn7COzbwBi3+g5wtvv3l7T3XbGkZj8H8XDSCoe2HReaZoPB7a0
	/9PYjsPTdbcFmf1bxudXuQ356k/PIZLJcejJgu9TJ0wDopPWEH/EUdmkZcapNmH4
X-Gm-Gg: AZuq6aLCsg0HX91NVVyIsYmK+rLBo9iaBS54obg5gLvrk1esXn6GjcL9585WhbskK3+
	ov0Szxe0ORxneQP+5psA63ABcWfA5wsADBQQBWNZPanHjybmrHRn7u7fvnITDXUHb/aT9G9n2O5
	cPMi4ql4+66K4mQhRU/AKMKtNuOAOTX+U1oKV8VJ7HIl5QpN4cRvzpNvSjsE60F1yq9B+LeG5cT
	LZQ1b8bpzazYX2KYx1sGRyCGQH7MAhGEWWASTTqqaEyWOoDwcnpKJMHBrH6IfCo2TMx/2hTNN+T
	u62rt6JM6TTQnqerroWJND2ag+n5gRkvJDORCCbdEnbkDcrfD2fhZ/K3+JNpnLm/rloe4JOyLJs
	Gvo+KNil9NKFjveRb2C33QXf169SdNd6Y3o3VNrYMkpN5ZKb7PuY2IIHbcZyPHIQ4zeb+YbmLiW
	weXMPfJNjCARLGYNBFyW12P+ux
X-Received: by 2002:a05:7300:7491:b0:2ae:5c71:3535 with SMTP id 5a478bee46e88-2b78d8a8ca3mr1787617eec.9.1769534542029;
        Tue, 27 Jan 2026 09:22:22 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b79c8f031csm23765eec.21.2026.01.27.09.22.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 09:22:21 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 27 Jan 2026 09:22:20 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Marius Cristea <marius.cristea@microchip.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH v4 2/2] hwmon: temperature: add support for EMC1812
Message-ID: <8248d422-c764-4b2d-ba82-3a68cff21256@roeck-us.net>
References: <20260127-hw_mon-emc1812-v4-0-6bf636b54847@microchip.com>
 <20260127-hw_mon-emc1812-v4-2-6bf636b54847@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127-hw_mon-emc1812-v4-2-6bf636b54847@microchip.com>
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
	TAGGED_FROM(0.00)[bounces-260085-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[roeck-us.net:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,microchip.com:url,microchip.com:email]
X-Rspamd-Queue-Id: 5A25F99945
X-Rspamd-Action: no action

Hi,

On Tue, Jan 27, 2026 at 05:05:25PM +0200, Marius Cristea wrote:
> This is the hwmon driver for Microchip EMC1812/13/14/15/33
> Multichannel Low-Voltage Remote Diode Sensor Family.
> 
> EMC1812 has one external remote temperature monitoring channel.
> EMC1813 has two external remote temperature monitoring channels.
> EMC1814 has three external remote temperature monitoring channels and
> channels 2 and 3 supports anti parallel diode.
> EMC1815 has four external remote temperature monitoring channels and
> channels 1/2  and 3/4 supports anti parallel diode.
> EMC1833 has two external remote temperature monitoring channels and
> channels 1 and 2 supports anti parallel diode.
> 
> Signed-off-by: Marius Cristea <marius.cristea@microchip.com>
> ---
>  Documentation/hwmon/emc1812.rst |  68 +++
>  Documentation/hwmon/index.rst   |   1 +
>  MAINTAINERS                     |   2 +
>  drivers/hwmon/Kconfig           |  11 +
>  drivers/hwmon/Makefile          |   1 +
>  drivers/hwmon/emc1812.c         | 963 ++++++++++++++++++++++++++++++++++++++++
>  6 files changed, 1046 insertions(+)
> 
> diff --git a/Documentation/hwmon/emc1812.rst b/Documentation/hwmon/emc1812.rst
> new file mode 100644
> index 0000000000000000000000000000000000000000..799111a89541c57a839a121bb3dfc12f42604bc2
> --- /dev/null
> +++ b/Documentation/hwmon/emc1812.rst
> @@ -0,0 +1,68 @@
> +.. SPDX-License-Identifier: GPL-2.0-or-later
> +
> +Kernel driver emc1802
> +=====================
> +
> +Supported chips:
> +
> +  * Microchip EMC1812, EMC1813, EMC1814, EMC1815, EMC1833
> +
> +    Addresses scanned: I2C 0x1c, 0x3c, 0x4c, 0x4d, 0x5c, 0x6c, 0x7c
> +
> +    Prefix: 'emc1812'
> +
> +    Datasheets:
> +
> +	- https://ww1.microchip.com/downloads/aemDocuments/documents/MSLD/ProductDocuments/DataSheets/EMC1812-3-4-5-33-Data-Sheet-DS20005751.pdf
> +
> +Author:
> +    Marius Cristea <marius.cristea@microchip.com
> +
> +
> +Description
> +-----------
> +
> +The Microchip EMC181x/33 chips contain up to 4 remote temperature sensors
> +and one internal.
> +- The EMC1812 is a single channel remote temperature sensor.
> +- The EMC1813 and EMC1833 is a dual channel remote temperature sensor. The
> +remote channels for this selection of devices can support substrate diodes,
> +discrete diode-connected transistors or CPU/GPU thermal diodes.
> +- The EMC1814 is a three channel remote temperature sensor that supports
> +Anti-Parallel Diode (APD) only on one channel. For the channel that does not
> +support APD functionality, substrate diodes, discrete diode-connected
> +transistors or CPU/GPU thermal diodes are supported. For the channel that
> +supports APD, only discrete diode-connected transistors may be implemented.
> +However, if APD is disabled on the EMC1814, then the channel that supports
> +APD will be functional with substrate diodes, discrete diode-connected
> +transistors and CPU/GPU thermal diodes.
> +- The EMC1815 is a four channel remote temperature sensor. The EMC1815 and
> +EMC1833 support APD on all channels. When APD is enabled, the channels support
> +only diode-connected transistors. If APD is disabled, then the channels will
> +support substrate transistors, discrete diode-connected transistors and
> +CPU/GPU thermal diodes.
> +
> +Note: Disabling APD functionality to implement substrate diodes on devices
> +that support APD eliminates the benefit of APD (two diodes on one channel).
> +
> +The chips implement three limits for each sensor: low (tempX_min), high
> +(tempX_max) and critical (tempX_crit). The chips also implement an
> +hysteresis mechanism which applies to all limits. The relative difference
> +is stored in a single register on the chip, which means that the relative
> +difference between the limit and its hysteresis is always the same for
> +all three limits.
> +
> +This implementation detail implies the following:
> +
> +* When setting a limit, its hysteresis will automatically follow, the
> +  difference staying unchanged. For example, if the old critical limit was
> +  80 degrees C, and the hysteresis was 75 degrees C, and you change the
> +  critical limit to 90 degrees C, then the hysteresis will automatically
> +  change to 85 degrees C.
> +* The hysteresis values can't be set independently. We decided to make
> +  only tempX_crit_hyst writable, while all other hysteresis attributes
> +  are read-only. Setting tempX_crit_hyst writes the difference between
> +  tempX_crit_hyst and tempX_crit into the chip, and the same relative
> +  hysteresis applies automatically to all other limits.
> +* The limits should be set before the hysteresis. At power up the device
> +  starts with a 10 degree written into hysteresis register.
...
> --- /dev/null
> +++ b/drivers/hwmon/emc1812.c
...
> +
> +static int emc1812_chip_identify(struct emc1812_data *data, struct i2c_client *client)
> +{
> +	const struct emc1812_features *chip;
> +	struct device *dev = &client->dev;
> +	int ret, tmp;
> +
> +	ret = regmap_read(data->regmap, EMC1812_PRODUCT_ID_ADDR, &tmp);
> +	if (ret)
> +		return ret;
> +
> +	chip = device_get_match_data(&client->dev);
> +
> +	switch (tmp) {
> +	case EMC1812_PID:
> +		data->chip = &emc1812_chip_config;
> +		break;
> +	case EMC1813_PID:
> +		data->chip = &emc1813_chip_config;
> +		break;
> +	case EMC1814_PID:
> +		data->chip = &emc1814_chip_config;
> +		break;
> +	case EMC1815_PID:
> +		data->chip = &emc1815_chip_config;
> +		break;
> +	case EMC1833_PID:
> +		data->chip = &emc1833_chip_config;
> +		break;
> +	default:
> +		/*
> +		 * If failed to identify the hardware based on internal registers,
> +		 * try using fallback compatible in device tree to deal with some
> +		 * newer part number.
> +		 */
> +		dev_info(dev, "Unknown hardware id: %x\n", tmp);

dev_warn() might be more appropriate. Alternatively, use dev_err() and bail out
with -ENODEV, as suggested below.

> +
> +		data->chip = chip;
> +

AI feedback:

Potential NULL pointer dereference. `device_get_match_data()` returns NULL
when the driver is instantiated via I2C ID table (e.g. via sysfs
`new_device`) instead of via Device Tree or ACPI. If the hardware ID
is also unknown (triggering the `default` case), `data->chip` becomes NULL.

The function returns 0 (success), and `emc1812_probe` proceeds to call
`emc1812_parse_fw_config`, which immediately dereferences `data->chip`:

Side note (not from AI): It might be appropriate to notify the user
if the devicetree data does not match the real hardware.

> +static int emc1812_parse_fw_config(struct emc1812_data *data, struct device *dev)
> +{
> +    /* to be able to load the driver in case we don't have device tree */
> +    if (!dev_fwnode(dev)) {
> +        data->active_ch_mask = BIT(data->chip->phys_channels) - 1;
> +        return 0;
> +    }

This will crash.

The driver should likely use `i2c_get_match_data(client)` instead of
`device_get_match_data()` to support both ID table and FW node matching,
or return an error in the default case if `chip` is NULL.

> +		return 0;
> +	}
> +
> +	return 0;
> +}
> +

