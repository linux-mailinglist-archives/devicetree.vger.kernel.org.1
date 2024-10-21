Return-Path: <devicetree+bounces-113818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF989A7222
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 20:17:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AABEFB216A1
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 18:17:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9E961F6674;
	Mon, 21 Oct 2024 18:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qm+TaR9f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705181CFEAD
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 18:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729534630; cv=none; b=jCe7vZrKRRW4WksKSELM6Kn+t6eTDqHYR/proEEuTq0VZHW6ltgDct0I6woMD6xHOXnLUHaeOKnMcy3UULQM+fsYMj1plvlDtdWoCk7w3WfaxaacnjGccYJ17LlwBWL0uTa5bZ//GzNKDrF5jFVPzQzNGE10RKYjOrd/vezZFNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729534630; c=relaxed/simple;
	bh=6+7EUWRyiZYcHoTjZe38g8sCI+a+GjrfmjE1Kpc+ZQo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LToSi3+LFEOlL0eQVNC0hj9doQYTo/rKtNRv/eaqlMDkPbZovgJjRmQdBJG6yqYr64UpAW42nouqKd4tV1GJkjspwcceyu3sZycaTJ74PnFcnb2RYkHdJBs48CEyI3ontWGO1ybDVzocoz8PbDgkelcrmBZjEamfONCoIJUxsQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qm+TaR9f; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-2887abeefbdso2447930fac.0
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 11:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729534625; x=1730139425; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o8eNMrlsyZLIFUUplYaGIF2QY2ydz+LQJFHzGznKEN8=;
        b=qm+TaR9f/TFhfSJh56ieIEoB/UZAq3AmMX9V4tvdOjXTcnlDT/JM/MP3A9DrTVqHxh
         QFdC/rShPJ3yNZYDCtCAWpGvCqtCLaNfgYE095leZg5m0ro7MjCASo1vZ0GqYiAxm/Ds
         UInzPdYYJnHLnSNkW7BUkw/db6OTWFfdzBuTWphoKm3Hj4yfLPGa65Q5seSPh0yBNtFR
         DMI/Wz1M6cM/jjXGwNmr3ICUAzAvp6qQstzPlPElmNljrmlupevoIEZ8SIG+9U5E23pE
         utP5swudyZB63F6RpKKMoykHce849Zcp+scIhvZtzJ8dUE2zd6mhF/wntBKbfTPn9Bxb
         FRig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729534625; x=1730139425;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o8eNMrlsyZLIFUUplYaGIF2QY2ydz+LQJFHzGznKEN8=;
        b=APcYx7VDE3/ezwSA6FILw0Jn4UB7kQhOjOq4WDcMmGYuvdrn29HcoTeLmsBOgUYviL
         PRERtPXm1gD6YlkzWOmsy/EG/9zndzQfOnp7SHEt5Fvs/0YdYjg/d1m8k5TdQEF0pDXA
         Xvt/kAonK7Jph0ec5wbeuF0hecOWu5aXT3rRZWWixv13lgZQBzhQArFHHruJ+xriDesG
         4cOHAjIRuEp39gMJVHu/w9Zri+xhP94H3lRu6Zkvw5O5ph51Tk+W9STyJ/b/d2CDE9fm
         Vv9GBVJ11Ez5aLRDIWZ6cfhJfezWaf4QriAH/2zA8bBvmJdFBnJkQXwttVyQbNinXHew
         Vj1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUDR5cOZbfaq8OXv7QqcdJJuNYtHWX6OcwSKZcaFL8Kwu0Rh81RWX6YG09vWsRGpw+Z1S7m96zy1oZp@vger.kernel.org
X-Gm-Message-State: AOJu0YxtYxsfoutNk0mhY1o9uQrBCqdQCf2J/UU+1BDFe5fqCq0ONpjQ
	rHH5OIqKz3d369nu0u73fe7H9FoUti9v7sSbFFVceLbFVBCdlQHaAAf8+oQwTh8=
X-Google-Smtp-Source: AGHT+IEn2j4mceFARFfUg6IiG2e1+RqEWWQV5e39sNGyBXVQPXyEetFVXLuN867tzqBEvxv6HeAn6Q==
X-Received: by 2002:a05:6871:6a3:b0:287:130e:f665 with SMTP id 586e51a60fabf-2892c304f50mr9126897fac.16.1729534623852;
        Mon, 21 Oct 2024 11:17:03 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-28caed64bdasm33128fac.57.2024.10.21.11.17.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2024 11:17:02 -0700 (PDT)
