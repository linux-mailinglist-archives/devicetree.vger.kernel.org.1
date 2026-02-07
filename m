Return-Path: <devicetree+bounces-263634-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IoNHkV3h2nWYQQAu9opvQ
	(envelope-from <devicetree+bounces-263634-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 18:32:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF53106B7B
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 18:32:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83ABE3019064
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 17:32:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FDFE33A9F0;
	Sat,  7 Feb 2026 17:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="L+TniqAz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E6B337117
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 17:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770485567; cv=none; b=ML0gUNKdo7ShRMFsJCKaqjtDLHwOhwf7Ft3e7vrm+MmiqlT46vYFer+DpyQs7Rcow5IqmjnvDjms6cjlAGgMhBju6r5TpvCcsBvHJuKglD21jJe+d31iSFH4GNTVW8gBXlxIsEbil0aU4mo7hHiVUpOxswAt7n+0QRIZhAb/uko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770485567; c=relaxed/simple;
	bh=mbdvc8VVIqopX1Vzy1e1gyb6kEFS8DeARiMueZ1xiBE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YNXEYfvtevgwndictSlorCQNbBVzc8touLLjiQvTtTdVn4xaKrPYt2EYwuKseVlXBLSLx9JXt8PjRRN2ppsqCA5pMrbnrYZf3K/a8SC3AuBISFqn16rfU+2q1Z0lq/Gq/upjO8GAqm/LBpiw/dNGIJUTRCtDuf6DITk5yUwZrDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=L+TniqAz; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-409521ba360so2182853fac.2
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 09:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770485566; x=1771090366; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=04RyWScqmBoYy5xQezR1UYciFGs+VCZldXp8aMU72hU=;
        b=L+TniqAzjlmXgglq63iWzuvmPEjakHCvixI4G4suUcVk2nTDU7JJAUsC8BAoMmgHBp
         1Cvab7pHN2j7tMaqTCDNIdCxyGhDDbirTyLSCgpH0OCmtDcmZqLlu/BSBO5ac4K61kGF
         X4CMGdFs1CmRljqOPgL44zIi/hSwZiCZ+vfU5qDNcML6U0ingjZ54Cp5UT7jR4pIgYwv
         4dEgz/jnQYiohidAzxu9wD1EBlh36AacAZtqYwu+ZTg8IKqHgqFxG8i1FHZOJDrAWwKT
         awjIuIsMXYTm0WZ7AWa3r2tqHdyujVb1GJ58bO1KR73vOooU++JoEJNMN5izEUurCBaG
         /brA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770485566; x=1771090366;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=04RyWScqmBoYy5xQezR1UYciFGs+VCZldXp8aMU72hU=;
        b=KBcB5v2WPQS/pSrSOG/PaoxJ0ZOoeZjF6YBC7frug/By3rUJ8Yh5pYmKeor5KpRxwJ
         A/q2dGRW6m/IOjITzpqprj0QFi3OfAXu3bue6N95UfGcxJ3IzPvfUBLhWTzU96lFjeef
         yy6QU6VxkWmtWYr+I+d5LREZ0tcrXpVJeCJV76AuveG3JkemCkBzRh0U8S8eedKLRr97
         hzQ0cm67Ax27PK+D9oIJd6gI9dgx5q8yswKMfY6gQiLN7YCdbc0WnnANzBqL1UOhLZxl
         V+R7w5hzVoC8pfrYDZGyNNPNZ7i2Wnsi1As8TXAv9yVEI/8XqchogZyOyj6oj4u5teKI
         NVcA==
X-Forwarded-Encrypted: i=1; AJvYcCUvNNFYeTyy2/i2jr8fwqjnF8PgpE8pT1qWkkdm4ZFDnXV2yqu7VevpyBtTsKm4rj5AKTMFsK+2FiO0@vger.kernel.org
X-Gm-Message-State: AOJu0Yywwl8G4IAQMeXwswLszh8+35z30MnY2xemZFeaAKwusPwiDEwi
	N1XOngM1XIYbHGd2D+AFuQ37l3MxjeKAETlIQ4rSPqGtXx8xiG6t77nAK759TjJR0k4=
X-Gm-Gg: AZuq6aIdZN3EXjgB/BGYAcNiZ+00AF4UnN5UhXEEqOBW5DKVnLpF9bebqqEiQBFdWjC
	Z4Y1SKEbNxcteOuELwiYagMyht/3d1chZ6EXTi+nIQrHXlWHlwtLTeBS7OUQgEH359Cf73B3/fm
	vrstGWFVjBl+igS8Z9qbIZIAgoXRQsIA895XIHiDdZ6ZEboRzklGkVwGLEbcVik9L1O9sCdpeJx
	6o9mZaASsJ2bPs0J3XdAUYdSxDs+DHaL0pbCrqWou0y8bjHyRtGDuuu3lQ8yL8C77G6BFP3pSTh
	DxVwh2zb11iQEKs6ZOs+OA21IirS6/7vdmGCp0/Xd23fqVXB9l6HuDhEsRL2gKmxc3AqzB5Deus
	KbCo8qMywmk4rR9BM3NtdabquM2vtHatZFUi/8/oLapt2w+MB2z0D0Fvcr8XTK6yr4CZDkTZg69
	i9WaoMFbSzCEUaapLa+DLTBczGIjyMJKSRoe/0ybOS3m+IQJolE/18SkJYQQ==
X-Received: by 2002:a05:6870:9e92:b0:409:4c35:a3ca with SMTP id 586e51a60fabf-40a96c96a6amr3389724fac.15.1770485565962;
        Sat, 07 Feb 2026 09:32:45 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:74a6:843b:f33:21ae? ([2600:8803:e7e4:500:74a6:843b:f33:21ae])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-40a99787738sm4457915fac.15.2026.02.07.09.32.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Feb 2026 09:32:44 -0800 (PST)
Message-ID: <51eddfc0-9f23-4a7f-8729-19775d834c0b@baylibre.com>
Date: Sat, 7 Feb 2026 11:32:42 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/11] dt-bindings: regulator: cpcap-regulator: convert
 to DT schema
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee@kernel.org>,
 Pavel Machek <pavel@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Dixit Parmar <dixitparmar19@gmail.com>,
 Tony Lindgren <tony@atomide.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-leds@vger.kernel.org
