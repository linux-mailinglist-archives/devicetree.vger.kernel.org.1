Return-Path: <devicetree+bounces-320223-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ft8UGa/PR2qKfgAAu9opvQ
	(envelope-from <devicetree+bounces-320223-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 17:05:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D09E6703B2A
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 17:05:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=mnSkvoeK;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320223-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320223-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11981307A7A3
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 15:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D26041228F;
	Fri,  3 Jul 2026 15:02:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC0840D56A
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 15:02:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783090941; cv=none; b=IVtmpiIAWLrBHuK2M/vuEfFrfjT+HJfi6VYbM6Gz9JrlcEEzDHoxBDWeXvj6Cnd6sTVXX1PWpNR/VeSmE2ADhgIwjyfCHqBzjj90VyO7KlfBn3zKpuDUKvRa0+CZ6Ls4rtP6WqteJDzxpKixdMbj8YjFLkW8NbGTfhlUWrFhfwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783090941; c=relaxed/simple;
	bh=vU5G6kbkbMYUju8uEzt/NM53se+SV59vfYr8ggF++Lw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J0JFXQ0kmmDJNRyabldfcVzFzn8PUI3fRcUWju2DOZl9qjnaC/Vb1uRckC8jBYtU1+6QbOvkMjqrNqNLZ85NgJK03Z6A8+GlbD/cBTCpteBilFArJM7e93ldD75YdrPXZGDmGf8KAJZJtJ6UhY9j9fKRuNwuJaJjkBnib31OCy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=mnSkvoeK; arc=none smtp.client-ip=209.85.160.49
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-44ce4d7883bso367048fac.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 08:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783090937; x=1783695737; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W0Grj9Qi0+dk5fVU5XSa7j0vuzMhx4RJGQKccjW2bkw=;
        b=mnSkvoeKrWRyRLKBIP2XGOh6MUqGfkPv2Wy8hHekpdGZaqjLkaq7IMir49uRQjRWwj
         iHjZwZGxanofifpgp1FYRnC/w2LXAwlytTE1Nn7zqulgMAUvlsJeXnsOnVyixkAyAG7V
         foHF9QDHKrUu1gaa3HHY1o8Lo/wIdHK4K+GH7oyUojLFo6qycgItFRHB8ls2/ykQyaNg
         Gx6do0T0JXoy1MCOku9gNBEHa4nv/dscNkZVfw2T5pX7gUInSgC9OnYdDJXUQhQjblD+
         yWRkfOjbg1A//CjU8HtFrzqwZ2DHy3O++2z8UmuJWqAKxrOarVs+3prH8xDkxZysWgbI
         ffuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783090937; x=1783695737;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W0Grj9Qi0+dk5fVU5XSa7j0vuzMhx4RJGQKccjW2bkw=;
        b=opnz0lyF0+6l7SUI99eVrnifjvEY0ONiT4sa6lPaJiUZCS9DDlYtZaEdnF1kuSCu81
         hsaZutZ2jRmSRsaQ2iEfomjGGdBkioAuf6IZXxREP9/b6/6eDO3i2C7A4EkTXjqtK4IH
         M3cpd1nb/2EP4u+kekuwipxIF9mqJ44cU/34ncIYhTZ39v1ZLyGGGOg295MMzgD/aXgf
         a3q7qJsvslMSrm9R5tJxn+0cvBm/+CO4SfOs29v9Q82WmRvpzl3hjj/jh55nhf1QztGh
         wkR6o0ZGr7s9HPe1Bqq+NLpw0Aig+ppTIZMnQYuDA/xVirfJw4OIQO64FC9Ftrire/0v
         bnog==
X-Forwarded-Encrypted: i=1; AHgh+RqDheltQLcD9kdMRZUX5bYA8pxcLAYrcN8qFYxSlHPFKQHy9qDGW/cadYjTaV6llh3MwxnK1bKDCK/j@vger.kernel.org
X-Gm-Message-State: AOJu0YyS+rqalZsknqBr2gqWse669QolHSdtmceQBoz4LmlXFPhkE5u5
	yrXUr/JMHf56zLfhVqat+pNIkwNefYDuwJtQNym1ZajDLRYKQIHEH1CuHIvZwej3/fA=
X-Gm-Gg: AfdE7ckclsE0je2qeKw4bpFmrqZSI/lIahf55kfwmu8RsFFTABvqGzovGu12dmKcNFW
	wXBu/tnIwFkDrq8PPriyyQfTt0hN2FCmkarNVh+ivWB0HgZ+ygwoUyYpah6gzbzZsI5sjUmeeSL
	DtYl4YZJYP8YxE8wI+6HFkPRYfJDfhwg70tM2Rw3SW+ssGdZd/53uYyseHbV9GhR6FI6aSjsIwY
	xRmt0PtjIcOuK1ruJnA2zirfwvBtYqNpaByE0SPFOAKS+Y9oxs6H/DB+cAY1sQBpPkX1q4zwwfW
	W1iSzfL5HkJA3Pp8OAoBDBCRTVP9qmyOh1/CfUSvRCKIZgrNHnPwyyo/TsftZcI7fACXQoCM2Rk
	NOLO4yTGoMA2KMZtYR0Zw0KHlbWeGmD2uQGHvn+YrdL3PUr4oS7pK8lzASuE4IOFeToZz+mB5RT
	XAXtYguISKgdJjYULqCd599WhDd97GejCCGSyAWmmyTi82RQG23FQTtOpWeTKzhGY=
X-Received: by 2002:a05:6870:326f:b0:440:67b1:b59b with SMTP id 586e51a60fabf-44caac0e76bmr6806975fac.0.1783090933482;
        Fri, 03 Jul 2026 08:02:13 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:6af9:a9d7:17b5:2644? ([2600:8803:e7e4:500:6af9:a9d7:17b5:2644])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-44cfb1bb17fsm2183286fac.5.2026.07.03.08.02.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jul 2026 08:02:13 -0700 (PDT)
Message-ID: <7a549442-f61e-42a1-86b6-aed6a8977290@baylibre.com>
Date: Fri, 3 Jul 2026 10:02:12 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] dt-bindings: iio: dac: Add AD5529R
To: Janani Sunil <jan.sun97@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Janani Sunil <janani.sunil@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-spi@vger.kernel.org
References: <20260701-ad5529r-driver-v5-0-ed087900e642@analog.com>
 <20260701-ad5529r-driver-v5-2-ed087900e642@analog.com>
 <20260701194103.45541cbe@jic23-huawei>
 <3e094744-8603-443e-8027-8fc2f2817879@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <3e094744-8603-443e-8027-8fc2f2817879@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jan.sun97@gmail.com,m:jic23@kernel.org,m:janani.sunil@analog.com,m:lars@metafoo.de,m:Michael.Hennerich@analog.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:broonie@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-spi@vger.kernel.org,m:jansun97@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,analog.com];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-320223-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,vger.kernel.org:from_smtp,baylibre.com:from_mime,baylibre.com:dkim,baylibre.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D09E6703B2A

On 7/3/26 5:01 AM, Janani Sunil wrote:
> 
> On 7/1/26 20:41, Jonathan Cameron wrote:
>> On Wed, 1 Jul 2026 08:40:40 +0200
>> Janani Sunil <janani.sunil@analog.com> wrote:
>>
>>
>>> +      adi,output-range-microvolt:
>>> +        description: |
>>> +          Output voltage range for this channel as [min, max] in microvolts.
>>> +          If not specified, defaults to 0V to 5V range.
>> No way to specify the default as part of the binding rather than a comment?
>> I haven't checked but does
>>         default: [0 5000000]
>> not work?
> 
> Tried that approach. But the dt binding check does not accept default for this DT cell-array property.
> 

Wouldn't it have to be written like:

  adi,output-range-microvolt:
    ...
    items:
      - enum: [...]
        default: 0
      - enum: [...]
        default: 5000000

