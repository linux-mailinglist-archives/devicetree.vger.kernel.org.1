Return-Path: <devicetree+bounces-265299-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMYFLF/njmkDFwEAu9opvQ
	(envelope-from <devicetree+bounces-265299-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 09:57:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 128C41343CD
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 09:57:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDB6E3032058
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DD9634AAE2;
	Fri, 13 Feb 2026 08:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GI1eSFhC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098CF31DD86
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 08:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770973020; cv=none; b=XOM4PVQ3d6uJgeZtrQBX/0JHdda7CWdPLmLJtfC2xYchxGpol8ndI0WqsaohGyoDUCbNBJXVWIP3z+qzY+E9qUfwzZXfZsK01pPSyje347MrFLdMzyIivaBSs7LUfhVNXt2Ke4f3GKO29ytUQotPwJDk1Ch9sMO6HIEBm42PJ6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770973020; c=relaxed/simple;
	bh=Usvq3+GYA4VQwXiEk4EQAYwzenht0eLbQUxTReVkrXg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RIWIzMVXFgx/9RshaqkArhpswOnOIwsexhyUiEADGe7i4xuj/d25haMRrjS6jE3bOeoP9KslXqHOSvtutY0ZWWR9vpqbUemtUU4LNe6Nfg/1jEwESzEvlrqbduW+7+RE1P4FSVED6675NaT2Od8xd9HmQAyLQrFO/vlyXoCImkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GI1eSFhC; arc=none smtp.client-ip=74.125.224.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-649db2b6cdcso640247d50.0
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 00:56:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770973018; x=1771577818; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fS+ISWa72W+g6JkqlchkqQ6Ii61m95nh1ydzb82hfZg=;
        b=GI1eSFhCDTfNO3ptIdDOiXWxDZlevyXw0ejtCxvgCmWswn6fmCmVYBPPm55NfjNYrL
         LsweHu6/VhSkRISEjNPgvH3f81R89vR0DQHkYM+tEaUR5X/sb8gBQDyBJCIoPpGBrIIs
         hooBvF+uzvgK2kpGjlDRTp0+nFw0zeQu5O3gim7ChivK5u/5M1TzWU0mKSwAf1s9medo
         pVxOaxZVXJBfEdArRHV9kE73w5XM4slcns172NmfXsgUCY5xaD5HwRGG/ENsCr7P1YrP
         HleJYAqQmUW0/qp++OCL3Mw2YHVOtomicKUi3dD3GYNgFZtawr6FSTvQqEO/Wp+fZySU
         nSsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770973018; x=1771577818;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fS+ISWa72W+g6JkqlchkqQ6Ii61m95nh1ydzb82hfZg=;
        b=kicJ6nnuwkjiuqO0XqRrJyH2O5EPaXu1WpjV6LutUENDXDP4wJlt0NZERPsOyfNZ0K
         1qZWDEzgx2uNOi0bVxKyYqlUkTCO7oI+ghjE6EG/i+QDGD+IrKwUxtHvDX0be27JeNB5
         3gHhZlh1F7RYCBZTPSW+q3Q9vUsZmtk9vpWWsHNS2TYzHbj2gBeT0+7v85wSShWiq82h
         ibpJHkEd7iSYkCq9c4RZI9usRGmxPrpV07XQVuWT/aSMg61Votz/a+luWOqAYhD6TJb+
         uQlKrLtlwI6F4AauOwWpDGweZY4tf7VDMBOpMaSENnsPMoGrYeu7hOLpikjgm3mFIR4o
         qzjw==
X-Forwarded-Encrypted: i=1; AJvYcCWMAkIU3pXNLSgHBhte+7jNwn+p3CPk2G+Bd1ZqedM1uZRjPUt2sX/YLL/U7hg5eaz5TV6C5IeEUSdQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+qEtoTaBNUJ5FZnFiIoIvVeILg1kJDeqjCn6mpwg633nDrfCy
	rz4cJRkt6dR/RKW791Kv/VrbfQGq9FZ2EUbY9/KQ75/SWck9y0IHdoPn
X-Gm-Gg: AZuq6aIMiHd+LOlfHYMFtqILfoQIOyi6KUwmfhFW3MbzuCSM8V968LPjueGb2ZqtnCp
	FWTZ+48s6BwqwTRbOwwTRGi7ZKoftoZtM8pmePrQOuKPSDyDeyBr+Fnq+yKcI0xFKCxpQg2PKCo
	8cskqRZXC/KguCVRUTPR0Xz8Nob+nUtenCKEtUcdCki9yS5z8GS4LR6jmP0u/+qO/h23RYuZOcJ
	gL1LPwUHYxcPx1hpuUKHj+1+ETqbg32YAh9cSEnf8erDm+n3wX/BG7umjJnKpf+nitp7YiiHwHY
	cs1uUwMsrh/xDUxNEFqcQWhmf0DTJ9YRvkezgK1jYBhYFEHZhh7hUqFzIoj+YoTX3GEoDHB/UKx
	QuZRvhOAeJU+E4uLzr2aOhS9+9hWFf30kQTTsQ6g5+o1ia9IChe4heP62eJtsPBxNSrnJ7bgXOk
	+z3ca2luRRso6g3eAKbbxntOOAxQ==
X-Received: by 2002:a53:d014:0:b0:64a:dcb3:732 with SMTP id 956f58d0204a3-64c19b2ec54mr554017d50.60.1770973017911;
        Fri, 13 Feb 2026 00:56:57 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64afc83fa7esm6670723d50.1.2026.02.13.00.56.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 00:56:57 -0800 (PST)
Message-ID: <f014078c-6e4d-48b0-a814-45898b005c44@gmail.com>
Date: Fri, 13 Feb 2026 10:56:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: iio: light: vcnl4000: add Capella
 CM36686 and CM36672P
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260212-cm36686-v4-0-8f587d4a72bf@gmail.com>
 <20260212-cm36686-v4-1-8f587d4a72bf@gmail.com>
 <20260213-unyielding-pistachio-ape-deda74@quoll>
 <3a20c906-647c-458f-a118-c7927495e7ef@gmail.com>
 <8fb27a7a-82dc-443b-bcc4-21007783fc54@kernel.org>
From: Erikas Bitovtas <xerikasxx@gmail.com>
Content-Language: en-US
In-Reply-To: <8fb27a7a-82dc-443b-bcc4-21007783fc54@kernel.org>
Content-Type: text/plain; charset=UTF-8
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
	TAGGED_FROM(0.00)[bounces-265299-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 128C41343CD
X-Rspamd-Action: no action



On 2/13/26 10:51 AM, Krzysztof Kozlowski wrote:
> On 13/02/2026 09:29, Erikas Bitovtas wrote:
>>>> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
>>>> ---
>>>>  .../devicetree/bindings/iio/light/vishay,vcnl4000.yaml  | 17 +++++++++++------
>>>>  1 file changed, 11 insertions(+), 6 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>>>> index 4d1a225e8868..2ba4d5de4ec4 100644
>>>> --- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>>>> +++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>>>> @@ -18,12 +18,17 @@ allOf:
>>>>  
>>>>  properties:
>>>>    compatible:
>>>> -    enum:
>>>> -      - vishay,vcnl4000
>>>> -      - vishay,vcnl4010
>>>> -      - vishay,vcnl4020
>>>> -      - vishay,vcnl4040
>>>> -      - vishay,vcnl4200
>>>> +    oneOf:
>>>> +      - enum:
>>>> +          - capella,cm36672p
>>>
>>> CM36672P is compatible with CM36686, but this is not expressed.
>>> Confusing commit msg and code. 
>>
>> For CM36672P we create a dedicated compatible because it is a
>> proximity-only sensor which has the same proximity sensor configuration,
>> but ambient light sensor registers are missing (reserved).
> 
> I don't understand this. You just wrote "fully compatible with CM36686"
> and now you imply that not.
> 
> Decide.
> 
It is not. CM36672P supports only a subset of CM36686 features, in
particular the proximity sensor. That is what I meant initially.
I am sorry if the previous phrasing caused any confusion.
> Best regards,
> Krzysztof


