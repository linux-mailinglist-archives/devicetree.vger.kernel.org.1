Return-Path: <devicetree+bounces-272598-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGbILEynrWlm5gEAu9opvQ
	(envelope-from <devicetree+bounces-272598-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 17:43:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B964F2311AD
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 17:43:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AC312300844B
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 16:43:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5086533859B;
	Sun,  8 Mar 2026 16:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Jf/4yAhp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3333382E2
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 16:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772988232; cv=none; b=Hfw5z2ep0woFnW27hYtUcNnAx/w4qLjlzbs7n82UekP5//WcUdorANIaBK197ULhey7igiko5ek5ydn0jJWYHZI2yFwTuOpo9C0x8AiPJoRRKedQZF41Q070QdPtJBTGJqdY4cu9uGOoWkjfJ/uqe68nNnM+DOhp9Y2CedLhuGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772988232; c=relaxed/simple;
	bh=5PdK8ZH0OApCvGCUau4fGFklsQxnHjUokWQFkZsjW+w=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=rpJ2WIsUG7vGEC3gBPzGPA/d1iZctLaH0FYiJVXHH5IP4hGvmsGqvD5bHU2ZXB5J3gno6EbVg0DJSpupxCWghrj43MJYZVvCjQNIwYEt6Zc5+m1MLQhUcR5mvW4ZRXnVlkMhnH97ZkaIGRfaR27cmwDPrDrxf8nY5Zz4WUdxZIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Jf/4yAhp; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-439c944bb62so3371912f8f.3
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 09:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772988228; x=1773593028; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ptNfJY13rqncPY9fxaxMY/4N9QDNKhiHCS/yjgnBkUM=;
        b=Jf/4yAhp0pHKyPXb6YSU5ivEM1yRSzsM4WiGp8L62ieZhjqcx2BNXQU3+22OqYNYkP
         CU5cI564n3DJRImEMIKbxnxIZyqhRyElbSDyF9u7X0Kl23bJNrr/w4/5BCkMvTvRMYmd
         OuTJ40LSV1bLQRwgvsSKLWw30WnMUu8esvUSDEDjpm8fKEUk+Lt2ZyVPqR3YPHypqrgn
         dnudXf9eglsE0kXAoY3q7xSJK7GOaBkFLw2F94yJJNMPlHTYLlJA1vs1W6aR8w71Jjo9
         kg522LZ4atMz/inQBWJpEfF8xYJ6kdY3nOaDgTvvVfFivOJwVnBLimPo7tdHc6HF6VYK
         yEgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772988228; x=1773593028;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ptNfJY13rqncPY9fxaxMY/4N9QDNKhiHCS/yjgnBkUM=;
        b=fq4ucONir0DxnOQ6wC7UZwN5wIZfR7rKe9mb2U+FGhRUILQuvGAQBLr6exxXiUiVv/
         eniAeP3YbefFiJZy3zG086PQ4rkHSyUVv2ogid8GXvM5UFwzqDJv0dCYseSePcyzNg6/
         FN9LKEUaEx20hqeKlMPqKpyCA5wJyyvs7qsUBp0XDaFBiv/F6sy0/xXjQ4wP12byoE9v
         aG0iWu1wiXoSzyxntspfArGOWJQAVKSQhTIDbGwmtM77ybqovnaTi2wMLJMpidYQpj8w
         mnKcdfqlEJbwTJqp4OcnKwO0psB8fKmIi+0QWJAxDoyvWZeeFux5mbR1BTcoNXd4e5o3
         tw8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWt1MIgxMZ/ensMUVnXyANyMdsOjNn7TqaDGqwrKmgUii7m7zyfbQHM8jG2WDAnlz8/BnVih2xACVFY@vger.kernel.org
X-Gm-Message-State: AOJu0YyOMkvw+nMLtELIhvFxbQhie560fOyC6X7ZBFtlf7QXnobu24bM
	ZlWyUaluM6afXe92Ztd2Ays+OfMhccIEwwGhLhsJ85XCUOC3Yhqmk73RAHcfAJWcJNY=
X-Gm-Gg: ATEYQzzlj31ajJLhMDsRq8DfxMES/Eh5T6IbN4L/C2N9+HwRANzV5N1QuSseUruhB3m
	py+8aY1OkYRDiSpj7HcmMuGVAqgcN+6RDvE1daSO/26wzofbwBA44pHQTp1K8p9RZMAZeo2bpdK
	TBydbwnZupfZUr1RiassReobA/ygW3v9WaTp++g/di3EkPynQcQWeCIPloe8za9MFL+cVGxwxAK
	08nakgAs0PMiBKeTnJUxK0awYV9xGq4YRAHh9oAXlb0QnKeNv0/qUkSh90HMiBN0cF05eiHbayx
	GdsN5gFRoXLm9MsQv6iB4MI7ByEu59K10+lADoDxBP8B8F8bH530iMx+aqDQxN4JNvdP269wEnW
	DQGdF2gXywzizdo2T+0+ZfzlYJBEIkD11C15dJddDI981RM0k8NexmmCUQqeVnBPW/l/VNUm7Q5
	nvsdaIvkZYpBkoBd4WIo1ihO8DehkIPQ==
X-Received: by 2002:a05:6000:2681:b0:439:c38e:66cc with SMTP id ffacd0b85a97d-439da88ffdamr14319927f8f.46.1772988228077;
        Sun, 08 Mar 2026 09:43:48 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad977f8sm19297489f8f.9.2026.03.08.09.43.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2026 09:43:47 -0700 (PDT)
Message-ID: <f9de5355-0eb4-4a1c-82f5-bb7a20566e0d@tuxon.dev>
Date: Sun, 8 Mar 2026 18:43:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/19] dt-bindings: clock: at91: Allow referencing main
 rc oscillator in DT
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alexander Dahl <ada@thorsis.com>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120143759.904013-4-ada@thorsis.com>
 <b932cdfb-9197-462b-abb8-e7b4c7ecab6f@tuxon.dev>
 <20260209-amulet-customize-08ef8dfa1c38@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260209-amulet-customize-08ef8dfa1c38@thorsis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: B964F2311AD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272598-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.980];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,thorsis.com:email,tuxon.dev:dkim,tuxon.dev:mid]
