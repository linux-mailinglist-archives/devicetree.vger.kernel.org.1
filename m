Return-Path: <devicetree+bounces-272474-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLGHHX9IrGnWoQEAu9opvQ
	(envelope-from <devicetree+bounces-272474-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:47:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBAD22C8A1
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:47:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C33903020658
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 15:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B86329D269;
	Sat,  7 Mar 2026 15:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ed08l3yx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590DD1D5147
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 15:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772898409; cv=none; b=VgSha771FyFF4WcyKwBRKoTAYtog/SoDWbun8QzpmgHH9SAf03x2CJBMDvarOw5BYXxF0sVuz/I+BeCRH8FDp8LXTsIL2d0oZyT7SHXIer8GzpYhklAIepCYE4dghq6s6fuqSCy3HgUdBbti+/0Rv9bUyKDit2DkHnlA43CuoQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772898409; c=relaxed/simple;
	bh=9l6aWH5YuUs1bRcF2o8aGcitTmhyjC3ss5qSJanDlq8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A55Chjl28axOtbn8NzmiBD2zhV4fjqnG2a22+yIhftl/TkIOB6hgNu4Hgb/jWiUPUaDzBiRawEpZ1mlzuNsucIzBDCsypwRyc+MZqyyqLtzdunJRIknJSGo0y3JXu5ahH1ps6eYrKfndj/U+naV3a/L7csDO/gACqUNshORwuog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ed08l3yx; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-35990245493so4201485a91.2
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 07:46:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772898407; x=1773503207; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uIuoqWZv8tHnvu9QNytBoqL4NkVScPssH158PsBBt80=;
        b=ed08l3yxCGx+tV/Q2m61f19ElFnMGTefilnLE3eLFLlZVDCL8sjfaFcjZ8Sn/Y7Bv5
         8KLiA+RIUBpC8otmwXGGmj6Le6r8lSy3HO61OZlEpv2pmiGorzIBsSJtCMyr+MAWzQLw
         qw2m2NlJVTVUqwIclmOM3aPq6ALJ5fMXs+Zioy3/UJ7JGWNTAFF7IRiW+iK9RURHOAwp
         r7uo6kC3W+sLIsZppuAYtEYrjJIfRKysPMwtHR958qir2hVgL+oFxC/IrzwIAWGwDig7
         feng+wYNGen+LeXna3c8leCeTF30y0anSMMvOREeGzYDm5Fzj9s5R2fuD3jb7wncuMwY
         91Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772898407; x=1773503207;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uIuoqWZv8tHnvu9QNytBoqL4NkVScPssH158PsBBt80=;
        b=LRP8yznX0X7Lvkqj70PydYDFpoz1IxhS4GBNmR7VLe4Efv406i2IXQwGSDaPh8XRjW
         7pkNafZ9ru88MVXR9wTC1wLdEQ3aYqndg4FaKTPHygU3cq9MS/Rsq7pC9hjvA6MpuXHS
         10xAmXfnQl66wiAIPjhap9XK+kfFviO2B+LDrja9PSNMNg8MXyG7wZInquVbxjmktNWt
         v2zXnW9X28n9MP+l9sKFLRLOvFtvYtQyOKG8SSSSae+F3fBHXL4IEF258i4cmAwJCJM0
         pHzC4KP6cfhTKQXI29rSbZFKL3zAcCcFeZ8F+Y3pQfzG75c8FPFi/oF48n4bGSUK/6SV
         YVhw==
X-Gm-Message-State: AOJu0YwWQ19pIlpZcIUdwGTZYNZena/A/Lc4pWtZ71M/yB3Bhdf/zSEU
	BfVY4JxiTWcbtptiZjROTCf0dqHiuD+H57tLajw56NKRArFzr4b/G6TI
X-Gm-Gg: ATEYQzxwKsKVYQSfL41EbbtK195VTSVEJNBcmuHEUp6kWkq6NSSrpPTsTOJARuvHIoZ
	oMJ64YQ7lbqg/q4G8R/pf/0l4NBSTuxDUJ1nIRZFCRMUKm1uU3OXoVuxhYWcmVtxes2wqAifw/f
	LAU7hicjaYjqytu0rUl67AI3+M9YcUjbt6s8evH+1nVEZ3lQcqbExAqy3kuIlvCHArt95+xgHez
	ngOPammR+NueJ7YINbuqjFvfDHSulnyjbL6e1iB2zGdMQHIDK25uEuMT8u8PML8hrZDECLdT90b
	lmQPwNvlVxPAeVvMbb0VDJMv4GS/Vy884bkixk8lfJW9iw1qrqreFBYYTuuip2ztfZ3OGz+9tTc
	4DMXFnpcf34oNFP8ZogaOT47knude5ztEM8RScGtLjbY53q0AIIOYrO8JA9DMDY79WhH4AINDax
	znh4G6/aRG0Lc9zhI4VK/NDMUH2vE8kOGWoJnU6S1o9JaWoA0H3YuCoKNZCXAcTIDx+zog23PO0
	+1VNAHrSsM=
X-Received: by 2002:a17:90b:5410:b0:352:ba0f:fb28 with SMTP id 98e67ed59e1d1-359be23398cmr5286986a91.1.1772898406660;
        Sat, 07 Mar 2026 07:46:46 -0800 (PST)
Received: from ?IPV6:2409:40f2:2133:57ee:dd51:fda6:69f8:15b9? ([2409:40f2:2133:57ee:dd51:fda6:69f8:15b9])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359bcb2abecsm1943723a91.9.2026.03.07.07.46.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 07:46:46 -0800 (PST)
Message-ID: <2185210c-d407-4019-a364-9e72df93029a@gmail.com>
Date: Sat, 7 Mar 2026 21:16:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] dt-bindings: arm: microchip,sam9x60-pit64b :
 convert to DT schema
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
 <20260227-arm-microchip-v4-3-7e2ae1c5b5d6@gmail.com>
 <aacb74f1-5d4a-4ed1-92fe-0c5536691274@tuxon.dev>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <aacb74f1-5d4a-4ed1-92fe-0c5536691274@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 7BBAD22C8A1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272474-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.938];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:email,devicetree.org:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Action: no action


