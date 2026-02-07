Return-Path: <devicetree+bounces-263630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLfaIU90h2kqYQQAu9opvQ
	(envelope-from <devicetree+bounces-263630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 18:20:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9191106A82
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 18:20:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A7769301AA44
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 17:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16100333421;
	Sat,  7 Feb 2026 17:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bFv0bPUA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9D31C84C0
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 17:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770484783; cv=none; b=n1SEIQHcecWR5j2Sc7i3MK6dWlJrhwo2NWVc5St1ggWv08gbEWTqxPQwCwM56Cm8vKF8m54eCBpTvvUi8eyZvLc2ZsKUSF1h+orjEqZZpxRUpk7PaQfUAcc0cqBGhQGHYHOtZmF5wIYIJMLHXzL0e1+7EpRKk3hnEcI8vcmarjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770484783; c=relaxed/simple;
	bh=5tSv0K2xPLmp03qZ0ySPg6fhMYjNHkDNBp7DBZrnlwI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qxYpAOMsszOxKYAELgZg3o79n0od7UqM1IWPESz25zyr03no6KNsK/Z7TPgDhGBH8PgcqNiwpqEpbj4WcaeL2D3HjtO33y92Ro5+qC4s/KCUkrFBMsgBmQWpIaqyu2luq1+D77qpHjfWy/Zzm3FO/DnEVfYqDzdqS2bx/z7S72U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bFv0bPUA; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-662f30d3f1fso2314173eaf.1
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 09:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770484781; x=1771089581; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1W00zz5qVNYTH6MgjHmIYO/oSZsXOTum5yin9z3CGMg=;
        b=bFv0bPUA4Ofv6wEr0EqxOkBc+vmD3AnYnxyA0Qk678SHkvpIeT6265hZHeFxKWvqHB
         01AQi+I05chJ8BXxIclTtCpvXTyjdDUDIglhdoIkn2IzXlgc+A4WtlE3sfbQCHcB4P4e
         e9DWPSGSpzONL2PwMxYgjUej94lrrTfGtO+HtaiuVdK8tnUPLBe53VkTm8HPaJjmVnr9
         HKKUhDfweDqql9FQ68HGL5mLyMuOW4IWlwwBNSCcv+Gcchy2/oejnt/W2y7gSnZgKj1Q
         xd3VHBk9S6FMfPANuG66d6cea1hLt7aeWCdBRykH6AGPjbaQWNNgeHmTFiII45/LSvAx
         7DaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770484781; x=1771089581;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1W00zz5qVNYTH6MgjHmIYO/oSZsXOTum5yin9z3CGMg=;
        b=hqXScSd+J0awGj1Mi6wAb0+Dr1DH6x9LblloJg+ObhmJq7qGGa7uN/tbqB52GS9akW
         z6HqNFym9NWvPeQjgDPgcJ3K0EAEbTYIdVfCH3UxzFIBxRDz3DB0VYVgL0eaWBfwEWWg
         RZlAjx4BOC+VQZCLS7p30mpJVEMBb73Goz15PL34pfuA1UECJkFhSyXXrbqXK4jckUlh
         aZxKxaRMfrtZZfcVinsIoGzLvV5Je87uBHDzkaOeXvi/He8MdRuVnWTtRVyUkXEdrcHX
         u8Zp5Qor+z7KqxU3PeVV6yZmFAzGFigJOXlUAPk4Sb6gBJULrC7eSKaqwrVCIy38NhqN
         +sKQ==
X-Forwarded-Encrypted: i=1; AJvYcCX30M+bd8XokClRidhaNJiZRV8kXc896hIzTGvAM+/AJRKGUONuBVm1/pKfR6ovTBFMBiJ21zozza7n@vger.kernel.org
X-Gm-Message-State: AOJu0Yzds+OzH6m0DAgsX7L51dNrm3QVV5CJclPUC1zBDeqMQvn8GJ90
	Ng/Hoc5imjIr8EHF86NZ4kNwg5A2wcC4cRD+CcPdK7+AkNPj7gJG7tDiJSPDu2NaSRk=
X-Gm-Gg: AZuq6aKDmvXkAo11HwpOm4gx+Kv+c6Fy02eXYPImRsU1CHLNoLZJcKa+797YVbBlXqf
	/dXVFPis3iw7KBsWPke/Wvp2kXkkInVPfxxCstxA12NdRowYvD/yFm0ZeS9qVl5k1zQfFP+X+sv
	BgrDbkVzwYJyKbCpkKernHCygZ10Hi5SAzCZxcmBlsQZKuqA8WvkEOctHOkGlLLY+54zs9NyWRZ
	dP7rRWIgXeP7+9bhkcCexqEB2KVg8nr6IKNTHV2E59ItXHlYnsZbz1O3JcUVy0LhXQbb/T0Wozc
	8+Q9NcsIfrwDO1t85UBJedyqVVfuw4CnqGtMj8cwThys+TAmnGMwkNCKwo6fCP5E9rkwUQknCXr
	l9ykK9LKy7kYiv7yga9aSqn+PUoEEinXgAVtY36TDyBLMr7stxeFDJ7N7wKRbgb6EakEYeqYkjN
	6OcVLU9gUWs9TDzYJ1DX5rKgR0odtMCd722ZXFva0gmnaEJWETnmekHJGzRfkT2vZpMEj4sw==
X-Received: by 2002:a05:6820:3101:b0:662:bffb:41fc with SMTP id 006d021491bc7-66d13059c28mr2419479eaf.15.1770484781465;
        Sat, 07 Feb 2026 09:19:41 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:74a6:843b:f33:21ae? ([2600:8803:e7e4:500:74a6:843b:f33:21ae])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-66d38bdeed5sm3004756eaf.4.2026.02.07.09.19.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Feb 2026 09:19:39 -0800 (PST)
Message-ID: <db9115ca-2c8f-4b5e-89ce-f3b934071a59@baylibre.com>
Date: Sat, 7 Feb 2026 11:19:37 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/11] dt-bindings: regulator: cpcap-regulator: convert
 to DT schema
