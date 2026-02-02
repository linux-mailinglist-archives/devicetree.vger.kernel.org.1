Return-Path: <devicetree+bounces-261603-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COECFPjvf2mS0gIAu9opvQ
	(envelope-from <devicetree+bounces-261603-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 01:29:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D23C7A07
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 01:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A532130038DA
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 00:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA8DB15C158;
	Mon,  2 Feb 2026 00:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cYQk8XQo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A079B156F45
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 00:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769992181; cv=none; b=dwZJXew2EGrkOISq5e29wuaM8Sqbl9pIznUK0ew0Uvos5u0RjIcq6HNEowaf1gSPgkbpQJjZ4AHDscSlu2KJhRQu/rQ1MZeTJ3Y5ZmvS9MpkvqK1OIh6O11OJcZX69VJ5+TkX+GY9ZUTVIja3IlnEAKauiQlE9BVuWLitrCZLpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769992181; c=relaxed/simple;
	bh=6SFe3Ghqu8kb6cqq/+mrrOvxiNsxEDyfe6FJhD8ydZs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=le4XYM6aW39VOL0k1n0/TptS4J0gAWZs4ZE7RjbpMngcoSrbMthc0An9heecPGxsU+Bo+Kx244QKchamYy1ArPzqB0jPzweV7RTdyDlUriSFgwRAkKfQt23jz9zCbaaOummecP6jZXMqE+acK0qKjKVNqYL/LuoV0CzWN0CAuDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cYQk8XQo; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-8230d228372so1959843b3a.1
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 16:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769992180; x=1770596980; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=aiJyNVeka4jGyWbpUJLioxLaUjYpoLttjwErqJDkxhY=;
        b=cYQk8XQoT/x3PDVtUEHJROmSqh74fU1i2NGhFL496dR1mS8NWZt+aydoB04x5MLTkJ
         7QPAABkefseEelmfBIZgQKAwW3woe8EDmOc6gKGAehf5jhq3l5jjcP8eK+YIgYYvlCQc
         cmKGsw4Exp/P03oyVwfML3jYQes+Kr1kOEpbcis9xYH8EaKcrVNaijeShfIfwth8JkYq
         LOTLww+xLET5woUj4Kl3DRh2PwHQP5uKsBbgNWQNSLn/NrN0TeALfvWSgmisrjsfgI+S
         Fs9S2YgW6djPRmR7S5fFxh7eyZ2ATGN+gFk7uWp12qJd/78wJvjyJtSXgtP8blITUngK
         ZEhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769992180; x=1770596980;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aiJyNVeka4jGyWbpUJLioxLaUjYpoLttjwErqJDkxhY=;
        b=DV/8RFOfqpZEaVrD0NWE0FXS3oRWgWu93IWWmzTJMDKRV+QKdP0QOIKv0HH9+1Deev
         NBi05uMSmacax+jCWbdDuCzG2ONUJGF6nBLumm7aaf7Kf0l68GZPAj/XOFbrWppZYTN7
         XsRxB6Hskx4RXTO9BWBhyBt+5DAQgEmcu3Joq2UvSt4pxq0outF5DX7Tj1hbWvmVdNuY
         xHsEVpLkUYfkagolzxFVVFupQGkya5dGKXJZ6dtXh2HKVi2kgFE8pxDU9BgTKo5omjYd
         LUJxAng4bjbbQAcjt5fEX7TdiJCd1zZZAb+XtBySxkvhpVjf+3Hs23av5dN/u4YM/HbB
         IJsg==
X-Forwarded-Encrypted: i=1; AJvYcCWtDBReiWsWpRyD/oYq54Qx+k/jGEK5hteKhxeJ7hMNlB8K6m1RwWv1wemYFgAd2ut7O7Bojh0OFttI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1gAJvzRsqu+X0LB3IkBqavSlqk2fk+VzJflS+aMj0Ue3rknrf
	LOc89L5fWipRFYc3liTP1PHVKXFzcoy3tpO3EZun+TaFiwomj1B25vKKVjOK0pR8
X-Gm-Gg: AZuq6aLZ2fWd/+cC4hGZM+EaJc41EwXVvUl3xN46Vd22eMSUM+gOrkW0v24KBx4x0JT
	M4xW4CDlB1mUYaK46EsJqrY751GC2761W4GcqFGCK+iQQSqTzfw9hhQXD/mcF0XiVYCSLMHkkyY
	yS7t1TkQz90R/uh9ysgCVCxWe1W9W9A9itFrDQhsDDmHeKNvXvBYA90EEd1BWA+gSKFqzeOsXWI
	anzyH+pQjv2NG2cqDu4KhiAYieevWetQvj+qABrYXnh0RpBItg7EbItrSpfmQ6wFdT+v3sW7x7d
	9JrGw0B2QwIf9ICDIPj5H49mOxabjFopVkDJr2IvXwlRgWyi6s9gPQbdUVqhQHGvyerW+Te+ngW
	UdjY+zKPaisnMUG6uuGxefz+K8VW0ejvugswLtq8JY3tnTzQrzH4901qJ17h9Ag3x4VMRgnCZK9
	Ic6LUtmUjAnGnCeNzb9mU/utRne9zczayvTinjPA4nNGme0tdCB4OoQpC2HoS5Mlbg6QNZ1m0=
X-Received: by 2002:a05:6a20:a105:b0:38e:87b6:9b53 with SMTP id adf61e73a8af0-392e005b53bmr9760363637.30.1769992179862;
        Sun, 01 Feb 2026 16:29:39 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c64276efb16sm12801668a12.4.2026.02.01.16.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Feb 2026 16:29:39 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <787ffcff-28cb-43e0-97db-19dd7a996d13@roeck-us.net>
Date: Sun, 1 Feb 2026 16:29:38 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] hwmon:(pmbus/tda38740a) TDA38740A Voltage
 Regulator Driver
