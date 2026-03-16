Return-Path: <devicetree+bounces-276101-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGcdJU3ht2mcWAEAu9opvQ
	(envelope-from <devicetree+bounces-276101-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:54:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BAD2984AA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:54:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BCEB4303A482
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5F1A38F953;
	Mon, 16 Mar 2026 10:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M6KzD6Pw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78EF134B404
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773658253; cv=none; b=RtevyPCbknHUXJIyniWuWcCBTjFsQ7/+EOtlfxUBpv99d508F2IUupGIcQXp/X6mxl2WLC0L+XSUV76AitRIu+Z6+VEjRRvWnY5jKLprFsTeZzlvatjgHMF1bA+rKgIhqojktTZ31IQTfpl69662MNWYDkarVBnTcP7wiLyPF2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773658253; c=relaxed/simple;
	bh=WuphdEG5WMxLm6CNAhSgSsU6b0QIPWdhcGxytQxDhYg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MMRsU7pXdP0c92rW2VAKcJd2gUDpug331djI2So+T4ADuleWHBjK5051yi3GdpszHtHKcrFRa9gWZbSLI9bLvMBKxUb2yCBUxeuVDwOYuSVwNd4WUKGpgSjllZPdLX969HU8FGWkAf4t5bd2VBJE/3B5BVkLuzpNEaBT/jN7OwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M6KzD6Pw; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b7cf4a975d2so577404866b.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773658251; x=1774263051; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zX8fXT4dHsVZo0l5cubooJwv9HgtnAM6ONAUv7CG/fA=;
        b=M6KzD6PwcDBQIurPbir85r8pKHXKRKvTDPGiys1DP+DpQdsRT6jxbKM5lN5Uo1d0mC
         qEfWaP5s2QyE74wXIWEbmxVI+eC7y0SDlPNqhP8eZ+fXcvpFrOzJtEVao0MyjsTXMpzf
         Hhtehg10NKPFwzClLdoS8Vh+ifarA0vS8ijxz5Rs/VtiFmGKtQP0YWifeiX1MnajLoIt
         VE2qrswvd3SGB/bld90gl9GNBxN5CNs2G0FWkHmUWh/vHiqc18OXYzlVnQLVGLIgsrZf
         nLjscrbhwt248WYCrqfQ9TRtz/X6BcsVZYJTMBCxPZ0HcN++1n4vF1ZJrUbw17aHwMtt
         dwGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773658251; x=1774263051;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zX8fXT4dHsVZo0l5cubooJwv9HgtnAM6ONAUv7CG/fA=;
        b=ngG3AqbXhpCV9/xlm+HB2KcHSvN13mZQZ4Var21DqVwM6RdfJ0S2WOp2a38Idech6l
         UIaFeMRCjLNhPnemzkLEVgIoyjHgA5A9JMt9cKavDO+AbWNXP2GRpHplL1AXQ0cCZThW
         7Sby0V4b4MkeWBKJJC5sdwbahi6ZW9e/Qjq2aedzuJHCZU3X1aGv7brB+YnyROsvjqNz
         BcOW9zjLQyKCcdH9dTgEta8Kc4oI+qGPYpRYA2GqbI7cT4Lbe2Q7iFnQ9cvXEHeE490b
         +N5VkB+zp9toHC1NTK7IsmrhoPbxJ/5SP2ui+vFpgPHPd8+pq1WlR4NraKFmmY7ROTNI
         ks3w==
X-Forwarded-Encrypted: i=1; AJvYcCW97vwWDh0H0akbglpm5aDn6i4+082YlvafHCdnolCyjUgIqCIFiRAlfDxtQarb7jD+YgjJXZXeXdfE@vger.kernel.org
X-Gm-Message-State: AOJu0YxigCxRTHCQiIPdgwc5eivg0EjHpQDk6qPwlhVUDDk53WRVINEI
	0P+a/HoZ4p+hP0B6SXT/W9DQmfWkphHy4rB0th3QhwoDV/7IIxs1hbkR
X-Gm-Gg: ATEYQzyNcrL1MzTca0ezVeb9Pe++jUVN43zdHtMANB/VFmp/uHFuMIOS+EYGdIE46yT
	zPL+qY/X/rys2TB89l4Y3BIeBBHy3enNByLMPhkjQImpCa4JzB4FI5alUcgDaapih79O6+Fn48R
	wVItGmd9vbLf/hbW7yklr3skw2rowWWBTZl2rMLhNUqR39c3VE98EpleCIon/7fOlM1iHAw6na2
	uyCByINrGkpviZtK0EnhCEv9ErExfIeHRIct9FNs444ENdJOLmidxXxtVqXPx3nF+KFVFNqvqbS
	Cm3R37pe0ApgP3URkrM0GW+IXXmSIuci7GFunVrUZnA0P2VFom8Pd3ftk+o3LvlXIwKFN8vVZ0g
	F3WxrTVG67lvo+lwPaxVP3gC85DY2vSqvcTBiL50sGGr+SE2DyqLzEEDw8nDRi4dpX87FbGCd26
	DCYLn8CehQL02VzJr7y/RY9BjQQA==
X-Received: by 2002:a17:906:3554:b0:b97:1009:7536 with SMTP id a640c23a62f3a-b9765052b4fmr564364966b.15.1773658250384;
        Mon, 16 Mar 2026 03:50:50 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cdb49a5sm539384566b.31.2026.03.16.03.50.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 03:50:50 -0700 (PDT)
Message-ID: <6cc8f5ab-2671-4975-b24c-b17d4aab656d@gmail.com>
Date: Mon, 16 Mar 2026 12:50:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/6] iio: light: vcnl4000: use variables for I2C client
 and device instances
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
 <20260314-vcnl4000-regulators-v3-6-3c4a48d30676@gmail.com>
 <abfd5pLsCuPK4lV3@ashevche-desk.local>
