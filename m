Return-Path: <devicetree+bounces-261487-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFcSKr10fmnYZAIAu9opvQ
	(envelope-from <devicetree+bounces-261487-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 22:31:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3163CC4017
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 22:31:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B07603003985
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 690A2339857;
	Sat, 31 Jan 2026 21:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="wnDeEaXV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D57320A00
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 21:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769895097; cv=none; b=qkJvMmHu/lRC+JJtUONAjFSjxHrmiJ4rBy+S2N997OjIQ5Bvjn/RK4ulekJfaXwXz1e9TRdOLDpC/zstsFcei+acjPGbx+66wrkLyqk23LC2x6a6aiA9foHB+r95R+9lgZcAUrd/QOgcx2DD0i58o2JU3UC4Ga6C8ilyWEo6MZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769895097; c=relaxed/simple;
	bh=ERnv3otAcYg//bBxuwJmzFwm1JYlCphbavP5uFY2jcg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lU+H+3+3JdDOGDEO866LVVVn1M/PXkfQlnt6C6O2j7WoGTPuCcc1v/606ylS0xRFdciQ0NK+XD14tC+6FejyrJVRUZPNet+V9Gf7d3bsnhcpXYIUvGVEl0f8f6Eyjql/EBBZfy1jLnLN176D/6vku7hxyBAFzobOSFFa6nGYmA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=wnDeEaXV; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-45f053b7b90so2154278b6e.0
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 13:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769895094; x=1770499894; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oN7nfsMLYgFLh50J5K6u/iWba/AywR5N7bpGoZqwJBw=;
        b=wnDeEaXVLQN+ycjBxkW6hwwuh7FHoCypHz1GXYVtdx/OFAFeGZs8pojxxU+Lo/48iY
         NR2ZVQbVSF6J6z8Ulw+JDhIo0VjXGAUIlPp1NfxHp15MQq46yalPPAQAE7wlaJctJd7i
         21OqRyiGnlSMIR9ISZpIRY5IYXglot7P0D8Tup2qSA2fBZpWhvBOhHQj6GmpwikF1k15
         DOwjw/TP/o5aPkcgD/vNmwRAIruyskVoqiIgAgUtzCPZPDMn6XgztlQkKfgUerjKbEPh
         15tEPBT4+0G3v7w0wNT2nT9P0QpQI+iMWAzPD2TTFPbjaSLyrd8251U6kr4LZNJVEdp4
         vYFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769895094; x=1770499894;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oN7nfsMLYgFLh50J5K6u/iWba/AywR5N7bpGoZqwJBw=;
        b=CEbj1NgTlFJvQclS7NbWz+OeHDbrkgDytq711Wx0a6dt6ftH8lAi9rE2xWs8H5Uu1q
         lq2RrdnA133f54uWuqPn4vX7gvBap3LCTRZZSzcwN4s+NCSUWJyDbnQx6IoYMCFm3sH5
         Ula0yyja7of/nhv99vWS5wSxx+iQU7ig4D+2bZEv1Q+GMK9jbNyRuhxjrAoMoEcI4MfT
         Lpw3JH6TdOPYMi44HtUBi/w7zOtq4Hpd4QhY6Q1/RDJpopl8Ipd1TBq15aUMyeuMXtVc
         uBsMGY1neaHsm4jgHvWPDnEfd4Mfwpf7AaBgdiR1bIs/jD/zx7sKCL0CHRFD557nMdho
         khuQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAwHc5FBy2fuh3wJ3McvJt3jVo6wn3SeNBSxh1MSK9+kxD69mL81WoFrsjZRsqHne+F452puS0OSIL@vger.kernel.org
X-Gm-Message-State: AOJu0YyTok4eClLL7TL/yROLDrhviU6n5NRTHTBP2Cs6j7sVazVjkam2
	PnUN3dwVFLV8JBcC3isqcJErTUKTODiMkiZ5jjztjpd+Ar/BZdczTL39G1RtgK1xsvg=
X-Gm-Gg: AZuq6aLJzk0WJmiw8n5Ot35Xs+1eIUyFEa4arVENfmEZeJhq8oYZ4Izp0g/nkTvMXcY
	/MSYezboDBH1CIIehUDvf10MLyi3JY3F1g4yYf0KuqOte2DD9g1AgaRf3mTngWJ7yrslBw4mJji
	9+YYGlnQO20emebgKtV5BS2eZ4CvT4jNyNBF5rLbJUMCRVgMB0TdxYeO9fXBjXjN9gQZEbhDEg1
	7fnbWfIdaoE1rKXZ5adCMgTkZK+kCOWZvuCR8LHid977LGrGL22tlXFENaPXtbyzgKT1+vvBQ1F
	yg1z7kPQ87cypxSkLYmGcAVlj4XUEW0j9eff8GFSYcLI4e0hclcywblI27WMi5DpaD6gx55WVo3
	ozilWORat0Crz4AVMnZG+bLUWCFctPriz+hAG27hoceydmgezqF9GN4VYeumemW8YnS1RL7+vLj
	OlekHi3cC9BNEbKinAWVaNVXOrOM5n4cKWaWh3RMqUNuesQUhoHV15fhEPZPNN
X-Received: by 2002:a05:6808:1a19:b0:45e:e52c:8a9b with SMTP id 5614622812f47-45f34d98b5amr3091519b6e.59.1769895093915;
        Sat, 31 Jan 2026 13:31:33 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7? ([2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45f08d894f5sm7181770b6e.5.2026.01.31.13.31.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 13:31:33 -0800 (PST)
Message-ID: <629d8505-c4ba-4089-8dec-d627e3acd337@baylibre.com>
Date: Sat, 31 Jan 2026 15:31:32 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/8] iio: dac: ds4424: add DS4402/DS4404 device IDs
To: Oleksij Rempel <o.rempel@pengutronix.de>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: David Jander <david@protonic.nl>, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, Andy Shevchenko <andy@kernel.org>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
References: <20260128153824.3679187-1-o.rempel@pengutronix.de>
 <20260128153824.3679187-7-o.rempel@pengutronix.de>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260128153824.3679187-7-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261487-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre.com:mid,pengutronix.de:email,protonic.nl:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 3163CC4017
X-Rspamd-Action: no action

On 1/28/26 9:38 AM, Oleksij Rempel wrote:
> From: David Jander <david@protonic.nl>
> 
> Add I2C/OF IDs for DS4402 and DS4404 and set the correct channel count.
> Follow-up changes add per-variant scaling based on external Rfs.
> 
> Co-developed-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Signed-off-by: David Jander <david@protonic.nl>
> ---
> changes v3:
> - Reset author to David Jander and added Co-developed-by tag for
>   Oleksij Rempel to clarify roles
> changes v2:
>   - No changes.
> ---
>  drivers/iio/dac/ds4424.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
> index c03051dc763e..f340d491fcc1 100644
> --- a/drivers/iio/dac/ds4424.c
> +++ b/drivers/iio/dac/ds4424.c
> @@ -35,6 +35,8 @@
>  }
>  
>  enum ds4424_device_ids {
> +	ID_DS4402,
> +	ID_DS4404,
>  	ID_DS4422,
>  	ID_DS4424,
>  };

I suppose it was already suggested in previous reviews that we should
be dropping these IDs and using device info instead of expanding the
switch statement below.

> @@ -237,6 +239,12 @@ static int ds4424_probe(struct i2c_client *client)
>  		goto fail;
>  
>  	switch (id->driver_data) {
> +	case ID_DS4402:
> +		indio_dev->num_channels = DS4422_MAX_DAC_CHANNELS;
> +		break;
> +	case ID_DS4404:
> +		indio_dev->num_channels = DS4424_MAX_DAC_CHANNELS;
> +		break;
>  	case ID_DS4422:
>  		indio_dev->num_channels = DS4422_MAX_DAC_CHANNELS;
>  		break;
> @@ -278,6 +286,8 @@ static void ds4424_remove(struct i2c_client *client)
>  }
>  
>  static const struct i2c_device_id ds4424_id[] = {
> +	{ "ds4402", ID_DS4402 },
> +	{ "ds4404", ID_DS4404 },
>  	{ "ds4422", ID_DS4422 },
>  	{ "ds4424", ID_DS4424 },
>  	{ }
> @@ -286,6 +296,8 @@ static const struct i2c_device_id ds4424_id[] = {
>  MODULE_DEVICE_TABLE(i2c, ds4424_id);
>  
>  static const struct of_device_id ds4424_of_match[] = {
> +	{ .compatible = "maxim,ds4402" },
> +	{ .compatible = "maxim,ds4404" },
>  	{ .compatible = "maxim,ds4422" },
>  	{ .compatible = "maxim,ds4424" },
>  	{ }


