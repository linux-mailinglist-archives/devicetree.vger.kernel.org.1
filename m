Return-Path: <devicetree+bounces-300782-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KRcHqnkDWpN4gUAu9opvQ
	(envelope-from <devicetree+bounces-300782-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 18:43:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8D2592522
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 18:43:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2B4F0310FB73
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 16:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E11036A376;
	Wed, 20 May 2026 16:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfT0gnvA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0293536A033;
	Wed, 20 May 2026 16:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779294754; cv=none; b=IPAupSSck6Ao0Im8FJPi3LOeuscEj3HvXfCqVRVZ13euWYMpBdT479F0n6lyzZ5ElEoioNBxa+JKnhw+wtZaajDTGcrqkAPrWCVeAbOf/ZM25pwRFEiM4BzqP3s/wChYzctN472+li2dksRuFnCRZpz9sGmV+acj/iEA55it8Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779294754; c=relaxed/simple;
	bh=e6+7Fv3cQ7zFgUsgwc2zoqh1K/a3/Fvf6VbJvOrFX+w=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BEQzzyi74mTKCfGfMDq40s8q+m3jhasmC8njIXC21/Uhv5ykRkK+CIBVdGQQ7WggSq1rZiAVGUwt7WhvAj0sTuQZQ5zp25PIRt/2yKe9oWJl34XWhf4wGJr5algLQfJM2w6biF4o/7Unpd9sqdmcxnWNw/czITRSUGd0C/AR6MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfT0gnvA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78B081F00893;
	Wed, 20 May 2026 16:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779294752;
	bh=X1O/QAoeei935ud+r2rkWxzO1xI3AJIzht7OJmQpGds=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=cfT0gnvATwHfJb+DvnERYGxWbJ3vIe1gkYHKl8frVq9VV3moUlh1O418JwnVcXIB+
	 6UWur3a9b5gPsHTWWW9Gesw+1X6rUUj1iXbSWRVI9sJzSw62ALjA0N8zMwlnI+QP/S
	 kSZI0d+M4PWM9UCpzRGE0yeGGRc2XEzX1O0tPGigvumHjIJpDJxy4m/vrU22KLnkMs
	 7HZZqNSOokDTlPShpAcnPCJc82QHXHbN/o9ieQDirxuDIdDMl9RCgiZvs1BKL9jxGp
	 Dmm9qSKfFoI1+wj8fsRhpdaWZwmUsaitCnfUooanjhlBn4kelaYR1SIhIgBLdE6LWB
	 nrH58AXpCUMLw==
Date: Wed, 20 May 2026 17:32:23 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, nuno.sa@analog.com,
 Michael.Hennerich@analog.com, dlechner@baylibre.com, andy@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH v1 4/4] iio: adc: ltc2378: Enable triggered buffer data
 capture
Message-ID: <20260520173223.499ef2bc@jic23-huawei>
In-Reply-To: <986a75b1c92d1a3f0607d1671241db1c8d2ac019.1779117444.git.marcelo.schmitt1@gmail.com>
References: <cover.1779117444.git.marcelo.schmitt1@gmail.com>
	<986a75b1c92d1a3f0607d1671241db1c8d2ac019.1779117444.git.marcelo.schmitt1@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-300782-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,analog.com:email]
X-Rspamd-Queue-Id: 3D8D2592522
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 18 May 2026 12:22:29 -0300
Marcelo Schmitt <marcelo.schmitt1@gmail.com> wrote:

> From: Marcelo Schmitt <marcelo.schmitt@analog.com>
> 
> Enable users to run triggered data captures with LTC2378 and similar ADCs.
> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
A few trivial things inline.

