Return-Path: <devicetree+bounces-243031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3DAC92CF1
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 18:38:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F35433A7809
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 17:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99C4F332EB2;
	Fri, 28 Nov 2025 17:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RoWrAsrY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843411C84C6
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 17:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764351530; cv=none; b=KLkpWr3nEVBieWQ0qT/qzLcCz02milKabuhRRzt5AIAUXMFhwszbZISUJeefQVgJ/t0wCjpKA6tPNSkoYBqaxpHrVA+ACRza6HNU4IcQcOTJDfGpONNtpcsKCuBdbYvBkwPM6RMgpDBcbigo5jnVWoA5B5Pp4RP+reEDa4eCAV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764351530; c=relaxed/simple;
	bh=/+I1/nnPrCYYMh8ZGWBy0Ct4ledCJDlrI01H/3TrkQ8=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=GtzGW+arNt06fQd6zBg8Q92JY24B50i5aZ2poNXJVFRo7T3lDOIC84Yqk0Ojszzuqpu+kfla5m9MXR8jJtcyljZQwGlBFs9TTNru9q8U8DMB9cx6zzw8ao1oSRPyw11LxfHC7c3p1KBRfQZ4aPaZrhdaG2E/4+VWHp4OB9HOVgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RoWrAsrY; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-559712e8914so1294344e0c.2
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 09:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764351527; x=1764956327; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lKoCVK2PuuIBZIvPASWUgYdKbCV4CeuPA82+OynS7PI=;
        b=RoWrAsrYTYQXD5OJB2rpRpSCoJi9baOOzqNoMB9BDb3A1ISZqUOueKSjtUZ2HRJG6g
         kWo5F09EJPSlOLYm8Jg+tIf8U+6V3PFsUic+qqY3BlQ1E3uSHYK+mexDHJNzDFJVk2uG
         iQpQG9HOPxJfHC94nh8DZ3M/Xt48AqlTEBkEo8G6xRzKKYgrp+KJDRIjeJle0fmptICe
         jgPTFhX9GSp4nisCtTFFnT1SA0ydzDJw80sVb+415PM171f6I1NYvoWmyRxLU0sSU8vv
         jWCucH/JZW3X37gj7Z+I/Lff9VfeIEryZUhrPdPtfrpjY/GKxLjAqwAyAR4ItM86GhcU
         GTYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764351527; x=1764956327;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lKoCVK2PuuIBZIvPASWUgYdKbCV4CeuPA82+OynS7PI=;
        b=i6UJ1/SPlYN+KaTj01cF4ariufE5iKsNTq+HOqvIYkefc4F4d/Wg0WpMpOXMu1cWts
         /RVS7ZkuWToRm9ItmfWmkj2Pq3h6vudL4rZ75SE09m3m61F5/34A+0Bw83dFYI7gHne4
         v1D1zEnuBFjFT2n0dqSLPQXq1D6M0LQJ43Zd/LDfiCFiYA09U/zgbKvegluU8Tkuu6WE
         qHQHZ1xz3S3KrtTWzOx6t+kg0Ro8q6Rf3ZSUvKIBpYG+CMW+u+/7elmiU4idX37z2tOs
         JCzPqPy4BQnoIxaMyKmTN8PxvN65A2T5u0/bSjYW5kNkT6g3PxRJfhh7qAFiyWwPEb9m
         bGhg==
X-Forwarded-Encrypted: i=1; AJvYcCX2eWaQMH/GuuCWaF6WKPix3HF7YMoCpFQInQoN6A22/HfwuN2kTsxr+JpwubXvCNmQCEd2cm3+1tAu@vger.kernel.org
X-Gm-Message-State: AOJu0YyTHn4YkcG/0jfpupylvxKAh4zmhOYN6vjY60F4nOZKaC/JePtz
	0d8JfA6xsRXkd9+m41sxuA4npzJsUr/e9IrV+cFqDtPpyVzYtbPKk6AA
