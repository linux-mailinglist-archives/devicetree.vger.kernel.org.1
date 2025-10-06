Return-Path: <devicetree+bounces-223925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E44BBF330
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 22:33:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 004FC34B06D
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 20:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A436244685;
	Mon,  6 Oct 2025 20:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bSf3xppe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5625E2264D6
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 20:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759782828; cv=none; b=gsOUyaYOeoHmCHVLiqDt4qv/pxmG2VP1Bix0teoI89cthbCRXbKWK+ylkC2FJQdu3KgNTNqohksQC7JcR1Pa1I10mMzgRRFtijI1znDZdKT62FyzHD5IVk+Pb76kzwDDme2s4VCgfByT+DWlKowrcBxmPRTOyiFtyOhYxg2qliw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759782828; c=relaxed/simple;
	bh=xZQIkTjQ3R5pMkXh+0HOffZQqWvTrd53gDSsryTJfdE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AoXXoutSzuFzHoyhGi0jqylxVEkgnh7hnJlDWN0miXvObY+HO7p/TrlmwVtbgrN0V8JMBFbyo4OmgQHuKg8MBhZDOgP2D5wHyU67SczvawMHlR/uIgbHJh5caAqShkNS7qLt82v8W3xkpvQlPjDjljJAPTujKSwPDWf/V5KuCxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bSf3xppe; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-57d5ccd73dfso5929252e87.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 13:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759782824; x=1760387624; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n2QWqrDHNaCM0EKufj47pbE+xenKx4d12hE7vL2Dp8o=;
        b=bSf3xppeWZ5p/CYuY2SwtVWRSOHaS5tVFl1pzh21dY8A7es/+64vlz+qvLSSFo/kCc
         XVonBKfQ4vpkv3V5IwyLKJGTTGa4IMEXuMEwnmUYbcKJtHftfE4OqUdSXjk3vLwAnj5E
         j/TdL7XXq1WGbZ18yJkoP5o27xGYVZoOE0llMigGcyU9VmV1z4w7pSTKMWzyEGft1+dn
         9BJAHjcPA10l5tT0jDF3M1qO1LQIymdfrWGd9RQPQS1mZcuRsZ1g4BGwrtYi/RS9Iz5V
         dcIBD/+XIDkmLIU4KU9B0AB8I4SW5k6GKxlHu8aBWqpAWZBPN8RLKES6Q19fRWmsRrR+
         SB2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759782824; x=1760387624;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n2QWqrDHNaCM0EKufj47pbE+xenKx4d12hE7vL2Dp8o=;
        b=M30/9/vuCra+Dx2HkD5SbZOi9RNvAElxUdOGYLXdOyMi4b+0gwoHMpgw1BHr4EdQPe
         u84ozHGPlMvDBZkwc26G01jW5XneheKxyfBvclxGPZHMEOtRyH24ekUde1bK9T1zZ5If
         nht1DlKhZWl53UYFZhdH2yeWTBbq7GJ0c1ydcEVI3RLSI19VWm1ht48egCHL4aXe3+cF
         bnPvofaDli3mbfppIRftWOyJPp9B/I5Nak5WCIRbJFQcoGoC3QcRzybMzIAwzcgysqpt
         vWceOmzcVKf7ZO3WERUhC0VnwGYhYNkUDzsmro+rHYF+ynO3ulXBvHE/uvvziklJjGqr
         zkAA==
X-Forwarded-Encrypted: i=1; AJvYcCVnlweruJWCYFJK3QEfbhWqo58AtpdfsZA7WeH2Px4NZN4JDh///jlsSSCZtCZTzG+Y34BfjQzn6yzo@vger.kernel.org
X-Gm-Message-State: AOJu0YyEhMCyw2fWtLnXe5gMpL4GC0I7e+nkN3XkdMuDwZXHj9vmLplr
	4zVMaCPdfIL4okaJ3+ofP5oKN0uyVLv8xyhS83L+9U7Ye90TTiQXLpUT
X-Gm-Gg: ASbGncv+NEazxxYiULJKDKq/eoxFzLXr4lqEAgjNAq/FObV0GWyWsYHyGeEqlhD9nev
	4zE0I1q9+L9LwxdRIbRinnzGfpCcANodQApsbOadzVXxSALPkFH12l+exUOYQlj+vYqQwi0ei/q
	8qxRiGreJGicTqEOziuTv8ICZ2jgagPL5qI4+6/za6olb7ByHVvU8Q81JTma0XWhkcW7khe/VbG
	RAfB40rP51rLIU8fJkwSbfaTR+z3JjCd4S9OX6k1H75w2rAWdRnBR2ba+C+SRrvhfY9zEUixmSl
	6zCzaF/lgij1c0IxjsZx1al/MMuu/j1z2sW192Z2Qp2nkQQCFMDms/9QmaJ1ggS+llwIK8R1tz7
	jfqn1yF6oVnHMo808QeqJ6ylvJx7SefmMlTubkd73zLw=
X-Google-Smtp-Source: AGHT+IGP7H4CeQgnqwLaIvURAOJuF89I16Suj4RwwpNnlJOSc2xPjhQOIbGb5BfPZwbLhB8/VYyAYQ==
X-Received: by 2002:a05:6512:b9a:b0:577:f5cf:ce5e with SMTP id 2adb3069b0e04-58cbc1af20fmr3994399e87.45.1759782824123;
        Mon, 06 Oct 2025 13:33:44 -0700 (PDT)
Received: from [192.168.33.7] ([89.151.31.85])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-58b0118d863sm5360178e87.70.2025.10.06.13.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 13:33:43 -0700 (PDT)
Message-ID: <8f0b1ea5-6c38-4b7b-a8a0-724f7e317d65@gmail.com>
Date: Mon, 6 Oct 2025 22:34:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: BCM53573: Fix address of Luxul XAP-1440's
 Ethernet PHY
To: Andrew Lunn <andrew@lunn.ch>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20251002194852.13929-1-zajec5@gmail.com>
 <4fcba9c1-ff83-40b5-b7eb-758fd43ea978@lunn.ch>
Content-Language: en-US
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <4fcba9c1-ff83-40b5-b7eb-758fd43ea978@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

W dniu 6.10.2025 o 18:09, Andrew Lunn pisze:
> On Thu, Oct 02, 2025 at 09:48:52PM +0200, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> Luxul XAP-1440 has BCM54210E PHY at address 25.
>>
>> Fixes: 44ad82078069 ("ARM: dts: BCM53573: Fix Ethernet info for Luxul devices")
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
>>   arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
>> index ac44c745bdf8..a39a021a3910 100644
>> --- a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
>> +++ b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
>> @@ -55,8 +55,8 @@ &gmac0 {
>>   	mdio {
>>   		/delete-node/ switch@1e;
>>   
>> -		bcm54210e: ethernet-phy@0 {
>> -			reg = <0>;
>> +		bcm54210e: ethernet-phy@25 {
>> +			reg = <25>;
> 
> Does this really not work, or is it relying on the PHY responding to 0
> as a broadcast address?

Invalid PHY address was breaking Linux's support for Ethernet device.

Before this change:
[    0.986560] bgmac_bcma bcma0:5: Found PHY addr: 25
[    0.991913] mdio_bus bcma_mdio-0-0: MDIO device at address 0 is missing.
[    1.024512] libphy: PHY bcma_mdio-0-0:19 not found
[    1.029358] bgmac_bcma bcma0:5: PHY connection failed
[    1.034514] bgmac_bcma bcma0:5: Cannot connect to phy

