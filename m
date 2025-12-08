Return-Path: <devicetree+bounces-245282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 501F2CAE365
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 22:18:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 876BF3054CBC
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 21:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D0B52C0F6F;
	Mon,  8 Dec 2025 21:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aVpPqNLb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A5F2236E9
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 21:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765228662; cv=none; b=rue2nFHOYDdtobCCHy+fCS8c64yYzu+bsuHcSaTx5DyqvVTH11jeOdpBdx4ToJYWRkQRRHcc7zgkAq6DfHRImEEprAR79aVxGyzg7kyluJh58m83bDDN1uxs7JfCKA35wGxyh+s+NWNR/QDc2hd4LMRKzEeZg6d7JKdAPyO1Mvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765228662; c=relaxed/simple;
	bh=NNqIvuGpLjQMPEj4QC/nBJ+WPSIvMTF2BhAIRM29pSU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jGA0w5j3Q16zMGP7rv0O9y/5svUsC9HWyPP1OM44nlFgf+UIEDLGBJXRczrcwH6XB7ySnw7kqxrJt7kASbGiEjtoZ8E6yM6qNLCaCDm2N+ZqqcKKAR+2oBmJtu88K8LiK0wxBB8Oyj0XQEBO4IxsQ3ewL39v6hH4U6KPv/eV2I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aVpPqNLb; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-42b47f662a0so2983005f8f.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 13:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765228657; x=1765833457; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TjAa+tL8foDO4YKK+oOCQIucxN94BgeKXz19r3glztc=;
        b=aVpPqNLbwgtAWViJfxpEtUeN2oplDsYSe//8dM9eJK0JtVUJ1Fay0s1isIDIeffrb8
         jjWnnz42rgp0Y2mZ+iQF2ZLEl5VS2JLiP6Bve0PtBxEFUFMY8HvyLOR+fJQG5sf/83b7
         YAYMEbPJTdwNb+hwqLDBeRXadX2f7mY0SzweEc+zfcPef3Rhmp4VIr+2BpYklFeWIhiz
         aYMykyZmHfULkQ6d0iMQk0rg/REl26hciJdoQYgnZgC+GEYsb+2P9J/tRiDYDMXROG6E
         kWhQxt01xDE2DrUdn+J6lwgYACcAKAJLUzclALPIpqHZu/EMkZJN1i4M4VdhqQ5jergr
         eZ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765228657; x=1765833457;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TjAa+tL8foDO4YKK+oOCQIucxN94BgeKXz19r3glztc=;
        b=vx1SFACsLgbKJMyPtORy8ZpGVB7zL7IbiJ0kfpTDhl8CTr02Xt+FAbgQAx3kvjsutw
         pSavhXImN46kvjSJVfUQGgTNjqcIqVmZ5Nu2Rosyo5gGIKJye3rArR04MGPjNkJ4CrTg
         8H6JpMfkghYW4+uSyiJTb6dHWSEOWV4z9I1zNF/j7zcBhCi0iiFnL7KJo3CBZlDWTsWt
         k2JrXzfnJOKPkMzY1keIKY5z7bI6GQJWhrehJ6fdpgx9OwyT5b6lf7uh52Al/i/n7UFY
         S4882n+W+4dz6t35QjBI4v0A5mVLm4ab2LiF/qtz7yCTjHtBORCbrJH1H07NhUfHcXDl
         cJwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVutQU3JzfSRSY2Rj7P9arL2GzrBlufi4wo3s03xcOZRuQDUrnJkV8J8jZoMFEhlcyI/vRbMfaKc97R@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+8JjZ0AO9ptNhy+amutgVbSO/51eOVRgxe6wKgUrFKTZqPMYv
	LvWiNjYbYTATZgeNGaO9g70RSEPoOGLEUt8nU6JClvDwA0V6UnwjuP9y
