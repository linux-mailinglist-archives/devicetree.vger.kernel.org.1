Return-Path: <devicetree+bounces-314203-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e7UTD2LSOGp9igcAu9opvQ
	(envelope-from <devicetree+bounces-314203-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:12:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFB36ACE6A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:12:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=TE8RA6w5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314203-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314203-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 252EA3016901
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 06:12:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89AC035CB81;
	Mon, 22 Jun 2026 06:12:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE7B274641
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 06:12:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782108767; cv=none; b=U8/IWq39mVviGFtBQWCjfZ8Cv2oC+7az+ag6yw1EWwwOlB9hsCAOL19bKoAUktvs1ehnj1kvWRgbqmyS/P74X1xkD/Ib+9PZ+/dAhJOz7KZZg/veIKf+SgZ56Zf8ocN2ZNTdjDLFoV4O1rdCDRnsAqZjqUe1SqPcBAySQykggas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782108767; c=relaxed/simple;
	bh=k/jKiLG5T7SlsMN6SZ5eXOClaqTNEE4Ub90SlxnqtLU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jkx66NqI1tVhZd57fWMEPpWHiIu8fGWlvW5bP8+AwGlLv/VTOcICJYEapHuDj8Tbj7NCT0vjTDkJ1p4O9aMdZ3lVhtIxV7dnFk/tZ+KV8vrIKxxRCm/PweOYpN6ZKI5Gz99xMxBUc1GOatywFZvKH+NLxif8YUoiqdaoRFsAa6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TE8RA6w5; arc=none smtp.client-ip=209.85.215.177
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-c89636920a3so1324605a12.1
        for <devicetree@vger.kernel.org>; Sun, 21 Jun 2026 23:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782108765; x=1782713565; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5UYItOtv5cbHbHn81xG9uaSAtTwXvVojgVomA6lyfc4=;
        b=TE8RA6w5YqNkXmKd3WVzp7oH+SmOdeHrvFUVhfeNk1CcTWPjAGChWh4gEuv4iOdPUA
         coBLHGv2sv5vCKeSzjwZAlz4S8erDo4y7+Xc91/+MdHGQECBplCi7FNcgvynedc3uA5I
         UVnusFWkm7nfbLo8skp/f2Y24fbBZV0lvasUhe4aDKlM5ZtbQsxmtDUPMykXCQJSijrq
         ZYfRaRINttOJnJJCmsDMgQ0WPIH19sy5L+0zCf5Vb+3KGuRA2djCLndD+9GNo+L/0C01
         TP9QN+QFL0Prkb/fus6+gKSxNYqtL1CRs5Vujcqg7sLELQ/NgHJVgesBubB3wCSMs0px
         gXrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782108765; x=1782713565;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5UYItOtv5cbHbHn81xG9uaSAtTwXvVojgVomA6lyfc4=;
        b=RruaZ/AQiWpgiCDYyNqtdSymdxrJ7BhwRJIy3Hmpe1cYihMvGbXh7Jdr1ebD9TsiiJ
         Zil5pxGDqrwMPNOeb0qFWXUPJOU/qTRALNnDt80XDDdwiGrIOeMtlzmSXasOGkeeriTh
         vfTmKEEp7pgeZC9i21i5bIsUoIwA4D1dqoOoRfRY1AqAuW53w6doP78hCqk1hzh4Qn/A
         QcWl1mlcoaUZhgRHuFSYDxpe82gevvrLHcqpGDrzynFFns9yze4SH+ODwQUwozZewITH
         +qAVNLWZ3QtcNGTCB6q/lSpNYhIfxrt70GmpKollVTxZ8h8fI0WTWPimbw2QljXoQd8y
         NQGQ==
X-Forwarded-Encrypted: i=1; AFNElJ9QwriCLMZ+oNa1vJmAK6Rr9xpeIx7snlUR9negvtOKp7jRjEM3VX7WwrpINi0BvxwVdP94opoA4Rsp@vger.kernel.org
X-Gm-Message-State: AOJu0Yyor79iP8Gvxt1F0o6kbBbCTl5i/FJHtDGvqvIBw1XzreZatBHU
	Ol/Aw5Zpq1vkumWtddu12QhLAp0cb08oQutVr4wcEYhKAF7dL8M4r3W3
X-Gm-Gg: AfdE7cmffjcz1Am56bAHlPaIK2GLZNbCx/twQxln5mlqFcYE7oxQZ+15tHveHBPhPLU
	UnvfQsRUuRmAeLUO/TSALs9R4QPcO94MmsHOMdX23boERzlSZoTkO8YMkUFIjKRcnKiZNoS0HNL
	33HaaNBuFfbfg55FnW0T2kZNFDyyzAd3KWhgznUZxQJhckdKJqrdjXyzZLOOB6uNjcdCcep2lu9
	51t2Qywo0CYZLFLHHoqDpjC2czRKqalJKrcy+6vejWPQBVKKYZ6qzMFqDm8vthoaW+ZJSInLLWA
	5icUSat9+4P29n+KRjtl1RVWfbiuo0rho6ZxkU/NsmUfxTZYH5I17H0jnTIiVBHeLSSaWsjP/EW
	+CY65HqqArfqZXCU5PiworLKNdMZWVmL0ojfPUyT6jLBEQloU9feF1365r6LUmyZCbWxpJrZ932
	VlD0jM/eOLKVyKoz4VwWClRAKB3fy67R4R0PxJF0J56l1TM0OwnYvfBXY=
X-Received: by 2002:a05:6a21:a395:b0:39f:2dd0:65d5 with SMTP id adf61e73a8af0-3bb34e6a0cfmr14815480637.39.1782108765381;
        Sun, 21 Jun 2026 23:12:45 -0700 (PDT)
Received: from [172.20.10.3] (42-79-6-161.emome-ip.hinet.net. [42.79.6.161])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c8bc5ef74ecsm6497888a12.29.2026.06.21.23.12.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jun 2026 23:12:44 -0700 (PDT)
Message-ID: <cc417a12-a327-e63e-020b-00650a22d6d9@gmail.com>
Date: Mon, 22 Jun 2026 14:10:28 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4 1/2] ASoC: dt-bindings: nuvoton,nau8360: Add NAU83G60
To: Krzysztof Kozlowski <krzk@kernel.org>, Neo Chang <YLCHANG2@nuvoton.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com, perex@perex.cz, robh@kernel.org,
 krzk+dt@kernel.org, linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, kchsu0@nuvoton.com, sjlin0@nuvoton.com