X-Rspamd-Action: no action

Hi, Alexander,

Sorry for the late reply.

On 2/9/26 10:08, Alexander Dahl wrote:
> Hello Claudiu,
> 
> Am Sat, Jan 31, 2026 at 05:44:18PM +0200 schrieb Claudiu Beznea:
>> Hi, Alexander,
>>
>> On 1/20/26 16:37, Alexander Dahl wrote:
>>> The main rc oscillator will be needed for the OTPC to work properly.
>>>
>>> The new index introduced here was not used on the four affected SoC
>>> clock drivers before, but for sama5d2 only (PMC_I2S1_MUX).
>>>
>>> Link: https://lore.kernel.org/linux-devicetree/20250207-jailbird-circus-bcc04ee90e05@thorsis.com/T/#u
>>> Signed-off-by: Alexander Dahl <ada@thorsis.com>
>>> ---
>>>
>>> Notes:
>>>       v3:
>>>       - adapt to different base changes, added lines are the same
>>>       v2:
>>>       - new patch, not present in v1
>>>
>>>    include/dt-bindings/clock/microchip,sam9x60-pmc.h  | 1 +
>>>    include/dt-bindings/clock/microchip,sam9x7-pmc.h   | 1 +
>>>    include/dt-bindings/clock/microchip,sama7d65-pmc.h | 1 +
>>>    include/dt-bindings/clock/microchip,sama7g5-pmc.h  | 1 +
>>>    4 files changed, 4 insertions(+)
>>>
>>> diff --git a/include/dt-bindings/clock/microchip,sam9x60-pmc.h b/include/dt-bindings/clock/microchip,sam9x60-pmc.h
>>> index 91f8f863ea076..1f6bb51780d09 100644
>>> --- a/include/dt-bindings/clock/microchip,sam9x60-pmc.h
>>> +++ b/include/dt-bindings/clock/microchip,sam9x60-pmc.h
>>> @@ -10,6 +10,7 @@
>>>    #define SAM9X60_PMC_MCK		1
>>>    #define SAM9X60_PMC_UTMI	2
>>>    #define SAM9X60_PMC_MAIN	3
>>> +#define SAM9X60_PMC_MAIN_RC	6
>>
>> Why 6 and not another index? In theory, now, you should be able to define
>> here all the core clocks IDs (as these are known from the manuals) and
>> prepare the driver to allocate memory for all of them such that the driver
>> will have to be able to work with old and new device trees w/o further
>> changes.
> 
> Was the first common free index for these four clocks.  Before split
> up would have been nice to have a common index, because it was all
> together in include/dt-bindings/clock/at91.h in one file.  After
> splitup one could just use the first free index, as Krzysztof already
> suggested.

OK, sounds good.

> 
>  From my reading of the SAM9X60 manual, there's no such thing as core
> clock IDs in the manual.  If there is a section in the manual, please
> point it out.

There is no such section, AFAIK.

> 
>  From my interpretation for SAM9X60 these clocks are provided by the
> clock generator (section 40 in the manual):
> 
> - TD_SLCK
> - MD_SLCK
> - MAINCK
> - UPLLCK
> - PLLACK
> 
> The "main rc oscillator" clock is somewhat internal here, but for OTPC
> we must be able to enable it.
> 
> MCK (not MAINCK) is generated in the Processor Clock Controller block
> of the PMC (section 41 in the manual) from one of the above clocks.
> 
> So it's all mixed up from different blocks from Clock Generator and
> Power Management Controller already.  These indexes are
> arbitrary and just for the driver, right?  Or am I missing something?

If I got your question, some are only internally (currently), some are also used 
by DT (e.g. the PLL ones).

> 
> Besides, if it is renamed now anyway:
> 
> - Why that PMC prefix? (most of these core clocks come from the
>    clock controller, not the pmc)

The control interface for all of them are on PMC. So, they are all considered to 
be part of the PMC. From manual, chapter "Description" of "Clock generator":
The Clock Generator user interface is embedded within the Power Management 
Controller and is described in the

> 
> - Why not rename PMC_UTMI to something like xyz_UPLLCK to match the
>    datasheet/manual (likewise for the other definitions)?

That could be done for the SoCs where this applies.

Thank you,
Claudiu

