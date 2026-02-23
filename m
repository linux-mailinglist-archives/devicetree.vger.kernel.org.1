Return-Path: <devicetree+bounces-267356-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDNVIvoynGkKAgQAu9opvQ
	(envelope-from <devicetree+bounces-267356-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:59:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D53BA1753AB
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:59:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DCA73068F04
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5713360751;
	Mon, 23 Feb 2026 10:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ka3LGrkG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2169A35CBDD
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771844244; cv=none; b=bi9cIjcy9p+aXZfV3ZCLh03CAqmJBl+fjW9Os6f+hiOeNEDGWa7bBAMCQjYqbMXW++IKcOM2tRrRFJX/vxErN/8uZte1QofK+jVZTKYo2HxwLD8atvHsGyYPXq3Ql2e8FjjASvwmPqEyLyGyKL/Dn/gWI0vb9IL2tbDraiTmvBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771844244; c=relaxed/simple;
	bh=xy346hVamCRC/UcZKSgqxNYyzjui+idtbvM8nTV/AfQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=oITYSPP4FOkrDd80L3c7ARINxIu3mzZQr2alVWnKyyR60Wb2me/pVptEcL3V1D0/57atq75FFzSCFa55pUYm9pNDwCU4Ayy05oBmwBD5OQ/nlvw0UV4W+SZAMMa2TEfOtaG29Sjlq8ZLDVJTB6okzvTC3sJnuCnhZGu2Y0RQU3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ka3LGrkG; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-480706554beso50872465e9.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 02:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771844241; x=1772449041; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A9juCIWO3/qNsUDquSKfNxba1OKTRHA92+YWH/XuFNg=;
        b=ka3LGrkGA/BLd9StmBpUu91OKM0Jns21oVQBhjaP8aGMTm2LpYpmUtxNhge6AzdAGr
         96YHEUsKlUG6f1AcN8goeKPO+V75/ygSG9WE1r8q5vBzGkIdyvNush/Okeyc2DT66NK4
         ESzfGgaGu0aOZtQg92+jIwz20MsUIom5QnWcDVTSStv/ZKI3Fx1mbEXjwDqu6RFX38Ru
         sOI2rpuiXwJXIbNhfUdlo5I2CmU+/FvY4vbgbh7uH6Acaya9Dvj/gUN3HT/oOQoP4XD4
         UW/mEbzS3Tfl8CrApGpp3Gw83401Q02LHqBk15Cs2j67+mu2Zk44SMLp+GOd2rAnLgGN
         07gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771844241; x=1772449041;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A9juCIWO3/qNsUDquSKfNxba1OKTRHA92+YWH/XuFNg=;
        b=lT7dwTgnU0aVTKjYYERnC2jF6COUtz2ikgM4K+67ljE/6iL6Myb49MH4w9LEf+EDfR
         ngYfq89olzaXnIhxdM4gowQ1Of5H+0zbNOZWyf0QPwXGRABkod4fn2Oti0SY6SpPz7/5
         pvXcbrfkrwHhh7wShKO8cGvMMgC3x4bvrBCqjZC+TjQuUbZydaL+pzdmsWkYrr92RKRh
         mD7TE19pZHFgykgspi/W9NBpE6QpnY1Cy6ZlxI3EbeB36QFA0YYlLfC6e0ZA9PR7UPoJ
         ZjyLjAJGlZyb2WWLkRbBg/JSXOkW8nYVvIuBNgmEk3en6Y2/2aDUtujJFUftQdQOyXbC
         gAAw==
X-Forwarded-Encrypted: i=1; AJvYcCVpt+KyT0SyyfjGDcDZH+pwN89iU1mY1ZZSvhC2lXzvwiEDoCYWRsJsjLWVXO8Yz4mg9ZEqoUhLVcI7@vger.kernel.org
X-Gm-Message-State: AOJu0YxsLLIjgGdt+30/zcim1uT7uZ4LaS6oGX1UsgwZGan0AbPMpYGq
	B1P9RDKesUBYKEtTAAM4YTa0GHLgFEyyB146OGJ5y5LAbaXRNwV6Cxhs
X-Gm-Gg: AZuq6aJdGODK0KNUv+cHyvbUJeQCDHI6ej6nJ3dWyV0Apcquol+GrX4RD2pEpQzhmZd
	vZmaXaIpuqTQJ9QVDIEjrUkTCD1oHKcBKxKNz34w1YmWe9/JkfCNeJcrc+KmWQY7PcwxuVIbbYD
	LxXQ7d5Vci5Ka9W3PB7AV179YOnL1KenwlWRhSY+Sv3qwc9D85d5n9nm5VSYLuguY6LzYgJ9HOS
	E0tq37hjrxw50YC4V48WzWygTgHA4/JzpMzgWILG0ER06ryM8oWeTJ+qumYajtPhg6U24kFallj
	6yaokCGhHhi8f4DuqorHbNBbnflMKkje/eo4GoPNwZH0KUtLcxGENJ9WQ5lYNcv/M4nLVTiGvdN
	3HzvQ5Euthr8gD47lHnX5Z2hwvjCM+miQR2rH8vtSlz4UNC+Apnc/l8U0/Ya4kXJdbaXbHI06Jd
	tqmaX+NBCs/vG+ne0pkMSLbcAyn1FavU0YyLlQ9fcHTCcjGnSrTgws6LehgQH42+U=
X-Received: by 2002:a05:600c:8183:b0:47d:3ffa:5f03 with SMTP id 5b1f17b1804b1-483a962e09fmr116392445e9.21.1771844241031;
        Mon, 23 Feb 2026 02:57:21 -0800 (PST)
Received: from [192.168.20.170] (5D59A51C.catv.pool.telekom.hu. [93.89.165.28])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a3dd3391sm166294125e9.1.2026.02.23.02.57.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 02:57:20 -0800 (PST)
Message-ID: <10f15883-d8db-4872-8af2-7a8cf293780d@gmail.com>
Date: Mon, 23 Feb 2026 11:57:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Gabor Juhos <j4g8y7@gmail.com>
Subject: Re: [PATCH] dt-bindings: firmware: cznic,turris-mox-rwtm: convert to
 DT schema
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Marek_Beh=C3=BAn?= <kabel@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260221-mox-rwtm-yaml-v1-1-25dec4a0228b@gmail.com>
 <77c45be6-a0c1-4799-9491-f7e492d60aab@kernel.org>
Content-Language: hu
In-Reply-To: <77c45be6-a0c1-4799-9491-f7e492d60aab@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lunn.ch,bootlin.com,gmail.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267356-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j4g8y7@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D53BA1753AB
X-Rspamd-Action: no action

Hi Krzysztof,

2026. 02. 21. 19:31 keltezéssel, Krzysztof Kozlowski írta:
> On 21/02/2026 19:21, Gabor Juhos wrote:
>> +
>> +description: |
>> +  This device tree node should be used on Turris Mox, or potentially
>> +  another A3700 compatible device running the Mox's rWTM firmware in
>> +  the secure processor (for example it is possible to flash this
>> +  firmware into EspressoBin).
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - const: marvell,armada-3700-rwtm-firmware
>> +
>> +      - items:
>> +        - const: marvell,armada-3700-rwtm-firmware
> 
> This makes little sense. How this can be alone and followed by fallback?

I admit that this is quite messy, but let me describe the current situation in
detail.

Originally both the dt-bindings documentation and the 'turris-mox-rwtm' driver
have used the 'cznic,turris-mox-rwtm' compatible alone.

In commit 90ae47215de3 ("firmware: turris-mox-rwtm: add
marvell,armada-3700-rwtm-firmware compatible string") a new compatible string
'marvell,armada-3700-rwtm-firmware' has been added to the driver.

Additionally, in commit 3a52a48973b3 ("arm64: dts: marvell: armada-37xx: move
firmware node to generic dtsi file") added a node to the Armada 37xx SoC dtsi
file which uses only 'marvell,armada-3700-rwtm-firmware' as compatible. In the
same commit the 'armada-3720-turris-mox.dts' file has been modified to use both
compatible strings, and the 'cznic,turris-mox-rwtm'  has been chosen to be the
fallback.

Unfortunately, none of the commits above updated the original dt-binding
documentation, so it is out of date since more than 4 years.

In short, the driver handles both compatibles equally, none of those are a
fallback of the other one. And in the existing in-kernel dts files, the
compatible is specified in the following forms:
  "marvell,armada-3700-rwtm-firmware", "cznic,turris-mox-rwtm"
or
  "marvell,armada-3700-rwtm-firmware" alone

The dt-schema is based on these facts in order to avoid new 'dtbs_check'
warnings, even if this is not the optimal/best approach.

> Plus adding new compatible has to be explicit in commit msg, including
> the reason (existing users).
> 
>> +        - const: cznic,turris-mox-rwtm
> 
> Anyway, not tested. Please test your patches BEFORE you send them. I
> finished review here because of that.

Sorry about wasting your time. This is my first schema and I have missed the
'yamllint' warning indicated by Rob's bot in the other mail.

Nevertheless, I have tested the patch before sending, along with several different
versions besides the current one.

Without the patch 'make dtbs_check' throws the following warnings:

  arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dtb: /firmware/armada-3700-rwtm: failed to match any schema with compatible: ['marvell,armada-3700-rwtm-firmware', 'cznic,turris-mox-rwtm']
  arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dtb: /firmware/armada-3700-rwtm: failed to match any schema with compatible: ['marvell,armada-3700-rwtm-firmware', 'cznic,turris-mox-rwtm']
  arch/arm64/boot/dts/marvell/armada-3720-db.dtb: /firmware/armada-3700-rwtm: failed to match any schema with compatible: ['marvell,armada-3700-rwtm-firmware']
  arch/arm64/boot/dts/marvell/armada-3720-eDPU.dtb: /firmware/armada-3700-rwtm: failed to match any schema with compatible: ['marvell,armada-3700-rwtm-firmware']
  arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtb: /firmware/armada-3700-rwtm: failed to match any schema with compatible: ['marvell,armada-3700-rwtm-firmware']
  arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dtb: /firmware/armada-3700-rwtm: failed to match any schema with compatible: ['marvell,armada-3700-rwtm-firmware']
  arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dtb: /firmware/armada-3700-rwtm: failed to match any schema with compatible: ['marvell,armada-3700-rwtm-firmware']
  arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dtb: /firmware/armada-3700-rwtm: failed to match any schema with compatible: ['marvell,armada-3700-rwtm-firmware']
  arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dtb: /firmware/armada-3700-rwtm: failed to match any schema with compatible: ['marvell,armada-3700-rwtm-firmware']
  arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dtb: /firmware/armada-3700-rwtm: failed to match any schema with compatible: ['marvell,armada-3700-rwtm-firmware']
  arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dtb: /firmware/armada-3700-rwtm: failed to match any schema with compatible: ['marvell,armada-3700-rwtm-firmware', 'cznic,turris-mox-rwtm']
  arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dtb: /firmware/armada-3700-rwtm: failed to match any schema with compatible: ['marvell,armada-3700-rwtm-firmware', 'cznic,turris-mox-rwtm']
  arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtb: /firmware/armada-3700-rwtm: failed to match any schema with compatible: ['marvell,armada-3700-rwtm-firmware']

Below are the results of testing different compatible rules.

  properties:
    compatible:
      const: cznic,turris-mox-rwtm

  arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible:0: 'cznic,turris-mox-rwtm' was expected
  arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware', 'cznic,turris-mox-rwtm'] is too long
  arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible:0: 'cznic,turris-mox-rwtm' was expected
  arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware', 'cznic,turris-mox-rwtm'] is too long

  properties:
    compatible:
      const: marvell,armada-3700-rwtm-firmware

  arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware', 'cznic,turris-mox-rwtm'] is too long
  arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware', 'cznic,turris-mox-rwtm'] is too long

  properties:
    compatible:
      enum:
        - marvell,armada-3700-rwtm-firmware
        - cznic,turris-mox-rwtm

  arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware', 'cznic,turris-mox-rwtm'] is too long
  arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware', 'cznic,turris-mox-rwtm'] is too long

  properties:
    compatible:
      items:
        - const: marvell,armada-3700-rwtm-firmware
        - const: cznic,turris-mox-rwtm

  arch/arm64/boot/dts/marvell/armada-3720-db.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware'] is too short
  arch/arm64/boot/dts/marvell/armada-3720-eDPU.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware'] is too short
  arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware'] is too short
  arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware'] is too short
  arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware'] is too short
  arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware'] is too short
  arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware'] is too short
  arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware'] is too short
  arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtb: armada-3700-rwtm (marvell,armada-3700-rwtm-firmware): compatible: ['marvell,armada-3700-rwtm-firmware'] is too short


I wanted to get rid of all warnings, so I ended up with the current patch.

Do you have any suggestion about what would be the acceptable solution to clean
up the current mess?


Regards,
Gabor


