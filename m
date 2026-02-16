Return-Path: <devicetree+bounces-265793-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SD51Inojk2kX1wEAu9opvQ
	(envelope-from <devicetree+bounces-265793-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:02:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A11714461B
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:02:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55A8A3017240
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BC5F30EF67;
	Mon, 16 Feb 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Orl3VpCZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353C4223708
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771250314; cv=none; b=a4sIBRXFr0bDpFqrrbc5eDw5j8kP0E2uf6daP8P2z2Oetmx5Oj3/knjEj06mpTJGy8HAE3ZAJDhf4BAWuyX8Rf3MXrvJGWcQMmROLszoUfzLYudgVwuEpzD5kHp06d2PWEqCcCeuT1IbXQgd7LcMi7qFESr3pfu1XWv3Bfd6K4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771250314; c=relaxed/simple;
	bh=JudCYDKTAao9yvz1obQeEFLjpJHRjDhkH80IAq3x6uY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HHbgfJIkAk4Uo3FIllUgKhzSMvyAOjlhWzR4I5tycBG3Tep3PL7UE1ZRHdlNVz/wofkBUuxG6wQ3rHAcAVwmoUkBy5vFS6SwFFyAVoD7isTieyx8EkuZjKXq3+vd4s4np9yQwpFCf5uuVemOD0BJr+ztm67gdYCuZeNZhfglxhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Orl3VpCZ; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-59e6b7b11ebso3553307e87.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 05:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771250311; x=1771855111; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rUcAGLQZkv/PTBs//eYKKwXahaszOterbl1vVyU8vuo=;
        b=Orl3VpCZVgtxL7MpZh1NnWlx2fyQTWtrIKVH6nsudChRBkNWr52BLzHjewFb5rb7pN
         HubWuhvIET2AZmou4zCDw210uFqVfcuH209nQuWT3wKo318bb2jWFzmRN/mplBEPQE8O
         J+AIN3NaN0Tyy9367E9yuKF9bus9tUPDTIZVEsmksjb4WnpF/G1Q6B4JMeRi9E5WLate
         q1jCL8jtPY1PynwXqrTlDx2HbtzBgR4zc9qSYs8WuWL7bF8b7h/EEXOsuyGuaeRpsLOu
         5XTN/OIYNYSllIFsYDHuOGlAVo/ZU5fCcjorQnbtIoLnkcJcu064QyRdIVbpiPGBhK5B
         IknQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771250311; x=1771855111;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rUcAGLQZkv/PTBs//eYKKwXahaszOterbl1vVyU8vuo=;
        b=fUTcB6rql+L2baOdF5OfbohNKxBiEGMS+Ttym7Il2WHrxW15bMeB2gyix8buSs7Ugt
         Omdw84BWA8SUtqwhpn/hVsj05VmUT7vwQRyA7dwBtOUE+t0LzZ6eoJs40aSVkaSoBwGP
         uRVBuPsNHTRaAFzG5cVCVj4bgfcsSR4+raKOF85DpN+j/p/Ga1Zi+Q2fRy61fDZsqYzr
         7zCzNEEqcBSMzWH59ILRkszIuDmk02S5qETcyJF+R7vObRs4vQRgbhPcwq+z1+zGrY+D
         LmT5VnLahp3RVOPjUhGuz3wN+Jawhju3rXJgPWj/igqePyZHtigT20nX3jYfBxJee9oI
         1xCw==
X-Forwarded-Encrypted: i=1; AJvYcCWccfou+ZLJcGe/BFxLjdPgCLCvjroOqd/r22ztr27GhDdkpCRI3+VWLWdlAMyv/Tv4VLZLMI5MIVyp@vger.kernel.org
X-Gm-Message-State: AOJu0YzKh+cm9L2dyXUyYlyLiBySy0ctm8K7tRYWhgthLeLiq/HdrKLu
	eeR98k9FdkbteAOWFR7vYcV4589WRJRou+50DaAQoJ51rsND3nEuaf61
X-Gm-Gg: AZuq6aKC+GlxYKDwv0mIcnfXyhQkVszE+Aj/NmsR4SqOb8gqyS4kHkMXl1SHvnBPa/R
	52AOaqrApYin6nHHlWsuXhlueVascVGiILrPJHV8q2aXOLavj3z2MUy1hscgHyfeYQMfEqVumj0
	q0USsKWIZrT8FPWzxehLGLjoRMep+0T4AmxyXkyIuqK4cKW7kdHyl2amuZ8WSfxHLR/n5AUIh1u
	RKqV8EsIAp0Al5NuXl0fefDCZ8eyuzR5Fk422bsU6KbNPRVIATMaWadD2WjnHUJcXjD51A3tzya
	L/LkyQMWweAy83vitXkxM70wKXJXOIsfqg9LFA9RT3TqYLbroE1E1x0svrHn61zZn2N8WXYiKq6
	eV/k7sk2p/AYiYH7DdFSAE7MOMwIG/aO8Zm0vLzFmrMEjeTeIKqUz40GYmDH9fuqCCzkShu8URU
	xSA8mGppMQd0CVed1e9j/kIcR9TWVTlAFRsBRfD/XsAq0=
X-Received: by 2002:a05:6512:145a:10b0:59f:6db3:1526 with SMTP id 2adb3069b0e04-59f6db316f1mr1715840e87.10.1771250311130;
        Mon, 16 Feb 2026 05:58:31 -0800 (PST)
Received: from [10.38.18.54] ([213.255.186.37])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5b2223sm3224103e87.79.2026.02.16.05.58.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 05:58:30 -0800 (PST)
Message-ID: <5d889f66-7697-4a39-beed-33ace693a1ef@gmail.com>
Date: Mon, 16 Feb 2026 15:58:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/6] lib/linear_ranges: Add
 linear_range_get_selector_high_array
