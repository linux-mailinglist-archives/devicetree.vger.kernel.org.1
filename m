Return-Path: <devicetree+bounces-141253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4840A202FB
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 02:27:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD06E1886C95
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 01:27:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4FB83FB0E;
	Tue, 28 Jan 2025 01:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QuBKTA7q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036681B59A
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 01:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738027669; cv=none; b=UBPZIuNSbFEfmxcPVNIpwRlHicvsSImq/YTPA1ZsQvTnF5PfrJiqliKxIcj0ym98JXCbp9VGauYphMhM6Q/onQetW4hxFz2PNSfJ83y7OBq838wofF9MhtAtz6EO7Wort77OpYDvTXKHWwE6P7O3hKupyHiZTiSYk//py+7AjFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738027669; c=relaxed/simple;
	bh=8uPObudq123GlG7Fe7QUNd5nbxNMoUZDFeX91SRcGfE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pJfyd5UqQaSfogMsPspCibe0Lr0sWwmV/EZjFBLcnw1GNmyYuNfcl4KGnvHJjxTdPRGfCYqQFemjWkmaPPwD2fZ3DQOiK481k5/VWgdgneDCoZam6DkkggZd40BzvMKMUNf+sE7YWUfpDgkkdT05fE+vO0Cea+PBkKRjaBqVvDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QuBKTA7q; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5f2efbc31deso2873577eaf.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 17:27:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738027667; x=1738632467; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eVa6mfWiNebm5ZUnBlnS3oZPD4pBLUdbSWpt1KW94io=;
        b=QuBKTA7qCAwdKjGH6IgwjWR6X3ftxJ8N57lLLgW3m5iGyzkDTGgbJ7rRTRbVDSeksj
         Imdts3excgfIkbdCR/lya4I0kmmCa+Y9+SuGIkjcmoRyZUjZ2pwkhgDRR8doS9Hp0hz3
         ppNPu+wbAE771mxWjvCrZHTMo7a1ECna5Doy7/7mfYvghYSHsukpMyMoBpKTTqtZRGtm
         QUW6ydhW9UfNQlTmvsrJ9saKPDiFz40IrOb9l8Fyr8OQRmmHaQkoJpeiNIxNSHmR0KaP
         SbKncxWtB1SCxtLPwyYLWVqqtpLfURt8GgXTH9x/POEdkUo5oZUJDgT1wtF0ouWsTmL4
         jpwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738027667; x=1738632467;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eVa6mfWiNebm5ZUnBlnS3oZPD4pBLUdbSWpt1KW94io=;
        b=FbeBAWsH1Cewwq4HIszyE0MsZMVxemqo29cDF9YZldD70wptR+N1jCM/TU2RhmN6x8
         VBdo8O7j4UekWzbfMq1wzS04aoGaobI6DesDVbsojmnLFjJBDzM4QoHrpmayRYSAbv8X
         +0E/HQgr7EifUxsNofOMra+XX9xJFlXZVCklFyrGy9VSjv8RoO7wFK1DJGEeiCg33SxT
         2NYC2Hc/dgAE04nWpGt8fKBX4P9BbOeXwQIGrqnyCNxN7CPgHK34trxEzxglK4UmnDiT
         iAynJTi89m0Lvc1yl3ANLcWnmmznVKMmtTnVXDMECWtj11mLSee1C8bkZ96eY3KS/IHJ
         uvvA==
X-Forwarded-Encrypted: i=1; AJvYcCWMddajOn2slH394eXussQfzRI8kuuXyXeNX00mkzxSa500WJiFjFyPO7F67Oj9opcbEHsEA3SF5KgE@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+SHPZQ6JtoR/+LCrZ4wUEva0xEKvk9WhVOze1AW0M0H4Fnxyd
	hb9nCYNn/OTIwE7t/GB4yy4uDCrgowlIDaP+gzOpKS8tYZpgOUSHPI9A4f+9x50=
X-Gm-Gg: ASbGnctKH8HTzIzbSscXUYU4R+VzqNPZJ/Fh+RqvLvVIvxYDoKz6W+hPoaPjP/vQuMb
	cszKLX3t02Ly+iyIsTmFWUk8rffIjE12Vn9ka7o6ZMlHrwWZB4OJW2/qRJ3OfMmkFRauJgFJ75q
	lwcEm8v+/uYnVxGTyroI1RY5ZIBu8skLNfnV9HV/D0hgyjefZWoix4CXuwl8I+IV+C/YrK7ElqP
	sgXq3D6bIop+WM3+9ZdLAVFOq8qp9/mCe57TLVruDTwtxQa6TuzJxzE49r/m/y/vV/uRGIsJ6cc
	7dp2rBRdeiJ1PKDlfnnXc0Y9tuSQm56MiZMyYdRQNg==