References: <20260609024128.585938-1-YLCHANG2@nuvoton.com>
 <20260609024128.585938-2-YLCHANG2@nuvoton.com>
 <20260609-hysterical-rhino-of-resistance-d7e1da@quoll>
Content-Language: en-US
From: YLCHANG2 <neo.chang70@gmail.com>
In-Reply-To: <20260609-hysterical-rhino-of-resistance-d7e1da@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314203-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:YLCHANG2@nuvoton.com,m:broonie@kernel.org,m:lgirdwood@gmail.com,m:perex@perex.cz,m:robh@kernel.org,m:krzk+dt@kernel.org,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:alsa-devel@alsa-project.org,m:kchsu0@nuvoton.com,m:sjlin0@nuvoton.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[neochang70@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,perex.cz,vger.kernel.org,alsa-project.org,nuvoton.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neochang70@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,devicetree.org:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nuvoton.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7DFB36ACE6A


On 6/9/26 15:04, Krzysztof Kozlowski wrote:
> On Tue, Jun 09, 2026 at 10:41:27AM +0800, Neo Chang wrote:
>> Add device tree bindings documentation for the Nuvoton NAU83G60
>> audio amplifier.
>>
>> Signed-off-by: Neo Chang <YLCHANG2@nuvoton.com>
>> ---
>> Changes in v4:
>> - Refine the `firmware-name` description to clarify the loading order
>>   (Left then Right) and the PBTL mode behavior.
>> - Remove the "dsp bypass" option description.
>> - Update the example node to follow devicetree coding styles.
>>
>> Changes in v3:
>> - Remove colon to resolve YAML build warnings.
>> - Fix 'firmware-name' property definition to comply with binding schemas
>>
>> Changes in v2:
>> - Dropped the word "driver" from the description.
>> - Removed runtime/software configuration properties:
>>    nuvoton,low-latency, nuvoton,anc-enable, nuvoton,aec-enable,
>>    nuvoton,vbat-microvolt, and nuvoton,tdm-channel-length.
>> - Added missing "nuvoton,dac-cur-enable" property for static speaker impedance matching.
>> - Removed unnecessary '|' formatting from single-line descriptions.
>> - Fixed typo in firmware-name property.
>> ---
>>   .../bindings/sound/nuvoton,nau8360.yaml       | 83 +++++++++++++++++++
>>   1 file changed, 83 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml b/Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml
>> new file mode 100644
>> index 000000000000..2d19aedf1419
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml
>> @@ -0,0 +1,83 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/sound/nuvoton,nau8360.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Nuvoton NAU83G60 Stereo Class-D Amplifier with DSP
>> +
>> +description:
>> +  Stereo Class-D Amplifier with DSP and I/V-sense.
>> +  This device supports I2C.
>> +
>> +maintainers:
>> +  - Neo Chang <YLCHANG2@nuvoton.com>
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - nuvoton,nau8360
>> +
>> +  reg:
>> +    maxItems: 1
>> +    description:
> You want |
>
> Or this could be just enum of addresses, no need to copy paste address
> decoding from datasheet.
Thank you for the suggestion. I will modify it to an enum of addresses 
and remove redundant description in v5.
>
>> +      The I2C address of the device. The address is determined by the external
>> +      hardware configuration of GPIO1 and GPIO2 pins.
>> +       - 0x1a (GPIO2=Low, GPIO1=Low)
>> +       - 0x1b (GPIO2=Low, GPIO1=High)
>> +       - 0x4a (GPIO2=High, GPIO1=Low)
>> +       - 0x4b (GPIO2=High, GPIO1=High)
>> +
>> +  "#sound-dai-cells":
>> +    const: 0
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    const: mclk
>> +
>> +  firmware-name:
>> +    minItems: 2
>> +    maxItems: 2
>> +    description:
>> +      Assign firmware filenames for Left and Right DSP cores.
>> +      The first firmware is for the Left channel,
>> +      and the second is for the Right channel.
> Drop all above and just list the items with description
>
>> +      In PBTL mode, the Left firmware is ignored and only the Right is applied.
> Combining also this.
>
> items:
>   - description: ...
>   - description: ...
Got it, I will format this using items and merge the descriptions in v5.
>
>
> Best regards,
> Krzysztof
>

