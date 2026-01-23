Return-Path: <devicetree+bounces-258806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLPBKP08c2kztgAAu9opvQ
	(envelope-from <devicetree+bounces-258806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:18:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C10F731D7
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:18:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56344306377A
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD72F31A06F;
	Fri, 23 Jan 2026 09:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOHyzX/u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A50318DB37;
	Fri, 23 Jan 2026 09:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769159644; cv=none; b=uvTQ5iQfHf1b2zFgk8nCn5kO9qV5qYKt5IiD8wASXlIRSqOU70IuzrxEpWsQtBCKBrQugp5WxPtw2GpphMK7ABvjtDO9SCqX1+lGUONBJpult2Cb1HHVD7xZwcZ+rjPzo1o3BwALPo3ykme60lReAL5AUaWWQUSY4pETcHvws54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769159644; c=relaxed/simple;
	bh=hc1d8PprO/rifKZP0byHcVdxf/ktn0MVN+Yt9SP+4x4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=P/Ns6Hzxnap286h8RFJPHSwt49XiGP51vm9AeHrOHfulgT+VOHtJ1YtV8GMypAfo0TJEZXH9GkWSUcIakaTkp7y1gHHYcAyIx7b7ZqQfrLBq1mcNp/zLU/zuLVNYUg4qjX4HlegRqlvaQnZDH+iBLNbwGCTbxAq7qlcO1G+XIoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOHyzX/u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB16EC116D0;
	Fri, 23 Jan 2026 09:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769159644;
	bh=hc1d8PprO/rifKZP0byHcVdxf/ktn0MVN+Yt9SP+4x4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=UOHyzX/uAQxunuEDWA4IjDUOigApHS8eJBIqSQRpVY9chEOfKR1746LpYDX0GVOBm
	 XRNNP8HaVKLbtqq/svc4/AXBzqi0fbKHY0Ml3UA6NnVfJZk697gxcMi/xE8799bhzF
	 6Pcq7WmNr2xJcq6/NjIH2489ekMnMoMRxcqn6ExEA0CzydGHasCKhYI9v1t+Kntdvs
	 buGaT0/gJj7Wh5fO3vgFs6XHmsVr8xk7FbiS/ald7IfANgULofI8HRLm5RLDRH/Zf5
	 oLZVDL6jf9c3MXRlx9z8e/wyAoJtUFdfyL3R5nlUOCwv2HfU7FWjNfJ+Ngk/CdE9M2
	 CvAA3RvQYREVg==
Date: Fri, 23 Jan 2026 09:13:53 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Petr Hodina via B4 Relay <devnull+petr.hodina.protonmail.com@kernel.org>
Cc: petr.hodina@protonmail.com, Song Qiang <songqiang1304521@gmail.com>,
 David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>, David Heidelberg <david@ixit.cz>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] iio: proximity: vl53l0x-i2c: Add optional vddio
 supply
Message-ID: <20260123091353.420218cc@jic23-huawei>
In-Reply-To: <20260119-vl53l0x-v1-2-cf71715a1353@protonmail.com>
References: <20260119-vl53l0x-v1-0-cf71715a1353@protonmail.com>
	<20260119-vl53l0x-v1-2-cf71715a1353@protonmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258806-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[protonmail.com,gmail.com,baylibre.com,analog.com,kernel.org,ixit.cz,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,petr.hodina.protonmail.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0C10F731D7
X-Rspamd-Action: no action

On Mon, 19 Jan 2026 18:19:56 +0100
Petr Hodina via B4 Relay <devnull+petr.hodina.protonmail.com@kernel.org> wrote:

> From: Petr Hodina <petr.hodina@protonmail.com>
> 
> The VL53L0X can be powered using separate core (VDD) and I/O (VDDIO)
> supplies.
> 
> Add support for an optional vio regulator and enable/disable it during
> power on/off when present. Update the device tree binding to document the
> new optional supply.

In what sense is it optional?  Some change to device config to say don't
use it, or simply might not be in DT binding but in that case is always on?

If the second just let the regulator framework provide a stub regulator.
That is in the driver don't treat it as optional and all should work fine.


> 
> Signed-off-by: Petr Hodina <petr.hodina@protonmail.com>
> ---
>  drivers/iio/proximity/vl53l0x-i2c.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/iio/proximity/vl53l0x-i2c.c b/drivers/iio/proximity/vl53l0x-i2c.c
> index ad3e46d47fa8..7bfab396377a 100644
> --- a/drivers/iio/proximity/vl53l0x-i2c.c
> +++ b/drivers/iio/proximity/vl53l0x-i2c.c
> @@ -55,6 +55,7 @@ struct vl53l0x_data {
>  	struct i2c_client *client;
>  	struct completion completion;
>  	struct regulator *vdd_supply;
> +	struct regulator *vio_supply;
>  	struct gpio_desc *reset_gpio;
>  	struct iio_trigger *trig;
>  };
> @@ -256,6 +257,8 @@ static void vl53l0x_power_off(void *_data)
>  	gpiod_set_value_cansleep(data->reset_gpio, 1);
>  
>  	regulator_disable(data->vdd_supply);
> +	if (data->vio_supply)
> +		regulator_disable(data->vio_supply);
>  }
>  
>  static int vl53l0x_power_on(struct vl53l0x_data *data)
> @@ -266,6 +269,12 @@ static int vl53l0x_power_on(struct vl53l0x_data *data)
>  	if (ret)
>  		return ret;
>  
> +	if (data->vio_supply) {
> +		ret = regulator_enable(data->vio_supply);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	gpiod_set_value_cansleep(data->reset_gpio, 0);
>  
>  	usleep_range(3200, 5000);
> @@ -338,6 +347,13 @@ static int vl53l0x_probe(struct i2c_client *client)
>  		return dev_err_probe(&client->dev, PTR_ERR(data->vdd_supply),
>  				     "Unable to get VDD regulator\n");
>  
> +	data->vio_supply = devm_regulator_get_optional(&client->dev, "vio");
> +	if (PTR_ERR(data->vio_supply) == -ENODEV)
> +		data->vio_supply = NULL;
> +	else if (IS_ERR(data->vio_supply))
> +		return dev_err_probe(&client->dev, PTR_ERR(data->vio_supply),
> +				     "Unable to get VDDIO regulator\n");
> +
>  	data->reset_gpio = devm_gpiod_get_optional(&client->dev, "reset", GPIOD_OUT_HIGH);
>  	if (IS_ERR(data->reset_gpio))
>  		return dev_err_probe(&client->dev, PTR_ERR(data->reset_gpio),
> 


