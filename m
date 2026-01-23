Return-Path: <devicetree+bounces-258794-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NvzEBkzc2lItAAAu9opvQ
	(envelope-from <devicetree+bounces-258794-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:36:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AAF72984
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:36:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89A803007955
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:36:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96D912F3632;
	Fri, 23 Jan 2026 08:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVdPS6RR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 743172248A8;
	Fri, 23 Jan 2026 08:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769157398; cv=none; b=S6IDr7xi2VGszHW2EfxzC0yQjpzwvqaccRkJ0i+v5I+DPqwLKI8AV+UUrNx8tc1hs9oMLd4vw13nZ7f8409V5Q/OqidcHGPXUHH3qR/xr0lRwrtjbF0b8fwnNXFs2eCP69gf1gdxHzHxaF0VmqeUCd3glGE4rtAJ9uSwR+EDX/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769157398; c=relaxed/simple;
	bh=WsYXqtLWk95l9QQnt2o1q50LXzSezOORhZDt1SSztqg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=S6p/MNIByN4YC0txTktgq8Kd1RFPO6cahVg1ZdPe/UiMkDURfI2G93JW2sOTD3w/9WoN6DnJilzBViVlAcOYLWWDZqprs4TySctnviTCIc0qkzBipjHyW/Sxq7aJ6a7AdYED8J8CD1Q4TELY+ZuzzZSmGimxHezt+57ZQJ19skU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVdPS6RR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A75E6C4CEF1;
	Fri, 23 Jan 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769157398;
	bh=WsYXqtLWk95l9QQnt2o1q50LXzSezOORhZDt1SSztqg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=jVdPS6RRT9C86o+m47MaZgVqND8uk0J8c15g8u5rOGPuMx0D2qZ5gcW49Fp6fz9wK
	 9OCRPLRRUNe9ywLramP+6xqVfdpggjYWDxjM1Fa3Apui8XAwIB6hgBZ3Oz0iGEeiPH
	 C17GgbqwQi2CBzvqJaa3iVmWvAiYeagN00DjwBO1k56XtMhnX+KUVIjNQUU398MwkW
	 o/Dv6A+aZnMs76yS2HtMWlWGw38bewS6jcbNon3JB6hX2q5iZob37udVNSnPe5mNht
	 Mk/oq+kCH5XTIAxrxFcQtw9zKydEH+Nz5/TPT2raWLFs/0g0WNZkpW+o7aH9CCBTwG
	 KV8V3vAySy6VQ==
Date: Fri, 23 Jan 2026 08:36:29 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, Michael Hennerich
 <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, David
 Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 5/7] iio: amplifiers: ad8366: use cleanup.h mutex guard
Message-ID: <20260123083629.0117c6aa@jic23-huawei>
In-Reply-To: <e5b175ae-34d4-47f2-92a4-2788f680da36@kernel.org>
References: <20260119-iio-ad8366-update-v1-0-8044e23e964a@analog.com>
	<20260119-iio-ad8366-update-v1-5-8044e23e964a@analog.com>
	<e5b175ae-34d4-47f2-92a4-2788f680da36@kernel.org>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258794-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 96AAF72984
X-Rspamd-Action: no action

On Mon, 19 Jan 2026 15:43:07 +0100
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 19/01/2026 15:36, Rodrigo Alencar via B4 Relay wrote:
> > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > 
> > Changes related to mutex handling:
> > - use guard() from cleanup for mutex locking
> > - replace mutex_init() for devm_mutex_init()  
> 
> Why? We see all this from the diff but I do not see benefits.

Also, 2 patches as two different things.
That should make it easier to say what benefits of each is.

A little more comment on comments inline.


> 
> > 
> > Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > ---
> >  drivers/iio/amplifiers/ad8366.c | 14 +++++++++-----
> >  1 file changed, 9 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/iio/amplifiers/ad8366.c b/drivers/iio/amplifiers/ad8366.c
> > index 160a8ab0c2ee..26856cb4216e 100644
> > --- a/drivers/iio/amplifiers/ad8366.c
> > +++ b/drivers/iio/amplifiers/ad8366.c
> > @@ -17,6 +17,7 @@
> >   * Copyright 2012-2026 Analog Devices Inc.
> >   */
> >  
> > +#include <linux/cleanup.h>
> >  #include <linux/device.h>
> >  #include <linux/kernel.h>
> >  #include <linux/slab.h>
> > @@ -164,7 +165,8 @@ static int ad8366_read_raw(struct iio_dev *indio_dev,
> >  	int ret;
> >  	int code, gain = 0;
> >  
> > -	mutex_lock(&st->lock);
> > +	guard(mutex)(&st->lock);
> > +
> >  	switch (m) {
> >  	case IIO_CHAN_INFO_HARDWAREGAIN:
> >  		code = st->ch[chan->channel];
> > @@ -210,7 +212,6 @@ static int ad8366_read_raw(struct iio_dev *indio_dev,
> >  	default:
> >  		ret = -EINVAL;
> >  	}
> > -	mutex_unlock(&st->lock);  
> 
> This does not simplify code.
Agreed. Without moving to early returns there is little point in this change.
With early returns the argument of easier code flow can be made
though it isn't particularly strong in this case as only two exit
paths and they are right next to each other.

> 
> >  
> >  	return ret;
> >  };
> > @@ -267,7 +268,8 @@ static int ad8366_write_raw(struct iio_dev *indio_dev,
> >  		break;
> >  	}
> >  
> > -	mutex_lock(&st->lock);
> > +	guard(mutex)(&st->lock);  
> 
> Neither this.
With early returns this one is more obviously useful. Then can argue
above is for consistency.
> 
> > +
> >  	switch (mask) {
> >  	case IIO_CHAN_INFO_HARDWAREGAIN:
> >  		st->ch[chan->channel] = code;
> > @@ -276,7 +278,6 @@ static int ad8366_write_raw(struct iio_dev *indio_dev,
> >  	default:
> >  		ret = -EINVAL;
> >  	}
> > -	mutex_unlock(&st->lock);
> >  
> >  	return ret;
> >  }
> > @@ -336,10 +337,13 @@ static int ad8366_probe(struct spi_device *spi)
> >  	}
> >  
> >  	spi_set_drvdata(spi, indio_dev);
> > -	mutex_init(&st->lock);
> >  	st->spi = spi;
> >  	st->type = spi_get_device_id(spi)->driver_data;
> >  
> > +	ret = devm_mutex_init(&spi->dev, &st->lock);  
> 
> And this one actually has impact - missing mutex_destroy...
> 
> > +	if (ret)
> > +		return ret;
> > +
> >  	switch (st->type) {
> >  	case ID_AD8366:
> >  		indio_dev->channels = ad8366_channels;
> >   
> 
> 
> Best regards,
> Krzysztof


