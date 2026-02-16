Return-Path: <devicetree+bounces-265668-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDipMyDakmnKywEAu9opvQ
	(envelope-from <devicetree+bounces-265668-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 09:49:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C84141AAB
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 09:49:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6A4DD3001181
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 08:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE0E22FE0E;
	Mon, 16 Feb 2026 08:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IUWReXlZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 846583EBF34
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 08:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771231769; cv=none; b=WVytqbiTmZTJFC1VaUuQJq1UpcK7t5f+L27uoBv6j4sKJk6UQxGqf51LzNTHSrngdZmRBr0bAPijQG/n0Aq9dlQUd7hEcuTy9aNBNynudfqrF0NyohL/+9Z34Dk6Uh9BbLdYOlxu3roFR4dZ40oxkzvar3f80aZfzbQvkDAkIVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771231769; c=relaxed/simple;
	bh=Cor7HsK/95P9OYmVQKxPiJef714zcnB5NS684TqAKxE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z55rM5F5JWXWCwg83nQ95AefIcM1iPVrBFJmmDw7/MU5FA6E56mvyLyEA7IR+moKKkZhoWK7hOOLQQS981kMyxubNGk3oZaSRyjReZ7O/X5voAOuofbAhXF471768HdGoszVWzMrq3TGYk5lBfXT7lKtctDXEHH1tKJ9fU5FN5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IUWReXlZ; arc=none smtp.client-ip=74.125.224.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-64937edbc9eso2437085d50.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 00:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771231767; x=1771836567; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x9irwRjIXxjBxq0jphi8rRViE/s08XJdmfQTbJogTpQ=;
        b=IUWReXlZsgayFGCytaQv6kiJkpaZgKajLEP4OE7FtmfUSQJQ6lkhqMlis/N/rPA4YZ
         epygi/FmQYA6sj6Dlb/yCnEY0uF00zDJblMpxmtmOw+6+46sDOdspWku0k+d9LH1wQtf
         jy8haGmS43Pub1NDmNgwsJI/boVPdLywO5bFSBrXiRXHNsP0Z/gGFH2jZRrgLxoAxk/P
         pftUkAsI9wUb2y25TwN/UQLpGVHS9pihoXFSsQbZPGpROAbhWEKPs14c2xEyQjkiVufO
         +gPQ18PA53FhfCDgP+R/g3p4IPncqnZon4lyTF3BglSPTes7x8M3GR98qOMDKhrOGnGl
         D9RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771231767; x=1771836567;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x9irwRjIXxjBxq0jphi8rRViE/s08XJdmfQTbJogTpQ=;
        b=DIyLyIIE4JXuW7Ktn6mbgoNgiODV7p9g8sWEK5m0WTawWcnUI+AZkorYjCI59Ym31D
         ayOu0ym6Tsu9N66ic8tt9KXTff+UdtPzQt64aelEhqctndB1qqFUTf2Bz2vzhapHjsPq
         p8qum8Sw1HuxJjvTKzza8eUPXaiDtzbrZZpNymzraDwgpWvtT9lgqWRll4AvLE1DvNZ8
         Fi6af3SEag9xwC5d68Ix8qpQuwN23SyYC4FYWWIa33m3vxcY5BMKy88EYrJkGZpF5N9O
         nHKXQ2pDkblrV43RYoTjiEsF3Rz7HAyzJlElMCdN3G5FqTyEdb3u19Jmjw0npBdfHBOC
         P+Wg==
X-Forwarded-Encrypted: i=1; AJvYcCXyc7KHok7XL8tSyeW/0CH/hsoeRzRU6tc53KFFkCSFVV4HJJrBUTkRk1EMtFp1FxWryPowuzQmsizg@vger.kernel.org
X-Gm-Message-State: AOJu0YyGC01L4qafyf7zIN6CKi2wvJMTPoDNB0bIG+yHFS43KRCKFg7K
	wAOlvh3bt/IYYeb93JrgDFuFgiJrSNKbFm7m3paEazAX6x+IkZ71EGFz
X-Gm-Gg: AZuq6aKAX16zOylFAWAdPCuXO8kEvzKXhXCDGQuWuTOPOf2FVMpj7aUnbUmx0UUWsHh
	RQo8P2p3IxCU2BOV4vGONd20L88mmfBvtAqMe4bh+ZSbvUrAl6Ve/pkLAayRC46YSAe6Dpha9vJ
	wsvbpaSqGU7Jd0uFXvSze+fwjo6AnYwaCps+LqAI9SoogUxs6SX41OGiZ7yk1MUbX3LeH2IP0c5
	noGuOBThxXnO4HH2ywa8wZAQz86kdqmDLy/9gRn1FMaoTIvNKz5memAD/l/0aCi4jR7TyGQ5gSV
	nll5FusOW3VtLPXpfRv3+fKHjU2gCUP+i//zVik9dCs81282b+j3lW6Xs9YGuX7EgS0uGds7G0V
	C0kQAHr6w9uC7sqLtQ2ybGsSZQDEDn5+c2h/zoCYAZrwQP6ZU1pUnMPCEQO4LlL7Rpf7jfS6z9o
	2SB99puq2E8qXPhnDDZJXsuY4yBiz+4wEzb4hX
X-Received: by 2002:a05:690e:190a:b0:649:bdfa:6338 with SMTP id 956f58d0204a3-64c21a99bbemr5363181d50.35.1771231767487;
        Mon, 16 Feb 2026 00:49:27 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64c22fd6f36sm3122687d50.21.2026.02.16.00.49.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 00:49:27 -0800 (PST)
Message-ID: <8b539c02-9b39-4451-bc00-2af23d43578d@gmail.com>
Date: Mon, 16 Feb 2026 10:49:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: iio: light: vcnl4000: add Capella
 CM36686 and CM36672P
To: Krzysztof Kozlowski <krzk@kernel.org>,
 David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260212-cm36686-v4-0-8f587d4a72bf@gmail.com>
 <20260212-cm36686-v4-1-8f587d4a72bf@gmail.com>
 <20260213-unyielding-pistachio-ape-deda74@quoll>
 <3a20c906-647c-458f-a118-c7927495e7ef@gmail.com>
 <8fb27a7a-82dc-443b-bcc4-21007783fc54@kernel.org>
 <f014078c-6e4d-48b0-a814-45898b005c44@gmail.com>
 <880ddcad-a92e-43bb-ad5c-d6f2f353d182@baylibre.com>
 <eea4cf8c-4126-49a8-ada8-1b1893a406c2@gmail.com>
 <1326c41d-e4cf-493e-a758-364edaddd04f@kernel.org>
Content-Language: en-US
From: Erikas Bitovtas <xerikasxx@gmail.com>
In-Reply-To: <1326c41d-e4cf-493e-a758-364edaddd04f@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265668-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 04C84141AAB
X-Rspamd-Action: no action



On 2/16/26 9:27 AM, Krzysztof Kozlowski wrote:
> On 15/02/2026 17:16, Erikas Bitovtas wrote:
>>> But CM36686 is fully compatible with CM36672P, right?
>>>
>>> So this would make sense?
>>>
>>>       - items:
>>>           - const: capella,cm36686
>>>           - const: vishay,vcnl4040
>>>           - const: capella,cm36686p
>>>
>>>
>> If you try to use CM36686 compatible for CM36672P, proximity channels
>> will work, but in_illuminance_raw will return 0 and changing illuminance
>> parameters will have no effect. That is because CM36672P is a proximity
>> sensor only and the register fields for ambient light are reserved.
>> And if you try to use CM36672P compatible with CM36686, it will work,
>> but only proximity channel will be available, even though CM36686 also
>> can sense light.
> 
> So clearly CM36672P is the superset and should be used with CM36686
> fallback.
> 
> Lack of the fallback how the patch is written now is a mistake.
> 

Is it not the other way around? CM36686 compatible fully supports
CM36672P, but CM36672P does not fully support CM36686. This would make
CM36672P a subset of CM36686, because CM36672P is the proximity sensor,
and CM36686 is proximity and ambient light sensor, and therefore, a
superset of CM36672P.

