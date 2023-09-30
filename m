Return-Path: <devicetree+bounces-4852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C987B4197
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:29:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 53BCC2833A2
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:29:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6957171A0;
	Sat, 30 Sep 2023 15:29:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2021168D6;
	Sat, 30 Sep 2023 15:29:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 302B1C433C8;
	Sat, 30 Sep 2023 15:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696087759;
	bh=R5UtWysv7jm9JER93LbioIFgqN17rbuLlhw7fAJgia0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=lkx+2xmL/pceqmuXnxse2igy7L0rhRxT7w8HLgZVpS+NfRiBY61CWjZIGkpsmrY8W
	 1A5NbRHuvF+bDVtkZj9EE1+M0vVK5e6+kHocqxEiH4bR4zCjN4irC+oeULkb9EDbqS
	 PNDRDnW2QuwqloR8ddyKbPjix7lRG4JT8t4Cwf5kWSwidA9TyBjNqu/D5sHAqMrhHP
	 ejhHh6entrjK2YkiTO29fRd+l3qIeyShfzJIkyCRN37G+rC7TrJ5qbOWRACboJpKWH
	 FG9dH3vOXczCTC94mwE/I8mPkXKTWDARfm87nXEybtSS9fmw9g+UQQAtDhZ1LK87ew
	 LS1LPylsLBpBQ==
Date: Sat, 30 Sep 2023 16:29:17 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-staging@lists.linux.dev, David Lechner <david@lechnology.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Axel Haslam <ahaslam@baylibre.com>, Philip Molloy
 <pmolloy@baylibre.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 21/27] staging: iio: resolver: ad2s1210: convert LOT
 threshold attrs to event attrs
Message-ID: <20230930162917.7e289f77@jic23-huawei>
In-Reply-To: <20230929-ad2s1210-mainline-v3-21-fa4364281745@baylibre.com>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
	<20230929-ad2s1210-mainline-v3-21-fa4364281745@baylibre.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 29 Sep 2023 12:23:26 -0500
David Lechner <dlechner@baylibre.com> wrote:

> From: David Lechner <david@lechnology.com>
> 
> From: David Lechner <dlechner@baylibre.com>
> 
> The AD2S1210 monitors the internal error signal (difference between
> estimated angle and measured angle) to determine a loss of position
> tracking (LOT) condition. When the error value exceeds a threshold, a
> fault is triggered. This threshold is user-configurable.
> 
> This patch converts the custom lot_high_thrd and lot_low_thrd attributes
> in the ad2s1210 driver to standard event attributes. This will allow
> tooling to be able to expose these in a generic way.
> 
> Since the low threshold determines the hysteresis, it requires some
> special handling to expose the difference between the high and low
> register values as the hysteresis instead of exposing the low register
> value directly.
> 
> The attributes also return the values in radians now as required by the
> ABI.
> 
> Actually emitting the fault event will be done in a later patch.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---

A style comment inline. Otherwise this an any patches before it I skipped
commenting on look fine to me.


> +
> +static int ad2s1210_get_lot_low_threshold(struct ad2s1210_state *st,
> +					  int *val, int *val2)
> +{
> +	unsigned int high_reg_val, low_reg_val;
> +	int ret;
> +
> +	mutex_lock(&st->lock);
> +	ret = regmap_read(st->regmap, AD2S1210_REG_LOT_HIGH_THRD, &high_reg_val);
> +	if (ret < 0)
> +		goto error_ret;
> +
> +	ret = regmap_read(st->regmap, AD2S1210_REG_LOT_LOW_THRD, &low_reg_val);
> +
A separate error path is going to be easier to read.

	return IIO_VAL_INT_PLUS_MICRO;

error_ret:
	mutex_unlock(&st->lock);

	return ret;

Of make use of the new stuff in cleanup.h etc.  something like.

	scoped_guard(mutex)(&st->lock) {
		ret = regmap_read(st->regmap, ...)
		if (ret)
			return ret;

		ret = regmap_read(...)
		if (ret)
			return ret;
	}
	
	/* sysfs value is hysteresis rather than actual low value */

In general you could make could use o
guard(mutex)(&st->lock);
in the other functions where  you hold the lock to the end of the function.

Could do that as a follow on patch though and as that stuff is all
very new, I'm not going to mind if you don't want to use it at all and
just use the approach above.

> +error_ret:
> +	mutex_unlock(&st->lock);
> +
> +	if (ret < 0)
> +		return ret;
> +
> +	/* sysfs value is hysteresis rather than actual low value */
> +	*val = 0;
> +	*val2 = (high_reg_val - low_reg_val) *
> +		ad2s1210_lot_threshold_urad_per_lsb[st->resolution];
> +	return IIO_VAL_INT_PLUS_MICRO;
> +}
> +
> +static int ad2s1210_set_lot_low_threshold(struct ad2s1210_state *st,
> +					  int val, int val2)
> +{
> +	unsigned int reg_val, hysteresis;
> +	int ret;
> +
> +	/* all valid values are between 0 and pi/4 radians */
> +	if (val != 0)
> +		return -EINVAL;
> +
> +	hysteresis = val2 / ad2s1210_lot_threshold_urad_per_lsb[st->resolution];
> +
> +	mutex_lock(&st->lock);
> +	ret = regmap_read(st->regmap, AD2S1210_REG_LOT_HIGH_THRD, &reg_val);
> +	if (ret < 0)
> +		goto error_ret;
> +
> +	ret = regmap_write(st->regmap, AD2S1210_REG_LOT_LOW_THRD,
> +			   reg_val - hysteresis);
> +
> +error_ret:
> +	mutex_unlock(&st->lock);
> +
> +	return ret;
> +}
>


