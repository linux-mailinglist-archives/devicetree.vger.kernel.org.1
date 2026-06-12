Return-Path: <devicetree+bounces-310940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iVXZOrECLGpAJgQAu9opvQ
	(envelope-from <devicetree+bounces-310940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 14:59:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDE2679949
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 14:59:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZvZiQLdj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310940-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-310940-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6708C3004C8D
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 12:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA10538B7D2;
	Fri, 12 Jun 2026 12:58:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E7282D3ED1;
	Fri, 12 Jun 2026 12:58:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781269127; cv=none; b=WxDzPV0PL1K+TLK6XwVCK9S28wPq/MG+9yoQQmvHXk1+MKfI/OqJtExkUZBA/qS5092MwxEnk9lpcxd3jGAdb3sukNs/EDlmIzeAlI6iTXbh63zAdhtTgTvnFi/pu1tklEWv2pxbr4HqIJm6a649PAZdG6s43PTTNxSvF9ggNps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781269127; c=relaxed/simple;
	bh=7d5yswDulOvhASwPvMzfBZXUp0QHUM72zuDQHecAmGo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=glDF5tcScFp8NC2vVPfLg8sYclSSAGtxdsUYCO2FhsIbrV8AfQ2CbFAbi/rG+DzlyNV/BLfL+ga+448DYbu+LXsMUgPiKJ3bxRTBPHXmdmpGxs1iaT+ayFo9cSKbiW4jJv3QLk42XxlfGo+ZAtzmmaa2ctfR7lD1zXYLsiLegVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvZiQLdj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34BE11F000E9;
	Fri, 12 Jun 2026 12:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781269126;
	bh=LJYgjNm9x9+c7bz10hnRcV/tZHEYYz2pJB1Q9vxcDnk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=ZvZiQLdjpP23W61D+8MmGvliZu9w517/l3EnC61/k/wyikldzNnuwHtIiTCkKINf5
	 XNMSCxHk0SpZnOxxjAFJ0/+5aSF6EVnTpOS7d7y63uNe5QBJrDWfNWAs58gmWsT9G1
	 LN/54dGe2KVXbkO3GQfRJGOi1BaP0ge9d5uvCG7kfWBrDNy61H+dRB+vd9I078b+ol
	 mX0DeXoyuKychrH/DJzl9ButUoEkehbKPt8Bq/fYzr7QeOXyseidHfUXVpR61EzmCx
	 hL7f9fRmzY+oFsjWg0Zm/a6ljvwp++CV2FT5gAQfvTq9damwNqifd3gKotzVZcOfR5
	 MrYIrkA35g1sg==
Date: Fri, 12 Jun 2026 13:58:36 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Salih Erim <salih.erim@amd.com>
Cc: <andy@kernel.org>, <dlechner@baylibre.com>, <nuno.sa@analog.com>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <conall.ogriofa@amd.com>, <michal.simek@amd.com>, <linux@roeck-us.net>,
 <erimsalih@gmail.com>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v6 5/5] iio: adc: versal-sysmon: add oversampling
 support
Message-ID: <20260612135836.526cc07f@jic23-huawei>
In-Reply-To: <20260611222738.2035062-6-salih.erim@amd.com>
References: <20260611222738.2035062-1-salih.erim@amd.com>
	<20260611222738.2035062-6-salih.erim@amd.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310940-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:andy@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:conall.ogriofa@amd.com,m:michal.simek@amd.com,m:linux@roeck-us.net,m:erimsalih@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,jic23-huawei:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EEDE2679949

On Thu, 11 Jun 2026 23:27:38 +0100
Salih Erim <salih.erim@amd.com> wrote:

> Add support for reading and writing the oversampling ratio through
> the IIO oversampling_ratio attribute. The hardware supports averaging
> 2, 4, 8, or 16 samples, plus a ratio of 1 (no averaging).
> 
> Temperature and supply channels share oversampling configuration at
> the type level (all temperature channels share one ratio, all supply
> channels share another), exposed through info_mask_shared_by_type.
> 
> The hardware encoding uses sample_count / 2 in a 4-bit field within
> the CONFIG register. Per-channel averaging enable registers must also
> be updated to activate or deactivate averaging.
> 
> Signed-off-by: Salih Erim <salih.erim@amd.com>