X-Gm-Gg: ASbGncsfOStuM8xlAbrLeX7yEwdDC5RK7dtHufcry3eN3y+GXHoVUJkxjWGXi7/tbis
	KrdQ6D8FA0qWQNkRqDyYdzfAuJevuhxEGeSqMCD9OobGBQ/0vnyFi7GolNP/H2s/dS16GutmLRF
	62meergChd847IBmx6GTOG1sKIvRXd4q4i6OggVfiU7BDOidqiK0gH4/EnsiH5HchnB3tl9/j8i
	xOE1yTZIbjJc9A5+cwqG2/RN3pcCdOzmJIOaYQHoJw2W7WS7VMwqYE1ley1RGL1uTEvFRnUUTgI
	hiIuBE1p6rvS4KuiN5QTRhzx6/e39U3GKlmxOdfBso3Foaz41Puh32OaVYgBBqej1NshRAAAwFZ
	ssHqnPWOB3nvU3sNHQHYtjKOC4dDf4GzgTGGsaSdmtGJD+SQbPVzM/O+fZnkjXbYthSBlu2PP/y
	5jutXyWg==
X-Google-Smtp-Source: AGHT+IF9wgSvP8JzOTBeuZJpe3MKlJxlvx8VNXoz9mad1GDt1WuF/wUBaCjI0DzmJOvyUu5r7V2wCg==
X-Received: by 2002:a05:6122:2014:b0:55b:305b:51b8 with SMTP id 71dfb90a1353d-55cd77eabdbmr7246543e0c.21.1764351527255;
        Fri, 28 Nov 2025 09:38:47 -0800 (PST)
Received: from localhost ([2800:bf0:4580:3149:7d4:54b1:c444:6f2f])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55cf516ba51sm2173601e0c.15.2025.11.28.09.38.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 09:38:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 28 Nov 2025 12:38:44 -0500
Message-Id: <DEKIF0XIN34S.97S95Z0Q5SL1@gmail.com>
Cc: "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Tobias Sperling" <tobias.sperling@softing.com>,
 "David Lechner" <dlechner@baylibre.com>, =?utf-8?q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Jonathan Cameron"
 <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v2 2/2] iio: adc: Add ti-ads1018 driver
From: "Kurt Borja" <kuurtb@gmail.com>
To: "Andy Shevchenko" <andriy.shevchenko@intel.com>, "Kurt Borja"
 <kuurtb@gmail.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251127-ads1x18-v2-0-2ebfd780b633@gmail.com>
 <20251127-ads1x18-v2-2-2ebfd780b633@gmail.com>
 <aSlxSj7XEq7PUxsk@smile.fi.intel.com>
In-Reply-To: <aSlxSj7XEq7PUxsk@smile.fi.intel.com>

Hi Andy,

