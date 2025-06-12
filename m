Return-Path: <devicetree+bounces-185423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D1BAD7B1F
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 21:38:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 981D81891A78
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 19:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E51752D3A9B;
	Thu, 12 Jun 2025 19:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="X+5aB0fR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C6A2D323E
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 19:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749757131; cv=none; b=CXzL77ANQrPUl4QuI/cAbAJ8kCJ8zpRohvUNnzhrnz7HTITQcOjVyCK0lcP2za7bJOsFXknfiPTqkfeNJK/Dxexpcp/pVisIYSNgF70gGwrWG/2QhPv6A2kTEHoeKoE8xJvDceCk/kt8OJ2FYbA1rbtMsGJBuVj1qcCkjK7xcpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749757131; c=relaxed/simple;
	bh=laFRfpo6M2yi0Eap8PdzW1E/iGcfKxTFD9eXJXJZJzs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XRoP4Jpts7GHKmo5kgn5NdS66dXksPQgBsxIBb1H0UDBA1hAdx2wRmRqf66l6EnmMCERsYne/0P4aRYie8tfHkovYh5bDrTAPE+f4irDbypnnPsqDy6eU9ZghhJTqYhhoowln0Ju8lRy1+z7m459xVwLO3UEK2MIHpLN45BMkr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=X+5aB0fR; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-40667dc8a62so624978b6e.0
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 12:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749757128; x=1750361928; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RjlYJhvz+w/i3+8SI6xuf86sFHKHxf82C/x8Ha6fKVw=;
        b=X+5aB0fRey6S/K8SebvuYx17EkdU48UEWAfSZP60MZENSjU63jk1TV2l9p2B1V5WPQ
         JPdAP+9sEfoRVxbCdAR1zobunvR38RJVk1nTBugNCm3qswVTyLhckg5kc7YT9kqtTqK/
         7J+uY+8jJxQb4tNz3ZLzuNrGRLFPUdalqIYI770vUDoOiYLjKLEumUKjocna0zAgkTVe
         iECi/+tvXbBwH/V/Wr7QlYECaraDD4mvCmSypDUjeX6I4VeDhZuMo+RH7VLUzAG3nUiR
         MkGj5yi6IH9ZCBwfS98DI78KLUAsYlrLnB2zlPcIyWAy3B2sx1FB3gKJYQtBXx0JRwVn
         YdCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749757128; x=1750361928;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RjlYJhvz+w/i3+8SI6xuf86sFHKHxf82C/x8Ha6fKVw=;
        b=t9rrisZy5oIu995g/uWDemnkEa+1vygA/YwsBN6IydFujYYquSPCiJ4kyT9JX0qp29
         G9mCTWQBSbCuzi/ccPJmcsF2fHGtr7QlGJr48+F/eboUAjuH+QCMIIoAMj83yQl7Ztkv
         ees14dE5yCImoD4ZDslYH7aiELv3CszyJMkqQGgLZDWUiVEaWiNqv0ktFvyvCnGY+MZz
         tRLATEl2jkQwkokoEY2I86yodmqn8ErIXHKOWjh5VfOxO7G2Z61qohwfs0rGy9COIXBq
         PIvnxhSwa3IcpHk7F/H6XDkMg50nmOsyBweLVm0k63f5/7ghO9Rz1xxzKZuACScM6frH
         pkJw==
X-Forwarded-Encrypted: i=1; AJvYcCUBpGuil/U22j9NgWhEpqiVT+gBok3ad7lN8qZqerVgDdxjEKRUz65aXrIUpnoY8rnQx8mVCTDvYAe3@vger.kernel.org
X-Gm-Message-State: AOJu0YyLJdx0muzhvJ13q8ni51Vz+Wmgj9+ph8PJc+dinGcQlkusG9xf
	o8EoyJS/YpS6mgzxEpbcvATK7o+JK0N6cMP+BwzvEb83R4qHwebNHraUl/PtkCzCLak=
X-Gm-Gg: ASbGncseHHv367G+AeQHuVPksfChCEdCh8iiXXX88aT5bEekDY+/ryUXHJk2KBae5xI
	o3cv5NcM5E73FwtXvg9idT7p3QXiAqc4wsJee3jGhgX9rUTcPpy+4pvetFcPwcflGhNCwu+3E0n
	fEQlx22zL+uHV2kNbDMiRStQVqWuWApBzU6udhb8RyWbF7OFPnOW/KdVQq4mJMKy35Zc6Dx4UN3
	YV2p7VjNlWu6bfSVIbTgU8OE4Ozmp7zocufXy5//RqLT/SYNnBCcwdh7szfSM6SGqAxBI5o7tZq
	ENmmUgni5LdCzFdRAalJxnDPEGS37bnLCPyOOyqmrCl6FZGnU5D9HZH//K5A3OHzYMEMoQ8j43B
	1RkRV9xI5wfhcbF877igpJY7pXuA6ISGEqM1n
