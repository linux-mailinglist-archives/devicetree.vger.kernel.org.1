Return-Path: <devicetree+bounces-2816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 549D57ACB19
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:38:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 6937A1C2040C
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 17:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B191DDA6;
	Sun, 24 Sep 2023 17:38:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DC4D280;
	Sun, 24 Sep 2023 17:38:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0948DC433C8;
	Sun, 24 Sep 2023 17:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695577100;
	bh=BQ5hJUZCk+D8kJihep0JXtG+NKFL4v+aQ3hv/mSOK2k=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=HG6LIT8UCBTEPEU7nDPIy7jSFYsbr4XJ+J1o0bY4pWwJijiLGd+9NGCPHRYmeLI1L
	 rgSHtiJ504WbhVy6Vwa6tQNRXf6nfQkh8Nddair7UWEyJMc/7jQNU41NmTGU6cGJof
	 lkOYawOZ+PGg1rXyQDaQNEXakm5TQ+MVD3RkKXQ6GGQE2QRgnvwAzPe1bZnLmL83LE
	 qzwzxJL3oM65L6MdFhpZr2Exib+6WoWV/mvMpdqQPzR1bekxe46OnS+xlcROWIb3YX
	 GbwE/9SxrxsZ/+I4nYOVa0rbD8gvw8fQ2WIHGir1BHkU5mTQAprwvxy+IaKvoTRRao
	 5Yne+xo/5HXWw==
Date: Sun, 24 Sep 2023 18:38:11 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Axel Haslam <ahaslam@baylibre.com>, Philip Molloy
 <pmolloy@baylibre.com>
Subject: Re: [PATCH v2 07/19] staging: iio: resolver: ad2s1210: implement
 IIO_CHAN_INFO_SCALE
Message-ID: <20230924183811.5ca5efe8@jic23-huawei>
In-Reply-To: <20230921144400.62380-8-dlechner@baylibre.com>
References: <20230921144400.62380-1-dlechner@baylibre.com>
	<20230921144400.62380-8-dlechner@baylibre.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 21 Sep 2023 09:43:48 -0500
David Lechner <dlechner@baylibre.com> wrote:

> This adds an implementation of IIO_CHAN_INFO_SCALE to the ad2s1210
> resolver driver. This allows userspace to get the scale factor for the
> raw values.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>

A few comments on how to avoid the increasing code complexity.

Jonathan

> ---
>  drivers/staging/iio/resolver/ad2s1210.c | 107 ++++++++++++++++--------
>  1 file changed, 72 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
> index 985b8fecd65a..95d43b241a75 100644
> --- a/drivers/staging/iio/resolver/ad2s1210.c
> +++ b/drivers/staging/iio/resolver/ad2s1210.c
> @@ -458,56 +458,91 @@ static ssize_t ad2s1210_store_reg(struct device *dev,
>  	return ret < 0 ? ret : len;
>  }
>  
> +static const int ad2s1210_velocity_scale[] = {
> +	17089132, /* 8.192MHz / (2*pi * 2500 / 2^15) */
> +	42722830, /* 8.192MHz / (2*pi * 1000 / 2^15) */
> +	85445659, /* 8.192MHz / (2*pi * 500 / 2^15) */
> +	341782638, /* 8.192MHz / (2*pi * 125 / 2^15) */
> +};
> +
>  static int ad2s1210_read_raw(struct iio_dev *indio_dev,
>  			     struct iio_chan_spec const *chan,
>  			     int *val,
>  			     int *val2,
> -			     long m)
> +			     long mask)

