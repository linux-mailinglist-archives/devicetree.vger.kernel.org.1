Return-Path: <devicetree+bounces-4820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C05BD7B410F
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 16:41:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 72C2128233F
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 14:41:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08F9C156DC;
	Sat, 30 Sep 2023 14:41:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E701F2F3E;
	Sat, 30 Sep 2023 14:41:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3EEEC433C7;
	Sat, 30 Sep 2023 14:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696084877;
	bh=Q/SSlLwnEG93mS+peUVA+bm/lwHeSP3DeLhQ0SjVwVg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=DuLwmxsEhBwVUGDNMF7910VE7CNwzlMCX08ANjRzjn7w0tTk29ugCIi0qwqBCwzkO
	 FGxoJcm7nTQxzyzP+MPich6bayxPjpwG5+VErt1hKoLJNJoxy2SNETjByqxeAkL9EI
	 aECJysPt0AgVQMJF6OLHfK+MGo3+M7oT9B2s/3OnhY1G9RFAKaC3IC5wTNzERl/Y/0
	 USaWZ6gMhFkQ1zX8S31FrD8tIFJmruSmMbwHpnLPnaLWKpGSDTzB42ULQNgjpXr3wt
	 k08i0rc+tchp6L9a/GzWcILNh0moI6uagkmg5nDd4SKPlS1Mx6H3VD0hO7+o2crD/f
	 0E+FPPjpIR+Sg==
Date: Sat, 30 Sep 2023 15:41:15 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-staging@lists.linux.dev, David Lechner <david@lechnology.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Axel Haslam <ahaslam@baylibre.com>, Philip Molloy
 <pmolloy@baylibre.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 07/27] staging: iio: resolver: ad2s1210: always use
 16-bit value for raw read
Message-ID: <20230930154115.3a6e3fea@jic23-huawei>
In-Reply-To: <20230929-ad2s1210-mainline-v3-7-fa4364281745@baylibre.com>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
	<20230929-ad2s1210-mainline-v3-7-fa4364281745@baylibre.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 29 Sep 2023 12:23:12 -0500
David Lechner <dlechner@baylibre.com> wrote:

> From: David Lechner <david@lechnology.com>
> 
> From: David Lechner <dlechner@baylibre.com>
> 
> This removes the special handling for resolutions lower than 16 bits.
> This will allow us to use a fixed scale independent of the resolution.
> 
> A new sample field is added to store the raw data instead of reusing
> the config mode rx buffer so that we don't have to do a cast or worry
> about unaligned access.
> 
> Also, for the record, according to the datasheet, the logic for the
> special handling based on hysteresis that was removed was incorrect.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
LGTM

Applied.

Thanks,

Jonathan

> ---
> 
> v3 changes:
> * Added __be16 sample field to state struct and use instead of rx buffer.
> 
>  drivers/staging/iio/resolver/ad2s1210.c | 24 ++++++++----------------
>  1 file changed, 8 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
> index 832f86bf15e5..f9774dff2df4 100644
> --- a/drivers/staging/iio/resolver/ad2s1210.c
> +++ b/drivers/staging/iio/resolver/ad2s1210.c
> @@ -95,7 +95,11 @@ struct ad2s1210_state {
>  	bool hysteresis;
>  	u8 resolution;
>  	enum ad2s1210_mode mode;
> -	u8 rx[2] __aligned(IIO_DMA_MINALIGN);
> +	/** For reading raw sample value via SPI. */
> +	__be16 sample __aligned(IIO_DMA_MINALIGN);
> +	/** SPI transmit buffer. */
> +	u8 rx[2];
> +	/** SPI receive buffer. */
>  	u8 tx[2];
>  };
>  
> @@ -464,10 +468,7 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
>  			     long m)
>  {
>  	struct ad2s1210_state *st = iio_priv(indio_dev);
> -	u16 negative;
>  	int ret = 0;
> -	u16 pos;
> -	s16 vel;
>  
>  	mutex_lock(&st->lock);
>  	gpiod_set_value(st->gpios[AD2S1210_SAMPLE], 0);
> @@ -487,26 +488,17 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
>  	}
>  	if (ret < 0)
>  		goto error_ret;
> -	ret = spi_read(st->sdev, st->rx, 2);
> +	ret = spi_read(st->sdev, &st->sample, 2);
>  	if (ret < 0)
>  		goto error_ret;
>  
>  	switch (chan->type) {
>  	case IIO_ANGL:
> -		pos = be16_to_cpup((__be16 *)st->rx);
> -		if (st->hysteresis)
> -			pos >>= 16 - st->resolution;
> -		*val = pos;
> +		*val = be16_to_cpu(st->sample);
>  		ret = IIO_VAL_INT;
>  		break;
>  	case IIO_ANGL_VEL:
> -		vel = be16_to_cpup((__be16 *)st->rx);
> -		vel >>= 16 - st->resolution;
> -		if (vel & 0x8000) {
> -			negative = (0xffff >> st->resolution) << st->resolution;
> -			vel |= negative;
> -		}
> -		*val = vel;
> +		*val = (s16)be16_to_cpu(st->sample);
>  		ret = IIO_VAL_INT;
>  		break;
>  	default:
> 