X-Google-Smtp-Source: AGHT+IFH1cKNohq9ppvOp1WyK9G10CYwqkl9hidC8ms628muweoVG62JwEwc7Yt73xcQFHHa6K+JRQ==
X-Received: by 2002:a05:6808:16a0:b0:3f7:d16c:e283 with SMTP id 5614622812f47-40a71d5aa37mr453389b6e.11.1749757128275;
        Thu, 12 Jun 2025 12:38:48 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:f808:847:b3ae:ff1a? ([2600:8803:e7e4:1d00:f808:847:b3ae:ff1a])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a68201a51sm422149b6e.10.2025.06.12.12.38.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 12:38:47 -0700 (PDT)
Message-ID: <afc85a4b-1535-406d-ad14-143049267b98@baylibre.com>
Date: Thu, 12 Jun 2025 14:38:45 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 8/8] iio: adc: Add events support to ad4052
To: Jorge Marques <jorge.marques@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-pwm@vger.kernel.org
References: <20250610-iio-driver-ad4052-v3-0-cf1e44c516d4@analog.com>
 <20250610-iio-driver-ad4052-v3-8-cf1e44c516d4@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250610-iio-driver-ad4052-v3-8-cf1e44c516d4@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/10/25 2:34 AM, Jorge Marques wrote:
> The AD4052 family supports autonomous monitoring readings for threshold
> crossings. Add support for catching the GPIO interrupt and expose as an IIO
> event. The device allows to set either, rising and falling directions. Only
> either threshold crossing is implemented.
> 
> Signed-off-by: Jorge Marques <jorge.marques@analog.com>
> ---

...

