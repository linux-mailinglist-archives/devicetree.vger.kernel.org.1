Return-Path: <devicetree+bounces-259117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NmPDHnTc2kCywAAu9opvQ
	(envelope-from <devicetree+bounces-259117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 21:00:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3097A6E8
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 21:00:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D3C77301A2B3
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79BA42820A9;
	Fri, 23 Jan 2026 20:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="biWEAE2y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B2B1FDA92
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 20:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769198452; cv=none; b=dZY/lLBCIHMPUfkrTOXT0reeNNInBzyLGiwbvVzvbuhsYzMevuF8J/IOdVqkQANNNXX1y/AW8FZHYJyKiWKHDWFPklVeHxzwrvZEyAKAfGcteOmKgllcTwXjcdqJW3BnjNvikmWYv4mxhKRdLzF7agQiFRWwD3bY+ocx4BBpnvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769198452; c=relaxed/simple;
	bh=jaSV0XV90NJZ5DW0iVOUm7jPWN0ayo+Rhu16Xwg752M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kbl8SVZ8e4/gTvuLmiDuMxcfMZHvbtihh7c5B9MpZKDmyIwIuZLnTA3+6ZxngTiUJwmPfbExyIucP2mI23+LeSpd5pPOVId9uDb40rCHhaEnnnMHWKvnoC8E2hVizYjzzmj/57Zyvil7AkQFvi3DyaYutyt1DsTgMw1bMISWRKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=biWEAE2y; arc=none smtp.client-ip=209.85.210.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f65.google.com with SMTP id 46e09a7af769-7d15b8feca3so545377a34.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:00:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769198449; x=1769803249; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fZGE4YuUh5bkNr/jB1KpY4pup5iAiGZtQZh24ZY4RJU=;
        b=biWEAE2y8hhYAb4xSRpXVOIpHhumtSmteiMO6egnPDCrEGxi4ADUG42blWUPpYsBo3
         rKniLaE60XfvkaEq877XyjQAjA4dSTWtBxVyF30SR67AtTNCkZM9MvMyFYov1CIGFYi3
         SjdZnVf/gSYwgmE0La9b+esHUa4Z/qISzBqDhhBsFfpWDJuwW/4BkZcGsU7CznDx5CZe
         +hiwe0Qz06ceMXSlzrrMmVYxcwHT2Z3wYhM37qpQJ3qsDSCsl4zSS+x9GxNpS6UHvIIk
         kLzlfV4cSqYHGKtCxOAFnpZNVP6pnF49ah3x1a5MPLY0Q+uC3v8ZE2dI+KizRtbkczrR
         8qXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769198449; x=1769803249;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fZGE4YuUh5bkNr/jB1KpY4pup5iAiGZtQZh24ZY4RJU=;
        b=Jq1wWPeTnGeWfHyIFfJTj3DgA45HxPZ2749VudLtOO7D9lbWYl4geTeAIUI72w6Tg7
         O8mZJ+53DJIiX+E8EJ4HsBP0wAzus80xM8qMAoTmSMhuosxT1xdCFIa2FJqH4RzptOWW
         ijRjq4XdPmL8HtaRqXNhMtaJw1fBGIkBpMwpfap3PnkMzX/hc48fQo5hVRLjsgJZaGRy
         9rKFF4QEV0Q9bgcfx19nbUfzWMEtxEmmg8aDYIFdJjZSmndLyCEzmbJKIRPnCszKmxq8
         QIbWuOfbyAnn60gPz6CVGS8coFkB7kt0RMzrwcWDsCIcMfRZVbRPWG2oQOo0TsmmeS03
         Q0CA==
X-Forwarded-Encrypted: i=1; AJvYcCVmGGm1gl/KpUUAC0s4ypZDxtc6d0rUj5imRA3p00waL83DJea/K2ePFYvqH/QfEXZMjARgmMMvEFZv@vger.kernel.org
X-Gm-Message-State: AOJu0YyiwSZpObe0H1K3br6jqpbBEh4GtBhoy/7rFiRFOfd/1VV6Vfp7
	iBCNibHJ8jdd2rWt4xrYIs13Wj0SaTLlyzpUNSP0FPWEukc8LuuAgcusR39Yzr9RIO0=
X-Gm-Gg: AZuq6aJPhw88L+AipsvJO0FI2nbrgkgYX8jm4eRe1Q6vW3j7mxPCwr/MA55IIU9ExCu
	EpBgmTSg4McJHP0As2x7aJ9beNHRuDCwCbJlope2dbxNt346Wf1AqWFbEXkjGZE6r8fAm0hq8RI
	lmvJsfF+taj02Aa6PCcRYwiHMwk+ojUHGkUZ001+hKw3ye5NDpKFYBM1gtQcAKOr1Co2nOJVzHO
	8E0J1M27qzekClC1QV3kRO5LR5TXqWJCmtIVJmuWOjmvnhfApEzdK+6n+xbKSbXjkz1OJawyb32
	xI2AyAYOE8M2wrteE35GAO5bDjXsaL3LrrbnlvReoauzdkv7jBL2Ss6QR+F4ln3InYVjvssyEQg
	ATTiQfw+qE2LWRSr73UPq4Kj3gsjHuLuZC5Ywk8iIkT+gEAfcPAkoxMtMp7c8w45oZrxu7zqYX7
	1Awt4q5rxMZyweSzmN9lkPZOgMBfg2hjKety9SbAzGsLKqyORXkFAuB07s8A==
X-Received: by 2002:a05:6830:6aec:b0:7cf:d1b7:c076 with SMTP id 46e09a7af769-7d15a6391c1mr2303288a34.23.1769198449058;
        Fri, 23 Jan 2026 12:00:49 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:198f:2b50:c48:1875? ([2600:8803:e7e4:500:198f:2b50:c48:1875])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d15b3d31d4sm2411128a34.21.2026.01.23.12.00.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 12:00:48 -0800 (PST)
Message-ID: <af4e092b-1b80-42c1-824d-16554d91e792@baylibre.com>
Date: Fri, 23 Jan 2026 14:00:46 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/9] spi: Documentation: add page on multi-lane support
To: Jonathan Cameron <jonathan.cameron@huawei.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Sean Anderson <sean.anderson@linux.dev>,
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
References: <20260112-spi-add-multi-bus-support-v5-0-295f4f09f6ba@baylibre.com>
 <20260112-spi-add-multi-bus-support-v5-5-295f4f09f6ba@baylibre.com>
 <20260114091024.390432c0@jic23-huawei>
 <ad688ba9-7771-4b64-a9d7-ec5100345460@baylibre.com>
 <20260119101116.00002664@huawei.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260119101116.00002664@huawei.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259117-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: DB3097A6E8