X-Gm-Gg: ASbGncu+NQdBcDRjEE2nx3tGn375goXZ7AOlyKMHgqjyM7CLdyqqWr7Dg3K7bbu+wWk
	2BSqzUn5lKRVhPJjs9dZGR00IQ4WKspxP0jdSgjTgc68Oh1l0wHHF5n4jziL8z1tfI1EvBVd3rM
	2tnii2CFVgp4Q4sTgetbwhitw5zqduRHJv2erWeLKcsOqzWdqOqbjY8wCWteyW/EtRjcSzvpHMT
	taUuv/kJiPUcg2uMHcHVoVbuEOR5XycEuQsv0SJjBsqpG5bKwaiccan1Rfmmsnxva2P2cjxM3hl
	CiiME0zPS5rNPybhqs5H2ifITS/dS8VWSe9tzjmLo6V7xRFfLRpK/jrkTobrlJZdmx5iuEyygwI
	hO2ODvarALvoMLpzpDpYLgsvZSb0/DMdsgNArTE4tAwnJZsmeR6vqr2klAx7Z+V+Nhvpc+Vlr+U
	zmmsDBh8tofDR8+Sq2P+OKYRVvuIO7yM89txWt/HOZhOl4EcR/LzLl5n2LfN8RLBd9+OvxpK+rN
	4TWHg==
X-Google-Smtp-Source: AGHT+IGNd59VvLmychchreSMZoeBMpONDnnmpIEaET4vlM4skg+riGq4zi2jQMnjOwK9B+g2Ewuf+A==
X-Received: by 2002:a05:6000:178d:b0:42f:8817:7ed with SMTP id ffacd0b85a97d-42f9df56428mr882799f8f.30.1765228657426;
        Mon, 08 Dec 2025 13:17:37 -0800 (PST)
Received: from HYB-DlYm71t3hSl.ad.analog.com ([2001:a61:1226:7701:cdbc:9893:8abf:1309])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d2226e7sm28774409f8f.27.2025.12.08.13.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 13:17:37 -0800 (PST)
Date: Mon, 8 Dec 2025 22:17:20 +0100
From: Jorge Marques <gastmaier@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Jorge Marques <jorge.marques@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, linux-gpio@vger.kernel.org, 
	"Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH v3 5/9] iio: adc: ad4062: Add IIO Trigger support
Message-ID: <h6d6bjuhb4ovnz5jghj4h3vkcqzypzbdgi5ufdmbv24x34a3px@nawt5lt7dsux>
References: <20251205-staging-ad4062-v3-0-8761355f9c66@analog.com>
 <20251205-staging-ad4062-v3-5-8761355f9c66@analog.com>
 <20251206174503.3c008cea@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251206174503.3c008cea@jic23-huawei>