References: <20260206172845.145407-1-clamor95@gmail.com>
 <20260206172845.145407-2-clamor95@gmail.com>
 <20260206230922.GA254792-robh@kernel.org>
 <CAPVz0n3EGCSLUX7jTLve0x0z4uW1yexViCwkSQLY2d_4r4qkjg@mail.gmail.com>
 <db9115ca-2c8f-4b5e-89ce-f3b934071a59@baylibre.com>
 <CAPVz0n2KwqPw88JVcPzhTQ2n+GKzahkrEThjjrqm0CSdjKTEOw@mail.gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CAPVz0n2KwqPw88JVcPzhTQ2n+GKzahkrEThjjrqm0CSdjKTEOw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263634-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,gmail.com,atomide.com,vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,baylibre.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BFF53106B7B
X-Rspamd-Action: no action

On 2/7/26 11:25 AM, Svyatoslav Ryhel wrote:
> сб, 7 лют. 2026 р. о 19:19 David Lechner <dlechner@baylibre.com> пише:
>>
>> On 2/7/26 3:20 AM, Svyatoslav Ryhel wrote:
>>> сб, 7 лют. 2026 р. о 01:09 Rob Herring <robh@kernel.org> пише:
>>>>
>>>> On Fri, Feb 06, 2026 at 07:28:35PM +0200, Svyatoslav Ryhel wrote:
>>>>> Convert devicetree bindings for the Motorola CPCAP MFD regulator subnode
>>>>> from TXT to YAML format. Main functionality preserved.
>>>>>
>>
>> ...
>>
>>>>> +properties:
>>>>> +  compatible:
>>>>> +    enum:
>>>>> +      - motorola,cpcap-regulator
>>>>> +      - motorola,mapphone-cpcap-regulator
>>>>> +      - motorola,xoom-cpcap-regulator
>>>>> +
>>>>> +  regulators:
>>>>> +    type: object
>>>>> +
>>>>> +    patternProperties:
>>>>> +      "$[A-Z0-9]+^":
>>>>
>>>> I thought it was said on the last version to list the names. Considering
>>>> you already have them below, better to put them in schema than prose.
>>>> And pretty much all regulator bindings define the names.
>>>>
>>>
>>> What exactly do you propose? All those names will not fit into a
>>> single unbreakable line (more than 125 columns in length btw). Patch
>>> checker will complain about this. Duplicate pattern properties for
>>> every few names? Please be a bit more specific. Thank you!
>>
>> Making checkpatch happy is not a hard requirement. If you have to
>> go over 125 characters for technical reasons, no one is going to
>> complain.
>>
>> I already gave an example on the last version. It is just a regex
>> expression. (And note that you didn't fix the $ and ^ either. ^
>> means beginning of the line and $ means the end of the line. So
>> the pattern currently won't match anything.)
>>
>> patternProperties:
>>   "^(SW1|SW2|SW3|SW4|SW5|...)$":
>>
>>
>> And I hope it is obvious that you are meant to replace ... with the
>> rest of the names separated by |.
>>
> 
> David, thank you for your suggestions and I did not want to offend you
> nor Rob, or ignore. Using this large string IMHO feels a bit wrong. No
> offence, I will use it if required. At the same time I was
> experimenting with possible representation and come up with smth like
> this:
> 
>     patternProperties:
>       "^SW[1-6]$":
>         type: object
>         $ref: /schemas/regulator/regulator.yaml#
>         unevaluatedProperties: false
> 
>         required:
>           - regulator-name
>           - regulator-enable-ramp-delay
>           - regulator-min-microvolt
>           - regulator-max-microvolt
> 
>       "^V(CAM|CSI|DAC|DIG|FUSE|HVIO|SDIO|PLL|RF1|RF2|RFREF)$":
>         type: object
>         $ref: /schemas/regulator/regulator.yaml#
>         unevaluatedProperties: false
> 
>         required:
>           - regulator-name
>           - regulator-enable-ramp-delay
>           - regulator-min-microvolt
>           - regulator-max-microvolt
> 
>       "^V(WLAN1|WLAN2|SIM|SIMCARD|VIB|USB|AUDIO)$":
>         type: object
>         $ref: /schemas/regulator/regulator.yaml#
>         unevaluatedProperties: false
> 
>         required:
>           - regulator-name
>           - regulator-enable-ramp-delay
>           - regulator-min-microvolt
>           - regulator-max-microvolt
> 
> Will this be acceptable? It passes checks

I think we would rather have the long match string instead of
repeating the rest of it multiple times.