To: Svyatoslav Ryhel <clamor95@gmail.com>, Rob Herring <robh@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Dixit Parmar <dixitparmar19@gmail.com>, Tony Lindgren <tony@atomide.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
 linux-leds@vger.kernel.org
References: <20260206172845.145407-1-clamor95@gmail.com>
 <20260206172845.145407-2-clamor95@gmail.com>
 <20260206230922.GA254792-robh@kernel.org>
 <CAPVz0n3EGCSLUX7jTLve0x0z4uW1yexViCwkSQLY2d_4r4qkjg@mail.gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CAPVz0n3EGCSLUX7jTLve0x0z4uW1yexViCwkSQLY2d_4r4qkjg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263630-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,gmail.com,atomide.com,vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: D9191106A82
X-Rspamd-Action: no action

On 2/7/26 3:20 AM, Svyatoslav Ryhel wrote:
> сб, 7 лют. 2026 р. о 01:09 Rob Herring <robh@kernel.org> пише:
>>
>> On Fri, Feb 06, 2026 at 07:28:35PM +0200, Svyatoslav Ryhel wrote:
>>> Convert devicetree bindings for the Motorola CPCAP MFD regulator subnode
>>> from TXT to YAML format. Main functionality preserved.
>>>

...

>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - motorola,cpcap-regulator
>>> +      - motorola,mapphone-cpcap-regulator
>>> +      - motorola,xoom-cpcap-regulator
>>> +
>>> +  regulators:
>>> +    type: object
>>> +
>>> +    patternProperties:
>>> +      "$[A-Z0-9]+^":
>>
>> I thought it was said on the last version to list the names. Considering
>> you already have them below, better to put them in schema than prose.
>> And pretty much all regulator bindings define the names.
>>
> 
> What exactly do you propose? All those names will not fit into a
> single unbreakable line (more than 125 columns in length btw). Patch
> checker will complain about this. Duplicate pattern properties for
> every few names? Please be a bit more specific. Thank you!

Making checkpatch happy is not a hard requirement. If you have to
go over 125 characters for technical reasons, no one is going to
complain.

I already gave an example on the last version. It is just a regex
expression. (And note that you didn't fix the $ and ^ either. ^
means beginning of the line and $ means the end of the line. So
the pattern currently won't match anything.)

patternProperties:
  "^(SW1|SW2|SW3|SW4|SW5|...)$":


And I hope it is obvious that you are meant to replace ... with the
rest of the names separated by |.


