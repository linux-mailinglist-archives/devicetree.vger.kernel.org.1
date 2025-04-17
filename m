Return-Path: <devicetree+bounces-168344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C61A3A92437
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 19:40:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BCEE3A8C12
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E013D2561BB;
	Thu, 17 Apr 2025 17:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="YSM4B2c5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF8225486A
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 17:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744911631; cv=none; b=rRhJe3JCtugeZqEl3nEC5Byqt0SRVFFKHUxsh6+47yDrbzyEcjalafESlgxiliFShAMSRNBI3FA2XUmYjphJKvbV0CZBobCmIgxJBUiAS6sTaVzwinjqDvuzAAhXzM+0PT3Qx8lHITps8AUxcWg1ExXkrUIVRDQzNCujgXn8VOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744911631; c=relaxed/simple;
	bh=EOInJqz3SSsR3SfMgfEaE59yxaDfxa8aYfQqn0AbCls=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hE5yu3IdnKS0LF1/jVs2JuPJzzCRBqEd/OIDncNjqq5FITqLpfTXxNT3WetNlkspn6P7Rzbm7j4DK80XWDCNZ5Rtl5VssA0R1aYSRinfgG20NWobGah8G30/RwTJPmi1H1GLjiDrGokd5QgU+RCLVQFaWfVcIpxcDf6fMXlvvp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=YSM4B2c5; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-227b828de00so13058395ad.1
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 10:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1744911629; x=1745516429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dDBg6maTTzuwRDGp8PFv9HLN1q5K7jSth9S5/3WTU6I=;
        b=YSM4B2c5M3jCwqJtQDAIuTCki7wWCaedPn6hzGViSc62JPcS4GG1B3MF4iYJtEigTe
         wuNKJY8nzffq0kRW0rO+7+UBrU1hbjNhbsGL9Q1Ld6HWlKItJjHCIlNQPv7DNVazov8F
         OdT+pzfj9xUF/owXecVXceuomGlBGSvlZ1lKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744911629; x=1745516429;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dDBg6maTTzuwRDGp8PFv9HLN1q5K7jSth9S5/3WTU6I=;
        b=GnpjzWvuV1hNQ4zroEdNWmgLHmPO30rRlxN/+0fTK7GHalZPA6EQXXkV1nuCgRh/bL
         bUsNGgJea3GllWSEX5yTiNDOTX0d4sMDw3dIED67Dtv84svINxl2qybn9Vn3Z8N6QQx6
         YPfXEbDPbN0L7rEPqnAhWtTivfSFGoJREPuoihz8+sXNcONcnQdhNABjt1md8W9Lugqj
         o233kPTzq+sO+ZUnor/Hhmf7WxLppbQDZ2Yo/4xT26+wtKpq0lV3YA3HJE0P4QmAxNoq
         nneTE9ggUU4+ZIDyUuDTAySE+P+aSn4hnH00qDCvp2tbL3VgyOn0MlBdgW12f0us12rK
         8AEQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7d1Fb4x8bo852BSttyfug8Nh92k+baNYUpUIOtw6Wp2plABEOLQPuZnIYcIVOrUTVbAm3Uh+6L/Ow@vger.kernel.org
X-Gm-Message-State: AOJu0YwPQW2tYTWobKXkJoPy+hO8bWWih/KVpmEueWtStpHAZEPrxw1l
	IHG+BSpapBJiEjoSn5XIgEo4WSA4Dr/M+k25xfXeuKDW4WZosgfOHTZl7EWEWA==
X-Gm-Gg: ASbGncuA7KRicUh2F3Jeg6iLecvB3DKm9DtOpGgCr1z1zJWqxcRjNHFJCrMpm4xMpBI
	KnvOAgEHmEwjSzeyd2UrhVprtLxxXSihPXIw8GdrD7UBui2C2m+3B9WIjkw7rHhyMGOliAeGPjg
	rq1GW4bCMTWRsyzVLtdFlCOahRTyLNLFuNcpg0jsDqhWE/2/1MS8qMBUUFSBy4JiEawOBSJmATN
	14YVJGAubT6yRCo9G1Ql+EGnLi622q7/co823kRhvQrOZgCL2B9QQYuzKABHU3hqRoYn7oBCY4R
	Nk3iLMmCIKHVHh0Xo1b98Flwh7XUd/C3qFkNcgFi0t+zxfC5U53bsWA1k63uWoC8LA==
