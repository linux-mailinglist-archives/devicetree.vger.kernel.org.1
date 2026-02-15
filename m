Return-Path: <devicetree+bounces-265627-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mExgLuYJkmk4pwEAu9opvQ
	(envelope-from <devicetree+bounces-265627-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 19:01:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEF013F51B
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 19:01:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 919A8300334D
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 18:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9FA5260566;
	Sun, 15 Feb 2026 18:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WrhHNAth"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701FF21CC71
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 18:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771178466; cv=none; b=h/fV1ZikapWu5DybTaTF3FaqksleWgBHr22a6/eSdXguZb83TxO1LY6CMWZKal3cgGLvU1IGbVXdN2KSUxVhPMFLVuSAMDoHKBWqiNuSZ3m/TcRjRdnEFyf8BNTUX6VrhijM8YjTS5xQW6362YDOf7/TbuLk8X2mbBwCwv//Pfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771178466; c=relaxed/simple;
	bh=BFCwEhjPRXqG+a0i103fckn8v3LCvfKjt9tQvvQNMUs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Tvlm/H9Amv3LcpbrFZkgY78DYpK7KLtPkJlBGWX0ZjDQLdsftcp+p1hA9Tb0vuKU1aR9JzzcXUhkuI0/N3ZM+vzxWHs71hHOBjW0gKf23UPz/bHczlMhsCl1yauPBhomP91VCoOQoiYjTNNzoAlupygsEwC3CuKHqU+i5yjhcc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WrhHNAth; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-7950afac0ffso40251167b3.1
        for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 10:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771178464; x=1771783264; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dVfc3ZKINfdX4zMGanggAKwnJ4AmEdhD9zmapZzYYN8=;
        b=WrhHNAthwySqyuTRsmHNP2drY2szeh4SZeMtvw/KO8McroR4Wgf8mIlkZIDVJIqzK3
         SABOqdSfLSsQUG3pH0nVCQKxWe9ti/K1mss/hJmWeMuzkkEWukDvMNgbJCnToMIncSGo
         wPl1qFFX7SF/n+0ojtQUIrE+JFQv76RE9j+NX8EfpiiZ7q3vYvKFTizQ3ZsMxcGKHWD4
         j2UvmLzfanpRbcvXVjNkC/E55+W0isSre4ZVxx3jH5Q9p2NlbQc+WH4T83W9GGXJXvZ6
         GvLGCJmkfy5ftkG5SYXXTJxSSJfKimSOnOesf/vXeWUXPwLAVliKblP9bfDV4DsCAlxS
         00kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771178464; x=1771783264;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dVfc3ZKINfdX4zMGanggAKwnJ4AmEdhD9zmapZzYYN8=;
        b=go8PdY2f9ULX+MWxFSiqtso4oAx+scrL972WLpUJ3CPHRlo+NtGrWNTDuBBCCTvjvd
         IU1TcLuvHUA5nidH3PVGpSq8JMcpt0aiwf2DHTTH8Y/3Fj7uGvyUh+GqMPVJHMpmwnK+
         P65E8b+5KLEaog//AlSkYpg/PdRJ5Y5z9ooeXFBSW7mIU8TyK3x6ytpuVvTJMqjESQnD
         dD4SPfQ7NfXNaqGU69DwF/B/xgYGMJzpauqzfKc5zqfiSENPYK32ijueVNRWjQgsb9nu
         GvR7LZJnqj8hTj/LU1KJ/5sCHUQOpuZqRw1SlAfHv9UM3rMevTBeoD2g1BXyCYYyzyAU
         ZkEw==
X-Forwarded-Encrypted: i=1; AJvYcCUrJkiWZobMD4rxg/xEcT2y30xVRDR+xec4l7h1l//4AIz+dfAniwFXguA7ajvkWiqY2gh5rjzEqZvc@vger.kernel.org
X-Gm-Message-State: AOJu0YyBToPUrOmIbYBQnvT/wZcEU/MMyu8AXmZOHbtQKw93LHmFDpfq
	OdaF4WqmwOPne9ImJjoBi5UbA71zJcXT8EmrxhfAaObXgE3Lo3ENZ8qj
X-Gm-Gg: AZuq6aJ7xud44cixWGa4rgLrqZXiDZloX4VMo65VZvDZrzRICX/mIDIc2qr3+SThDcU
	BFJ67T0ysi1v5ICrPuqrym4MXsuZp84Jobyo4YxZ2/e7OiQs6I4GfZjVS4WKxUUNkjrenQJfNCL
	T9YGS8M9YipqvxYpZKbsSsDWIZoIKthRVyOqRMIDjcgFIcT94t6m6oVO9MbjUIlD88kSXDdPiMl
	LGIZFd/JgWp5KEzWyFC3OJbTJKF7rGhG4ZwY84ksXp3T/Aal8xWaQadAivW19OkmQ7b5zrm4IKM
	PpHlHfE75RCyfBUurKUO/2hOvmoXGkRw74J35Uip1jr58ovfGtdOS59ja+cV3FgX/o1mh5Cp9N+
	nNFOXBWqE9sOLz4F4dSsFjpDnSTz5AzZ5bBTfX8YIa0l3n4HGgvlXyxVlyk7IaXTgfSGZ3WP/Og
	+SoR1Gqupi8CQYR/aiZsb2snljlQ==
X-Received: by 2002:a05:690c:c50e:b0:796:3079:a88 with SMTP id 00721157ae682-797aa905601mr53078187b3.16.1771178464259;
        Sun, 15 Feb 2026 10:01:04 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7966c1a8222sm94305827b3.23.2026.02.15.10.00.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Feb 2026 10:01:03 -0800 (PST)
Message-ID: <38dca0a1-b5a7-45e4-845d-b6bb53203fcb@gmail.com>
Date: Sun, 15 Feb 2026 20:00:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: iio: light: vcnl4000: add Capella
 CM36686 and CM36672P
To: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
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
 <20260215174901.11f6fd6a@jic23-huawei>
From: Erikas Bitovtas <xerikasxx@gmail.com>
Content-Language: en-US
In-Reply-To: <20260215174901.11f6fd6a@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265627-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 5EEF013F51B
X-Rspamd-Action: no action



On 2/15/26 7:49 PM, Jonathan Cameron wrote:
> On Sat, 14 Feb 2026 10:44:23 -0600
> David Lechner <dlechner@baylibre.com> wrote:
> 
>> On 2/13/26 2:56 AM, Erikas Bitovtas wrote:
>>>
>>>
>>> On 2/13/26 10:51 AM, Krzysztof Kozlowski wrote:  
>>>> On 13/02/2026 09:29, Erikas Bitovtas wrote:  
>>>>>>> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
>>>>>>> ---
>>>>>>>  .../devicetree/bindings/iio/light/vishay,vcnl4000.yaml  | 17 +++++++++++------
>>>>>>>  1 file changed, 11 insertions(+), 6 deletions(-)
>>>>>>>
>>>>>>> diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>>>>>>> index 4d1a225e8868..2ba4d5de4ec4 100644
>>>>>>> --- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>>>>>>> +++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>>>>>>> @@ -18,12 +18,17 @@ allOf:
>>>>>>>  
>>>>>>>  properties:
>>>>>>>    compatible:
>>>>>>> -    enum:
>>>>>>> -      - vishay,vcnl4000
>>>>>>> -      - vishay,vcnl4010
>>>>>>> -      - vishay,vcnl4020
>>>>>>> -      - vishay,vcnl4040
>>>>>>> -      - vishay,vcnl4200
>>>>>>> +    oneOf:
>>>>>>> +      - enum:
>>>>>>> +          - capella,cm36672p  
>>>>>>
>>>>>> CM36672P is compatible with CM36686, but this is not expressed.
>>>>>> Confusing commit msg and code.   
>>>>>
>>>>> For CM36672P we create a dedicated compatible because it is a
>>>>> proximity-only sensor which has the same proximity sensor configuration,
>>>>> but ambient light sensor registers are missing (reserved).  
>>>>
>>>> I don't understand this. You just wrote "fully compatible with CM36686"
>>>> and now you imply that not.
>>>>
>>>> Decide.
>>>>  
>>> It is not. CM36672P supports only a subset of CM36686 features, in
>>> particular the proximity sensor. That is what I meant initially.
>>> I am sorry if the previous phrasing caused any confusion.  
>>
>> But CM36686 is fully compatible with CM36672P, right?
> 
> I'd be clear in this discussion that the P version is a subset.
> So it's very much one way compatibility (your ordering below reflects
> that right)
> 
As I said, only proximity register fields are compatible between
CM36672P and CM36686. CM36672P lacks ambient light sensing capabilities.
I am not sure if CM36672P should fall back to VCNL4040, or the other way
around.
>>
>> So this would make sense?
>>
>>       - items:
>>           - const: capella,cm36686
>>           - const: vishay,vcnl4040
>>           - const: capella,cm36686p
> 
> I'm not sure we can do that now given we'd also need the option
> of vcnl4040 falling back to cm36686p for it to feel logical and
> retrofitting fallbacks is a bit odd.
> 
> Jonathan
> 
To clarify, there is no such device as CM36686P. I suppose this is
supposed to be CM36672P here?