On Fri Nov 28, 2025 at 4:54 AM -05, Andy Shevchenko wrote:
> On Thu, Nov 27, 2025 at 10:37:11PM -0500, Kurt Borja wrote:
>> Add ti-ads1018 driver for Texas Instruments ADS1018 and ADS1118 SPI
>> analog-to-digital converters.
>>=20
>> These chips' MOSI pin is shared with a data-ready interrupt. Defining
>> this interrupt in devicetree is optional, therefore we only create an
>> IIO trigger if one is found.
>>=20
>> Handling this interrupt requires some considerations. When enabling the
>> trigger the CS line is tied low (active), thus we need to hold
>> spi_bus_lock() too, to avoid state corruption. This is done inside the
>> set_trigger_state() callback, to let users use other triggers without
>> wasting a bus lock.
>
> ...
>
>> +#include <linux/array_size.h>
>> +#include <linux/bitfield.h>
>
>> +#include <linux/bitmap.h>
>> +#include <linux/bitops.h>
>> +#include <linux/bits.h>
>
> bits.h and bitops.h are guaranteed by bitmap.h, so
>
> #include <linux/bitmap.h>
>
> is enough for all three.
>
>> +#include <linux/byteorder/generic.h>
>> +#include <linux/dev_printk.h>
>> +#include <linux/gpio/consumer.h>
>> +#include <linux/interrupt.h>
>> +#include <linux/math.h>
>> +#include <linux/mod_devicetable.h>
>> +#include <linux/module.h>
>> +#include <linux/spi/spi.h>
>
> + types.h // E.g., u8 just a page below :-)
>
>> +#include <linux/units.h>
>
> ...
>
>> +static unsigned long ads1018_calc_delay(struct ads1018 *ads1018)
>> +{
>> +	const struct ads1018_chip_info *chip_info =3D ads1018->chip_info;
>> +	unsigned long mode =3D chip_info->num_data_rate_mode_to_hz - 1;
>> +	int hz =3D chip_info->data_rate_mode_to_hz[mode];
>
> Can frequency be negative?

I hope not 0.0

I return data_rate_mode_to_hz[] values directly in __ads1018_read_raw(),
which uses `int *`. That's why I chose int, but I can just make it
unsigned if that's preferred.

>
>> +	/* We subtract -10% data-rate error */
>> +	hz -=3D DIV_ROUND_UP(hz, 10);
>> +
>> +	/* Calculate time per sample in usecs */
>
> Spell it fully "microseconds" or use proper unit with a Greek latter "=C2=
=B5s".
>
>> +	return DIV_ROUND_UP(MICROHZ_PER_HZ, hz);
>> +}
>
> ...
>
>> +static int
>> +__ads1018_read_raw(struct iio_dev *indio_dev, struct iio_chan_spec cons=
t *chan,
>> +		   int *val, int *val2, long mask)
>
> Better naming is something like ads1018_read_raw_unlocked() if I got
> the context right.
>
>> +{
>> +	struct ads1018 *ads1018 =3D iio_priv(indio_dev);
>> +	const struct ads1018_chip_info *chip_info =3D ads1018->chip_info;
>> +	u8 drate_mode =3D ads1018_get_data_rate_mode(ads1018, chan->scan_index=
);
>> +	u8 pga_mode =3D ads1018_get_pga_mode(ads1018, chan->scan_index);
>> +	u8 max_drate_mode =3D chip_info->num_data_rate_mode_to_hz - 1;
>> +	u16 cnv, cfg =3D 0;
>
> Unneeded cfg assignment. See below.
>
>> +	int ret;
>> +
>> +	switch (mask) {
>> +	case IIO_CHAN_INFO_RAW:
>
>> +		cfg |=3D ADS1018_CFG_VALID;
>> +		cfg |=3D ADS1018_CFG_OS_TRIG;
>
> 		cfg =3D ADS1018_CFG_VALID | ADS1018_CFG_OS_TRIG;
>
>> +		cfg |=3D FIELD_PREP(ADS1018_CFG_MUX_MASK, chan->scan_index);
>> +		cfg |=3D FIELD_PREP(ADS1018_CFG_PGA_MASK, pga_mode);
>> +		cfg |=3D FIELD_PREP(ADS1018_CFG_MODE_MASK, ADS1018_MODE_ONESHOT);
>> +		cfg |=3D FIELD_PREP(ADS1018_CFG_DRATE_MASK, max_drate_mode);
>
> + blank line.
>
>> +		if (chan->type =3D=3D IIO_TEMP)
>> +			cfg |=3D ADS1018_CFG_TS_MODE_EN;
>> +
>> +		ret =3D ads1018_oneshot(ads1018, cfg, &cnv);
>> +		if (ret)
>> +			return ret;
>> +
>> +		cnv >>=3D chan->scan_type.shift;
>> +		*val =3D sign_extend32(cnv, chan->scan_type.realbits - 1);
>> +
>> +		return IIO_VAL_INT;
>> +
>> +	case IIO_CHAN_INFO_SCALE:
>> +		switch (chan->type) {
>> +		case IIO_VOLTAGE:
>> +			*val =3D chip_info->pga_mode_to_gain[pga_mode][0];
>> +			*val2 =3D chip_info->pga_mode_to_gain[pga_mode][1];
>> +			return IIO_VAL_INT_PLUS_NANO;
>> +
>> +		case IIO_TEMP:
>> +			*val =3D chip_info->temp_scale[0];
>> +			*val2 =3D chip_info->temp_scale[1];
>> +			return IIO_VAL_INT_PLUS_MICRO;
>> +
>> +		default:
>> +			return -EOPNOTSUPP;
>> +		}
>> +
>> +	case IIO_CHAN_INFO_SAMP_FREQ:
>> +		*val =3D chip_info->data_rate_mode_to_hz[drate_mode];
>> +		return IIO_VAL_INT;
>> +
>> +	default:
>> +		return -EOPNOTSUPP;
>> +	}
>> +}
>
> ...
>
>> +static int
>> +__ads1018_write_raw(struct iio_dev *indio_dev, struct iio_chan_spec con=
st *chan,
>> +		    int val, int val2, long mask)
>
> Naming...
>
>> +{
>> +	struct ads1018 *ads1018 =3D iio_priv(indio_dev);
>> +	const struct ads1018_chip_info *info =3D ads1018->chip_info;
>> +
>> +	switch (mask) {
>> +	case IIO_CHAN_INFO_SCALE:
>> +		for (int i =3D 0; i < info->num_pga_mode_to_gain; i++) {
>
> Why is 'i' signed?
>
>> +			if (val !=3D info->pga_mode_to_gain[i][0] ||
>> +			    val2 !=3D info->pga_mode_to_gain[i][1])
>> +				continue;
>
>> +			ads1018_set_pga_mode(ads1018, chan->scan_index, i);
>> +			return 0;
>
> This is an invariant to the loop, perhaps
>
>> +		}
>
>> +		return -EINVAL;
>
> 		for (unsigned int i =3D 0; i < info->num_pga_mode_to_gain; i++) {
> 			if (val =3D=3D info->pga_mode_to_gain[i][0] ||
> 			    val2 =3D=3D info->pga_mode_to_gain[i][1])
> 				break;
> 		}
> 		if (i =3D=3D info->num_pga_mode_to_gain)
> 			return -EINVAL;
>
> 		ads1018_set_pga_mode(ads1018, chan->scan_index, i);
> 		return 0;
>
> This also will follow the traditional pattern: Check for the error cases =
first.
>
>> +	case IIO_CHAN_INFO_SAMP_FREQ:
>> +		for (int i =3D 0; i < info->num_data_rate_mode_to_hz; i++) {
>
> Ditto, same comments as per previous loop.
>
>> +			if (val !=3D info->data_rate_mode_to_hz[i])
>> +				continue;
>> +
>> +			ads1018_set_data_rate_mode(ads1018, chan->scan_index, i);
>> +			return 0;
>> +		}
>> +
>> +		return -EINVAL;
>> +
>> +	default:
>> +		return -EOPNOTSUPP;
>> +	}
>> +}
>
> ...
>
>> +static int ads1018_set_trigger_state(struct iio_trigger *trig, bool sta=
te)
>> +{
>> +	struct ads1018 *ads1018 =3D iio_trigger_get_drvdata(trig);
>> +	__be16 cnv;
>> +
>> +	/*
>> +	 * We need to lock the SPI bus and tie CS low (hold_cs) to catch
>> +	 * data-ready interrupts, otherwise the MISO line enters a Hi-Z state.
>> +	 */
>> +
>> +	if (state) {
>> +		spi_bus_lock(ads1018->spi->controller);
>> +		ads1018_read_locked(ads1018, &cnv, true);
>> +		enable_irq(ads1018->drdy_irq);
>> +	} else {
>> +		disable_irq(ads1018->drdy_irq);
>> +		ads1018_read_locked(ads1018, &cnv, false);
>> +		spi_bus_unlock(ads1018->spi->controller);
>> +	}
>> +
>> +	return 0;
>
> This function is basically
>
> 	if (foo)
> 		do this
> 	else
> 		do that
>
> please make just two distinct functions instead.
>
>> +}
>
> That's how it will look like:
>
> static void ads1018_set_trigger_enable(struct ads1018 *ads1018)
> {
> 	__be16 cnv;
>
> 	spi_bus_lock(ads1018->spi->controller);
> 	ads1018_read_locked(ads1018, &cnv, true);
> 	enable_irq(ads1018->drdy_irq);
> }
>
> static void ads1018_set_trigger_disable(struct ads1018 *ads1018)
> {
> 	__be16 cnv;
>
> 	disable_irq(ads1018->drdy_irq);
> 	ads1018_read_locked(ads1018, &cnv, false);
> 	spi_bus_unlock(ads1018->spi->controller);
> }
>
> static int ads1018_set_trigger_state(struct iio_trigger *trig, bool state=
)
> {
> 	struct ads1018 *ads1018 =3D iio_trigger_get_drvdata(trig);
>
> 	/*
> 	 * We need to lock the SPI bus and tie CS low (hold_cs) to catch
> 	 * data-ready interrupts, otherwise the MISO line enters a Hi-Z state.
> 	 */
> 	if (state)
> 		ads1018_set_trigger_enable(ads1018);
> 	else
> 		ads1018_set_trigger_disable(ads1018);
>
> 	return 0;
> }
>
> Now is the question, can we get rid of dummy variables by checking for
> the pointer in the _read_locked()? If so, the above become as simple as
>
> static void ads1018_set_trigger_enable(struct ads1018 *ads1018)
> {
> 	spi_bus_lock(ads1018->spi->controller);
> 	ads1018_read_locked(ads1018, NULL, true);
> 	enable_irq(ads1018->drdy_irq);
> }
>
> static void ads1018_set_trigger_disable(struct ads1018 *ads1018)
> {
> 	disable_irq(ads1018->drdy_irq);
> 	ads1018_read_locked(ads1018, NULL, false);
> 	spi_bus_unlock(ads1018->spi->controller);
> }
>
> Or if you make _read_locked() to return the data, just ignoring it as in
>
> 	ads1018_read_locked(ads1018, ...);