To: ashish yadav <ashishyadav78@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 ASHISH YADAV <Ashish.Yadav@infineon.com>
References: <20260107144507.46491-1-Ashish.Yadav@infineon.com>
 <03da3b10-dfe9-466a-9dc9-b51e29938e3e@roeck-us.net>
 <CAJKbuCYcRMrX5H5rWXWXOz4FCZi5iu8CCE2Oi3WEsWqEikqsYg@mail.gmail.com>
 <f0d230be-676b-47b9-9565-22319b8e62cc@roeck-us.net>
 <CAJKbuCYUCr-R-91Ou1y6XDEPdqabSDvCxUypc-YmW=-EPxgNyQ@mail.gmail.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <CAJKbuCYUCr-R-91Ou1y6XDEPdqabSDvCxUypc-YmW=-EPxgNyQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261603-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B9D23C7A07
X-Rspamd-Action: no action

On 1/22/26 03:42, ashish yadav wrote:
> Hi Guenter,
> 
> Please find my response inline.
> 
> Thanks & Regards
>     Ashish Yadav
> 
> On Tue, Jan 13, 2026 at 8:40 PM Guenter Roeck <linux@roeck-us.net> wrote:
>>
>> On 1/12/26 23:24, ashish yadav wrote:
>>
>>>> The need for this, especially why it would only be needed for PMBUS_READ_VOUT
>>>> but not for any other VOUT related commands, is still insufficiently explained
>>>> (and I failed to understand the rationale provided earlier).
>>>>
>>>
>>> It is specifically needed for READ_VOUT as it is being used by
>>> external controller to monitor the rail health.
>>> Other Vout related parameters are used internally in the IC to for
>>> output voltage related protections and does not impact any external
>>> decision making.
>>>
>>
>> Sorry, that doesn't really make sense. How would the chip know to match
>> VOUT with its VOUT limits if both don't use the same scale ?
>>
> The chip telemetry would still show Vout as 0.7V as it does not know
> about the external feedback resistors.
> Hence, no need to scale internal Vout related parameters.
> This scale is only for external vendor use to tweak their telemetry
> output voltage reading.
> 

You fail to explain why VOUT_SCALE_LOOP - which is supposed to handle such
situations - can not be used, and why it would be acceptable for other VOUT
related attributes such as VOUT_MIN, VOUT_MAX, VOUT_MARGIN_LOW, VOUT_MARGIN_HIGH,
and the various VOUT fault limits to show the wrong values.

For reference:

VOUT_SCALE_LOOP:
"Used to account for any external attenuation network on VOUT sense
  feedback and provide correct VOUT reporting."

Guenter


