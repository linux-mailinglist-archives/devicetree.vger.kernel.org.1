Return-Path: <devicetree+bounces-85242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EF55392F6AB
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 10:05:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A21E92821AF
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 08:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD10C12F37B;
	Fri, 12 Jul 2024 08:05:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu2.qq.com (smtpbgeu2.qq.com [18.194.254.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0FDD539A
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 08:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.194.254.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720771540; cv=none; b=t0y5tCu5G+Skk5/xATWUJtVihS7UMz0adU1AZCFwxDVrCQEC8PIlJkXplICqhvn54GHvtEFdiwrC5muCGEUn4pGRYzZnDMqlFb4ASjFOla76keX5bKSBqc1OqG9VcVrLaNYxubUC8vcsNF9y2CaVUOKtZVxGgmqlYC6TWd3X2Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720771540; c=relaxed/simple;
	bh=8I8wb1MVsNqQKSO8TQQuz+QpM9psoQ2lvqpMbV1TZiA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hWg0jQuFTnfzTBkE3H3/OmWO2Y9OOT/+YAAsC/O4PWQH1CqyVAGDo6XpeJAExkhmb4n4xsjj0ks08gNrIphL/KffWrN7kgjJY8a2UlvqVk/Zi+qxgs038PXtvLDn8WrMmE/qr1p1YKVAEKT5PudGn669R6iMGUnHVd4WvfgS3tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.194.254.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpsz10t1720771461tzwli0
X-QQ-Originating-IP: U25Ln5tkiuUt138GSqd1mm4npz0kzR4zil7EUz9M3so=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 12 Jul 2024 16:04:19 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18202029709574962704
Message-ID: <FA45EFF197FE5160+55491767-a64b-4520-8320-1b1a4308b75f@radxa.com>
Date: Fri, 12 Jul 2024 17:04:17 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: amlogic: add support for Radxa
 ZERO 2 Pro
To: Krzysztof Kozlowski <krzk@kernel.org>, neil.armstrong@linaro.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
 linux-amlogic@lists.infradead.org
References: <20240711202013.26573-1-naoki@radxa.com>
 <cb18f4bc-ed81-4a4c-8545-94a2950af0b2@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <cb18f4bc-ed81-4a4c-8545-94a2950af0b2@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

On 7/12/24 16:52, Krzysztof Kozlowski wrote:
> On 11/07/2024 22:20, FUKAUMI Naoki wrote:
>> Radxa ZERO 2 Pro is a ultra tiny high performance SBC[1] using the
>> Amlogic A311D chip.
>>
>> [1] https://radxa.com/products/zeros/zero2pro
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>
>> Changes in v2:
>> - none
> 
> That's not a correct commit msg. Apply it and you will see... Also,
> won't pass SoB or checkpatch tests. Missing ---.

oh, I see. thank you very much!

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> ---
>>   Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
>> index 0647851ae1f5..66745b4f5eca 100644
>> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
>> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
>> @@ -157,6 +157,7 @@ properties:
>>                 - bananapi,bpi-m2s
>>                 - khadas,vim3
>>                 - libretech,aml-a311d-cc
>> +              - radxa,zero-2pro
>>                 - radxa,zero2
>>             - const: amlogic,a311d
>>             - const: amlogic,g12b
> 
> Best regards,
> Krzysztof
> 
> 