Sure, I like this.

>
> ...
>
>> +static int ads1018_buffer_preenable(struct iio_dev *indio_dev)
>> +{
>> +	struct ads1018 *ads1018 =3D iio_priv(indio_dev);
>> +	const struct ads1018_chip_info *chip_info =3D ads1018->chip_info;
>> +	unsigned int pga, drate, addr;
>
>> +	u16 cfg =3D 0;
>
> Unneeded assignment.
>
>> +	addr =3D find_first_bit(indio_dev->active_scan_mask,
>> +			      iio_get_masklength(indio_dev));
>> +	pga =3D ads1018_get_pga_mode(ads1018, addr);
>> +	drate =3D ads1018_get_data_rate_mode(ads1018, addr);
>
>> +	cfg |=3D ADS1018_CFG_VALID;
>
> 	cfg =3D ADS1018_CFG_VALID;
>
>> +	cfg |=3D FIELD_PREP(ADS1018_CFG_MUX_MASK, addr);
>> +	cfg |=3D FIELD_PREP(ADS1018_CFG_PGA_MASK, pga);
>> +	cfg |=3D FIELD_PREP(ADS1018_CFG_MODE_MASK, ADS1018_MODE_CONTINUOUS);
>> +	cfg |=3D FIELD_PREP(ADS1018_CFG_DRATE_MASK, drate);
>
> + blank line.
>
>> +	if (chip_info->channels[addr].type =3D=3D IIO_TEMP)
>> +		cfg |=3D ADS1018_CFG_TS_MODE_EN;
>> +
>> +	ads1018->tx_buf[0] =3D cpu_to_be16(cfg);
>> +	ads1018->tx_buf[1] =3D 0;
>> +
>> +	return spi_write(ads1018->spi, ads1018->tx_buf, sizeof(ads1018->tx_buf=
));
>> +}
>
> ...
>
>> +static irqreturn_t ads1018_trigger_handler(int irq, void *p)
>> +{
>> +	struct iio_poll_func *pf =3D p;
>> +	struct iio_dev *indio_dev =3D pf->indio_dev;
>> +	struct ads1018 *ads1018 =3D iio_priv(indio_dev);
>> +	struct {
>> +		__be16 conv;
>> +		aligned_s64 ts;
>> +	} scan =3D {};
>> +	int ret;
>> +
>> +	if (iio_device_claim_buffer_mode(indio_dev))
>> +		goto out_notify_done;
>> +
>> +	if (iio_trigger_using_own(indio_dev)) {
>> +		disable_irq(ads1018->drdy_irq);
>> +		ret =3D ads1018_read_locked(ads1018, &scan.conv, true);
>> +		enable_irq(ads1018->drdy_irq);
>> +	} else {
>> +		ret =3D spi_read(ads1018->spi, ads1018->rx_buf,
>> +			       sizeof(ads1018->rx_buf));
>> +		scan.conv =3D ads1018->rx_buf[0];
>> +	}
>> +
>> +	iio_device_release_buffer_mode(indio_dev);
>
>> +	if (!ret)
>> +		iio_push_to_buffers_with_ts(indio_dev, &scan, sizeof(scan),
>> +					    pf->timestamp);
>
> 	if (ret)
> 		goto out_notify_done;
>
> // see a comment about traditional pattern somewhere above.
>
> 	iio_push_to_buffers_with_ts(indio_dev, &scan, sizeof(scan), pf->timestam=
p);
>
> (and yes, leave the above on a single 82 characters long line).
>
>> +out_notify_done:
>> +	iio_trigger_notify_done(ads1018->indio_trig);
>> +
>> +	return IRQ_HANDLED;
>> +}
>
> ...
>
>> +static int ads1018_trigger_setup(struct iio_dev *indio_dev)
>> +{
>> +	struct ads1018 *ads1018 =3D iio_priv(indio_dev);
>> +	struct spi_device *spi =3D ads1018->spi;
>
> 	struct device *dev =3D &spi->dev;
>
>> +	int ret;
>
> 	const char con_id =3D "drdy";
>
>> +	ads1018->drdy_gpiod =3D devm_gpiod_get_optional(&spi->dev, "drdy",
>> +						      GPIOD_IN);
>
> 	ads1018->drdy_gpiod =3D devm_gpiod_get_optional(dev, con_id, GPIOD_IN);
>
> and so on...
>
> // here we already make the diff 0 LoCs
>
>> +	if (IS_ERR(ads1018->drdy_gpiod))
>> +		return dev_err_probe(&spi->dev, PTR_ERR(ads1018->drdy_gpiod),
>> +				     "Failed to get 'drdy' GPIO.\n");
>
> 		return dev_err_probe(dev, PTR_ERR(ads1018->drdy_gpiod),
> 				     "Failed to get '%s' GPIO.\n", con_id);
>
>> +	if (spi->irq > 0) {
>> +		ads1018->drdy_irq =3D spi->irq;
>> +	} else if (ads1018->drdy_gpiod) {
>> +		ads1018->drdy_irq =3D gpiod_to_irq(ads1018->drdy_gpiod);
>> +		if (ads1018->drdy_irq < 0)
>> +			return dev_err_probe(&spi->dev, ads1018->drdy_irq,
>> +					     "Failed to get IRQ from 'drdy' GPIO.\n");
>
> 			return dev_err_probe(dev, ads1018->drdy_irq,
> 					     "Failed to get IRQ from '%s' GPIO.\n",
> 					     con_id);
>
>> +	} else {
>> +		return 0;
>> +	}
>
> Can be refactored to have less indentation, though
>
> 	/* Try to retrieve an IRQ from SPI core then from GPIO */
> 	if (spi->irq > 0)
> 		ads1018->drdy_irq =3D spi->irq;
> 	else if (ads1018->drdy_gpiod)
> 		ads1018->drdy_irq =3D gpiod_to_irq(ads1018->drdy_gpiod);
> 	if (ads1018->drdy_irq < 0)
> 		return dev_err_probe(dev, ads1018->drdy_irq,
> 				     "Failed to get IRQ from '%s' GPIO.\n", con_id);
> 	/* No IRQ is fine, avoid supporting triggers */
> 	if (ads1018->drdy_irq =3D=3D 0)
> 		return 0;
>
>> +	ads1018->indio_trig =3D devm_iio_trigger_alloc(&spi->dev, "%s-dev%d-dr=
dy",
>> +						     indio_dev->name,
>> +						     iio_device_id(indio_dev));
>
> // and here I believe we make it 1 LoC less.
>
>> +	if (!ads1018->indio_trig)
>> +		return -ENOMEM;
>> +
>> +	iio_trigger_set_drvdata(ads1018->indio_trig, ads1018);
>> +	ads1018->indio_trig->ops =3D &ads1018_trigger_ops;
>> +
>> +	ret =3D devm_iio_trigger_register(&spi->dev, ads1018->indio_trig);
>> +	if (ret)
>> +		return ret;
>> +
>> +	/*
>> +	 * The "data-ready" IRQ line is shared with the MOSI pin, thus we need
>> +	 * to keep it disabled until we actually request data.
>> +	 */
>> +	return devm_request_irq(&spi->dev, ads1018->drdy_irq, ads1018_irq_hand=
ler,
>> +			       IRQF_NO_AUTOEN, ads1018->chip_info->name, ads1018);
>> +}
>
> ...
>
>> +static int ads1018_spi_probe(struct spi_device *spi)
>> +{
>> +	const struct ads1018_chip_info *info =3D spi_get_device_match_data(spi=
);
>> +	struct iio_dev *indio_dev;
>> +	struct ads1018 *ads1018;
>> +	int ret;
>> +
>> +	indio_dev =3D devm_iio_device_alloc(&spi->dev, sizeof(*ads1018));
>> +	if (!indio_dev)
>> +		return -ENOMEM;
>> +
>> +	ads1018 =3D iio_priv(indio_dev);
>> +	ads1018->spi =3D spi;
>> +	ads1018->chip_info =3D info;
>> +	spi_set_drvdata(spi, ads1018);
>> +
>> +	indio_dev->modes =3D INDIO_DIRECT_MODE;
>> +	indio_dev->name =3D info->name;
>> +	indio_dev->info =3D &ads1018_iio_info;
>> +	indio_dev->channels =3D info->channels;
>> +	indio_dev->num_channels =3D info->num_channels;
>> +
>> +	for (int i =3D 0; i < ADS1018_CHANNELS_MAX; i++) {
>
> unsigned int
>
>> +		ads1018->chan_data[i].data_rate_mode =3D ADS1018_DRATE_DEFAULT;
>> +		ads1018->chan_data[i].pga_mode =3D ADS1018_PGA_DEFAULT;
>> +	}
>> +
>> +	ads1018->xfer.rx_buf =3D ads1018->rx_buf;
>> +	ads1018->xfer.len =3D sizeof(ads1018->rx_buf);
>> +	spi_message_init_with_transfers(&ads1018->msg_read, &ads1018->xfer, 1)=
;
>> +
>> +	ret =3D ads1018_trigger_setup(indio_dev);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret =3D devm_iio_triggered_buffer_setup(&spi->dev, indio_dev,
>> +					      iio_pollfunc_store_time,
>> +					      ads1018_trigger_handler,
>> +					      &ads1018_buffer_ops);
>> +	if (ret)
>> +		return ret;
>> +
>> +	return devm_iio_device_register(&spi->dev, indio_dev);
>> +}
>
> ...
>
>> +#define ADS1018_FSR_TO_SCALE(_fsr, _res) \
>> +	{ 0, ((_fsr) * MICRO) / BIT(_res) }
>> +
>> +static const int ads1018_gain_table[][2] =3D {
>> +	ADS1018_FSR_TO_SCALE(6144, 11),
>
> This won't (hmm... might not? see below for the details) work on 32-bit.
>
>> +	ADS1018_FSR_TO_SCALE(4096, 11),
>> +	ADS1018_FSR_TO_SCALE(2048, 11),
>> +	ADS1018_FSR_TO_SCALE(1024, 11),
>> +	ADS1018_FSR_TO_SCALE(512, 11),
>> +	ADS1018_FSR_TO_SCALE(256, 11),
>> +};
>> +
>> +static const int ads1118_gain_table[][2] =3D {
>> +	ADS1018_FSR_TO_SCALE(6144, 15),
>
> Ditto.
>
>> +	ADS1018_FSR_TO_SCALE(4096, 15),
>> +	ADS1018_FSR_TO_SCALE(2048, 15),
>> +	ADS1018_FSR_TO_SCALE(1024, 15),
>> +	ADS1018_FSR_TO_SCALE(512, 15),
>> +	ADS1018_FSR_TO_SCALE(256, 15),
>> +};
>
> To address that you need to divide MICRO at least by 2
> (note, by 2=E2=81=B6 is also possible without loosing in precision).
>
> // Assuming that you want to keep the initialisers as is now:
> #define ADS1018_FSR_TO_SCALE(_fsr, _res) \
> 	{ 0, ((_fsr) * (MICRO >> 6)) / BIT((_res) - 6) }
>
> OTOH, these all are constants, so the clever compiler (even 32-bit compil=
er)
> may do it for you and won't complain as there is no overflow in the resul=
t.
>
> TL;DR: Try to compile this with 32-bit compiler on 32-bit machine before
> changing as suggested.

I didn't consider 32-bit here... I'll test it for v3!

>
> ...
>
>> +static const unsigned int ads1018_data_rate_table[] =3D {
>> +	128, 250, 490, 920, 1600, 2400, 3300
>
> Leave trailing comma.
>
>> +};
>> +
>> +static const unsigned int ads1118_data_rate_table[] =3D {
>> +	8, 16, 32, 64, 128, 250, 475, 860
>
> Ditto.
>
>> +};

Ack, for everything else. Thank you, Andy!


--=20
 ~ Kurt


