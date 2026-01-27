Return-Path: <devicetree+bounces-259886-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKDbMdSzeGlzsQEAu9opvQ
	(envelope-from <devicetree+bounces-259886-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:47:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4F094778
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:47:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9859301FA6F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:46:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2890D347BC4;
	Tue, 27 Jan 2026 12:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TRHi3CHb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E52934D4DC
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769517977; cv=none; b=ZEpw2Z4S5fUS7e11swFKw29SxKj2MfX+S5pICfBLRY8C5UmmBBEp5g3SXkgb4wXo8PfIB2UxFqOOi+Ye4wscz/NdruStIKNuj3k3WcU4JWRvf3QdlGw6OSPARzDHNozUVpc0ga4oaVppe4oyYS41OGGaUO3KtHmn3lRipFOp2Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769517977; c=relaxed/simple;
	bh=dnr0XDRXOdzvkZI3AmE1l0zN5ERZuqLrbJ/VzZeX6ac=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Ac9AGCvdJz/4uT5BAtg3hW6BHtwcjm//gIm0VgS78k+DtWPwh5m6guEvp2iTF6KIoUYWjo9nplymtjHYxZQGIBNnebt/dGZ8krL58YQ+vak6Bgk2zYkHiPoEsNepql9xEovNQGlYMY4lP5j3Fc9Fnlvq324Yv3BHJDnQn27SHYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TRHi3CHb; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-c06cb8004e8so2115137a12.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:46:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769517975; x=1770122775; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0f9xEgBB4m5dikvKwwgGmgDkV1uot0Bgrh0VsHDieZs=;
        b=TRHi3CHb3ePv20iZui8jdsNOwHomD5fMlEQZ7Yv2nBMmFVLIWxwA+s5Smfj1TdPcR7
         gHgImO3QMWDmVwa3gOYjvW9cgW0CY2M1Z9GoGphWVjiZ55d8HBHkp/IW91MlhWl0z5eM
         uloNotgyR9plmvQJDPb6c/frK0cHXrcRfeWBM5Y64jMWsyVihCsfhAO/LDqwdfjS59va
         bguULMiW6FrA4c5WXBHDReEHVCJ6wo62k2M5dmtPuSVOJStk2Jemw5BHGGZ0Ki/cJTYw
         Oi6geDPrJQmtAB7BRyoMYclFvddjoHx1JiK2x8QBs6JSxUAfy3X+cYQ+9ecunLb/b+CM
         Fyow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769517975; x=1770122775;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0f9xEgBB4m5dikvKwwgGmgDkV1uot0Bgrh0VsHDieZs=;
        b=nayewPkbSNym1z0Fr5rAR9xhZx6oUDQFxk0qqkSTxnd/RhCqs3sF12xoIAqxlIcscs
         XD0Wn9XH3JUoCBVlFqVM/Eih2kXvUP6XRdD2cI3ofr9pS4iPYNO6fbwcvdRnngL2vvM9
         l+9/MLiWPWdUkCX9axvYz8vXZ8nKKarYvl4gREH7Lfp0VJopH0oPoIGv32oFZquOn6mS
         bPTSMCI6foGiMtGRsVa02nQ+UKTgtnfOzNGeGsWDHlD2Zq/rp3HMXIcJ8DV3sQTgK/zC
         JzBD7efz1B8otoEIOpolACiQaPVfB9N91M9m19NpQu7wYZBMtcRQ0IKKQrmtf6SmlzKE
         Dd/g==
X-Forwarded-Encrypted: i=1; AJvYcCUX9TU27b+UYMIZYfAcrp1Z/fkPI2N9rgjvcL4qPvcGcwGygMlTbJ5HItesSAnCffOT1QunmQyVGAO+@vger.kernel.org
X-Gm-Message-State: AOJu0YyAN2QbSDgly1ACJtAN3QvWOelQLtJ2uQW4TIySAxKH5L+SMYvl
	h+9EfhV3lImyioM5bQLUU62iyTKVi+2TFqoGIOsp8xdid+j3H1Zwmn4C
X-Gm-Gg: AZuq6aJvr+4e2aefVBYl8yteTnh98i+qUMed9V72l+u0mO3WXNkc90jYWTGG0Gcny6/
	deSrfkP+BnoZWzwvQAbZIelmgQ1n6swWhwpbC7uQfzp92HidUAWC3CR6W/WIgv+Sj9m9cAcMLwD
	rRov84k3A6RJa/808PsgHF7+F2xtPtqOL0EQ8H+lr+7Et77z+SSfZqGoOLGsjS2/2bOLGOEJi3n
	RJQW/rHX2ALFKR9Koa2w+4Vk0ejOLTUdOhEBwD6BWxiwpsu2GMqKvVyrSWcdbgNuJbynTTXjcR9
	W26BJ6Ei9dTnT7kIIdo+mup0EjYUTTAWoC/pVWV8e9l8xmkF5ur/j8UMHHZCizh+TJc57ffpoP7
	znSon+5WYvrl4MDz3IxJeydGIzRvLh9zgHJyMpuJB1SPDDUC8rAU1SuigpBRbp0P9C0N2x9iEHo
	3C3C40xyYL+RnC3hP1eikcjiUKoaE7YklF8g==
X-Received: by 2002:a17:902:e802:b0:2a7:a5b3:bf4f with SMTP id d9443c01a7336-2a870de2274mr13541465ad.34.1769517974606;
        Tue, 27 Jan 2026 04:46:14 -0800 (PST)
Received: from [172.16.20.12] ([136.226.253.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802daa675sm119001545ad.15.2026.01.27.04.46.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 04:46:14 -0800 (PST)
Message-ID: <5f78fbe8-288d-4b0a-af57-e834bd1186ba@gmail.com>
Date: Tue, 27 Jan 2026 18:16:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: backlight: gpio-backlight: allow
 multiple GPIOs
From: tessolveupstream@gmail.com
To: Krzysztof Kozlowski <krzk@kernel.org>, lee@kernel.org,
 danielt@kernel.org, jingoohan1@gmail.com
Cc: deller@gmx.de, pavel@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, linux-leds@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260120125036.2203995-1-tessolveupstream@gmail.com>
 <20260120125036.2203995-2-tessolveupstream@gmail.com>
 <3f3c47ea-1660-4bd4-ab89-3bdf58217995@kernel.org>
 <54d156ba-e177-4059-a808-2505983b4e2e@gmail.com>
Content-Language: en-US
In-Reply-To: <54d156ba-e177-4059-a808-2505983b4e2e@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259886-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmx.de,kernel.org,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3C4F094778
X-Rspamd-Action: no action



On 23-01-2026 16:41, tessolveupstream@gmail.com wrote:
> 
> 
> On 20-01-2026 20:01, Krzysztof Kozlowski wrote:
>> On 20/01/2026 13:50, Sudarshan Shetty wrote:
>>> Update the gpio-backlight binding to support configurations that require
>>> more than one GPIO for enabling/disabling the backlight.
>>
>>
>> Why? Which devices need it? How a backlight would have three enable
>> GPIOs? I really do not believe, so you need to write proper hardware
>> justification.
>>
> 
> To clarify our hardware setup: 
> the panel requires one GPIO for the backlight enable signal, and it 
> also has a PWM input. Since the QCS615 does not provide a PWM controller 
> for this use case, the PWM input is connected to a GPIO that is driven 
> high to provide a constant 100% duty cycle, as explained in the link 
> below.
> https://lore.kernel.org/all/20251028061636.724667-1-tessolveupstream@gmail.com/T/#m93ca4e5c7bf055715ed13316d91f0cd544244cf5
>  
>>>
>>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>>> ---
>>>  .../leds/backlight/gpio-backlight.yaml        | 24 +++++++++++++++++--
>>>  1 file changed, 22 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
>>> index 584030b6b0b9..4e4a856cbcd7 100644
>>> --- a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
>>> +++ b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
>>> @@ -16,8 +16,18 @@ properties:
>>>      const: gpio-backlight
>>>  
>>>    gpios:
>>> -    description: The gpio that is used for enabling/disabling the backlight.
>>> -    maxItems: 1
>>> +    description: |
>>> +      The gpio that is used for enabling/disabling the backlight.
>>> +      Multiple GPIOs can be specified for panels that require several
>>> +      enable signals. All GPIOs are controlled together.
>>> +    type: array
>>
>> There is no such syntax in the bindings, from where did you get it? Type
>> is already defined.
>>
>> items:
>>   minItems: 1
>>   maxItems: 3
>>
>>
>>> +    minItems: 1
>>> +    items:
>>> +      type: array
>>> +      minItems: 3
>>> +      maxItems: 3
>>> +      items:
>>> +        type: integer
>>
>> All this is some odd stuff - just to be clear, don't send us LLM output.
>> I don't want to waste my time to review microslop.
>>
>> Was it done with help of Microslop?
>>
> 
> I understand now that the schema changes I proposed were not correct, 
> and I will address this in the next patch series. My intention was to 
> check whether the gpio-backlight binding could support more than one 
> enable-type GPIO. 
> Could you please advise what would be an appropriate maximum number of 
> GPIOs for gpio-backlight in such a scenario? For example, would allowing 
> 2 GPIOs be acceptable, or should this case be handled in a different way?
> 

In line with Daniel’s suggestion, I am planning to adopt a fixed upper 
limit for the number of backlight GPIOs. The current hardware only 
requires two GPIOs, so the maxItems can be set to 2.

If future platforms or customers require support for a higher number 
of GPIOs, this limit can be increased and the driver can be 
updated accordingly.

Kindly advise if this solution aligns with your expectations, or if 
you prefer an alternative maximum value.
 
>> Best regards,
>> Krzysztof
> 


