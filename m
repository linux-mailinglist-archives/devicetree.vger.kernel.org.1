Return-Path: <devicetree+bounces-4845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CA67B4179
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:08:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id C5108B20CA9
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D4DC168AD;
	Sat, 30 Sep 2023 15:08:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DB71549E;
	Sat, 30 Sep 2023 15:08:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F8B3C433C8;
	Sat, 30 Sep 2023 15:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696086491;
	bh=xFQwlGsVJrRdLbMquCYmV2QHIZ9yWBhJhYK0FlMnSbs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=T4+6XF1Dwu+NUfqV/U/XHSiYF36bscNCZ0G3JNarJXX6855XYuUFELp4Vu7HqtoJw
	 Y9mTA4mIuGiarj3a4GEcKvqlcUgbFRk3pDP4gfD6mVds954UZsMpTF1gXPXbcD2f/w
	 vb+SwlnSvCNSwTzjsfQwavPzuTmTdE6nb88ZUwQDAAIls3Ap/SZHLn95saLHuYxB+d
	 Ge9avnv0Jpz+0WpFkJQu02So9TJe6/fDCyLgCETrJmgX+mfAfSKaCRnVg6pgc6kmIR
	 EoCR9iN5zTjurt7v9rSoaZWR+/p2HPRkUS2GCUMRpN/311LdO7kQRATOLRFlsWCj2h
	 YSVdIbaVW/PNA==
Date: Sat, 30 Sep 2023 16:08:11 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-staging@lists.linux.dev, David Lechner <david@lechnology.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Axel Haslam <ahaslam@baylibre.com>, Philip Molloy
 <pmolloy@baylibre.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 16/27] staging: iio: resolver: ad2s1210: read
 excitation frequency from control register
Message-ID: <20230930160811.6b330da3@jic23-huawei>
In-Reply-To: <20230929-ad2s1210-mainline-v3-16-fa4364281745@baylibre.com>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
	<20230929-ad2s1210-mainline-v3-16-fa4364281745@baylibre.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 29 Sep 2023 12:23:21 -0500
David Lechner <dlechner@baylibre.com> wrote:

> From: David Lechner <david@lechnology.com>
> 
> From: David Lechner <dlechner@baylibre.com>
> 
> This modifies the ad2s1210_show_fexcit() function to read the excitation
> frequency from the control register. This way we don't have to keep
> track of the value and don't risk returning a stale value.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
Applied.

A bit more fuzz with this one as context was different for the first hunk.

Jonathan

> ---
> 
> v3 changes: None
> 
>  drivers/staging/iio/resolver/ad2s1210.c | 19 +++++++++++++++----
>  1 file changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
> index 28ab877e1bc0..b15d71b17266 100644
> --- a/drivers/staging/iio/resolver/ad2s1210.c
> +++ b/drivers/staging/iio/resolver/ad2s1210.c
> @@ -76,7 +76,6 @@ struct ad2s1210_state {
>  	struct regmap *regmap;
>  	/** The external oscillator frequency in Hz. */
>  	unsigned long clkin_hz;
> -	unsigned int fexcit;
>  	u8 resolution;
>  	/** For reading raw sample value via SPI. */
>  	__be16 sample __aligned(IIO_DMA_MINALIGN);
> @@ -206,8 +205,6 @@ static int ad2s1210_reinit_excitation_frequency(struct ad2s1210_state *st,
>  	if (ret < 0)
>  		return ret;
>  
> -	st->fexcit = fexcit;
> -
>  	/*
>  	 * Software reset reinitializes the excitation frequency output.
>  	 * It does not reset any of the configuration registers.
> @@ -232,8 +229,22 @@ static ssize_t ad2s1210_show_fexcit(struct device *dev,
>  				    char *buf)
>  {
>  	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
> +	unsigned int value;
> +	u16 fexcit;
> +	int ret;
>  
> -	return sprintf(buf, "%u\n", st->fexcit);
> +	mutex_lock(&st->lock);
> +	ret = regmap_read(st->regmap, AD2S1210_REG_EXCIT_FREQ, &value);
> +	if (ret < 0)
> +		goto error_ret;
> +
> +	fexcit = value * st->clkin_hz / (1 << 15);
> +
> +	ret = sprintf(buf, "%u\n", fexcit);
> +
> +error_ret:
> +	mutex_unlock(&st->lock);
> +	return ret;
>  }
>  
>  static ssize_t ad2s1210_store_fexcit(struct device *dev,
> 


