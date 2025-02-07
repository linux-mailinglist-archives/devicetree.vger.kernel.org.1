Return-Path: <devicetree+bounces-144117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D064A2CE74
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:51:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93C5E7A237C
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 20:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33A251AF0AF;
	Fri,  7 Feb 2025 20:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HHF9C7Tv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC69019C556
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 20:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738961506; cv=none; b=LE6wbwkpa9wPsFcQr6wjsm75ocuuMoPBug+HoLCacTnJDL9vEr4m0Lp8+QhZqLqZ4dZFIZFs1ae20D1dNIKqIpy2/pGZl0nB+tMiUTwph7d2kFI7rDvatvrz0+2+TTRJnnfIjgXxC/8RoEvgp3aItVe1x03/6CRPPUyD24Waoy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738961506; c=relaxed/simple;
	bh=j0K3veYgNs9ITuGH6rfEbzVZGYKqSl9G/AaRQDM6RO4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Ipip65oeX5CStMgfdd1oW6vT3EGi18GXoYBY3aO7AcQStpDxVax9LumAHsn9HewXLmenI6GaJWT7itPSCp3z00bk6nXw8RxdXDuDm2ukSARnX7S+OadYw+spAAlATb3nZJeCYYTH0DE0tPC3pCYMxKLHTS6W9NXcTgpEAB1phgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HHF9C7Tv; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-71e3005916aso770769a34.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 12:51:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738961502; x=1739566302; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VQGQcdGFinvFOpfGuSYGng0xGWMSfOVhvommmb2mfPo=;
        b=HHF9C7TvC5v3O5qwMl077YKeKLExv/7juTO/sfK/IO9KN6nXmt935uSSPkBheIBR0a
         xGQv9RnuYT509ER2xjN4t5gmuGU0dNEebvg6BB4H0SuP4nRo1Rl8OUYHopu4TbiPH8rk
         2tXRGmIKGMu95eCN7gX+XJ9LMoHr0x2Fc/WCdAx348jQifRZz8GRkKE1re0iUyoS7tJ/
         WrzIhMCoW17SIGvj1g/0n5Zf0aZzpAdCRIIE+5TFVrFdFN32kXobFFbf2Djb/dYHapHn
         A6YMgBSRnmz7S0yFO7ZMeuQir1XEGSm1iyruTzkyUSkV98Lit1494ANl2exYhiNK8dYQ
         lzUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738961502; x=1739566302;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VQGQcdGFinvFOpfGuSYGng0xGWMSfOVhvommmb2mfPo=;
        b=Lqz2OFIh5icZJ+2fvBgNGHaAdxgy77ikpxOBP56W6JA28wdaExkEDPpEpOrYaAJAeV
         Qi1mCQIzSnw3rCp2QJ1AL93lQ5Jb2Fu3FwkNoe9re7ZY0kmmLgOAlgnGf2VkfrHroCXz
         dwh+vpFs0NKv7cTILy5tFS6fMbplUlRHkSL6oEGwhGNGjYxAbM0ekOcjOrlQ2sFDXQjk
         2IAUt69jGn3gCU7WGSanp8VZ5jyHhpg2O8tDIA6YZ1wbnHcIahp+oiOZ/9h3H7lwQEUp
         rSdRW9GvoUBVjooite5hUvs8Nsg3wo0MkyATUnVVdOMpuFOtqpqTHOx9rtCemlwPC1iN
         ETLQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+PoaRaJzEheGVrOC9JWVvtkT7/vVFtQ4Nw7hpTsAB88zPBsZoF+Gd2SWF4TK1csqjIcp36fklfdvB@vger.kernel.org
X-Gm-Message-State: AOJu0YxLCoKsylgSomm7syRPgeLNeHRQxh+aJKSL3dSZkFaLXgGbSe2e
	GcN0lhBfRw7u5yK20SjbBSAJs1AgLxM1897Y5gQvCZ8OQCAYpN4W0/QNU+uIOb4=
X-Gm-Gg: ASbGncvqpds+QV6D6nom7phIrCrt8TnQZo0LA8sYzgMWKga/NXQR0wIk7IHPhoxXVmp
	jhHO/Rftv6cr4CrnQccHywBhoZPTy64qcC+sXYLk/SKWEPvF8jUbTcB8a+Ewf2L0sxkySt+Uy2e
	o2RJdfkCDNVhC/p/5hATKy5t6I1kEJKKjwgEZlmkKfvwHY0iRslMo2qQjqvtEXHY/KiKY0VqT2R
	rmNmCJcI71srq3Y3ZseSOdm9ANYILkXDnS+Oy6oosQvWFnyW4/tjpwc5D16S4S9WzUMQKC8NUmu
	43BfgSB8XuSHCxl9ST4+V0WDNkgHDQesuZDnrcHFEgbEBAsEpKdX
X-Google-Smtp-Source: AGHT+IG7PscmiUU5iaoZJFTzcARWpAGODDHZRUMCO99df9PiCQJBs76r9w1AoVJ5tFHypQESPlOSMA==
X-Received: by 2002:a05:6830:438a:b0:71d:f343:5f5b with SMTP id 46e09a7af769-726b8829061mr3412971a34.12.1738961501979;
        Fri, 07 Feb 2025 12:51:41 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726afa4d2b7sm1006099a34.63.2025.02.07.12.51.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 12:51:41 -0800 (PST)
Message-ID: <dd263ac6-1843-493c-90ea-d303eae561e5@baylibre.com>
Date: Fri, 7 Feb 2025 14:51:40 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 9/9] iio: adc: ad4851: add ad485x driver
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org
References: <20250207140918.7814-1-antoniu.miclaus@analog.com>
 <20250207140918.7814-10-antoniu.miclaus@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250207140918.7814-10-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/7/25 8:09 AM, Antoniu Miclaus wrote:
> Add support for the AD485X a fully buffered, 8-channel simultaneous
> sampling, 16/20-bit, 1 MSPS data acquisition system (DAS) with
> differential, wide common-mode range inputs.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---

...

> +static int ad4851_parse_channels_common(struct iio_dev *indio_dev,
> +					struct iio_chan_spec **chans,
> +					const struct iio_chan_spec ad4851_chan)
> +{
> +	struct ad4851_state *st = iio_priv(indio_dev);
> +	struct device *dev = &st->spi->dev;
> +	struct iio_chan_spec *channels, *chan_start;
> +	unsigned int num_channels, reg;
> +	unsigned int index = 0;
> +	int ret;
> +
> +	num_channels = device_get_child_node_count(dev);
> +	if (num_channels > AD4851_MAX_CH_NR)
> +		return dev_err_probe(dev, -EINVAL, "Too many channels: %u\n",
> +				     num_channels);
> +
> +	channels = devm_kcalloc(dev, num_channels, sizeof(*channels), GFP_KERNEL);
> +	if (!channels)
> +		return -ENOMEM;
> +
> +	chan_start = channels;
> +
> +	device_for_each_child_node_scoped(dev, child) {
> +		ret = fwnode_property_read_u32(child, "reg", &reg);
> +		if (ret)
> +			return dev_err_probe(dev, ret,
> +					     "Missing channel number\n");
> +		if (reg >= AD4851_MAX_CH_NR)
> +			return dev_err_probe(dev, ret,

ret will be == 0 here, so need to replace with -EINVAL.

> +					     "Invalid channel number\n");