> ---
>  drivers/iio/adc/Kconfig   |  1 +
>  drivers/iio/adc/ltc2378.c | 39 ++++++++++++++++++++++++++++++++++++---
>  2 files changed, 37 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> index b5368ee783f7..265c4a2b5fb7 100644
> --- a/drivers/iio/adc/Kconfig
> +++ b/drivers/iio/adc/Kconfig
> @@ -944,6 +944,7 @@ config LTC2378
>  	depends on SPI
>  	depends on GPIOLIB || PWM
>  	select IIO_BUFFER
> +	select IIO_TRIGGERED_BUFFER
>  	imply LTC2378_OFFLOAD_BUFFER
>  	help
>  	  Say yes here to build support for Analog Devices LTC2378-20 and
> diff --git a/drivers/iio/adc/ltc2378.c b/drivers/iio/adc/ltc2378.c
> index fdbe919d45d5..993e6b09bb41 100644
> --- a/drivers/iio/adc/ltc2378.c
> +++ b/drivers/iio/adc/ltc2378.c
> @@ -10,6 +10,9 @@
>  #include <linux/bitops.h>
>  #include <linux/delay.h>
>  #include <linux/err.h>
> +#include <linux/iio/buffer.h>
> +#include <linux/iio/triggered_buffer.h>
> +#include <linux/iio/trigger_consumer.h>
>  #include <linux/module.h>
>  #include <linux/regulator/consumer.h>
>  
> @@ -272,6 +275,25 @@ static const struct iio_info ltc2378_iio_info = {
>  	.read_raw = &ltc2378_read_raw,
>  };
>  
> +static irqreturn_t ltc2378_trigger_handler(int irq, void *p)
> +{
> +	struct iio_poll_func *pf = p;
> +	struct iio_dev *indio_dev = pf->indio_dev;
> +	struct ltc2378_state *st = iio_priv(indio_dev);
> +	int ret;
> +
> +	ret = ltc2378_convert_and_acquire(st);
> +	if (ret < 0)
> +		goto err_out;
> +
> +	iio_push_to_buffers_with_ts(indio_dev, &st->scan, sizeof(st->scan),
> +				    pf->timestamp);
> +
> +err_out:
> +	iio_trigger_notify_done(indio_dev->trig);
> +	return IRQ_HANDLED;
> +}
> +
>  static int ltc2378_probe(struct spi_device *spi)
>  {
>  	struct iio_chan_spec *ltc2378_chan;
> @@ -305,11 +327,11 @@ static int ltc2378_probe(struct spi_device *spi)
>  		return dev_err_probe(dev, PTR_ERR(st->cnv_gpio),
>  				     "failed to get CNV GPIO");
>  
> -	ltc2378_chan = devm_kzalloc(&spi->dev, sizeof(struct iio_chan_spec), GFP_KERNEL);
> +	ltc2378_chan = devm_kzalloc(&spi->dev, 2 * sizeof(struct iio_chan_spec), GFP_KERNEL);
If you don't end up doing static arrays can just embed this array in
the ioi_priv()

>  	if (!ltc2378_chan)
>  		return -ENOMEM;
>  
> -	*ltc2378_chan = (struct iio_chan_spec) {
> +	ltc2378_chan[0] = (struct iio_chan_spec) {
>  		.type = IIO_VOLTAGE,
>  		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
>  				      BIT(IIO_CHAN_INFO_SCALE),
> @@ -327,7 +349,18 @@ static int ltc2378_probe(struct spi_device *spi)
>  	ret = ltc2378_offload_buffer_setup(indio_dev, spi);
>  	if (ret == -ENODEV) {
>  		/* SPI offloading is unavailable. Fall back to triggered buffer. */
> -		dev_notice(dev, "buffered data capture not supported\n");
> +		ret = devm_iio_triggered_buffer_setup(dev, indio_dev,
> +						      &iio_pollfunc_store_time,
> +						      &ltc2378_trigger_handler,
> +						      NULL);
> +		if (ret)
> +			return ret;
> +
> +		/* Add timestamp channel */
> +		struct iio_chan_spec ts_chan = IIO_CHAN_SOFT_TIMESTAMP(1);

With the series that is a combination of Andy and David's work you should
be able to do this without the local variable. That series is fairly simple
so should land shortly.  If you want to make sure this gets fixed in the meantime
you can do
		ltc2378_chan[1] = (struct iio_chan_spec)IIO_CHAN_SOFT_TIMESTAMP(1);
then I'll get a build error once that series lands and remember to fix it ;)

If you move to a static array we can just do manipulation of num_iio_chans
to include the trailing timestamp element or not.

> +
> +		ltc2378_chan[1] = ts_chan;
> +		num_iio_chans++;
>  	} else if (ret) {
>  		return dev_err_probe(dev, ret, "error on SPI offload setup\n");
>  	} else {


