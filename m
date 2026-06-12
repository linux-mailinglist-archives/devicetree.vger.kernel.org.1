Return-Path: <devicetree+bounces-310917-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LixdKjD3K2rPIgQAu9opvQ
	(envelope-from <devicetree+bounces-310917-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 14:10:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46196679423
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 14:10:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FDCvLYjg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310917-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310917-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9B31B300678F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 12:10:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 107C037CD4E;
	Fri, 12 Jun 2026 12:10:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A227263B;
	Fri, 12 Jun 2026 12:10:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781266221; cv=none; b=etTtbrT5wMg9W14L1bf/Nu+mcDSrH9RJnPfp0g9420qVBtdBzvVkA1RKv8SMRB3REPH7vZ2eUrBi/1yVAMs1sjxzGPEjidQMpyGh3iaZiu9YZnaRmHHL+vbivfsaOWIs8vVffZR5j7IptzWEWaUu/WZ1U+7G8KTZUs3TfRWk9JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781266221; c=relaxed/simple;
	bh=CPYSWHgPrn7Yn6YTTbCo1P5gop3sI0SoorWYDV5NiRM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=P53Jx3SazhmAvlq2FXaokX0N48gClTzfiSlWkRsMOLWmtv4989oux8IIy9hdCqieSnfmvpdFWcxYAaIvtf56IOJ/Cv1Ai1aTxl0V/17i87oa888INwJd9VZ60BMt2Vk8pL2r8KgqPfTf+cxB+U3ediUDT8Zo5AqnoxJzNcuDCkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDCvLYjg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A10861F000E9;
	Fri, 12 Jun 2026 12:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781266219;
	bh=61oG9MuVuT+pQBEQfNjIs+962WvE1TI9o9L10/gkiOg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=FDCvLYjgicm6E7mMPg8ldZPyrEqKg7BsIGp1nYmPY7l3rgqtzdBn+PMTD0pv6yzAW
	 oxkvGnoSpMLq8eJBfGe6AaZZxE5r4OCUYRjyn5/Egb2cS93UPUpxGc0rQW5XKMNhn0
	 L4GpdQeuOY9i3tQ3XQZihZfp6kmrA4mZw1Y3vVWzkSxYm22otQ8h4Gpa9EYTP0Kwne
	 VlYbR64EO78oiCj4r1xwfX3FqIEAjAVsfMeU0x/JTSJSDzl0lstIZ1VsLmVFWCu7I8
	 7nwq3v+mEdcA33ljAJitPNIIcN2cBtRwMoAJWHFsuSnq8MzyIFCgGnKzAElatu/t5Z
	 7OpGP2nFYDIow==
Date: Fri, 12 Jun 2026 13:10:09 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Salih Erim <salih.erim@amd.com>
Cc: <andy@kernel.org>, <dlechner@baylibre.com>, <nuno.sa@analog.com>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <conall.ogriofa@amd.com>, <michal.simek@amd.com>, <linux@roeck-us.net>,
 <erimsalih@gmail.com>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v6 2/5] iio: adc: add Versal SysMon driver
Message-ID: <20260612131009.1be11ff2@jic23-huawei>
In-Reply-To: <20260611222738.2035062-3-salih.erim@amd.com>
References: <20260611222738.2035062-1-salih.erim@amd.com>
	<20260611222738.2035062-3-salih.erim@amd.com>
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
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310917-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:andy@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:conall.ogriofa@amd.com,m:michal.simek@amd.com,m:linux@roeck-us.net,m:erimsalih@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,roeck-us.net,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,jic23-huawei:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 46196679423

On Thu, 11 Jun 2026 23:27:35 +0100
Salih Erim <salih.erim@amd.com> wrote:

> Add the core driver and MMIO platform driver for the AMD/Xilinx Versal
> System Monitor (SysMon) block.
> 
> The SysMon block resides in the platform management controller (PMC) and
> provides on-chip voltage and temperature monitoring through a 10-bit,
> 200 kSPS ADC. It can monitor up to 160 voltage channels and 64
> temperature satellites distributed across the SoC, with a consistent
> sample rate of 8 kSPS per channel regardless of how many channels are
> enabled.
> 
> The driver is split into two compilation units:
>   - versal-sysmon-core: Channel parsing, IIO registration, read_raw
>   - versal-sysmon: MMIO platform driver with custom regmap accessors
> 
> Voltage results are stored in a 19-bit modified floating-point format
> and converted to millivolts. Temperature results are stored in Q8.7
> signed fixed-point Celsius format and converted to millicelsius.
> 
> The MMIO regmap backend uses a custom reg_write accessor that
> automatically unlocks the NPI (NoC programming interface) lock
> register before each write, as required by the hardware. The regmap
> is configured with fast_io since the underlying MMIO accessors are
> safe to call from atomic context.
> 
> Co-developed-by: Michal Simek <michal.simek@amd.com>
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> Signed-off-by: Salih Erim <salih.erim@amd.com>

One question on the static temp channels. I may have forgotten
some earlier discussion!

> diff --git a/drivers/iio/adc/versal-sysmon-core.c b/drivers/iio/adc/versal-sysmon-core.c
> new file mode 100644
> index 00000000000..c875d156dbe
> --- /dev/null
> +++ b/drivers/iio/adc/versal-sysmon-core.c
> @@ -0,0 +1,281 @@

> +
> +#define SYSMON_CHAN_TEMP(_chan, _address, _name)		\
> +{								\
> +	.type = IIO_TEMP,					\
> +	.indexed = 1,						\
> +	.address = _address,					\
> +	.channel = _chan,					\
> +	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),		\
> +	.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),	\
> +	.datasheet_name = _name,				\
> +}
> +
> +/* Static temperature channels (always present) */
> +static const struct iio_chan_spec temp_channels[] = {
> +	SYSMON_CHAN_TEMP(0, SYSMON_TEMP_MAX, "temp"),
> +	SYSMON_CHAN_TEMP(1, SYSMON_TEMP_MIN, "min"),
> +	SYSMON_CHAN_TEMP(2, SYSMON_TEMP_MAX_MAX, "max_max"),
> +	SYSMON_CHAN_TEMP(3, SYSMON_TEMP_MIN_MIN, "min_min"),

Sorry, I missed this in previous reviews, but what are these channels?
The labels are rather unusual.

My guess is they are gathering up values from across a bunch of sensors
but I'm not certain. They are unusual enough we probably need some documentation.


