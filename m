Return-Path: <devicetree+bounces-296207-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kF+ZOp8bA2pD0gEAu9opvQ
	(envelope-from <devicetree+bounces-296207-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 14:22:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AF87C5200CF
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 14:22:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89E3330DD63F
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 12:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5676938D416;
	Tue, 12 May 2026 12:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch2Nlpl7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320C338D410;
	Tue, 12 May 2026 12:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778588063; cv=none; b=MVeNGxGzJX1SRl8IPQm/x9GD89muuApsbltIWuwV/2D9FEmOaYUx5rWaiav04ha/IzN7SAXLrJ+abhKNVb/vQ8tslLvpl5sjEzq35yvbE1tsp/Z0l5JPDfImRHBTgA4gSEMPnJ90WqyPgk94K159Rc6fnFTmv4QEmDBe43kkOwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778588063; c=relaxed/simple;
	bh=OmELD4tSWBPTnTjvsGuSOGoZwDyuELUgcyn08+LWhpA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=F45pfe4rbeav1p3pCR2Cz3l0BU09VEj2DcIjA3mG0f26DnPb+qBW+n5svsRVLT8Z9pMyiIuKZ1I3eVFxoTvz1J2kZ6JLTz4EChAovdEhD1ct7EyB/OoZKpuDgxAInQ8bEuRbIbdFD3qr/OC0M6mPNtDHx+dU1jOn2TgqsfKWFqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch2Nlpl7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF76AC2BCB0;
	Tue, 12 May 2026 12:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778588063;
	bh=OmELD4tSWBPTnTjvsGuSOGoZwDyuELUgcyn08+LWhpA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ch2Nlpl7QUcvmlqvr7AbjkL4eyMRWj7n71r/dRbF/3XLSP9R/R2F9IWb1yajpqzoJ
	 T6rkWhpQn1wPS7PpK9eYG1SeS0Do5C6hniF3GDfCUWnveVogA2/kpn+YPbEOCBmDsq
	 KndUAEMcZTSt64yRGOeXtGJHjqxv/AEzeGIdKYQqduaRKRzhgUC/Mc40eO0zQTGBhI
	 LJai1vgic/vD8r6bUMMbHOOLVL63WIrP16eXsjfqtlkYrHwV6hShVrHO0jIk2CUHJP
	 FR2AOVoC7nZSI2W1OlBOfIjiyYQHAsftLp4lrCGdGlSAL/59ugz3IiPuxEEww82Gdx
	 LwA09jVe0hSwQ==
Date: Tue, 12 May 2026 13:14:13 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: ak@it-klinger.de, andriy.shevchenko@linux.intel.com,
 dlechner@baylibre.com, nuno.sa@analog.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 v8 05/11] iio: adc: hx711: move scale computation to
 per-device storage
Message-ID: <20260512131413.3ce37a2b@jic23-huawei>
In-Reply-To: <20260511174342.123820-6-piyushpatle228@gmail.com>
References: <20260511174342.123820-1-piyushpatle228@gmail.com>
	<20260511174342.123820-6-piyushpatle228@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: AF87C5200CF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296207-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Action: no action

On Mon, 11 May 2026 23:13:30 +0530
Piyush Patle <piyushpatle228@gmail.com> wrote:

> The gain-to-scale table is global today, so probe-time scale updates for
> one device overwrite the values used by any earlier device instance.
> 
> Fix this by making the gain table const and storing the computed scale
> values per device in hx711_data.
> 
> No functional change for single-sensor configurations.
> 
> Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

This is a patch that stands fine on it's own (and Sashiko was fine with
v7) so I'll apply it now.

