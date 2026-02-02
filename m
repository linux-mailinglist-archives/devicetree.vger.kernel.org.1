Return-Path: <devicetree+bounces-261966-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMfRJZ8sgWl6EgMAu9opvQ
	(envelope-from <devicetree+bounces-261966-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 00:00:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B60B8D28E3
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 00:00:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 52098302DB83
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 22:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9083A3596F5;
	Mon,  2 Feb 2026 22:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qEindJno"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A41A356A05
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 22:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770072520; cv=none; b=G5FOznO8a9rjZphq4B5AsIjVNUAtTz30AT6BIKJkZL6Kx5bgSIIgxwM25F7p5pz4h5g2bHPKlV3Ty4izw5gPeAuTXjSahoG8+qIFW1fcPPJ70BfjYq7ES1XKTBaHbSbtGaiS060KUxxuap1puLxJ0xxW7ZK72z9ifcP6w+5wVdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770072520; c=relaxed/simple;
	bh=o3Bn8QuqwePy51tzC7oXfrEiDa31Kqfqd3Ab1p5UScU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h/W8PqWY2SieSS+CKiTGITchJmP+JIXYwvSykQijuWDG9LnmpJn2p1dDTmBDnLW1eyj6X7Q3BT3Qz/1nGRt8fOvxgo7fJ3FLMHKwZA4vl4lxlFbNjR6SLERXhiiIPAbuz5q3toziSdo6e3ZNZ2JsFWxEaJIqFbP9QCFrBadEbQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qEindJno; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-45c962424daso2043890b6e.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 14:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770072517; x=1770677317; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JSAtrL+Y9tqEZj9ofXU44Yu8l9qg/1Ym7mvkc+EsokY=;
        b=qEindJnoB18ZPd1pxdTXOjRog7jNXPfBKyYS8XoNguHmuM/X01H5ZsdhhOQ5do0/96
         WGtR8omuW3XkEutgE4JHcZ4IktXcht0YfTsQbTrg0pSsvTilP8ay/Mw/aDvhHOENug9E
         4q1XoAcnay7QoRfbtRfWPD1Rz+ZspNm85jZ1nAS0fIzr6QpSE2qHR+NCRq4PakSIIxg/
         nFmaWNPdYA/G3sTnfK8o1UbQt4t1HsdmMWdWnA9bePWH4gDPANlySzBLY58l/bbTDg7V
         /KO75u2bLzKAHg77233mFhwXaC0WANl7inhYAGwCYmsyMxii1XjLFYQZQzybUOL1AUHg
         sdjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770072517; x=1770677317;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JSAtrL+Y9tqEZj9ofXU44Yu8l9qg/1Ym7mvkc+EsokY=;
        b=GBf+iKK6h0+exNjyTAvwVyLoFHhMHvTYNR3T9pKgU6CDAvoY26Gyk1EFNhP0uBXvIv
         QXHZ4GjPKiCJrT+xmUYP3QOSWedoeGZZlAnpn13fflybvenp64XL0X7zZdzvUh39QfS7
         qVdRY3oopfh5/+nPK3ILgzFvvDX+zPVhLQ26gqVboFIC/AlQV6q+AcjiyOTpgckvukMC
         O4K588IHn+8CHGtipJ9ksklfQB3Hor0ekOT1m3cZHZCIVZvTN193UkSkdUvOgFFZLbQu
         A5907ZX7wDfSjNMmAOqnbl0VljDdwVXCZKMtlfju6GbI5LV7+p9NK094ZFswV7YY14NJ
         2f3w==
X-Forwarded-Encrypted: i=1; AJvYcCWLo13WzrKadjBEENU9ZewQOPqvcbK8xdUA5fk8drQI6XSqYyW6GKPueynBO6MknsBdVoAIYMxHTbge@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj28CExmCTG57ZhHSfZwCzPMYKshxzEyuzDLX95XpE0pq9mKP1
	NuQxUpe7w5L9laOV9auO9f112TO2c5w2ll7wqjxml+YycQJfKZORVi5Ttufetd+foUg=
X-Gm-Gg: AZuq6aJ6i7axyuLR9jVyNpHM06TABKvfbq/0JCcSAy49FACEPGqn+7QRzaDirt/Fegl
	zySwx1Ytc7tolHDysH/ltaCeQK3rDG5IJdoZuAUtvtkiOat1uFPFwTRh9UzbfaRzClrCIbIc0Di
	M5VSJpMP7F5xU1Acsc2Gx5OJOSNY4RJR9qu8LVMi7TrA2jqnjCM/3IGDVJ8WH1cMNq24ua8LKcn
	/4PAZTcoMWtloawhZJrNvi0ZO0Z3aAkA2Jsbp5UH80Hf7CRdWQ9gmkxs2DqQ7jLhptXk4obpbin
	gAOqtxWVjKL1q16W/OoT/22mMCzzjGQj9HUqO/fGxUx9lIsBUtBpDr5JmzEh1d7RgF22Bal3iZe
	cS0x2XLDMCODOjfEczckabVKiVkTrbQ2kwn1bl7W8dgOHUFRvFa0pqZ0dMoCSjIVK5z1pU0h6L6
	V6GrZK5iZrpGFpC1JtAbVDY2XTgPRglYGqejp53rzhAOpWvs9R8Aa8fs8ssnu0
X-Received: by 2002:a05:6808:5391:b0:450:caf8:eba2 with SMTP id 5614622812f47-45f34d405e0mr5752387b6e.57.1770072517226;
        Mon, 02 Feb 2026 14:48:37 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:3695:6954:27c2:42ef? ([2600:8803:e7e4:500:3695:6954:27c2:42ef])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45f08f22826sm9856970b6e.11.2026.02.02.14.48.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 14:48:36 -0800 (PST)
Message-ID: <086d6b35-8c19-4e92-9cd1-557b98991d35@baylibre.com>
Date: Mon, 2 Feb 2026 16:48:34 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iio: light: Add support for Capella cm36686 and
 cm36672p sensors
To: Erikas Bitovtas <xerikasxx@gmail.com>, Jonathan Cameron
 <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Tsai <ktsai@capellamicro.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260201-cm36686-v1-0-4949a2a9ba63@gmail.com>
 <20260201-cm36686-v1-2-4949a2a9ba63@gmail.com>
 <eb922433-3951-409a-a397-b48efef57b7b@baylibre.com>
 <b133521f-434d-4972-82a3-6e7978e557bd@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <b133521f-434d-4972-82a3-6e7978e557bd@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261966-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,analog.com,capellamicro.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: B60B8D28E3
X-Rspamd-Action: no action

On 2/2/26 6:04 AM, Erikas Bitovtas wrote:
> 
> 
> On 2/1/26 8:45 PM, David Lechner wrote:
>> On 2/1/26 11:03 AM, Erikas Bitovtas wrote:

Pro tip: when you reply, trim out the not relevant parts like this.
It was hard to find your actual reply.

...

>>> +static const struct iio_chan_spec cm36686_channels[] = {
>>> +	{
>>> +		.type = IIO_LIGHT,
>>> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
>>
>> IIO_LIGHT should have IIO_CHAN_INFO_SCALE to convert raw to convert the
>> raw value to lux. If we don't have that info due to lack of documentation,
>> then we should add a comment to explain that. Or maybe we can make an
>> educated guess?
> No documentation on this is available, but we know that ASUS in their driver for
> cm36686 use 160ms integration time for light and, after applying their custom
> calibration functions, divide received raw value by 25 if the device is cm36686,
> or by 20 if it's cm36283. Maybe from there we can extrapolate the lux value like
> this:
> 80ms -> raw / 12.5
> 160ms -> raw / 25
> 320ms -> raw / 50
> 640ms -> raw / 100
> Not sure how accurate that would be, however.
> Xiaomi gets IIO_CHAN_INFO_SCALE by multiplying a value retrieved from a device
> tree property called "als_trans_ratio", which is not documented anywhere.
The ASUS driver is an input driver, not IIO, so not sure that helps.

We could start with hard-coding the als_trans_ratio in this driver for the
scale (and write comments explaining where it came from and what we know
and don't know). Then at least we would have a scale. And if anyone needs
something more accurate and reverse-engineers it we could fix it up later
with a DT property or something like that.


