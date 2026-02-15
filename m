Return-Path: <devicetree+bounces-265622-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id s4ItFnvxkWmfoQEAu9opvQ
	(envelope-from <devicetree+bounces-265622-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 17:16:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DB613F14B
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 17:16:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2E5A73008508
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 16:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29B31244667;
	Sun, 15 Feb 2026 16:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ODlXG0Ad"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B1621257F
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 16:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771172214; cv=none; b=Urkoi1SAWu+kF3ubHqRNVbaP4tAItfFQwtSfR2UgykYfdFcf5SQgtgd8T9e/RQPxzLM/1cKnUs4cZv6I5Vr2M4JeywePdjxsZioMGfV/r/OS6+TedqVlRR/tr3g8yK6V+iJo7pYxujH3xNJqHTPUg3SVDsej89ilkCCLWoTw1P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771172214; c=relaxed/simple;
	bh=QkftsrPYieFk9d+UCflvzlWm6/5nK+3y4WbIIuVt1C0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CJ1fami2irU/51ve1SWy1/z1blPf05ed7yL5TUtZZRhOty6eHLhCi+JtetrXgKcmjMx1qvFuMnqwBECWCn/N1cpV81NrIshk2XndJrEqO5kP8pQzaYjabe4gr3l1EX0y+JAQLGMpsnq332nrSLfMFuHa9VyklcdEhY18g9YcDaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ODlXG0Ad; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-7961e04355cso23199397b3.3
        for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 08:16:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771172212; x=1771777012; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0MzbHaBcl2BA9jnP7VQLQ7usDren2db0/Uzo8UfIv1Y=;
        b=ODlXG0AdjtizbMudBbgltHy8QNPfO4yVR4s3wvfqsVfqK1KIEoakV9yihdFrSx7Cf3
         92woa7QdDoAQz6qzpZDs10fTP7hIIMG/eBZXZuTO5xb0HD/YIG8JkEdZWuPfvPILOVSz
         4h8CLwpqjWyKH12PsqGcDQIs+/+uwMmKSa4IDwPlZIoTxQSBmnbFtJZCwz+ZEXgxvZuh
         WdgxsTl4KmvJP7ygFO3p8j64Pf09gFNqFiaxC22iBAvEWihNVbB2A+vZv9WP1c6tiqbD
         hwtF0IZi+9+HZXMmAUS47LLIZxzTZ8yh7tP1KIZmbg+D0qVV8gXbya9StW4VO3pCoSUR
         Kbqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771172212; x=1771777012;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0MzbHaBcl2BA9jnP7VQLQ7usDren2db0/Uzo8UfIv1Y=;
        b=tZutJHo0TljjmJSD7BVLpxVW7hz4xWICnLvrYCNfOulRVwzc2R+OcUKjqDLsOwt0n1
         gE9ICDCZ2lrYUFZI1QjNCZSqBRgpcBOlOL0e0daAn71RutQSRIn7va1V+1NHYaBwjtTY
         Cxdbfjjte4nN7eyD+55nzcafFkMmg3iYHj7z0lwYLJ8nA55sENK1qi3UsubkWo1VCeuN
         uVS/kOu01hgOJYezOoVwmJT6WliWM9aMwB2ulaAn8eZOkDLzW2V45ROwgeA2n/K2qmpu
         BbrwaRGMGnGv3+hyTl8+Yma4pPuIMRWnc8jzEytqZzh/LPSc39Pjt3oKl+FpS+rGsogH
         m0NA==
X-Forwarded-Encrypted: i=1; AJvYcCVfaNIdMUtatQCjyAj/7hfYJbfBHDEZNalqvjtKsNZwK1CfAvwvVH9YjoXeEkY4dteltYfFowzd7vhP@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ23/NYjUwKpeI0Xp4o30wI47X6KIWGLcs/fOzY9PzBl7u/HTB
	7JkMv9I5cLlpmFU72mKfALtHwBwkvQCUVCyHqPaXmO8BVqZzA6Kw81lG
X-Gm-Gg: AZuq6aJeu8cGBG5qbqTltT8HZ8dxZ1SRj29o/QWCrC5pSEuTtiJEbRNLGana3elL3Zr
	Z5NKjqPTIZ7xZaA/7osR4jYXS9RUhDHNil3f814UdZuz6v8S6rMnSULoXISh3U/mV9Wwvpv0qPy
	4lrrM5hN/uqqAasUZrVuKxc0GytqPavlUvf0jojiBpXGUIObL6z2HipL/pWSlYnJD0UlUEcNTFw
	T9hCc6Tg1eZ+GvtlbQK1QK99nKFmmvytN+oLO0U0g/ADjj4MAuzaNRmkhDTJi/IuvjzmfWr3ER9
	5vhWUmUqZF4WQFsBU9EIXkjCpp41tKEGLkzczcWHiMWQ5ER5mMSr9hBI80Gl0SXqzAslVgO0Arv
	vaPPXScg5waLaKkSi7QvwvFg+L6heosTcV20/kOz/QyRf89G3ksYwkEiWqFGbXGgE8Q11AcKWmJ
	HfuCGnCKlYsvpLMrSGbiFrbd2QzQ==
X-Received: by 2002:a05:690c:ed6:b0:796:37bb:9eaf with SMTP id 00721157ae682-797ac4ddaa0mr37247267b3.7.1771172211823;
        Sun, 15 Feb 2026 08:16:51 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7966c267f40sm90580437b3.52.2026.02.15.08.16.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Feb 2026 08:16:51 -0800 (PST)
Message-ID: <eea4cf8c-4126-49a8-ada8-1b1893a406c2@gmail.com>
Date: Sun, 15 Feb 2026 18:16:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: iio: light: vcnl4000: add Capella
 CM36686 and CM36672P
To: David Lechner <dlechner@baylibre.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
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
From: Erikas Bitovtas <xerikasxx@gmail.com>
Content-Language: en-US
In-Reply-To: <880ddcad-a92e-43bb-ad5c-d6f2f353d182@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265622-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B5DB613F14B
X-Rspamd-Action: no action



On 2/14/26 6:44 PM, David Lechner wrote:
> On 2/13/26 2:56 AM, Erikas Bitovtas wrote:
>>
>>
>> On 2/13/26 10:51 AM, Krzysztof Kozlowski wrote:
>>> On 13/02/2026 09:29, Erikas Bitovtas wrote:
>>>>>> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
>>>>>> ---
>>>>>>  .../devicetree/bindings/iio/light/vishay,vcnl4000.yaml  | 17 +++++++++++------
>>>>>>  1 file changed, 11 insertions(+), 6 deletions(-)
>>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>>>>>> index 4d1a225e8868..2ba4d5de4ec4 100644
>>>>>> --- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>>>>>> @@ -18,12 +18,17 @@ allOf:
>>>>>>  
>>>>>>  properties:
>>>>>>    compatible:
>>>>>> -    enum:
>>>>>> -      - vishay,vcnl4000
>>>>>> -      - vishay,vcnl4010
>>>>>> -      - vishay,vcnl4020
>>>>>> -      - vishay,vcnl4040
>>>>>> -      - vishay,vcnl4200
>>>>>> +    oneOf:
>>>>>> +      - enum:
>>>>>> +          - capella,cm36672p
>>>>>
>>>>> CM36672P is compatible with CM36686, but this is not expressed.
>>>>> Confusing commit msg and code. 
>>>>
>>>> For CM36672P we create a dedicated compatible because it is a
>>>> proximity-only sensor which has the same proximity sensor configuration,
>>>> but ambient light sensor registers are missing (reserved).
>>>
>>> I don't understand this. You just wrote "fully compatible with CM36686"
>>> and now you imply that not.
>>>
>>> Decide.
>>>
>> It is not. CM36672P supports only a subset of CM36686 features, in
>> particular the proximity sensor. That is what I meant initially.
>> I am sorry if the previous phrasing caused any confusion.
> 
> But CM36686 is fully compatible with CM36672P, right?
> 
> So this would make sense?
> 
>       - items:
>           - const: capella,cm36686
>           - const: vishay,vcnl4040
>           - const: capella,cm36686p
> 
> 
If you try to use CM36686 compatible for CM36672P, proximity channels
will work, but in_illuminance_raw will return 0 and changing illuminance
parameters will have no effect. That is because CM36672P is a proximity
sensor only and the register fields for ambient light are reserved.
And if you try to use CM36672P compatible with CM36686, it will work,
but only proximity channel will be available, even though CM36686 also
can sense light.