:(  It hasn't been a mask for a long time, but we've not fixed the naming.

I guess this doesn't make it anyway worse though.

>  {
>  	struct ad2s1210_state *st = iio_priv(indio_dev);
>  	int ret = 0;
>  
> -	mutex_lock(&st->lock);
> -	gpiod_set_value(st->gpios[AD2S1210_SAMPLE], 0);
> -	/* delay (6 * tck + 20) nano seconds */
> -	udelay(1);
> +	switch (mask) {
> +	case IIO_CHAN_INFO_RAW:
> +		mutex_lock(&st->lock);
> +		gpiod_set_value(st->gpios[AD2S1210_SAMPLE], 0);
> +		/* delay (6 * tck + 20) nano seconds */
> +		udelay(1);
> +
> +		switch (chan->type) {
> +		case IIO_ANGL:
> +			ad2s1210_set_mode(MOD_POS, st);
> +			break;
> +		case IIO_ANGL_VEL:
> +			ad2s1210_set_mode(MOD_VEL, st);
> +			break;
> +		default:
> +			ret = -EINVAL;
> +			break;
> +		}
> +		if (ret < 0)
> +			goto error_info_raw;
> +		ret = spi_read(st->sdev, st->rx, 2);
> +		if (ret < 0)
> +			goto error_info_raw;
> +
> +		switch (chan->type) {
> +		case IIO_ANGL:
> +			*val = be16_to_cpup((__be16 *)st->rx);
> +			ret = IIO_VAL_INT;
> +			break;
> +		case IIO_ANGL_VEL:
> +			*val = (s16)be16_to_cpup((__be16 *)st->rx);
> +			ret = IIO_VAL_INT;
> +			break;
> +		default:
> +			ret = -EINVAL;
> +			break;
> +		}
>  
> -	switch (chan->type) {
> -	case IIO_ANGL:
> -		ad2s1210_set_mode(MOD_POS, st);
> -		break;
> -	case IIO_ANGL_VEL:
> -		ad2s1210_set_mode(MOD_VEL, st);
> -		break;
> -	default:
> -		ret = -EINVAL;
> +error_info_raw:
> +		gpiod_set_value(st->gpios[AD2S1210_SAMPLE], 1);
> +		/* delay (2 * tck + 20) nano seconds */
> +		udelay(1);
> +		mutex_unlock(&st->lock);
I'm not a great fan of code that does gotos within a switch
block if we can avoid it - I find them hard to review.  Perhaps
it's time to factor out the channel reading code into a small
function which can return directly, leaving just the lock manipulation
and gpio manipulation out here. The function is getting too long
and complicated anyway so that is another justification for splitting it up.


>  		break;
> -	}
> -	if (ret < 0)
> -		goto error_ret;
> -	ret = spi_read(st->sdev, st->rx, 2);
> -	if (ret < 0)
> -		goto error_ret;
>  
> -	switch (chan->type) {
> -	case IIO_ANGL:
> -		*val = be16_to_cpup((__be16 *)st->rx);
> -		ret = IIO_VAL_INT;
> -		break;
> -	case IIO_ANGL_VEL:
> -		*val = (s16)be16_to_cpup((__be16 *)st->rx);
> -		ret = IIO_VAL_INT;
> +	case IIO_CHAN_INFO_SCALE:
> +		switch (chan->type) {
> +		case IIO_ANGL:
> +			/* approx 0.3 arc min converted to radians */
> +			*val = 0;
> +			*val2 = 95874;
> +			ret = IIO_VAL_INT_PLUS_NANO;
For these, why not return directly?  Gives more readable code if
you are following particular paths as no need to go see where
we end up up after here as nothing else to do.


> +			break;
> +		case IIO_ANGL_VEL:
> +			*val = st->fclkin;
> +			*val2 = ad2s1210_velocity_scale[st->resolution];
> +			ret = IIO_VAL_FRACTIONAL;
> +			break;
> +		default:
> +			ret = -EINVAL;
> +			break;
> +		}
>  		break;
> +
>  	default:
>  		ret = -EINVAL;
>  		break;
>  	}
>  
> -error_ret:
> -	gpiod_set_value(st->gpios[AD2S1210_SAMPLE], 1);
> -	/* delay (2 * tck + 20) nano seconds */
> -	udelay(1);
> -	mutex_unlock(&st->lock);
>  	return ret;
>  }
>  
> @@ -549,12 +584,14 @@ static const struct iio_chan_spec ad2s1210_channels[] = {
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


