Return-Path: <devicetree+bounces-298723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ErFeDLaeCGq7yQMAu9opvQ
	(envelope-from <devicetree+bounces-298723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 18:43:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 666CA55CA9E
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 18:43:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 236AD300B13A
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 16:43:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69AAF3E7BAC;
	Sat, 16 May 2026 16:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qX+waRUY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468302750FB;
	Sat, 16 May 2026 16:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778949809; cv=none; b=mIvCFFop17an+Kxtr862Gz/gHE6xXlj/0iGkMLoPNWycMldijzVc9TMlMLwEHQkS0p0Allqr2JL9L9e4w3pb2YhibQVNVrjk5a8kW7joACJ+EcGkiiFkLruWoKVlOtVlo/j5/HNLtwFUm4EhI6LVQoqtzEKzsRTGzu9en4rEObI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778949809; c=relaxed/simple;
	bh=NfHy2FDDpiyvBxXVBseWqTQgrM7XfCcCYDjCRbyQZtw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hEnvHB1D/HMCZPZ0l5+EDKxoG5p4NLjNQC7BoYkOep4cGdoV0VKkmAm/ZJzRof2uZPIilrgIXczTC1E3KxoO8B4qW+zy40oUhjCfLXkxPWC1xCzlgtTFEBrTdqBc5CcL/5xHJo+ryfUjsty2/M0oyqRfRWx/DzLlN+RtfZD8fAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qX+waRUY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFAEFC19425;
	Sat, 16 May 2026 16:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778949808;
	bh=NfHy2FDDpiyvBxXVBseWqTQgrM7XfCcCYDjCRbyQZtw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=qX+waRUYUSpStVNRh620djQbEDHJ0zuT4WVPkze83DO4ADQNdG1PwGQC3DptZgX2P
	 uSN1NvATpIXSjeR3cXP+dwWuysEgah3N5O6SMOQSScnsmaR6XS68G2xUQ0XRI4m9UL
	 MHIMh/mL3Xd6Xg1gPR39Osal59nLZm2ftRA57BQgWeTZOJJ/r4v8GKGyOmpGn7+Nwa
	 5dq7dbhHyqOHR2hIqJPhaxE7RKBq49u3tQNMyyxCqXhObI3k60tMmFetY7+2xXCFk4
	 KxUCifTEYmtEH5iIJl6Q1v2Xsr0s2hwlYVkiWhIcRB43rNqJdhXQZvdXSn2gdIJ940
	 oEdpWIf6G3gwQ==
Date: Sat, 16 May 2026 17:43:18 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Liviu Stan <liviu.stan@analog.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Antoniu
 Miclaus <antoniu.miclaus@analog.com>, Francesco Lavra
 <flavra@baylibre.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux@analog.com>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 1/7] iio: temperature: ltc2983: Fix macro
 parenthesization and rename
Message-ID: <20260516174318.3d613a42@jic23-huawei>
In-Reply-To: <20260514144712.64374-2-liviu.stan@analog.com>
References: <20260514144712.64374-1-liviu.stan@analog.com>
	<20260514144712.64374-2-liviu.stan@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 666CA55CA9E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298723-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Thu, 14 May 2026 17:46:48 +0300
Liviu Stan <liviu.stan@analog.com> wrote:

> Wrap the 'chan' parameter in LTC2983_CHAN_START_ADDR() and
> LTC2983_CHAN_RES_ADDR() with parentheses to prevent potential
> macro argument expansion issues. Also rename LTC2983_CHAN_START_ADDR
> to LTC2983_CHAN_ASSIGN_ADDR and LTC2983_CHAN_RES_ADDR to
> LTC2983_RESULT_ADDR, to better reflect the datasheet names and avoid
> them being confused as related.
> 
> Fixes: f110f3188e5639c81c457b2b831d40dfe3891bdb ("iio: temperature: Add support for LTC2983")
Firstly 12 chars of the hash is enough.
Secondly why a fix at all?

Looks like a readability improvement but not something we'd backport.

Also as Sashiko points out you need to mention the additional parameter.
 https://sashiko.dev/#/patchset/20260514144712.64374-1-liviu.stan%40analog.com

Also, build your series one patch at a time.  This looks like it won't build.
Jonathan

> Signed-off-by: Liviu Stan <liviu.stan@analog.com>
> ---
> Changes in v2:
> - New patch.
> 
>  drivers/iio/temperature/ltc2983.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/iio/temperature/ltc2983.c b/drivers/iio/temperature/ltc2983.c
> index 38e6f8dfd3b8..a292274e6ff0 100644
> --- a/drivers/iio/temperature/ltc2983.c
> +++ b/drivers/iio/temperature/ltc2983.c
> @@ -56,10 +56,10 @@
>  #define LTC2983_EEPROM_WRITE_TIME_MS		2600
>  #define LTC2983_EEPROM_READ_TIME_MS		20
>  
> -#define LTC2983_CHAN_START_ADDR(chan) \
> -			(((chan - 1) * 4) + LTC2983_CHAN_ASSIGN_START_REG)
> -#define LTC2983_CHAN_RES_ADDR(chan) \
> -			(((chan - 1) * 4) + LTC2983_TEMP_RES_START_REG)
> +#define LTC2983_CHAN_ASSIGN_ADDR(chan) \
> +			((((chan) - 1) * 4) + LTC2983_CHAN_ASSIGN_START_REG)
> +#define LTC2983_RESULT_ADDR(chan, base) \
> +			((((chan) - 1) * 4) + (base))
>  #define LTC2983_THERMOCOUPLE_DIFF_MASK		BIT(3)
>  #define LTC2983_THERMOCOUPLE_SGL(x) \
>  				FIELD_PREP(LTC2983_THERMOCOUPLE_DIFF_MASK, x)
> @@ -351,7 +351,7 @@ static int __ltc2983_chan_assign_common(struct ltc2983_data *st,
>  					const struct ltc2983_sensor *sensor,
>  					u32 chan_val)
>  {
> -	u32 reg = LTC2983_CHAN_START_ADDR(sensor->chan);
> +	u32 reg = LTC2983_CHAN_ASSIGN_ADDR(sensor->chan);
>  
>  	chan_val |= LTC2983_CHAN_TYPE(sensor->type);
>  	dev_dbg(&st->spi->dev, "Assign reg:0x%04X, val:0x%08X\n", reg,
> @@ -1197,7 +1197,7 @@ static int ltc2983_chan_read(struct ltc2983_data *st,
>  	}
>  
>  	/* read the converted data */
> -	ret = regmap_bulk_read(st->regmap, LTC2983_CHAN_RES_ADDR(sensor->chan),
> +	ret = regmap_bulk_read(st->regmap, LTC2983_RESULT_ADDR(sensor->chan, base_reg),
>  			       &st->temp, sizeof(st->temp));
>  	if (ret)
>  		return ret;


