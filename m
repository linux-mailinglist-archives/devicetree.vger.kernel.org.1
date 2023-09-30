Return-Path: <devicetree+bounces-4821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9460A7B4111
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 16:43:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 38BDA28233F
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 14:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A9AE156DC;
	Sat, 30 Sep 2023 14:43:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8482D2F3E;
	Sat, 30 Sep 2023 14:43:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1879CC433C8;
	Sat, 30 Sep 2023 14:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696084996;
	bh=F6G/vdejBPJ1u5dK3AA5rnKFIosomhRKDeKXr/D8o+g=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=u+5JeH5Iopwv8kj0CGhe4MRJuHKx6wPzTVw8STxM62UR2yamf9oSlffJiaeUoVf0V
	 vOWJSmS+0Ah1i7JGY9cykkxyo3V6AZTWnF/LBZiZAWSeoKOFqfWTf4BnmBiC5dzj04
	 uQltbSQm2UahMx1jUAFU0RQE0iAtW6rkjyvKnsZe2w0W3VVzhZG93Of8uSQAvpCviA
	 lQpqqHwESrA6z901G6CaaIdByXEtti/DuaRUqPaERpzznML6nxK2gpUvzM9m3DUSy0
	 w0aEbMlGPPuSZ85dpizRZdd9/1ZuNxSTFPmaQyffoj8PleuUwraG5NekbJi8zShcBw
	 AHXYju6WcgVeA==
Date: Sat, 30 Sep 2023 15:43:15 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-staging@lists.linux.dev, David Lechner <david@lechnology.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Axel Haslam <ahaslam@baylibre.com>, Philip Molloy
 <pmolloy@baylibre.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 08/27] staging: iio: resolver: ad2s1210: implement
 IIO_CHAN_INFO_SCALE
Message-ID: <20230930154315.4fd10b83@jic23-huawei>
In-Reply-To: <20230929-ad2s1210-mainline-v3-8-fa4364281745@baylibre.com>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
	<20230929-ad2s1210-mainline-v3-8-fa4364281745@baylibre.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 29 Sep 2023 12:23:13 -0500
David Lechner <dlechner@baylibre.com> wrote:

> From: David Lechner <david@lechnology.com>
> 
> From: David Lechner <dlechner@baylibre.com>
> 
> This adds an implementation of IIO_CHAN_INFO_SCALE to the ad2s1210
> resolver driver. This allows userspace to get the scale factor for the
> raw values.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
Applied

Thanks,

> ---
> 
> v3 changes:
> * Split ad2s1210_read_raw() into two functions to reduce complexity.
> * Use early return instead of break in switch statements.
> 
>  drivers/staging/iio/resolver/ad2s1210.c | 53 ++++++++++++++++++++++++++++-----
>  1 file changed, 45 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
> index f9774dff2df4..a710598a64f0 100644
> --- a/drivers/staging/iio/resolver/ad2s1210.c
> +++ b/drivers/staging/iio/resolver/ad2s1210.c
> @@ -461,13 +461,10 @@ static ssize_t ad2s1210_store_reg(struct device *dev,
>  	return ret < 0 ? ret : len;
>  }
>  
> -static int ad2s1210_read_raw(struct iio_dev *indio_dev,
> -			     struct iio_chan_spec const *chan,
> -			     int *val,
> -			     int *val2,
> -			     long m)
> +static int ad2s1210_single_conversion(struct ad2s1210_state *st,
> +				      struct iio_chan_spec const *chan,
> +				      int *val)
>  {
> -	struct ad2s1210_state *st = iio_priv(indio_dev);
>  	int ret = 0;
>  
>  	mutex_lock(&st->lock);
> @@ -514,6 +511,44 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
>  	return ret;
>  }
>  
> +static const int ad2s1210_velocity_scale[] = {
> +	17089132, /* 8.192MHz / (2*pi * 2500 / 2^15) */
> +	42722830, /* 8.192MHz / (2*pi * 1000 / 2^15) */
> +	85445659, /* 8.192MHz / (2*pi * 500 / 2^15) */
> +	341782638, /* 8.192MHz / (2*pi * 125 / 2^15) */
> +};
> +
> +static int ad2s1210_read_raw(struct iio_dev *indio_dev,
> +			     struct iio_chan_spec const *chan,
> +			     int *val,
> +			     int *val2,
> +			     long mask)
> +{
> +	struct ad2s1210_state *st = iio_priv(indio_dev);
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_RAW:
> +		return ad2s1210_single_conversion(st, chan, val);
> +	case IIO_CHAN_INFO_SCALE:
> +		switch (chan->type) {
> +		case IIO_ANGL:
> +			/* approx 0.3 arc min converted to radians */
> +			*val = 0;
> +			*val2 = 95874;
> +			return IIO_VAL_INT_PLUS_NANO;
> +		case IIO_ANGL_VEL:
> +			*val = st->fclkin;
> +			*val2 = ad2s1210_velocity_scale[st->resolution];
> +			return IIO_VAL_FRACTIONAL;
> +		default:
> +			return -EINVAL;
> +		}
> +
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
>  static IIO_DEVICE_ATTR(fclkin, 0644,
>  		       ad2s1210_show_fclkin, ad2s1210_store_fclkin, 0);
>  static IIO_DEVICE_ATTR(fexcit, 0644,
> @@ -552,12 +587,14 @@ static const struct iio_chan_spec ad2s1210_channels[] = {
>  		.type = IIO_ANGL,
>  		.indexed = 1,
>  		.channel = 0,
> -		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
> +				      BIT(IIO_CHAN_INFO_SCALE),
>  	}, {
>  		.type = IIO_ANGL_VEL,
>  		.indexed = 1,
>  		.channel = 0,
> -		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
> +				      BIT(IIO_CHAN_INFO_SCALE),
>  	}
>  };
>  
> 


