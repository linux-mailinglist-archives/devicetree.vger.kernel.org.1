Return-Path: <devicetree+bounces-272472-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHI+FShIrGmjoQEAu9opvQ
	(envelope-from <devicetree+bounces-272472-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:45:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E849122C874
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:45:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C988301BCCC
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 15:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C02BD29AAF7;
	Sat,  7 Mar 2026 15:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J/2bMatC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E841E5B7B
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 15:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772898334; cv=none; b=PjyFMTW8v5TSvpiTna4MBY8Tz00NXSNjjETxoCVKA1Hk+2bo137AchzSWOM20SghoYts6/E3s1+orNmZaG9YwMedVdzM6cMUkdvcotlfqM6LvOozzvYrO4Q//BXdi/TmIQmLeKMEAyGBF7R+w+mkEwPxTjEKG3oXBa7KJI2wo8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772898334; c=relaxed/simple;
	bh=gqF59iBghlu7w4f9oq5qnWBJm4hcqpF6+vHMwcATiP0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f1n/ESzPOgnskzvKJAYOFoz9jEyru7C8dNxTesgOSnU3tCuI6ioEGGWdpmaG+y1nCaI0ZlhlGO09BxP1PO8i8Pif46RNjI0A3el9MnPYRAdj2e/ymWXW6XrxvEoWH8HjoTlrVz/Ss2etCllyQEkecSVYodx5nhwD+POQGwq0Rm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J/2bMatC; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-8297e0b27e5so2152941b3a.1
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 07:45:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772898332; x=1773503132; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5cgV9qMZHmCHPf1rJ34D5D5Psowee5RtLjaaKl77igI=;
        b=J/2bMatCkQYtDMPc/3MK/vta7/zxO4xpMWx2JxATiti9+1UMR5ROiPB3u92FVUJnui
         YsY3acMC4boYbE1W1Ag6mGbgaWVVuXj4phErivUoRHtQma71u6tYCCFspVCvfFrxb8p1
         44VtxiI3ywNYhWKCGhlh7BWdwecM9BdLzLFH4gTKq32xqfKc9L8z3vhYB/L4+ozg+Xc3
         2J1iTey5ISzRhyha5ogiFXYnDW+u+rDVwlkoQ8fg08sbeMvUumi/NTnxOIPcdGWxSoIx
         EB6zlqQ81Kr8PZHZUnG8Dk1K1icqsgpAfzrK791PFEj9u3BKSVSjMO4BS0NhlIksD2c1
         8rAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772898332; x=1773503132;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5cgV9qMZHmCHPf1rJ34D5D5Psowee5RtLjaaKl77igI=;
        b=oFUNW44I1dAjqPSZn8gTqzPoUHcyc+rrjdx7OFN5c7kkxIs4r9xzm2L3T0BwlyVYwb
         b+iIAKI8eHTz0I+r2/yB01rnKsfvRbsish6SsuswZF0zqY80oPi4hADxukifQacRH1zm
         gbCkWi5VpT00+2rPlnUQS6MYvcfd2KnB2YdbxZGLcKtGQnBcFitOl1zxGvFVstcu6lrv
         sZjm4tPwM8OfqE2HkTK9MHWmgUZ5HLUStPXbByR2JAFTHs4yJ5Xorztpoj2bWaKCwwNi
         O+j8b3QPmESqgywuDXC6+3KPT98nN7KH66uLFXiFrTY9ziSERrKcs0Z2kUqzwIl+QdGe
         +AVw==
X-Gm-Message-State: AOJu0Yx1gJKSzmDvI1xBPbqIOOHSFa3qt8Z7rszAnEpJcvC87t3kG7dr
	2/mjDNvaQD30fEh9XZ5kt1Kf1NksxBDQrGTUZU9KGld+bB75apJspST/
X-Gm-Gg: ATEYQzxwV0w3xnvSHjWnCogpESWTYvIyqvPrMmgn7tkJVlSC68HnXfc2q6+smLx1ESO
	ABroKogFJsc6ifFBnLkoVTaXtUfdKJw6VnPr11AfpB61eu/5rK8UzJ22Yw90i9qNj33udUzMUo4
	aF5vkBX2rhrtWXKGmjd8HPm7B5kIiH0CD3x402FrgycUeIYQWpDQWNDaP1jSdSOPRJxF5KXGfg6
	MSTCbTQG4ccdvwjCX7GitPy7X8NcdECVmIZd8Stl8YVwXVN5pnrUzajaQgfeNp3LnK8YeLEUcku
	IZM4h8jwVTF3jcuRaXC7q3l+/D8LcxUQDYfghpKC38hOj87ta1OKdCuFgsWy2EJTsn72l67ChRY
	wBXf2fSqK025CnQOHvo4rVcTYG7Kc/umBJr0SlRyarjQ631LfUK7WjPeIo+RwpzseldREcbo/tc
	dWsqpIUqCQ9Uh6WqizvnSjbp05NfjmDeNopx1DQLUnmy3FLIAplWGDF9fQ4/ab8DC5MvgoSZdIA
	Xl5lcOdFF8=
X-Received: by 2002:a05:6a00:22ca:b0:823:ad3:4ff4 with SMTP id d2e1a72fcca58-829a2f69064mr5307178b3a.37.1772898331534;
        Sat, 07 Mar 2026 07:45:31 -0800 (PST)
Received: from ?IPV6:2409:40f2:2133:57ee:dd51:fda6:69f8:15b9? ([2409:40f2:2133:57ee:dd51:fda6:69f8:15b9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a48de551sm5013106b3a.57.2026.03.07.07.45.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 07:45:31 -0800 (PST)
Message-ID: <6649828e-0d84-43b9-b2a7-eb6843d6be03@gmail.com>
Date: Sat, 7 Mar 2026 21:15:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/5] dt-bindings: arm: microchip,sama7g5-chipid :
 convert to DT schema
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
 <20260227-arm-microchip-v4-1-7e2ae1c5b5d6@gmail.com>
 <5a983df1-fe80-49ab-a37a-58b6c4989548@tuxon.dev>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <5a983df1-fe80-49ab-a37a-58b6c4989548@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E849122C874
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272472-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.939];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url]
X-Rspamd-Action: no action


