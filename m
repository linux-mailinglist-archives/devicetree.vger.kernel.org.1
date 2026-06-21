Return-Path: <devicetree+bounces-314104-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q+DSG04ROGpPXgcAu9opvQ
	(envelope-from <devicetree+bounces-314104-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 18:29:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C05E16AB445
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 18:29:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Nd2vpSal;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314104-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314104-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D5C9300821B
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 16:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB6AD29ACD7;
	Sun, 21 Jun 2026 16:28:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D8743D994;
	Sun, 21 Jun 2026 16:28:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782059337; cv=none; b=ISayXHal0/nr+VCDPwk3pOjEHjXSHcFvHAI8Zjbhay0tx+AO4XEe49FHV2MhyVUi5IKuYeZAVbXaA8D6bnyU+cG1ddsNVr5PQQd/4lyLR3u8FMacrxZ4T5TSzfmW0vSv6y2d1OMW8FuCOrlNNnKdtejQblr9tBxumScDtvhT/QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782059337; c=relaxed/simple;
	bh=NXTcweDb2MbNnqFUQxMB6jUYKmrPoFm8bjKJzoZ5Jz0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Tz+QiReKuCK44p4A2cqCYOKS2rbM9JXDrmLv7K9SS+0lEOcacsuG1z6v6lBsioCH9JqURY4yumo99Hmur2MkLJIaJWovbANj9G0bXr4eBkuiq9EX6ZQJA7RoreAYCukbdIaBCzhNU/ddMKyg0vEkLg116E4OU9GMMFc4HN/yT20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nd2vpSal; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3CD91F000E9;
	Sun, 21 Jun 2026 16:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782059336;
	bh=nefB8zUalXEKTz92jteX4bhW1PxGVI4xbkhLcgFdDeo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Nd2vpSalZot79TK8uA+z2xPUQE9BMnMjlKSUI9ABQ1FxuftvGcP/D2yjGet7l5Lke
	 fISPvHmICIdKuwT8zWEZv7phpuvUMjDIsGWavIjDO7ufs/7tR+VnLKC+yErUJ0RT8R
	 rn6OXrPYz/7iAe5XMQ5s2evEfK6081b2n2b7nysmLocXgJx/ynlQRN5IEZli+7B4R1
	 LDcYtD4flxh0B+zgcHLxaqhNtSBgp709/VQL7ayipLKAKgEvmCvdavbNWlph8pzAHd
	 4hawiNaAs7XWE2004uEeFAPcEPFa/GxEY2byF0R97YZNvQHfHcbbqW9+j7sKsAr47v
	 v7zWX7nhLDyVA==
Date: Sun, 21 Jun 2026 17:28:45 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Salih Erim <salih.erim@amd.com>
Cc: <andy@kernel.org>, <dlechner@baylibre.com>, <nuno.sa@analog.com>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <conall.ogriofa@amd.com>, <michal.simek@amd.com>, <linux@roeck-us.net>,
 <erimsalih@gmail.com>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Andy
 Shevchenko" <andriy.shevchenko@intel.com>
Subject: Re: [PATCH v10 5/5] iio: adc: versal-sysmon: add oversampling
 support
Message-ID: <20260621172845.14460273@jic23-huawei>
In-Reply-To: <20260618101414.3462934-6-salih.erim@amd.com>
References: <20260618101414.3462934-1-salih.erim@amd.com>
	<20260618101414.3462934-6-salih.erim@amd.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:andy@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:conall.ogriofa@amd.com,m:michal.simek@amd.com,m:linux@roeck-us.net,m:erimsalih@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andriy.shevchenko@intel.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-314104-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,roeck-us.net,gmail.com,vger.kernel.org,intel.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C05E16AB445

On Thu, 18 Jun 2026 11:14:14 +0100
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
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

Sashiko I think correctly calls out that you should have
the oversampling related bits set in info masks for the statically
declared temp channels as well.

Otherwise looks good to me.

I will note that sashiko was busy complaining about at least
some of these in earlier versions.  Please always take a look
before sending next version.  If it is spouting garbage (which
it does for I2C dma safety for instance) then best option I think
is to reply to your own posting saying what is wrong and what is
correct and to be addressed.

Thanks,

Jonathan



> ---
> Changes in v10:
>   - No code changes
> 
> Changes in v9:
>   - Add Reviewed-by tag from Andy Shevchenko
>   - No code changes
> 
> Changes in v8:
>   - Use unsigned int for val parameter and hw_val in both
>     osr_write helpers (Andy)
>   - Use ~0 instead of ~0U for avg enable bitmask (Andy)
> 
> Changes in v7:
>   - Split sysmon_osr_write into sysmon_osr_write_temp and
>     sysmon_osr_write_supply; caller dispatches with if/else
>     on chan->type (Jonathan)
>   - Restore HW encoding comment in both helpers; fix
>     cross-reference in sysmon_osr_write_supply
> 
> Changes in v6:
>   - Fix FIELD_PREP indentation in sysmon_osr_write (Andy)
>   - unsigned int for loop index in sysmon_write_raw (Andy)
> 
> Changes in v5:
>   - Remove unneeded parentheses in i * SYSMON_REG_STRIDE (Andy)
>   - Use struct regmap *map local variable in
>     sysmon_set_avg_enable (Andy)
>   - switch instead of redundant if/if on channel_type (Andy)
>   - Add CONFIG register readback fence after oversampling update
>     to prevent NoC bus hang from posted writes (found during
>     hardware stress testing)
> 
> Changes in v4:
>   - Return directly from sysmon_set_avg_enable calls, remove
>     else after early returns, drop unreachable return 0 (Jonathan)
>   - Rename mask defines to SYSMON_CONFIG_SUPPLY_OSR and
>     SYSMON_CONFIG_TEMP_SAT_OSR (Jonathan)
>   - Drop "bits X:Y" from GENMASK comments (Jonathan)
>   - Blank lines after if (ret) return ret blocks (Jonathan)
>   - Move oversampling read inside guard(mutex) scope
> 
> Changes in v3:
>   - No changes
> 
> Changes in v2:
>   - EN_AVG per-channel bitmask registers written with all-ones
>     instead of boolean 1 when oversampling is enabled
>   - EN_AVG write errors propagated to userspace
>   - Oversampling limited to satellite temp and supply channels;
>     static temp channels do not participate
>   - Oversampling exposes actual sample counts (1,2,4,8,16) to
>     userspace with internal HW register translation
>   - write_raw_get_fmt returns IIO_VAL_INT for oversampling ratio
>   - HW encoding documented (sample_count/2, not log2)
>   - oversampling_avail is const int[] (type match fix)
>  drivers/iio/adc/versal-sysmon-core.c | 153 ++++++++++++++++++++++++++-
>  drivers/iio/adc/versal-sysmon.h      |  17 +++
>  2 files changed, 169 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/versal-sysmon-core.c b/drivers/iio/adc/versal-sysmon-core.c
> index 50b5228aa22..bae229f27c6 100644
> --- a/drivers/iio/adc/versal-sysmon-core.c
> +++ b/drivers/iio/adc/versal-sysmon-core.c

> +
>  static int sysmon_read_label(struct iio_dev *indio_dev,
>  			     struct iio_chan_spec const *chan,
>  			     char *label)
> @@ -464,6 +602,9 @@ static int sysmon_read_label(struct iio_dev *indio_dev,
>  
>  static const struct iio_info sysmon_iio_info = {
>  	.read_raw = sysmon_read_raw,
> +	.write_raw = sysmon_write_raw,
> +	.write_raw_get_fmt = sysmon_write_raw_get_fmt,
> +	.read_avail = sysmon_read_avail,
>  	.read_label = sysmon_read_label,
>  	.read_event_config = sysmon_read_event_config,
>  	.write_event_config = sysmon_write_event_config,
> @@ -755,6 +896,10 @@ static int sysmon_parse_fw(struct iio_dev *indio_dev, struct device *dev, int ir
>  			.indexed = 1,
>  			.address = reg,
>  			.info_mask_separate = BIT(IIO_CHAN_INFO_PROCESSED),
> +			.info_mask_shared_by_type =
> +				BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),
> +			.info_mask_shared_by_type_available =
> +				BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),
>  			.event_spec = irq > 0 ?
>  				sysmon_supply_events : NULL,
>  			.num_event_specs = irq > 0 ?
> @@ -786,7 +931,11 @@ static int sysmon_parse_fw(struct iio_dev *indio_dev, struct device *dev, int ir
>  			.address = SYSMON_TEMP_SAT_BASE +
>  				   (reg - 1) * SYSMON_REG_STRIDE,
>  			.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
> -			.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
> +			.info_mask_shared_by_type =
> +				BIT(IIO_CHAN_INFO_SCALE) |
> +				BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),
> +			.info_mask_shared_by_type_available =
> +				BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),
>  			.datasheet_name = label,

This stuff also needs to be set for the static channels as it applies
to them as well.  Obviously it only makes a practical difference if
you have no satellite sensors (in which case it makes little sense anyway)
but it is the 'right' thing to do to document they apply there as well.

>  		};
>  	}
> @@ -833,6 +982,8 @@ int devm_versal_sysmon_core_probe(struct device *dev, struct regmap *regmap)
>  
>  	sysmon = iio_priv(indio_dev);
>  	sysmon->regmap = regmap;
> +	sysmon->temp_oversampling = 1;
> +	sysmon->supply_oversampling = 1;
>