Message-ID: <0a7c5305-b4f7-4166-8a8a-05cf6e3273cc@baylibre.com>
Date: Mon, 21 Oct 2024 13:17:01 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] iio: adc: ad7606: rework scale-available to be static
To: Alexandru Ardelean <aardelean@baylibre.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: jic23@kernel.org, krzk+dt@kernel.org, robh@kernel.org, lars@metafoo.de,
 michael.hennerich@analog.com, gstols@baylibre.com
References: <20241021130221.1469099-1-aardelean@baylibre.com>
 <20241021130221.1469099-5-aardelean@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241021130221.1469099-5-aardelean@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/21/24 8:02 AM, Alexandru Ardelean wrote:
> The main driver for this change is the AD7607 part, which has a scale of
> "1.220703" for the ±10V range. The AD7607 has a resolution of 14-bits.
> 
> So, just adding the scale-available list for that part would require some
> quirks to handle just that scale value.
> But to do it more neatly, the best approach is to rework the scale
> available lists to have the same format as it is returned to userspace.
> That way, we can also get rid of the allocation for the 'scale_avail_show'
> array.
> 
> Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
> ---

...


>  static ssize_t in_voltage_scale_available_show(struct device *dev,
>  					       struct device_attribute *attr,
>  					       char *buf)
> @@ -703,8 +690,16 @@ static ssize_t in_voltage_scale_available_show(struct device *dev,
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ad7606_state *st = iio_priv(indio_dev);
>  	struct ad7606_chan_scale *cs = &st->chan_scales[0];
> +	const unsigned int (*vals)[2] = cs->scale_avail;
> +	unsigned int i;
> +	size_t len = 0;
>  
> -	return ad7606_show_avail(buf, cs->scale_avail, cs->num_scales, true);
> +	for (i = 0; i < cs->num_scales; i++)
> +		len += scnprintf(buf + len, PAGE_SIZE - len, "%u.%06u ",
> +				 vals[i][0], vals[i][1]);
> +	buf[len - 1] = '\n';
> +
> +	return len;
>  }
>  
>  static IIO_DEVICE_ATTR_RO(in_voltage_scale_available, 0);

Probably a reason for this that I forgot, but why is this handled in a
custom attribute instead of ad7606_read_avail()?

> @@ -742,6 +737,7 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
>  			    long mask)
>  {
>  	struct ad7606_state *st = iio_priv(indio_dev);
> +	unsigned int scale_avail[AD760X_MAX_SCALES];

Calling this scale_avail_uv would make the code easier for me to understand.

>  	struct ad7606_chan_scale *cs;
>  	int i, ret, ch = 0;
>  
> @@ -752,7 +748,12 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
>  		if (st->sw_mode_en)
>  			ch = chan->address;
>  		cs = &st->chan_scales[ch];
> -		i = find_closest(val2, cs->scale_avail, cs->num_scales);
> +		for (i = 0; i < cs->num_scales; i++) {
> +			scale_avail[i] = cs->scale_avail[i][0] * 1000000 +

								 MICRO

> +					 cs->scale_avail[i][1];
> +		}
> +		val = val * 1000000 + val2;
> +		i = find_closest(val, scale_avail, cs->num_scales);
>  		ret = st->write_scale(indio_dev, ch, i + cs->reg_offset);
>  		if (ret < 0)
>  			return ret;
> @@ -788,9 +789,15 @@ static ssize_t ad7606_oversampling_ratio_avail(struct device *dev,
>  {
>  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>  	struct ad7606_state *st = iio_priv(indio_dev);
> +	const unsigned int *vals = st->oversampling_avail;
> +	unsigned int i;
> +	size_t len = 0;
>  
> -	return ad7606_show_avail(buf, st->oversampling_avail,
> -				 st->num_os_ratios, false);
> +	for (i = 0; i < st->num_os_ratios; i++)
> +		len += scnprintf(buf + len, PAGE_SIZE - len, "%u ", vals[i]);
> +	buf[len - 1] = '\n';
> +
> +	return len;
>  }
>  
>  static IIO_DEVICE_ATTR(oversampling_ratio_available, 0444,

Same question about ad7606_read_avail() instead for this one.