X-Google-Smtp-Source: AGHT+IEUB11sMEKCeB/nFn18cuVrgDnNw9IUYOxedNt+pJ4FJpOjy0YKf25iRAJd2NfgsM5n6/ngmA==
X-Received: by 2002:a17:902:dac2:b0:21f:4c8b:c4de with SMTP id d9443c01a7336-22c3596dbe6mr88220975ad.42.1744911629482;
        Thu, 17 Apr 2025 10:40:29 -0700 (PDT)
Received: from [192.168.68.71] ([136.52.67.200])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c50bdaad1sm2911915ad.28.2025.04.17.10.40.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Apr 2025 10:40:29 -0700 (PDT)
Message-ID: <ea48b90d-d01c-46b2-af4d-4c7bdf340f80@broadcom.com>
Date: Thu, 17 Apr 2025 10:40:27 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 1/5] dt-bindings: net: brcm,asp-v2.0: Add v3.0
 and remove v2.0
To: Krzysztof Kozlowski <krzk@kernel.org>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: rafal@milecki.pl, linux@armlinux.org.uk, hkallweit1@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, opendmb@gmail.com,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, pabeni@redhat.com,
 kuba@kernel.org, edumazet@google.com, davem@davemloft.net,
 andrew+netdev@lunn.ch, florian.fainelli@broadcom.com
References: <20250416224815.2863862-1-justin.chen@broadcom.com>
 <20250416224815.2863862-2-justin.chen@broadcom.com>
 <0b30168d-6969-4385-b184-c2fa69c82390@kernel.org>
Content-Language: en-US
From: Justin Chen <justin.chen@broadcom.com>
In-Reply-To: <0b30168d-6969-4385-b184-c2fa69c82390@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/16/2025 10:52 PM, Krzysztof Kozlowski wrote:
> On 17/04/2025 00:48, Justin Chen wrote:
>> Add asp-v3.0 support. v3.0 is a major revision that reduces
>> the feature set for cost savings. We have a reduced amount of
>> channels and network filters.
>>
>> Remove asp-v2.0 which was only supported on one SoC that never
>> saw the light of day.
> 
> 
> That's independent commit with its own justification.
> 

Acked

>>
>> Signed-off-by: Justin Chen <justin.chen@broadcom.com>
>> ---
>>   .../bindings/net/brcm,asp-v2.0.yaml           | 19 +++++++++----------
>>   1 file changed, 9 insertions(+), 10 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
>> index 660e2ca42daf..21a7f70d220f 100644
>> --- a/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
>> +++ b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
>> @@ -4,7 +4,7 @@
>>   $id: http://devicetree.org/schemas/net/brcm,asp-v2.0.yaml#
>>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>>   
>> -title: Broadcom ASP 2.0 Ethernet controller
>> +title: Broadcom ASP Ethernet controller
>>   
>>   maintainers:
>>     - Justin Chen <justin.chen@broadcom.com>
>> @@ -15,6 +15,10 @@ description: Broadcom Ethernet controller first introduced with 72165
>>   properties:
>>     compatible:
>>       oneOf:
>> +      - items:
>> +          - enum:
>> +              - brcm,bcm74110-asp
>> +          - const: brcm,asp-v3.0
>>         - items:
>>             - enum:
>>                 - brcm,bcm74165b0-asp
>> @@ -23,10 +27,6 @@ properties:
>>             - enum:
>>                 - brcm,bcm74165-asp
>>             - const: brcm,asp-v2.1
>> -      - items:
>> -          - enum:
>> -              - brcm,bcm72165-asp
>> -          - const: brcm,asp-v2.0
>>   
>>     "#address-cells":
>>       const: 1
>> @@ -42,8 +42,7 @@ properties:
>>       minItems: 1
>>       items:
>>         - description: RX/TX interrupt
>> -      - description: Port 0 Wake-on-LAN
>> -      - description: Port 1 Wake-on-LAN
>> +      - description: Wake-on-LAN interrupt
> 
> Why all devices now have different interrupts?
> 

With ASP 2.0 removed, all SoCs will have 2 interrupts now. I need to 
remove minItems here.

Thanks for the review,
Justin

> Best regards,
> Krzysztof


