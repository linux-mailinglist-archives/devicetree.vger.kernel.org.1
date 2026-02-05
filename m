Return-Path: <devicetree+bounces-262884-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFTAHvVLhGm82QMAu9opvQ
	(envelope-from <devicetree+bounces-262884-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 08:51:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB48EF993
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 08:51:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6764730166D6
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 07:50:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FDA135F8B2;
	Thu,  5 Feb 2026 07:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="Ta84+AVh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE47735EDDD
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 07:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770277808; cv=none; b=CSMtjfU1SKiAsmuRbbByO3cmfkQCd41tWwpgezJ34xzc8s+fB6tsFzsP9Z+wtfJ4UW0hFl7razNw0xJ2Zf9OLj4oOvsa761WkSKHmN/US7ENBRApTGjiPwiesTWnUXZKZhA0meHZpN6IHoIJIHME/MDG4lp8OZQHLewJUug7LzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770277808; c=relaxed/simple;
	bh=YXAjK+kHr7RRp8uV4R9UZ+srsvhC5cUBXR6u9xlEOnw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U6RKjEsksG4bpUEBaeVLfCJaVXewMcYqkS3b/SmPaEUnQW1DvDJF0k7X/FdDnvHnUm1BDgaIeFJn5/TobIsq3h8MPw09vO68vErq9/KSnfEXcgbARSi7zPT3+xVgwQ1y8xdnPz6kdxKf0Rne4TQ8BDM/zV3H9pJ3IgYLsgmvvzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=Ta84+AVh; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A9F273F786
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 07:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1770277806;
	bh=UnRqSzV04ruJ+1tCzWkMo0BH08JoWQU7+eTA9S+H8e8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=Ta84+AVhL6Dlqmmid5hcUlKj6SgrnUM3SoD+ZriQoNXHeg9c4FKKWRSjj6P8UtC1k
	 /9t6NOsVD5UbOFNyqnGOgN9jfjkSilhPYfi9rCloUBk6a5K6gA9g115cGr7Q9XTUtY
	 jzuc79hWrfb4gS9GQcxw0fkcx2B9UK4IsuDjm78EjtPWiY69/nIgjyJewFLP03r0tS
	 gpB1W8r9X9m5LynrUoI4ETvAt5P3V6AhMkhAcZi6O3UNhF1MeA+Mu0KZX+ejS8o2TK
	 ojYtgkRgk7bTv393JGWv8+EVhShMUpBxtZ9nTL51+NirTyC3dI7OvD09RhT1kBkRyg
	 qclWD58iqVI/rsI4gQ609240BuP0tdiRpoTxRw1u2mu4tfoNYH8OMPmemD/lF1iK7S
	 x0ZBoGOHKEhLcgfjzAVjsEeNSWBdL2ykPtxPWR/v9+uqpHrAYfywlUSFi+bz5ce9qH
	 aQzV7383kc86DqTTnbbR4QXa3oBtw6ZMdZlG4AnBut0W41g8JsxSFHIbPbhKEt3QF4
	 zhJVd1ohXSAvmjTTLuXbEWDuROY6+lMc7g9oyvbr0TC2wkTsTkgoMSQ7fE/pLz8txo
	 wP929/fLtlPiOJwQ9a6dJeD5laduKOc4x59SOsShU3n1cHowEXLyPUZd1j9P6cJ0d3
	 v3fjZWLdRuFBWj7mmPDamVKU=
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-435ab907109so564607f8f.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 23:50:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770277806; x=1770882606;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UnRqSzV04ruJ+1tCzWkMo0BH08JoWQU7+eTA9S+H8e8=;
        b=sCBWR+ROL52tkVP+YL8qpq01H6mPwaydosYJxXwPw1IK6hulW5Vh5BETKO4HlmTP+i
         veBLLK8Upb9Gm/KqFVIbmctPVvAo7K6BJTp7Bkm04hbzBfEtRnQZFr/BsFhDyKgGzsPi
         EMIKMd3NVn1XeGILxtiOl8ggEhaNtjQOp55UGXHqxy/1fHMxMKvbH/kQGabOP+yuWqsN
         lEgoYeeYPrAEZnp3SRjHKftLC0V3/Tsk2yWgmVIIsLHnWkIBtW8bREyQuB8zLZ8o6vhX
         rvxC6yxQEWkbnkI07ijKGCABy3M6cyEuYDYdjzXCvZobQPuIId39UJCSxjRJcSFKRbu3
         EBtA==
X-Forwarded-Encrypted: i=1; AJvYcCWbBWCj00tfgcWyTsg5QTap/zFNqca8W+X+jNOMSObFDs0cRBNUoCIgO55LFTlZvYx+zxMSugPF8NkD@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8WIl8hOOB5A4OVv1tFwe2g+W89TD9TJx0Vim0Fi45fz4z8AnL
	dGXnjlVqyc7fnZh6iQY7mFnfoqwpDF5aTvNK51C3yf96ka+eVnwGX+zcXyatN1gFZVuM+pjolH8
	DM98glqmV/uhy6097h7GIdLyw/1QrO/ADDWx8KMuzb/ckpSlsVI5F9q/frb3Atj1fX9VgnmADmG
	wjEdo=
X-Gm-Gg: AZuq6aKKezU8V5nIrTt/4NYmn3VzVedFw0cNLxbQl+qIHweSLO4WNKhLQf+Fy0Rk0gy
	cXG6WugBLv95FdsZ4osnsAxsds4VfEgsit2nzK2/SDPITdBjF/rm+KUp2UHLBXMUqH3LQhIvGju
	cvFscWCIB/wla1EgAELmium/1dzOHKDJHjjH3Osedhlguu8EKkX3ou20Y3koTpg+MRz1MuhtD50
	ldvx+d/yWhpQJtlU2v+qGNRGSs6dqR+uLnpu+O88++bcpiua4qGpBWg6O5+JJtAosOKT6x7Nzst
	kZDNHJFTksdDe2zEZJSnBIkN468GMhBT3M69hcjtDZTyPPowtgliZAp+oJ+PWgIzXpOcZZTLNo8
	mtUGmjIOxZE3JCtIm70gTu7RUvhdIXPW9hfMLrttrwFT4+TXWgaiRtGdzBuQA4MAzTOzOgHqaWZ
	j+9wEyRnY=
X-Received: by 2002:a05:6000:2505:b0:435:95dc:b8ca with SMTP id ffacd0b85a97d-43618052805mr7916335f8f.40.1770277804622;
        Wed, 04 Feb 2026 23:50:04 -0800 (PST)
X-Received: by 2002:a05:6000:2505:b0:435:95dc:b8ca with SMTP id ffacd0b85a97d-43618052805mr7916240f8f.40.1770277803126;
        Wed, 04 Feb 2026 23:50:03 -0800 (PST)
Received: from [192.168.123.154] (ip-005-147-080-091.um06.pools.vodafone-ip.de. [5.147.80.91])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43617e38ec5sm12764912f8f.14.2026.02.04.23.50.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 23:50:02 -0800 (PST)
Message-ID: <3166f7d5-b526-411d-b337-27981a7ed14d@canonical.com>
Date: Thu, 5 Feb 2026 08:50:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] riscv: dts: starfive: Milk-V Mars CM Lite broken-cd
To: E Shattow <e@freeshell.de>, Emil Renner Berthing <kernel@esmil.dk>,
 Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260204101602.30184-1-heinrich.schuchardt@canonical.com>
 <46d5d249-8cf2-46d1-a90c-1f2c5f146e15@canonical.com>
 <e2394c64-af36-428f-ad6e-4c7038c0301e@freeshell.de>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <e2394c64-af36-428f-ad6e-4c7038c0301e@freeshell.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[canonical.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[canonical.com:s=20251003];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262884-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[canonical.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heinrich.schuchardt@canonical.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:email,canonical.com:dkim,canonical.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,raspberrypi.com:url,waveshare.com:url]
X-Rspamd-Queue-Id: DCB48EF993
X-Rspamd-Action: no action

On 2/5/26 00:16, E Shattow wrote:
> Hi,
> 
> I think the correct fix will be device tree overlays per-carrier board
> and not this one-size-fits-all workaround with the System-on-Module.
> Review below:
> 
> On 2/4/26 08:38, Heinrich Schuchardt wrote:
>> On 2/4/26 11:16, Heinrich Schuchardt wrote:
>>> The card detect GPIO depends on support by the base board.
>>>
>>> Detecting an SD-card did not work for me with a Milk-V Mars CM Lite
>>> mounted on an Waveshare CM4-IO-BASE-A board.
>>
>> The schematic of the Waveshare CM4-IO-BASE-A board is available at
>> https://files.waveshare.com/upload/a/aa/CM4-IO-BASE-A_V4_SchDoc.pdf
>> showing pin 76 is not connected.
>>
>> In https://forums.raspberrypi.com/viewtopic.php?t=291041 the Raspberry
>> Foundation explicitly wrote that pin 76 should not be connected when
>> using a compute module socket.
>>
>> E. Shattow pointed me to a board
>> https://github.com/NabuCasa/yellow/releases/download/v1.3c/
>> Yellow_v1.3c_Schematic_git.8957b440adda.pdf
>> that actually disregarded this advice and uses pin 76 actually as cd-
>> gpio. This usage of GPIO 41 is a property of the specific base board and
>> not of the Milk-V Mars CM and should be described in a device-tree
>> overlay if needed.
>>
>> Best regards
>>
>> Heinrich
>>
>>>
>>> According to [1] SD_SDIO0_CD_GPIO41 is connected to pin 76 reserved.
>>> The Raspberry Pi Compute Module 4 IO Board documentation marks that
>>> pin as
>>> reserved. The Raspberry Pi Compute Module 5 IO Board documentation
>>> marks the pin as VBAT.
>>>
>>> Remove the cd-gpios definition and add broken-cd.
>>>
>>> [1]  https://github.com/milkv-mars/mars-files/blob/main/Mars-
>>> CM_Hardware_Schematices/Milk-V_Mars-CM_SCH_V1.0-2023-0905_Lite.pdf
>>>
>>> Signed-off-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
>>> ---
>>>    arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
>>> b/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
>>> index 63aa94d65ab55..566b0bdc2800d 100644
>>> --- a/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
>>> +++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
>>> @@ -13,7 +13,7 @@ / {
>>>      &mmc0 {
>>>        bus-width = <4>;
> 
> + /* Schematic signal SD_SDIO0_CD_GPIO41 to CM4 connector pin 76*/
> + /* Raspberry Pi CM4 specification pin 76 reserved do not connect */
> 
>>> -    cd-gpios = <&sysgpio 41 GPIO_ACTIVE_LOW>;
>>> +    broken-cd;
> 
> All schematic documents for Mars CM Lite list this signal name as
> `SD_SDIO0_CD_GPIO41`.
> 
>>>        disable-wp;
>>>    };
>>>    
> 
> The carrier board I have a schematic document for - Home Assistant
> Yellow PoE rev 1.3 - lists this as SD_DETECT, apparently ignoring the
> Raspberry Pi Foundation document about CM4 Compute IO specification that
> explicitly says do not connect this pin to anything.
> 
> The carrier board I do not have a schematic document for - DFRobot
> Compute Module 4 IoT Router Board Mini - only has SD Card and is
> operational as-is.
> 
> The compatibility issue for carrier boards that more strictly follow the
> Raspberry Pi CM4 IO specification may be better handled by device tree
> overlays. Though this is not convenient for users and requires more
> developer effort, overlays would be best to adopt dtbo per-carrier board
> to describe hardware accurately.
> 
> What is needed to introduce overlays?
> 
> - E

Device-tree overlays would have to be applied by the firmware, typically 
U-Boot.

The firmware has no way to determine if it is running on an IO-board 
with or without a card detect switch. So the selection of an overlay 
will be a manual process. In many cases users will not know about the 
issue of card detect switches and if their board has one or not.

The default value without any overlay should be one that allows to use 
the SD-card on all IO-boards, i.e. 'broken-cd'.

This is also the value used be the board support package
https://github.com/milkv-mars/mars-buildroot-sdk/blob/1fd6bac9f2efde47fbb8afd28d2903c49f893e3f/linux/arch/riscv/boot/dts/starfive/jh7110-milkv-mars-cm-sdcard.dts#L265

Best regards

Heinrich