To: amitsd@google.com, Sebastian Reichel <sre@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, Lee Jones <lee@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Mark Brown <broonie@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 RD Babiera <rdbabiera@google.com>, Kyle Tso <kyletso@google.com>
References: <20260214-max77759-charger-v6-0-28c09bda74b4@google.com>
 <20260214-max77759-charger-v6-4-28c09bda74b4@google.com>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20260214-max77759-charger-v6-4-28c09bda74b4@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265793-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mazziesaccount@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2A11714461B
X-Rspamd-Action: no action

On 14/02/2026 05:12, Amit Sunil Dhamne via B4 Relay wrote:
> From: Amit Sunil Dhamne <amitsd@google.com>
> 
> Add a helper function to find the selector for a given value in a linear
> range array. The selector should be such that the value it represents
> should be higher or equal to the given value.
> 
> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
> ---
>   include/linux/linear_range.h |  3 +++
>   lib/linear_ranges.c          | 36 ++++++++++++++++++++++++++++++++++++
>   2 files changed, 39 insertions(+)
> 
> diff --git a/include/linux/linear_range.h b/include/linux/linear_range.h
> index 2e4f4c3539c0..0f3037f1a94f 100644
> --- a/include/linux/linear_range.h
> +++ b/include/linux/linear_range.h
> @@ -57,5 +57,8 @@ void linear_range_get_selector_within(const struct linear_range *r,
>   int linear_range_get_selector_low_array(const struct linear_range *r,
>   					int ranges, unsigned int val,
>   					unsigned int *selector, bool *found);
> +int linear_range_get_selector_high_array(const struct linear_range *r,
> +					 int ranges, unsigned int val,
> +					 unsigned int *selector, bool *found);
>   
>   #endif
> diff --git a/lib/linear_ranges.c b/lib/linear_ranges.c
> index a1a7dfa881de..c85583678f6b 100644
> --- a/lib/linear_ranges.c
> +++ b/lib/linear_ranges.c
> @@ -241,6 +241,42 @@ int linear_range_get_selector_high(const struct linear_range *r,
>   }
>   EXPORT_SYMBOL_GPL(linear_range_get_selector_high);
>   
> +/**
> + * linear_range_get_selector_high_array - return linear range selector for value
> + * @r:		pointer to array of linear ranges where selector is looked from
> + * @ranges:	amount of ranges to scan from array
> + * @val:	value for which the selector is searched
> + * @selector:	address where found selector value is updated
> + * @found:	flag to indicate that given value was in the range
> + *
> + * Scan array of ranges for selector for which range value matches given
> + * input value. Value is matching if it is equal or higher than given value
> + * If given value is found to be in a range scanning is stopped and @found is
> + * set true. If a range with values greater than given value is found
> + * but the range min is being greater than given value, then the range's
> + * lowest selector is updated to @selector and scanning is stopped.

Is there a reason why the scanning is stopped here? What ensures that 
the rest of the ranges wouldn't contain a better match?

The logic is now different from the 
linear_range_get_selector_low_array(), and I would like to understand 
why? It'd be nice if these APIs were 'symmetric' to avoid confusion. 
Hence, I would like to know rationale behind making them different.

> + *
> + * Return: 0 on success, -EINVAL if range array is invalid or does not contain
> + * range with a value greater or equal to given value
> + */
> +int linear_range_get_selector_high_array(const struct linear_range *r,
> +					 int ranges, unsigned int val,
> +					 unsigned int *selector, bool *found)
> +{
> +	int i;
> +	int ret;
> +
> +	for (i = 0; i < ranges; i++) {
> +		ret = linear_range_get_selector_high(&r[i], val, selector,
> +						     found);
> +		if (!ret)
> +			return 0;
> +	}
> +
> +	return -EINVAL;
> +}
> +EXPORT_SYMBOL_GPL(linear_range_get_selector_high_array);
> +
>   /**
>    * linear_range_get_selector_within - return linear range selector for value
>    * @r:		pointer to linear range where selector is looked from
> 


-- 
---
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