X-Rspamd-Action: no action

On 1/19/26 4:11 AM, Jonathan Cameron wrote:
> On Fri, 16 Jan 2026 16:35:13 -0600
> David Lechner <dlechner@baylibre.com> wrote:
> 
>> On 1/14/26 3:10 AM, Jonathan Cameron wrote:
>>> On Mon, 12 Jan 2026 11:45:23 -0600
>>> David Lechner <dlechner@baylibre.com> wrote:
>>>   

...

>>> Whilst simple I'd kind of expect a multi lane case as the example, or this and
>>> the multilane one? For me the comment that follows is sufficient for the 1 lane
>>> offset case you have here.  
>>
>> I thought that is what I did. I have one example that shows multiple lanes (ADC)
>> and one example that shows the map (Thing 1/2).
>>
>> But I guess you mean that you want a 3rd example that show both the map and
>> multiple lanes at the same time?
> Oops. No. I was arguing....
>>
>> I chose these two examples because they came from real-world use cases that
>> drove adding this feature. We didn't have a real-world case yet that used
>> both the map and multiple lanes at the same time so I didn't include that.
>>
>>>   
>>>> +            ...
>>>> +        };
>>>> +    };
>>>> +
>>>> +
>>>> +The default values of ``spi-rx-bus-width`` and ``spi-tx-bus-width`` are ``<1>``,
>>>> +so these properties can still be omitted even when ``spi-rx-lane-map`` and
>>>> +``spi-tx-lane-map`` are used.  
> 
> This comment is enough to allow you to drop the first example entirely and
> just have the 2nd.
> 
> Jonathan
> 

I still like having two examples of real-world uses cases since they are solving
two very different problems. It think combining these into one contrived example
would make it more difficult to see that.



