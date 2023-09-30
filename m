Return-Path: <devicetree+bounces-4841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F717B416B
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:03:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 20640281AC9
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53A3A16434;
	Sat, 30 Sep 2023 15:03:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD901549E;
	Sat, 30 Sep 2023 15:03:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27D8BC433C8;
	Sat, 30 Sep 2023 15:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696086217;
	bh=oc3yqphUC0dKNs9xjyNjFTM6qHopZJCOW0oefQNLdz0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=qa7XMf51NYuCrCQnq5UCARNc4TCNYjFGdQDqXPAPlmqSAM0jeT+u1YCk8fVWIXyPM
	 PrVWbA5A56GV5Wvg1dlAe1b3D6ZnKKZF0F3ViFYtGqoBADD7Kc6hx9R84A+tDxs1R7
	 m3+GDNcXgwh2EsnctKxYSKCYsBNBLMqWrA+GM2diLDzxFVnXzPxRvCxW5U12u1cRnC
	 EhnrBQNQWOwevne8mszK4ECdFxXt6rrCuLjDWFfOO/z0it/MfhFEgV9L8Pb9gLIAf9
	 x3FxYmQzfp3CYxEE6rnR8OcgLshLHq48UIDW4u9LhSOvBFGyoJPOZUKUzTBVWHIbks
	 4QCDgdxkDURPQ==
Date: Sat, 30 Sep 2023 16:03:36 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-staging@lists.linux.dev, David Lechner <david@lechnology.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Axel Haslam <ahaslam@baylibre.com>, Philip Molloy
 <pmolloy@baylibre.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 14/27] staging: iio: resolver: ad2s1210: implement
 hysteresis as channel attr
Message-ID: <20230930160336.6a67765a@jic23-huawei>
In-Reply-To: <20230929-ad2s1210-mainline-v3-14-fa4364281745@baylibre.com>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
	<20230929-ad2s1210-mainline-v3-14-fa4364281745@baylibre.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 29 Sep 2023 12:23:19 -0500
David Lechner <dlechner@baylibre.com> wrote:

> From: David Lechner <david@lechnology.com>
> 
> From: David Lechner <dlechner@baylibre.com>
> 
> The AD2S1210 resolver has a hysteresis feature that can be used to
> prevent flicker in the LSB of the position register. This can be either
> enabled or disabled. Disabling hysteresis is useful for increasing
> precision by oversampling.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
One trivial thing inline.

Thanks,

Jonathan

