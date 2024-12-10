Return-Path: <devicetree+bounces-129019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C18859EA708
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 05:09:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81B96287F43
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 04:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 561FD22489F;
	Tue, 10 Dec 2024 04:09:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306D82236F0;
	Tue, 10 Dec 2024 04:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733803773; cv=none; b=gP+eQQreutbfXvoam0qhnIWevYfF1gTcy8u+t19Zu16L+ow96jQ3vr4lKsW7htYkdX1Lq5nrZVjJJIIT3svhGa8AdDvkKF6Q8Cou15uuY9327WP7GEwFzr/GbN2WQeIxebkJ2wS/7//SQKnSUFoh9L05QrKaWR5I9VL1JkGtdug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733803773; c=relaxed/simple;
	bh=UX8E2EPJLB1vYF4+RHfSF3vHbkDzEU1hPVqGm99rTB4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e/ix2BKLiJ8/hgO3Q/mxK/+5BLjYy10/yLJA5LUgse2klec2W8jZvrkW8xF6RvfOIHN9rSreZgIXX/Kp71TrJZGKba1VrpIwb4t7dY1UtK4JrDq2ncDG4CSkTS146vQZdBaxjJ63CYeIlFR9p+ufoYowKklED931JKsWaPymsOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from [IPV6:2605:59c8:31de:bf00:37c2:fe62:c21b:ab46] (unknown [IPv6:2605:59c8:31de:bf00:37c2:fe62:c21b:ab46])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id C9312B2C16CD;
	Tue, 10 Dec 2024 05:09:25 +0100 (CET)
Message-ID: <0f707918-49ce-4f04-b8d4-e74462caff5d@freeshell.de>
Date: Mon, 9 Dec 2024 20:09:23 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] riscv: dts: starfive: jh7110-pinfunc.h
To: Hal Feng <hal.feng@starfivetech.com>, Conor Dooley <conor@kernel.org>,
 Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jianlong Huang <jianlong.huang@starfivetech.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20241210014903.154551-1-e@freeshell.de>
 <ZQ2PR01MB1307099548C99CD6650BD57CE63DA@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <ZQ2PR01MB1307099548C99CD6650BD57CE63DA@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/9/24 18:14, Hal Feng wrote:
>> On 10.12.24 09:49, E Shattow wrote:
>> [PATCH] riscv: dts: starfive: jh7110-pinfunc.h
> 
> Describe something in the commit title?
> 
>>
>> Fix a typo in StarFive JH7110 pin function definitions
>>
>> Fixes: e22f09e598d12 ("riscv: dts: starfive: Add StarFive JH7110 pin function
>> definitions")
>> Signed-off-by: E Shattow <e@freeshell.de>
> 
> Acked-by: Hal Feng <hal.feng@starfivetech.com>
> 
> Best regards,
> Hal
> 
>> ---
>>   arch/riscv/boot/dts/starfive/jh7110-pinfunc.h | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-pinfunc.h
>> b/arch/riscv/boot/dts/starfive/jh7110-pinfunc.h
>> index 256de17f5261..ae49c908e7fb 100644
>> --- a/arch/riscv/boot/dts/starfive/jh7110-pinfunc.h
>> +++ b/arch/riscv/boot/dts/starfive/jh7110-pinfunc.h
>> @@ -89,7 +89,7 @@
>>   #define GPOUT_SYS_SDIO1_DATA1			59
>>   #define GPOUT_SYS_SDIO1_DATA2			60
>>   #define GPOUT_SYS_SDIO1_DATA3			61
>> -#define GPOUT_SYS_SDIO1_DATA4			63
>> +#define GPOUT_SYS_SDIO1_DATA4			62
>>   #define GPOUT_SYS_SDIO1_DATA5			63
>>   #define GPOUT_SYS_SDIO1_DATA6			64
>>   #define GPOUT_SYS_SDIO1_DATA7			65
>>
>> base-commit: 708d55db3edbe2ccf88d94b5f2e2b404bc0ba37c
>> --
>> 2.45.2
> 

Ah... yes I forgot the commit title. Will re-send. Thanks! -E