> +
> +static ssize_t ad4052_events_frequency_store(struct device *dev,
> +					     struct device_attribute *attr,
> +					     const char *buf,
> +					     size_t len)
> +{
> +	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> +	struct ad4052_state *st = iio_priv(indio_dev);
> +	int ret;
> +
> +	if (!iio_device_claim_direct(indio_dev))
> +		return -EBUSY;
> +	if (st->wait_event) {
> +		ret = -EBUSY;
> +		goto out_release;
> +	}

I'm wondering if we should instead have some kind of iio_device_claim_monitor_mode()
so that we don't have to implement this manually everywhere. If monitor mode was
claimed, then iio_device_claim_direct() and iio_device_claim_buffer_mode() would
both return -EBUSY. If buffer mode was claimed, iio_device_claim_monitor_mode()
would fail. If direct mode was claimed, iio_device_claim_monitor_mode() would wait.

> +
> +	ret = __sysfs_match_string(AD4052_FS(st->chip->grade),
> +				   AD4052_FS_LEN(st->chip->grade), buf);
> +	if (ret < 0)
> +		goto out_release;
> +
> +	st->events_frequency = ret;
> +
> +out_release:
> +	iio_device_release_direct(indio_dev);
> +	return ret ? ret : len;
> +}
> +
> +static IIO_DEVICE_ATTR(sampling_frequency, 0644,
> +		       ad4052_events_frequency_show,
> +		       ad4052_events_frequency_store, 0);
> +
> +static ssize_t sampling_frequency_available_show(struct device *dev,
> +						 struct device_attribute *attr,
> +						 char *buf)
> +{
> +	struct ad4052_state *st = iio_priv(dev_to_iio_dev(dev));
> +	int ret = 0;
> +
> +	for (u8 i = AD4052_FS_OFFSET(st->chip->grade);
> +	     i < AD4052_FS_LEN(st->chip->grade); i++)
> +		ret += sysfs_emit_at(buf, ret, "%s ", ad4052_conversion_freqs[i]);
> +
> +	ret += sysfs_emit_at(buf, ret, "\n");
> +	return ret;
> +}
> +
> +static IIO_DEVICE_ATTR_RO(sampling_frequency_available, 0);
> +
> +static struct attribute *ad4052_event_attributes[] = {
> +	&iio_dev_attr_sampling_frequency.dev_attr.attr,
> +	&iio_dev_attr_sampling_frequency_available.dev_attr.attr,
> +	NULL
> +};
> +
> +static const struct attribute_group ad4052_event_attribute_group = {
> +	.attrs = ad4052_event_attributes,
> +};
> +
>  static int ad4052_update_xfer_raw(struct iio_dev *indio_dev,
>  				   struct iio_chan_spec const *chan)
>  {
> @@ -602,6 +699,19 @@ static int ad4052_setup(struct iio_dev *indio_dev, struct iio_chan_spec const *c
>  				  val);
>  }
>  
> +static irqreturn_t ad4052_irq_handler_thresh(int irq, void *private)
> +{
> +	struct iio_dev *indio_dev = private;
> +

Can we not read the status register here to find out what the exact
event was? I guess that would require taking it out of monitor mode.

> +	iio_push_event(indio_dev,
> +		       IIO_UNMOD_EVENT_CODE(IIO_VOLTAGE, 0,
> +					    IIO_EV_TYPE_THRESH,
> +					    IIO_EV_DIR_EITHER),
> +		       iio_get_time_ns(indio_dev));
> +
> +	return IRQ_HANDLED;
> +}
> +
>  static irqreturn_t ad4052_irq_handler_drdy(int irq, void *private)
>  {
>  	struct ad4052_state *st = private;
> @@ -616,6 +726,18 @@ static int ad4052_request_irq(struct iio_dev *indio_dev)
>  	struct device *dev = &st->spi->dev;
>  	int ret;
>  
> +	ret = fwnode_irq_get_byname(dev_fwnode(&st->spi->dev), "gp0");
> +	if (ret > 0) {
> +		ret = devm_request_threaded_irq(dev, ret, NULL,
> +						ad4052_irq_handler_thresh,
> +						IRQF_ONESHOT, indio_dev->name,
> +						indio_dev);
> +		if (ret)
> +			return ret;
> +	} else if (ret == -EPROBE_DEFER) {
> +		return ret;
> +	}

By swapping the order, we can avoid the else. Also, do we really want to
ignore all other errors? It seems like there would just be ENODEV or ENOENT
that means the interrupt is not there and we would want to pass on other
errors.

> +
>  	ret = fwnode_irq_get_byname(dev_fwnode(&st->spi->dev), "gp1");
>  	if (ret > 0) {
>  		ret = devm_request_threaded_irq(dev, ret, NULL,


...

> +
> +static int ad4052_monitor_mode_enable(struct ad4052_state *st)
> +{
> +	int ret;
> +
> +	ret = pm_runtime_resume_and_get(&st->spi->dev);
> +	if (ret)
> +		return ret;
> +
> +	ret = ad4052_conversion_frequency_set(st, st->events_frequency);
> +	if (ret)
> +		goto out_error;
> +
> +	ret = ad4052_set_operation_mode(st, AD4052_MONITOR_MODE);
> +	if (ret)
> +		goto out_error;
> +
> +	return ret;
> +out_error:
> +	pm_runtime_mark_last_busy(&st->spi->dev);
> +	pm_runtime_put_autosuspend(&st->spi->dev);
> +	return ret;
> +}
> +
> +static int ad4052_monitor_mode_disable(struct ad4052_state *st)
> +{
> +	int ret;
> +
> +	pm_runtime_mark_last_busy(&st->spi->dev);
> +	pm_runtime_put_autosuspend(&st->spi->dev);
> +
> +	ret = ad4052_exit_command(st);
> +	if (ret)
> +		return ret;
> +	return regmap_write(st->regmap, AD4052_REG_DEVICE_STATUS,
> +			    AD4052_REG_DEVICE_STATUS_MAX_FLAG |
> +			    AD4052_REG_DEVICE_STATUS_MIN_FLAG);
> +}
> +

It seems like we need to make sure monitor mode is disabled when the
driver is removed. Otherwise we could end up with unbalanced calls to
the pm_runtime stuff and leave the chip running.


> +static int ad4052_read_event_value(struct iio_dev *indio_dev,
> +				   const struct iio_chan_spec *chan,
> +				   enum iio_event_type type,
> +				   enum iio_event_direction dir,
> +				   enum iio_event_info info, int *val,
> +				   int *val2)
> +{
> +	struct ad4052_state *st = iio_priv(indio_dev);
> +	int ret;
> +
> +	if (!iio_device_claim_direct(indio_dev))
> +		return -EBUSY;
> +
> +	if (st->wait_event) {
> +		ret = -EBUSY;
> +		goto out_release;
> +	}
> +
> +	switch (info) {
> +	case IIO_EV_INFO_VALUE:
> +		ret = __ad4052_read_event_info_value(st, dir, val);
> +		break;
> +	case IIO_EV_INFO_HYSTERESIS:
> +		ret = __ad4052_read_event_info_hysteresis(st, dir, val);
> +		break;

These functions don't need __ prefix. There is no name clash.

> +	default:
> +		ret = -EINVAL;
> +		break;
> +	}
> +
> +out_release:
> +	iio_device_release_direct(indio_dev);
> +	return ret ? ret : IIO_VAL_INT;
> +}
> +