X-Google-Smtp-Source: AGHT+IEYGknv1ygGvD/bm4S15WKMxxllkOhQMnHucsaZD4ZW+bdqHge3weOuz8U1OeSqX5JFHLmBQQ==
X-Received: by 2002:a05:6820:1b8c:b0:5fa:7d7f:d035 with SMTP id 006d021491bc7-5fa7d7fd182mr11139753eaf.6.1738027666987;
        Mon, 27 Jan 2025 17:27:46 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fa8b528e63sm2605288eaf.8.2025.01.27.17.27.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 17:27:45 -0800 (PST)
Message-ID: <a429dcb8-04e2-4e6b-a648-feb32757f887@baylibre.com>
Date: Mon, 27 Jan 2025 19:27:43 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 16/16] iio: adc: ad7768-1: add low pass -3dB cutoff
 attribute
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonath4nns@gmail.com,
 marcelo.schmitt1@gmail.com
References: <cover.1737985435.git.Jonathan.Santos@analog.com>
 <91b697b66a42ead9e05dd4e79d6fb1e776c569d6.1737985435.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <91b697b66a42ead9e05dd4e79d6fb1e776c569d6.1737985435.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/27/25 9:14 AM, Jonathan Santos wrote:
> Ad7768-1 has a different -3db frequency multiplier depending on
> the filter type configured. The cutoff frequency also varies according
> to the current ODR.
> 
> Add a readonly low pass -3dB frequency cutoff attribute to clarify to
> the user which bandwidth is being allowed depending on the filter
> configurations.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
> v2 Changes:
> * New patch in v2.
> ---
>  drivers/iio/adc/ad7768-1.c | 23 +++++++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/adc/ad7768-1.c b/drivers/iio/adc/ad7768-1.c
> index 6d0b430a8d54..daf91ef6f77b 100644
> --- a/drivers/iio/adc/ad7768-1.c
> +++ b/drivers/iio/adc/ad7768-1.c
> @@ -149,6 +149,18 @@ enum ad7768_scan_type {
>  	AD7768_SCAN_TYPE_HIGH_SPEED,
>  };
>  
> +/*
> + * -3dB cutoff frequency multipliers (relative to ODR) for
> + * each filter type. Values are multiplied by 1000.
> + */
> +static const int ad7768_filter_3db_odr_multiplier[] = {
> +	[SINC5] = 204,
> +	[SINC5_DEC_X8] = 204,
> +	[SINC5_DEC_X16] = 204,
> +	[SINC3] = 261,
> +	[WIDEBAND] = 433,
> +};
> +
>  static const int ad7768_mclk_div_rates[4] = {
>  	16, 8, 4, 2,
>  };
> @@ -202,7 +214,8 @@ static const struct iio_chan_spec ad7768_channels[] = {
>  		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
>  		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
>  		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ) |
> -					   BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),
> +					   BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO) |
> +					   BIT(IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY),
>  		.ext_info = ad7768_ext_info,
>  		.indexed = 1,
>  		.channel = 0,
> @@ -802,7 +815,7 @@ static int ad7768_read_raw(struct iio_dev *indio_dev,
>  {
>  	struct ad7768_state *st = iio_priv(indio_dev);
>  	const struct iio_scan_type *scan_type;
> -	int scale_uv, ret;
> +	int scale_uv, ret, temp;
>  
>  	scan_type = iio_get_current_scan_type(indio_dev, chan);
>  	if (IS_ERR(scan_type))
> @@ -842,6 +855,12 @@ static int ad7768_read_raw(struct iio_dev *indio_dev,
>  	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
>  		*val = st->oversampling_ratio;
>  
> +		return IIO_VAL_INT;
> +
> +	case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
> +		temp = st->samp_freq * ad7768_filter_3db_odr_multiplier[st->filter_type];
> +		*val = DIV_ROUND_CLOSEST(temp, 1000);
> +
>  		return IIO_VAL_INT;
>  	}
>  

If this is read-only, do we actually need it? It looks like the attribute is
going to return 1 of 3 values that exactly matches the filter_type attribute,
so this is not really giving any additional info.


