Return-Path: <devicetree+bounces-317104-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NzeXO5CFQmo+9AkAu9opvQ
	(envelope-from <devicetree+bounces-317104-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 16:47:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 828516DC3CE
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 16:47:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=iYKJqDU+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317104-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317104-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8CD7230F3E5A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 14:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 669F041B34E;
	Mon, 29 Jun 2026 14:38:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC464192EF
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 14:38:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782743897; cv=none; b=kTpfZrz4VmRlddG9/dilqq4a0P3PUMdzFM7N0JQB+BuCcZgPkTKgeCdc7nJV4Jam5bfNcZdxGSceguqFtFtkm4PM2wHPoBuDYZ6+VmZt2XrP8ALZT+JJrSYtZJhdw2F8NKwMlsJIz6M7lgs7Y/mGczpkXl8XqK0YFXLDGpqC/q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782743897; c=relaxed/simple;
	bh=imD23SG8a/tCSPXtxprxTReSZHlFvtv1LiJFmM4gKKE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sRtS+QRDrUSMWTxlj4szfirkggf53wHb6TOukOxrhNdq1JEF72doxnPVZEzGxI2Z+Akyi65kYLQuDOdhGEDlIcMSoSlifQTDyyJwB6GDAgrXIBuNs89G9zLdKdzAfraMgXSLE8H6pzbbn/+LhIhPOhTHMSnCYnqWj/l3OEQF8cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=iYKJqDU+; arc=none smtp.client-ip=209.85.160.53
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-43d3a0dabb0so2134312fac.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 07:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782743895; x=1783348695; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8omXPji0y1RQcAHd6aNa0PgUMtAkZ+oZmXD1ea506h8=;
        b=iYKJqDU+Adhy/FaYBcVOQ0MFtSqh1UWemFqmHCyEuVhshElxz6NpNQ64ah/dNkgqrT
         utxBwShmsVBAOVBiimuP5iWPlKzN3RdiliX4P/KUdg3nr5qnKiVg/LmRvztlgP1AR0uc
         C6CSDMNuj5hysQZn2/brdz8IfkRAyoXPZ0/eSNgVn2zC7wgqZ10VLslW/f17lJorrJJd
         2iMjFZjO1OjTw7WzbypFOL4wvtCgnj/LhqMdnRD1jDCYnzVFrdqj/t3u/YvONneGqcuN
         1lySpk+NN1G9XWyuKDtk7rpCKTK0+V+sxSrNmW2ygeuVw4IKh9oYtC6JrPsDebjzOIjW
         YXeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782743895; x=1783348695;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8omXPji0y1RQcAHd6aNa0PgUMtAkZ+oZmXD1ea506h8=;
        b=e4ipkcyt7yhmQQ8BaMLrRoX1NNv5mkV25F2Tip2hRKrzQXXdQ9LtsaxorOFQO1yhOo
         ZjuP0bY1jU9FQ8KHangXPoovBRVid2ee+ripFZTb1hFe77odDPVcpYB/flQN+uSKm3EW
         ShdKCFYHESps7De9mOUSuNRBWI9nkR1nhzQJyTm94U+o7Yfau7bpDvwZuiU+FsDaS1kT
         h1m66uEVOuvfBGvF4VsYcnC6GmkR0dcXtivsNQuRubHizrC67R1O3O5vnqYUCCBBy13U
         Q281+shQhQElJm0z9fCILbPh0Ycd0+ex3rbNMCcs4iFmUR7HZOPOhkjp00NI6vKC7LDB
         cU3w==
X-Forwarded-Encrypted: i=1; AHgh+RpJTRpTnyKFLJ0ONsojbDnaYtk/zg4KWovvCRcPXI8RGL5p29bWTA9+pi9tzPOoWYuQFxEssuRqesAy@vger.kernel.org
X-Gm-Message-State: AOJu0YxBKdY1lYHJegVDZ0FautnDGlSIqL5P5fPImJz10Hc6/pryobNK
	uOJ851Wqu8iZBjgAAl8psof3Rfgn8qPKJEsr4IAlmSYY3ikky7XXKnMZTuBswiXnA9o=
X-Gm-Gg: AfdE7cmhpTVCb+NeLJvv5FMQJADd0EHIv4OkMgvT2/TaHjyz2O+zNO4U7AHG55YuAua
	9uOTmvh+d5fTzmAQm/ztKDUGzl/2Lp34JMm9TyLXoJyw7rKzfb2dhk0UrsBZTPboyL4CTM91Oe9
	Kql4aAlRpu9pLTPFK7E33xCX/Qa/l9VuQtAQbIxf2EAYFzsJ7sdKMICZLiCVR3AIyFriM/p60Tc
	HhlvSZhmnIheZ6ffg+YSfyv2tEvp9PoGWsJOTLMxgXautjxSieR9bc3Su6tFOainPl74NSMH6Rs
	Ws2aMa1NQM7U1WPYsiMt30GL8SDcJaHSu7ZGZTq1nfQSbJGiBpMB9LIMjHrhTDsW7kf2rWdgEKT
	+Cci77ItkxGYD8nXyJ6pxCop9WKi7qptwMWyGZetl3C43aR+uzfDUX3K8QI3ObFu6q6K/6rBhIj
	BeLLXdKijifyFIFdtZc06L9CgRC7k3MfYeNphPrBSeQ4MenRyhiq+TRrO7s0Vr9Ro=
X-Received: by 2002:a05:6870:3b18:b0:448:cf96:25c7 with SMTP id 586e51a60fabf-448cf9642b8mr786761fac.17.1782743894761;
        Mon, 29 Jun 2026 07:38:14 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:3533:aa22:9a69:df1c? ([2600:8803:e7e4:500:3533:aa22:9a69:df1c])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4472f04236fsm19516743fac.14.2026.06.29.07.38.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 07:38:14 -0700 (PDT)
Message-ID: <dba5ef4d-57e3-4016-842c-dad6990d7207@baylibre.com>
Date: Mon, 29 Jun 2026 09:38:13 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/7] iio: adc: Add ti-ads1262 driver
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260628-ads126x-v2-0-4b1b231325ba@gmail.com>
 <20260628-ads126x-v2-2-4b1b231325ba@gmail.com>
 <0d7a5a3b-dc11-472f-a09a-44df887d5147@baylibre.com>
 <DJKY6WN6KS2R.2ZF2TTJU7LBE3@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <DJKY6WN6KS2R.2ZF2TTJU7LBE3@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317104-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[baylibre.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:dkim,baylibre.com:mid,baylibre.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 828516DC3CE

On 6/28/26 3:00 PM, Kurt Borja wrote:
> On Sun Jun 28, 2026 at 12:15 PM -05, David Lechner wrote:
>> On 6/28/26 12:36 AM, Kurt Borja wrote:
>>> Add the ti-ads1262 driver with initial support for the primary ADC
>>> (ADC1). The ADS1263 auxiliary ADC (ADC2) is handled by a separate driver
>>> and interoperability considerations were taken into account.
>>>

...

>>> +static int ads1262_read_raw(struct iio_dev *indio_dev,
>>> +			    struct iio_chan_spec const *chan, int *val,
>>> +			    int *val2, long mask)
>>> +{
>>> +	struct ads1262 *st = iio_priv(indio_dev);
>>> +	struct ads1262_channel *chan_data = &st->channels[chan->scan_index];
>>> +	u8 realbits = chan->scan_type.realbits;
>>> +	__be32 raw;
>>> +	int ret;
>>> +
>>> +	switch (mask) {
>>> +	case IIO_CHAN_INFO_RAW:
>>> +		ret = ads1262_channel_read(st, chan_data, &raw);
>>> +		if (ret)
>>> +			return ret;
>>> +		*val = sign_extend32(be32_to_cpu(raw), realbits - 1);
>>> +
>>> +		return IIO_VAL_INT;
>>> +
>>> +	case IIO_CHAN_INFO_SCALE: {
>>> +		guard(mutex)(&st->chan_lock);
>>> +
>>> +		ret = ads1262_channel_get_scale(st, chan, val, val2);
>>> +		if (ret)
>>> +			return ret;
>>> +
>>> +		return IIO_VAL_INT_PLUS_NANO;
>>> +	}
>>> +
>>> +	case IIO_CHAN_INFO_HARDWAREGAIN: {
>>
>> There is only one other ADC that uses "hardwaregain". Usually, we just make
>> scale writeable to control the gain. I don't remember what the rules for
>> that attribute are. Using it for in_voltage is not documented in the ABI.
> 
> I went with hardwaregain because the scale loses too many significant
> digits at high gain. With the internal reference and gain = 1, the scale
> is at 0.000001164; then at gain = 32, the scale is at 0.000000036.
> 
> In this case I expect users to just calculate the scale themselves based
> on the hardwaregain. Is this acceptable? If not I'll go with
> scale_available.

I'm pretty sure there is a series floating around that has proposed
adding new fixed-point IIO_VAL_* types that could be another solution.
We'll see what Jonathan says about this too.


>>> +static int ads1262_regmap_read(void *context, const void *reg_buf,
>>> +			       size_t reg_size, void *val_buf, size_t val_size)
>>> +{
>>> +	struct ads1262 *st = context;
>>> +	struct spi_transfer xfer = {
>>> +		.tx_buf = st->tx,
>>> +		.rx_buf = st->rx,
>>> +		.len = reg_size + 1 + val_size,
>>> +	};
>>> +	int ret;
>>> +
>>> +	guard(mutex)(&st->xfer_lock);
>>
>> SPI bus and regmap both already have their own locking, so putting a lock
>> here seems out of place. Instead, the lock should be for higher-level
>> operations where there are mulitple register access in a single operation.
> 
> I agree. I can definitely move this one to a "higher level". But IMO,
> because this also protects tx and rx buffers, it makes sense to have it
> here too.

It still seems redundant to me to have a lower-level lock if
we have a higher-level lock that is always going to be held
anyway. But maybe there is some case where it still makes sense?


>>> +static int ads1262_parse_firmware(struct ads1262 *st)
>>> +{
>>> +	struct device *dev = &st->spi->dev;
>>> +	struct clk *clk;
>>> +	u32 reg;
>>> +	int ret;
>>> +
>>> +	/* Set the nominal clock frequency */
>>> +	clk = devm_clk_get_optional_enabled_with_rate(dev, NULL, 7372800);
>>
>> This is quite unusual. Usually an external clock would be a fixed clock
>> and therefore can't be set.
> 
> Really? It can be a crystal of course, but it also can be anything else.
> Shouldn't I be trying to set the clock frequency in that case?

According to the datasheet, 7.3728 MHz is just the nominal value while
1 to 8 MHz is allowed. So I would expect the external clock to already
be providing the chosen design-specific rate and we should be getting
the rate here, not setting it.

> 
>>
>>> +	if (IS_ERR(clk))
>>> +		return dev_err_probe(dev, PTR_ERR(clk),
>>> +				     "Failed to get external clock\n");
>>> +
>>> +	ret = devm_regulator_get_enable(dev, "dvdd");
>>> +	if (ret)
>>> +		return dev_err_probe(dev, ret, "Failed to get dvdd regulator\n");
>>> +
>>> +	st->avdd_uV = devm_regulator_get_enable_read_voltage(dev, "avdd");
>>
>> We only need the voltage of avdd if it is actually used as a reference, which
>> is probably quite rare. Not all regulators provide a voltage value.
> 
> Then I should just check for ENODEV here.

Except AVDD is a required supply. They way I did it in the driver I am working
on is first parse all of the channels to see if anything is actually using AVDD
as a reference and only call devm_regulator_get_enable_read_voltage() in that
case, otherwise call devm_regulator_get_enable().

> 
>>
>>> +	if (st->avdd_uV < 0)
>>> +		return dev_err_probe(dev, st->avdd_uV, "Failed to get avdd regulator\n");
>>> +
>>> +	st->refp_uV = devm_regulator_get_enable_read_voltage(dev, "refp");
>>> +	if (st->refp_uV < 0 && st->refp_uV != -ENODEV)
>>> +		return dev_err_probe(dev, st->refp_uV, "Failed to get refp regulator\n");
>>> +
>>> +	st->refn_uV = devm_regulator_get_enable_read_voltage(dev, "refn");
>>> +	if (st->refn_uV < 0 && st->refn_uV != -ENODEV)
>>> +		return dev_err_probe(dev, st->refn_uV, "Failed to get refn regulator\n");
>>> +
>>> +	st->start_gpiod = devm_gpiod_get_optional(dev, "start", GPIOD_OUT_LOW);
>>> +	if (IS_ERR(st->start_gpiod))
>>> +		return dev_err_probe(dev, PTR_ERR(st->start_gpiod),
>>> +				     "Failed to get start GPIO\n");
>>> +
>>> +	st->reset_gpiod = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
>>> +	if (IS_ERR(st->reset_gpiod))
>>> +		return dev_err_probe(dev, PTR_ERR(st->reset_gpiod),
>>> +				     "Failed to get reset GPIO\n");
>>
>> This is currently never used.
> 
> It has to be de-asserted for the chip to be in an active state though.
> 
Usually, if we have hardware reset available, we use it to reset instead
of writing a register to do the reset.


