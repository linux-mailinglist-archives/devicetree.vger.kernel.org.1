Return-Path: <devicetree+bounces-320397-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 48YeOHNLSGqhogAAu9opvQ
	(envelope-from <devicetree+bounces-320397-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 01:53:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3760A7062C0
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 01:53:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ojUvilZI;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320397-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320397-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED2D530252BB
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 23:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07A1732B10D;
	Fri,  3 Jul 2026 23:53:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAFA33090D7;
	Fri,  3 Jul 2026 23:53:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783122800; cv=none; b=bCR9RmqLahbzCY6fmNuVny5Ou+00fHlcw+PKSQscTrqIPF4oD53K8Nt/n3OcNlL2LOo7agM71/y9BZ6tuCbDQ8hmMEVjlz6OndXrHgArqHcotrCsduOt+yRygm2/s9XIKw476XJ3fAHW4FYn+oQAFyX0sRq7VndflZ38bV+5qHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783122800; c=relaxed/simple;
	bh=LsxYcGmCwVR+PmoXi7XponR2FwVclob+TyQYz8fReso=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=M9h/3Hc4yTYMVjHaE0RDeuCawl9Kti2Os8LJxtp6d0HwtlmyCLLxbeFRmTKGwQ0odec/bkftvclqL83EvO34JXFybJO5cFth6HDO2W2SWo584uOY6vqN9y3K0V1s9n7Z21Oox8oD0eacpJaw+44emMel+QHO1hKLp/JzQi55GTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojUvilZI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D98AE1F000E9;
	Fri,  3 Jul 2026 23:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783122799;
	bh=gM5pOjS2g/JhiTNiwAVheWJlV3K8/uWe+viwmGeh6HU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=ojUvilZIXZdk9vk7HkD0BA6S+TGn3+03/VyRW62jt4Wuh+dsgYvX1rTSjyNo+eA7v
	 3L+537yFLkgCMPQz+Vsi53YI5IFffg18fFy0TbthrpAyltBm6SDC6L61RxatvrPIH0
	 VDR9mmRHyE/RMTejUJ2kI8xSRW1MB4DKJ1TBttD4LeJ/Z6WgZ4w9A4YJpD5n8qYQFb
	 VhJLe0tT4sc/DaRJVW+r/dvk+lcugApNyONR6zcoOo2oybJ+Lfxfnlgut0M55xlR1Y
	 AYIyYPWldDRllFKzHFQ6qp5c5eLqekq/NKweT1nQkjAfmjq281IKnNCOLPwQuDukZM
	 YPOWrjc4Ee5lQ==
Date: Sat, 4 Jul 2026 00:53:13 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Stefan Popa <stefan.popa@analog.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ciprian Hegbeli <ciprian.hegbeli@analog.com>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 2/2] iio: adc: add MAX40080 current-sense amplifier
 driver
Message-ID: <20260704005313.2e498840@jic23-huawei>
In-Reply-To: <20260703102941.1141341-3-stefan.popa@analog.com>
References: <20260703102941.1141341-1-stefan.popa@analog.com>
	<20260703102941.1141341-3-stefan.popa@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:stefan.popa@analog.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ciprian.hegbeli@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-320397-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,jic23-huawei:mid,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3760A7062C0

On Fri, 3 Jul 2026 13:29:32 +0300
Stefan Popa <stefan.popa@analog.com> wrote:

> The MAX40080 is a bidirectional current-sense amplifier with an
> integrated 12-bit ADC and an I2C/SMBus interface. It measures the
> voltage across an external shunt resistor and the input bus voltage,
> storing the results in an internal FIFO.
> 
> Add a direct-mode IIO driver exposing the current and voltage channels
> with raw, scale and hardware-gain attributes, a configurable
> oversampling (digital averaging) ratio, and PEC-protected register
> access. The current scale is derived from the shunt resistor value
> described in the device tree.
> 
> Signed-off-by: Ciprian Hegbeli <ciprian.hegbeli@analog.com>
> Signed-off-by: Stefan Popa <stefan.popa@analog.com>

You have some thorough reviews already but who can resist
a new driver on a Friday afternoon ;)

I tried to avoid repetition with existing reviews so didn't have
much to add.

Thanks,

Jonathan

> diff --git a/drivers/iio/adc/max40080.c b/drivers/iio/adc/max40080.c
> new file mode 100644
> index 0000000000000..441e1ce3dcffd
> --- /dev/null
> +++ b/drivers/iio/adc/max40080.c


> +
> +static int max40080_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	struct iio_dev *indio_dev;
> +	struct max40080_state *st;
> +	int ret;
> +
> +	if (!i2c_check_functionality(client->adapter,
> +				     I2C_FUNC_SMBUS_WORD_DATA |
> +				     I2C_FUNC_SMBUS_I2C_BLOCK |
> +				     I2C_FUNC_SMBUS_QUICK))
> +		return -EOPNOTSUPP;
> +
> +	client->flags |= I2C_CLIENT_PEC;

> +	if (device_property_read_u32(dev, "shunt-resistor-micro-ohms",
> +				     &st->shunt_resistor_uohm))
> +		st->shunt_resistor_uohm = 1000000; /* default 1 ohm */

Over time we've evolved our preferences for this based on what ends up
readable. For new code something like
	if (device_property_present(dev, "shunt-resistor-micro-ohms)) {
		ret = device_property_read_u32(dev, "shunt-resistor-micro-ohms",
					       &st->shunt_resistor_uohm);
		if (ret)
			return ret;
	} else {
		st->shunt_resistor_uohm = 1 * MICRO; /* default 1 ohm */
	}
	
> +
> +	if (!st->shunt_resistor_uohm)
> +		return dev_err_probe(dev, -EINVAL,
> +				     "shunt-resistor-micro-ohms must be non-zero\n");
> +
> +	max40080_calc_current_scale(st);