Applied to the testing branch of iio.git.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/hx711.c | 31 ++++++++++++++++---------------
>  1 file changed, 16 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/iio/adc/hx711.c b/drivers/iio/adc/hx711.c
> index 1db8b68a8f64..86d2a70dd3de 100644
> --- a/drivers/iio/adc/hx711.c
> +++ b/drivers/iio/adc/hx711.c
> @@ -28,22 +28,20 @@
>  struct hx711_gain_to_scale {
>  	int			gain;
>  	int			gain_pulse;
> -	int			scale;
>  	int			channel;
>  };
>  
>  /*
>   * .scale depends on AVDD which in turn is known as soon as the regulator
> - * is available
> - * therefore we set .scale in hx711_probe()
> + * is available; it is stored per device in hx711_data.gain_scale[]
>   *
>   * channel A in documentation is channel 0 in source code
>   * channel B in documentation is channel 1 in source code
>   */
> -static struct hx711_gain_to_scale hx711_gain_to_scale[HX711_GAIN_MAX] = {
> -	{ 128, 1, 0, 0 },
> -	{  32, 2, 0, 1 },
> -	{  64, 3, 0, 0 }
> +static const struct hx711_gain_to_scale hx711_gain_to_scale[HX711_GAIN_MAX] = {
> +	{ 128, 1, 0 },
> +	{  32, 2, 1 },
> +	{  64, 3, 0 },
>  };
>  
>  static int hx711_get_gain_to_pulse(int gain)
> @@ -56,22 +54,22 @@ static int hx711_get_gain_to_pulse(int gain)
>  	return 1;
>  }
>  
> -static int hx711_get_gain_to_scale(int gain)
> +static int hx711_get_gain_to_scale(const int *gain_scale, int gain)
>  {
>  	int i;
>  
>  	for (i = 0; i < HX711_GAIN_MAX; i++)
>  		if (hx711_gain_to_scale[i].gain == gain)
> -			return hx711_gain_to_scale[i].scale;
> +			return gain_scale[i];
>  	return 0;
>  }
>  
> -static int hx711_get_scale_to_gain(int scale)
> +static int hx711_get_scale_to_gain(const int *gain_scale, int scale)
>  {
>  	int i;
>  
>  	for (i = 0; i < HX711_GAIN_MAX; i++)
> -		if (hx711_gain_to_scale[i].scale == scale)
> +		if (gain_scale[i] == scale)
>  			return hx711_gain_to_scale[i].gain;
>  	return -EINVAL;
>  }
> @@ -82,6 +80,7 @@ struct hx711_data {
>  	struct gpio_desc	*gpiod_dout;
>  	int			gain_set;	/* gain set on device */
>  	int			gain_chan_a;	/* gain for channel A */
> +	int			gain_scale[HX711_GAIN_MAX];
>  	struct mutex		lock;
>  	/*
>  	 * triggered buffer
> @@ -290,7 +289,8 @@ static int hx711_read_raw(struct iio_dev *indio_dev,
>  		*val = 0;
>  		mutex_lock(&hx711_data->lock);
>  
> -		*val2 = hx711_get_gain_to_scale(hx711_data->gain_set);
> +		*val2 = hx711_get_gain_to_scale(hx711_data->gain_scale,
> +						hx711_data->gain_set);
>  
>  		mutex_unlock(&hx711_data->lock);
>  
> @@ -321,7 +321,7 @@ static int hx711_write_raw(struct iio_dev *indio_dev,
>  
>  		mutex_lock(&hx711_data->lock);
>  
> -		gain = hx711_get_scale_to_gain(val2);
> +		gain = hx711_get_scale_to_gain(hx711_data->gain_scale, val2);
>  		if (gain < 0) {
>  			mutex_unlock(&hx711_data->lock);
>  			return gain;
> @@ -386,6 +386,7 @@ static ssize_t hx711_scale_available_show(struct device *dev,
>  				struct device_attribute *attr,
>  				char *buf)
>  {
> +	struct hx711_data *hx711_data = iio_priv(dev_to_iio_dev(dev));
>  	struct iio_dev_attr *iio_attr = to_iio_dev_attr(attr);
>  	int channel = iio_attr->address;
>  	int i, len = 0;
> @@ -393,7 +394,7 @@ static ssize_t hx711_scale_available_show(struct device *dev,
>  	for (i = 0; i < HX711_GAIN_MAX; i++)
>  		if (hx711_gain_to_scale[i].channel == channel)
>  			len += sprintf(buf + len, "0.%09d ",
> -					hx711_gain_to_scale[i].scale);
> +				       hx711_data->gain_scale[i]);
>  
>  	len += sprintf(buf + len, "\n");
>  
> @@ -511,7 +512,7 @@ static int hx711_probe(struct platform_device *pdev)
>  	ret *= 100;
>  
>  	for (i = 0; i < HX711_GAIN_MAX; i++)
> -		hx711_gain_to_scale[i].scale =
> +		hx711_data->gain_scale[i] =
>  			ret / hx711_gain_to_scale[i].gain / 1678;
>  
>  	hx711_data->gain_set = 128;