One minor comment inline.

>  drivers/iio/adc/versal-sysmon-core.c | 147 ++++++++++++++++++++++++++-
>  drivers/iio/adc/versal-sysmon.h      |  17 ++++
>  2 files changed, 163 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/versal-sysmon-core.c b/drivers/iio/adc/versal-sysmon-core.c
> index 20fd3a87d44..fa8f0dc868a 100644
> --- a/drivers/iio/adc/versal-sysmon-core.c
> +++ b/drivers/iio/adc/versal-sysmon-core.c

> +static int sysmon_osr_write(struct sysmon *sysmon, int channel_type, int val)

There is almost nothing shared in here between the two channel_types.
Might make sense to just split it into two helpers, particularly as
there is a channel type if / else at the caller.

> +{
> +	/*
> +	 * HW register encoding is sample_count / 2:
> +	 * 0=none, 1=2x, 2=4x, 4=8x, 8=16x (not log2-based).
> +	 */
> +	int hw_val = val >> 1;
> +	unsigned int readback;
> +	int ret;
> +
> +	switch (channel_type) {
> +	case IIO_TEMP:
> +		ret = regmap_update_bits(sysmon->regmap, SYSMON_CONFIG,
> +					SYSMON_CONFIG_TEMP_SAT_OSR,
> +					FIELD_PREP(SYSMON_CONFIG_TEMP_SAT_OSR, hw_val));
> +		if (ret)
> +			return ret;
> +
> +		/*
> +		 * Readback fence: the SysMon CONFIG register resides in the
> +		 * PMC domain behind the NoC. A posted write may not reach the
> +		 * hardware before the next MMIO access. Reading the register
> +		 * back forces the interconnect to complete the write, preventing
> +		 * a bus hang on the subsequent access.
> +		 */
> +		regmap_read(sysmon->regmap, SYSMON_CONFIG, &readback);
> +
> +		return sysmon_set_avg_enable(sysmon, SYSMON_TEMP_EN_AVG_BASE,
> +					     SYSMON_TEMP_EN_AVG_COUNT,
> +					     hw_val ? ~0U : 0);
> +	case IIO_VOLTAGE:
> +		ret = regmap_update_bits(sysmon->regmap, SYSMON_CONFIG,
> +					SYSMON_CONFIG_SUPPLY_OSR,
> +					FIELD_PREP(SYSMON_CONFIG_SUPPLY_OSR, hw_val));
> +		if (ret)
> +			return ret;
> +
> +		/* Readback fence -- see above */
> +		regmap_read(sysmon->regmap, SYSMON_CONFIG, &readback);
> +
> +		return sysmon_set_avg_enable(sysmon, SYSMON_SUPPLY_EN_AVG_BASE,
> +					     SYSMON_SUPPLY_EN_AVG_COUNT,
> +					     hw_val ? ~0U : 0);
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int sysmon_write_raw(struct iio_dev *indio_dev,
> +			    struct iio_chan_spec const *chan,
> +			    int val, int val2, long mask)
> +{
> +	struct sysmon *sysmon = iio_priv(indio_dev);
> +	unsigned int i;
> +	int ret;
> +
> +	if (mask != IIO_CHAN_INFO_OVERSAMPLING_RATIO)
> +		return -EINVAL;
> +
> +	for (i = 0; i < ARRAY_SIZE(sysmon_oversampling_avail); i++) {
> +		if (val == sysmon_oversampling_avail[i])
> +			break;
> +	}
> +	if (i == ARRAY_SIZE(sysmon_oversampling_avail))
> +		return -EINVAL;
> +
> +	guard(mutex)(&sysmon->lock);
> +
> +	ret = sysmon_osr_write(sysmon, chan->type, val);
> +	if (ret)
> +		return ret;
> +
> +	if (chan->type == IIO_TEMP)
> +		sysmon->temp_oversampling = val;
> +	else
> +		sysmon->supply_oversampling = val;
> +
> +	return 0;
> +}