On 07-03-2026 20:00, Claudiu Beznea wrote:
> Hi, Akhila,
>
> On 2/27/26 17:14, Akhila YS wrote:
>> Convert Atmel system registers binding to YAML format.
>>
>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
>> ---
>>   .../devicetree/bindings/arm/atmel-sysregs.txt      |  5 ---
>>   .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41
>> ++++++++++++++++++++++
>>   2 files changed, 41 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
>> b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
>> index 5ce54f9befe6..4ee18112586d 100644
>> --- a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
>> +++ b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
>> @@ -1,10 +1,5 @@
>>   Atmel system registers
>>   -Chipid required properties:
>> -- compatible: Should be "atmel,sama5d2-chipid" or
>> "microchip,sama7g5-chipid"
>> -            "microchip,sama7d65-chipid"
>> -- reg : Should contain registers location and length
>> -
>>   PIT Timer required properties:
>>   - compatible: Should be "atmel,at91sam9260-pit"
>>   - reg: Should contain registers location and length
>> diff --git
>> a/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
>> b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
>> new file mode 100644
>> index 000000000000..4fdb068be929
>> --- /dev/null
>> +++
>> b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
>> @@ -0,0 +1,41 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/arm/microchip,sama7g5-chipid.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Atmel/Microchip RAMC SDRAM/DDR Controller
>> +
>> +maintainers:
>> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
>> +  - Claudiu Beznea <claudiu.beznea@tuxon.dev>
>> +
>> +description:
>> +  This binding describes the Atmel/Microchip Chip ID register block
>> used
>> +  for SoC identification and revision information. It requires
>> compatible
>> +  strings matching specific SoC families and a reg property defining
>> the
>> +  register address and size.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - atmel,sama5d2-chipid
>> +      - microchip,sama7g5-chipid
>> +      - microchip,sama7d65-chipid
>
> I'll keep this alphanumerically sorted, thus
> "microchip,sama7d64-chipid" in the middle. I'll adjust it while
> applying. Other than that: 
>


Thank you claudiu.


> Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev> 
>
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    chipid@fc069000 {
>> +        compatible = "atmel,sama5d2-chipid";
>> +        reg = <0xfc069000 0x8>;
>> +    };
>> +...
>>
>
-- 
Best Regards,
Akhila.