On Sat, Dec 06, 2025 at 05:45:03PM +0000, Jonathan Cameron wrote:
> On Fri, 5 Dec 2025 16:12:06 +0100
> Jorge Marques <jorge.marques@analog.com> wrote:
> 
Hi Jonathan,
> > Adds support for IIO Trigger. Optionally, gp1 is assigned as Data Ready
> > signal, if not present, fallback to an I3C IBI with the same role.
> > The software trigger is allocated by the device, but must be attached by
> > the user before enabling the buffer. The purpose is to not impede
> > removing the driver due to the increased reference count when
> > iio_trigger_set_immutable() or iio_trigger_get() is used.
> > 
> > Signed-off-by: Jorge Marques <jorge.marques@analog.com>
> 
> +CC Rafael; I'd like input on the ACQUIRE + take extra reference pattern
> and whether Rafael thinks it is a good idea!
> 
> > ---
> >  drivers/iio/adc/Kconfig  |   2 +
> >  drivers/iio/adc/ad4062.c | 188 +++++++++++++++++++++++++++++++++++++++++++----
> >  2 files changed, 175 insertions(+), 15 deletions(-)
> > 
> > diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> > index e506dbe83f488..ddb7820f0bdcc 100644
> > --- a/drivers/iio/adc/Kconfig
> > +++ b/drivers/iio/adc/Kconfig
> > @@ -74,6 +74,8 @@ config AD4062
> >  	tristate "Analog Devices AD4062 Driver"
> >  	depends on I3C
> >  	select REGMAP_I3C
> > +	select IIO_BUFFER
> > +	select IIO_TRIGGERED_BUFFER
> >  	help
> >  	  Say yes here to build support for Analog Devices AD4062 I3C analog
> >  	  to digital converters (ADC).
> > diff --git a/drivers/iio/adc/ad4062.c b/drivers/iio/adc/ad4062.c
> > index 54f7f69e40879..080dc80fd1621 100644
> > --- a/drivers/iio/adc/ad4062.c
> > +++ b/drivers/iio/adc/ad4062.c
> 
> > +static void ad4062_trigger_work(struct work_struct *work)
> > +{
> > +	struct ad4062_state *st =
> > +		container_of(work, struct ad4062_state, trig_conv);
> > +	int ret;
> > +
> > +	/*
> > +	 * Read current conversion, if at reg CONV_READ, stop bit triggers
> > +	 * next sample and does not need writing the address.
> > +	 */
> > +	struct i3c_priv_xfer t[2] = {
> > +		{
> > +			.data.in = &st->buf.be32,
> > +			.len = sizeof(st->buf.be32),
> > +			.rnw = true,
> > +		},
> > +		{
> > +			.data.out = &st->reg_addr_conv,
> > +			.len = sizeof(st->reg_addr_conv),
> > +			.rnw = false,
> > +		},
> > +	};
> > +
> > +	ret = i3c_device_do_priv_xfers(st->i3cdev, &t[0], 1);
> > +	if (ret)
> > +		return;
> > +
> > +	iio_push_to_buffers_with_timestamp(st->indio_dev, &st->buf.be32,
> > +					   iio_get_time_ns(st->indio_dev));
> 
> Use push_to_buffers_with_ts() (this function is deprecated)
> which would have had the helpful result here of pointing out the buffer
> isn't big enough for the timestamp.  So this will write the timestamp
> over later fields in the st structure.
> 
> Given that this sometimes fits in a be16 I wonder if it is worth
> storing those in a be16 element of the kfifo. That will halve it's size
> if the timestamp isn't enabled which would be a nice thing to have.
> Storing in a be32 isn't an ABI issue, it's just a bit unusual
> so if I'm missing some reason it makes more sense then fair enough.
> 
Per last e-mail, due to ad4062 burst avg, it will be kept as 32-bits.
	const bool is_32b = st->chip->prod_id == 0x7C;
	const size_t _sizeof = is_32b ? sizeof(st->buf.be32) : sizeof(st->buf.be16);
	//...
	iio_push_to_buffers_with_ts(st->indio_dev, &st->buf.be32, _sizeof,
				    iio_get_time_ns(st->indio_dev));
> > +	if (st->gpo_irq[1])
> > +		return;
> > +
> > +	i3c_device_do_priv_xfers(st->i3cdev, &t[1], 1);
> > +}
> 
> ...
> 
> > +		{
> > +			.data.out = &st->reg_addr_conv,
> > +			.len = sizeof(st->reg_addr_conv),
> > +			.rnw = false,
> > +		},
> > +		{
> > +			.data.in = &st->buf.be32,
> > +			.len = sizeof(st->buf.be32),
> > +			.rnw = true,
> > +		}
> >  	};
> 
> > @@ -687,6 +782,55 @@ static int ad4062_write_raw(struct iio_dev *indio_dev,
> >  	return ret;
> >  }
> >  
> > +static int ad4062_triggered_buffer_postenable(struct iio_dev *indio_dev)
> > +{
> > +	struct ad4062_state *st = iio_priv(indio_dev);
> > +	int ret;
> > +
> > +	ACQUIRE(pm_runtime_active_try_enabled, pm)(&st->i3cdev->dev);
> > +	ret = ACQUIRE_ERR(pm_runtime_active_try_enabled, &pm);
> 
> This may also be affected by Rafael's patch set to provide some helpers
> to make this more readable.
> 
> 
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = ad4062_set_operation_mode(st, st->mode);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* CONV_READ requires read to trigger first sample. */
> > +	struct i3c_priv_xfer t[2] = {
> > +		{
> > +			.data.out = &st->reg_addr_conv,
> > +			.len = sizeof(st->reg_addr_conv),
> > +			.rnw = false,
> > +		},
> > +		{
> > +			.data.in = &st->buf.be32,
> > +			.len = sizeof(st->buf.be32),
> > +			.rnw = true,
> > +		}
> > +	};
> > +
> > +	ret = i3c_device_do_priv_xfers(st->i3cdev, t, st->gpo_irq[1] ? 2 : 1);
> > +	if (ret)
> > +		return ret;
> > +
> > +	pm_runtime_get_noresume(&st->i3cdev->dev);
> As per my late reply I'm not keen on the double increment as a complex way
> to steal the ACQUIRED() reference. Might be better to just factor the stuff
> where you currently have acquired a reference out into a helper and use
> the traditional runtime pm calls in this outer function.
>  
I will use a helper pm_ad4062_monitor_mode_enable() and
pm_ad4062_triggered_buffer_postenable().

> > +	return 0;
> 
> 
Best regards,
Jorge