> ---
> 
> v3 changes:
> * Refactored into more functions to reduce complexity of switch statements.
> * Use early return instead of break in switch statements.
> 
>  drivers/staging/iio/resolver/ad2s1210.c | 86 +++++++++++++++++++++++++++++++--
>  1 file changed, 83 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
> index 0ec3598b600a..a82cb124a12f 100644
> --- a/drivers/staging/iio/resolver/ad2s1210.c
> +++ b/drivers/staging/iio/resolver/ad2s1210.c
> @@ -78,7 +78,6 @@ struct ad2s1210_state {
>  	/** The external oscillator frequency in Hz. */
>  	unsigned long clkin_hz;
>  	unsigned int fexcit;
> -	bool hysteresis;
>  	u8 resolution;
>  	/** For reading raw sample value via SPI. */
>  	__be16 sample __aligned(IIO_DMA_MINALIGN);
> @@ -430,6 +429,35 @@ static int ad2s1210_single_conversion(struct ad2s1210_state *st,
>  	return ret;
>  }
>  
> +static int ad2s1210_get_hysteresis(struct ad2s1210_state *st, int *val)
> +{
> +	int ret;
> +
> +	mutex_lock(&st->lock);
> +	ret = regmap_test_bits(st->regmap, AD2S1210_REG_CONTROL,
> +			       AD2S1210_ENABLE_HYSTERESIS);
> +	mutex_unlock(&st->lock);
> +
> +	if (ret < 0)
> +		return ret;
> +
> +	*val = !!ret;

regmap_test_bits() is documented as returning 1 or 0 anyway.
So this !! isn't necessary..

> +	return IIO_VAL_INT;
> +}
> +
> +static int ad2s1210_set_hysteresis(struct ad2s1210_state *st, int val)
> +{
> +	int ret;
> +
> +	mutex_lock(&st->lock);
> +	ret = regmap_update_bits(st->regmap, AD2S1210_REG_CONTROL,
> +				 AD2S1210_ENABLE_HYSTERESIS,
> +				 val ? AD2S1210_ENABLE_HYSTERESIS : 0);
> +	mutex_unlock(&st->lock);
> +
> +	return ret;
> +}
> +
>  static const int ad2s1210_velocity_scale[] = {
>  	17089132, /* 8.192MHz / (2*pi * 2500 / 2^15) */
>  	42722830, /* 8.192MHz / (2*pi * 1000 / 2^15) */
> @@ -462,7 +490,55 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
>  		default:
>  			return -EINVAL;
>  		}
> +	case IIO_CHAN_INFO_HYSTERESIS:
> +		switch (chan->type) {
> +		case IIO_ANGL:
> +			return ad2s1210_get_hysteresis(st, val);
> +		default:
> +			return -EINVAL;
> +		}
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int ad2s1210_read_avail(struct iio_dev *indio_dev,
> +			       struct iio_chan_spec const *chan,
> +			       const int **vals, int *type,
> +			       int *length, long mask)
> +{
> +	static const int hysteresis_available[] = { 0, 1 };
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_HYSTERESIS:
> +		switch (chan->type) {
> +		case IIO_ANGL:
> +			*vals = hysteresis_available;
> +			*type = IIO_VAL_INT;
> +			*length = ARRAY_SIZE(hysteresis_available);
> +			return IIO_AVAIL_LIST;
> +		default:
> +			return -EINVAL;
> +		}
> +	default:
> +		return -EINVAL;
> +	}
> +}
>  
> +static int ad2s1210_write_raw(struct iio_dev *indio_dev,
> +			      struct iio_chan_spec const *chan,
> +			      int val, int val2, long mask)
> +{
> +	struct ad2s1210_state *st = iio_priv(indio_dev);
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_HYSTERESIS:
> +		switch (chan->type) {
> +		case IIO_ANGL:
> +			return ad2s1210_set_hysteresis(st, val);
> +		default:
> +			return -EINVAL;
> +		}
>  	default:
>  		return -EINVAL;
>  	}
> @@ -503,7 +579,10 @@ static const struct iio_chan_spec ad2s1210_channels[] = {
>  		.indexed = 1,
>  		.channel = 0,
>  		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
> -				      BIT(IIO_CHAN_INFO_SCALE),
> +				      BIT(IIO_CHAN_INFO_SCALE) |
> +				      BIT(IIO_CHAN_INFO_HYSTERESIS),
> +		.info_mask_separate_available =
> +					BIT(IIO_CHAN_INFO_HYSTERESIS),
>  	}, {
>  		.type = IIO_ANGL_VEL,
>  		.indexed = 1,
> @@ -581,6 +660,8 @@ static int ad2s1210_debugfs_reg_access(struct iio_dev *indio_dev,
>  
>  static const struct iio_info ad2s1210_info = {
>  	.read_raw = ad2s1210_read_raw,
> +	.read_avail = ad2s1210_read_avail,
> +	.write_raw = ad2s1210_write_raw,
>  	.attrs = &ad2s1210_attribute_group,
>  	.debugfs_reg_access = &ad2s1210_debugfs_reg_access,
>  };
> @@ -696,7 +777,6 @@ static int ad2s1210_probe(struct spi_device *spi)
>  
>  	mutex_init(&st->lock);
>  	st->sdev = spi;
> -	st->hysteresis = true;
>  	st->resolution = 12;
>  	st->fexcit = AD2S1210_DEF_EXCIT;
>  
> 