Content-Language: en-US
From: Erikas Bitovtas <xerikasxx@gmail.com>
In-Reply-To: <abfd5pLsCuPK4lV3@ashevche-desk.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276101-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 14BAD2984AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/16/26 12:39 PM, Andy Shevchenko wrote:
> On Sat, Mar 14, 2026 at 06:06:35PM +0200, Erikas Bitovtas wrote:
>> After moving data->client and client->dev into variables of their own,
>> replace all instances of data->client and client->dev being used in
>> vcnl4200_init and vcnl4000_probe by the said variables to reduce
>> clutter.
> 
> ...
> 
>> -	ret = i2c_smbus_write_word_data(data->client, VCNL4200_PS_CONF1,
>> +	ret = i2c_smbus_write_word_data(client, VCNL4200_PS_CONF1,
>>  					regval);
> 
> Now it's perfectly a single line.
> 
> 	ret = i2c_smbus_write_word_data(client, VCNL4200_PS_CONF1, regval);
> 
>>  	if (ret < 0)
>>  		return ret;
> 
> ...
> 
>>  	regval = ret | VCNL4040_CONF3_PS_SAMPLE_16BITS;
>> -	ret = i2c_smbus_write_word_data(data->client, VCNL4200_PS_CONF3,
>> +	ret = i2c_smbus_write_word_data(client, VCNL4200_PS_CONF3,
>>  					regval);
> 
> Ditto.
> 
>>  	if (ret < 0)
>>  		return ret;
> 
>> -	if (device_property_read_u32(&client->dev, "proximity-near-level",
>> +	if (device_property_read_u32(dev, "proximity-near-level",
>>  				     &data->near_level))
>>  		data->near_level = 0;
> 
> The 'if' is redundant, I think you can drop it at some point, probably to avoid
> churn in the follow up
> 
>  -	if (device_property_read_u32(&client->dev, "proximity-near-level",
>  -		data->near_level = 0;
>  +	device_property_read_u32(dev, "proximity-near-level", &data->near_level);
> 

device_property_read_u32() throws an error if a property is missing.
Would data->near_level be left without an assigned default value in that
case?