On 07-03-2026 20:01, Claudiu Beznea wrote:
>
>
> On 2/27/26 17:14, Akhila YS wrote:
>> Convert Atmel Periodic interval timer of 64bit (PIT64b) binding to YAML
>> format.
>> Changes during conversion:
>> - Add missing compatible "microchip,sama7g5-pit64b" along with a
>> fallback
>> compatible "microchip,sam9x60-pit64b".
>>
>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
>> ---
>>   .../devicetree/bindings/arm/atmel-sysregs.txt      |  8 ---
>>   .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 68
>> ++++++++++++++++++++++
>>   2 files changed, 68 insertions(+), 8 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
>> b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
>> index 70059f66f2b4..d0561f7f465c 100644
>> --- a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
>> +++ b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
>> @@ -1,13 +1,5 @@
>>   Atmel system registers
>>   -PIT64B Timer required properties:
>> -- compatible: Should be "microchip,sam9x60-pit64b" or
>> -            "microchip,sam9x7-pit64b", "microchip,sam9x60-pit64b"
>> -            "microchip,sama7d65-pit64b", "microchip,sam9x60-pit64b"
>> -- reg: Should contain registers location and length
>> -- interrupts: Should contain interrupt for PIT64B timer
>> -- clocks: Should contain the available clock sources for PIT64B timer.
>> -
>>   System Timer (ST) required properties:
>>   - compatible: Should be "atmel,at91rm9200-st", "syscon", "simple-mfd"
>>   - reg: Should contain registers location and length
>> diff --git
>> a/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
>> b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
>> new file mode 100644
>> index 000000000000..f00ac7e858d9
>> --- /dev/null
>> +++
>> b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
>> @@ -0,0 +1,68 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/arm/microchip,sam9x60-pit64b.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Microchip PIT64B 64-bit Periodic Interval Timer
>> +
>> +maintainers:
>> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
>> +  - Claudiu Beznea <claudiu.beznea@tuxon.dev>
>> +
>> +description:
>> +  The Microchip PIT64B is a 64-bit periodic interval timer used in
>> +  several modern Microchip ARM SoCs including SAM9X60, SAM9X7 and
>> +  SAMA7D65 families. It provides extended timing range, flexible
>> +  clock selection and supports both periodic and one-shot interrupt
>> +  generation modes.
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - const: microchip,sam9x60-pit64b
>> +      - items:
>> +          - enum:
>> +              - microchip,sama7d65-pit64b
>> +              - microchip,sama7g5-pit64b
>> +              - microchip,sam9x7-pit64b
>
> Same here, I'll adjust this list to be alphanumerically sorted, thus,
> microchip,sam9x7-pit64b first. Other than that: 


Thank you claudiu.

>
> Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
>
-- 
Best Regards,
Akhila.


