Return-Path: <devicetree+bounces-303834-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIC4NYk+GGo1hggAu9opvQ
	(envelope-from <devicetree+bounces-303834-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 15:09:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3348E5F27AC
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 15:09:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9154330B0DC9
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 13:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 919913EFFCF;
	Thu, 28 May 2026 13:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvOp/IiI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5279B3E3D89;
	Thu, 28 May 2026 13:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779973538; cv=none; b=kfL06ZaC6LJnXyjJIlv4Ce7pcvCTzxid5P31HRaJ+xM7xxd2cz4q79BoMqItW7Bugt2yDdvsBfuXr0xFmJ7uFIXANFsbpZufisQCs8dqF+Pt6NZApS016WHgqHUmjtjxsVagYUtrkWhlUnNn4OOAmYuWAYihLenlc87G3jwbnzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779973538; c=relaxed/simple;
	bh=hbYSr38oIjw0Q8Drb3P2si5dW1V08qwDDdM52qetlb4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sGg7jEGuRze1Zz5bloi0pVcdpiqseQkjn/cyK0VLT9WXIkQOiGSmiIpHpAcBb7YRvs9Rr68VzEM60SqzMAhMDE/Gu8O2enDH3angmBz40Du+gVJBPYfXwMbKW3e3uiaAQflqO/V4i7hlpi0dSGjw8/Y6SWwHhBYkmLtOmyx2+Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvOp/IiI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB20F1F000E9;
	Thu, 28 May 2026 13:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779973537;
	bh=+ZlEqkjsl+AVNd64+NnfLgG04F4TybLXbRexGVX8ObM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=WvOp/IiILhZpwAvaYGKV4i7IVDFiDasjL8quEI/iqFRE17lj6EFSY81LS/TkswnJ+
	 rntwk0ToUaGU7FhIZl0fvnqcMX5MbToW9VWkxiLIa/oSWR2QPW3jD5n4lWBsqqjRw/
	 6JNU76SZIBqkKRvNek8HMl4JTYdTIe/IwRW30VQKdoXqO7dQhqhpvXsSyOAm0hTXfH
	 vb5hhNupIST8k1y8XTLdk7kZgJJb9l/mL7+f8FMW7IegNUpaWHz6j81Lmg9PK+VZM6
	 Erqd4Uwoa/Fxy3cRL0/vSwHXaMuiIdPZX72/BMeAy9yucRi8QipvhcxP7IyyNZ2QUO
	 GSJINw6yVl9/g==
Date: Thu, 28 May 2026 14:05:26 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Salih Erim <salih.erim@amd.com>
Cc: Andy Shevchenko <andy@kernel.org>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Conall O'Griofa <conall.ogriofa@amd.com>,
 Michal Simek <michal.simek@amd.com>, Guenter Roeck <linux@roeck-us.net>,
 Salih Erim <erimsalih@gmail.com>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 5/5] iio: adc: versal-sysmon: add oversampling
 support
Message-ID: <20260528140526.78434dde@jic23-huawei>
In-Reply-To: <20260527114211.174288-6-salih.erim@amd.com>
References: <20260527114211.174288-1-salih.erim@amd.com>
	<20260527114211.174288-6-salih.erim@amd.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-303834-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,roeck-us.net,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 3348E5F27AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 27 May 2026 12:42:11 +0100
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
Really minor stuff from a reread

> +static int sysmon_osr_write(struct sysmon *sysmon, int channel_type, int val)
> +{
> +	/*
> +	 * HW register encoding is sample_count / 2:
> +	 * 0=none, 1=2x, 2=4x, 4=8x, 8=16x (not log2-based).
> +	 */
> +	int hw_val = val >> 1;
> +	int ret;
> +
> +	if (channel_type == IIO_TEMP) {
> +		ret = regmap_update_bits(sysmon->regmap, SYSMON_CONFIG,
> +					SYSMON_TEMP_SAT_CONFIG_MASK,
> +					FIELD_PREP(SYSMON_TEMP_SAT_CONFIG_MASK,
> +						   hw_val));
> +		if (ret)
> +			return ret;
blank line
> +		ret = sysmon_set_avg_enable(sysmon, SYSMON_TEMP_EN_AVG_BASE,
> +					    SYSMON_TEMP_EN_AVG_COUNT,
> +					    hw_val ? ~0U : 0);
> +		if (ret)
> +			return ret;
		return sysmon_set...

> +	} else if (channel_type == IIO_VOLTAGE) {
Won't need the else if returned already.
> +		ret = regmap_update_bits(sysmon->regmap, SYSMON_CONFIG,
> +					SYSMON_SUPPLY_CONFIG_MASK,
> +					FIELD_PREP(SYSMON_SUPPLY_CONFIG_MASK,
> +						   hw_val));
> +		if (ret)
> +			return ret;
blank line
> +		ret = sysmon_set_avg_enable(sysmon, SYSMON_SUPPLY_EN_AVG_BASE,
> +					    SYSMON_SUPPLY_EN_AVG_COUNT,
> +					    hw_val ? ~0U : 0);
> +		if (ret)
> +			return ret;
		return sysmon_set...

> +	} else {
No else needed here either

> +		return -EINVAL;
> +	}
> +
> +	return 0
And this isn't needed at all.

> +}

> diff --git a/drivers/iio/adc/versal-sysmon.h b/drivers/iio/adc/versal-sysmon.h
> index a78362f95e6..cf69be62709 100644
> --- a/drivers/iio/adc/versal-sysmon.h
> +++ b/drivers/iio/adc/versal-sysmon.h
> @@ -25,11 +25,13 @@ struct regmap;
>  #define SYSMON_IMR			0x0048
>  #define SYSMON_IER			0x004C
>  #define SYSMON_IDR			0x0050
> +#define SYSMON_CONFIG			0x0100
>  #define SYSMON_TEMP_MAX			0x1030
>  #define SYSMON_TEMP_MIN			0x1034
>  #define SYSMON_SUPPLY_BASE		0x1040
>  #define SYSMON_ALARM_FLAG		0x1018
>  #define SYSMON_ALARM_REG		0x1940
> +#define SYSMON_SUPPLY_EN_AVG_BASE	0x1958
>  #define SYSMON_TEMP_TH_LOW		0x1970
>  #define SYSMON_TEMP_TH_UP		0x1974
>  #define SYSMON_OT_TH_LOW		0x1978
> @@ -41,6 +43,7 @@ struct regmap;
>  #define SYSMON_TEMP_MAX_MAX		0x1F90
>  #define SYSMON_STATUS_RESET		0x1F94
>  #define SYSMON_TEMP_SAT_BASE		0x1FAC
> +#define SYSMON_TEMP_EN_AVG_BASE		0x24B4
>  #define SYSMON_MAX_REG			0x24C0
>  
>  /* NPI unlock value written to SYSMON_NPI_LOCK */
> @@ -57,6 +60,16 @@ struct regmap;
>  /* ISR/IMR temperature and OT alarm mask (bits 9:8) */
>  #define SYSMON_TEMP_INTR_MASK		GENMASK(9, 8)
>  
> +/* Config register: supply oversampling field (bits 17:14) */
> +#define SYSMON_SUPPLY_CONFIG_MASK	GENMASK(17, 14)
> +
> +/* Config register: temp satellite oversampling field (bits 27:24) */

I missed this before, but given the GENMASK just below the bits part
of these comments is pointles. Drop it.

Ideally also name them in a way that makes it clear what register
they are fields of.

> +#define SYSMON_TEMP_SAT_CONFIG_MASK	GENMASK(27, 24)



