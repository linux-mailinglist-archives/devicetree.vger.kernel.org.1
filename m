Return-Path: <devicetree+bounces-161704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B36EAA75073
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 19:37:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 659893BBD19
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 18:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0E721E0DDF;
	Fri, 28 Mar 2025 18:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="ew11QesV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416DF1DED59
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 18:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743187018; cv=none; b=msIgt+9MBMItk2LiFXD6FAZCqoGSRVxh5EhP+H1kGMeKtRKCYTJkStdhsFF1VIibYaSAVeE9DZE04ARx2bqDoOQq28lN3xFAhl3TnRqSVZbTSvJqzdjoSd9lzyNrXeDCMCMqF0SOOxdYoDr44EHQeAZ6OQnQXBhms/hnswu4tPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743187018; c=relaxed/simple;
	bh=67PK3n4bqj/CsMfAEX9bEQwAneGMkwuCNWhLy8ni5Tg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AEzGUHtRAPe+lOYtwJpUueRFv4iMdHX1i7JPrTznOsi/x6i8Rm5Cm+zx6HYg24cloMpGvenuVxMlbak9MnaMmvGIe1RJRlj1KpY9xMCUuTHDxzFR6n11APFdgq6ILaJ6kpy29XRRTVrWaUnBgNHGjz3YRLLAeZhlSK/HueS9Xas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=ew11QesV; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-72bd5f25ea6so683920a34.1
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 11:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743187015; x=1743791815; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xTevsMP8EFw9pFW0FnKHOEWZb8KNpwVOa+vD8CP4lvw=;
        b=ew11QesVKvCQO8cohNVC/oR0AxhAxVbq9C/2BpisOKn1mLL4q2lmQIY8FPqqn5wgV1
         YzQ3++1c0+sIyWycAhrV3OECV8R/vQVp4M8ievtrk+9uRjaJO483fCQryaAwiql7q73w
         /abSNvmnLsfLkdBRMeuh6RDS33mzwyaaXw9HI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743187015; x=1743791815;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xTevsMP8EFw9pFW0FnKHOEWZb8KNpwVOa+vD8CP4lvw=;
        b=O2sS/qkgbE8FOAFSG0EmTYeXW46AphTEOLX8UrLr6idtpzQ+ax6HR7eHkVlXphA0jr
         yFa89/43wAVQp4oZU1EieQW9DHtFCP8lGEgX/BWkNTaDbcehvkTkUZ2qvxJ3EElktIA7
         Rx8q8zgkZYbjmkr9EZWQ6GPG7IInDwtN9tqgCFjes2ax9WFb5dFiPneYQRlIdRs9hiO9
         iraUrrO8NsVJZCfA2huVZtk5bGWsetB0vWwCYpOGl8D1PsbRxthI/LNc6BUUY8ocEYcH
         v6QkX3jEBDTJGHa4AgeRf5YlUaJv1ucY8GVBShAdZHCNKgcgSzLMjDugMKU2Aahv9c+7
         j0jw==
X-Forwarded-Encrypted: i=1; AJvYcCWIhR6dnGeHtRGCtDcgOYNF9dFDbYAjgNAQQFhcZj7qSSmjs8aYRfl4amoOwHhO2Vy++NWHrYPXjS4K@vger.kernel.org
X-Gm-Message-State: AOJu0YwyJ1Xm62R8PlFZdxny41PiUpDk53O2yj/dysg2X8hEbUv9YAlg
	d6GxlHbjCV/N2Svi33UzAxPuyc/G3+cP3nRQl33pM+zOtAp8+x09ckAlBadrSg==
X-Gm-Gg: ASbGncssNuolAhJcuDloLYPC1ulyzbxekAxQlpqXTTldXn/umPn9GJkMDpy0f/IRjIp
	WgdLibPfxhC0nIMnt+1T6TLgSTaWDTi3kXC/gwKSTEoYeVG6NcVMTXkdkPCdRP1YuQL5pwUR68M
	Qs89EIbyHFlLvHjlRsv4cgCZ0NtmKW1zDkNQoqiclq0uyXzTramNDS1xJUPjnKnxTul5UOuRQQ+
	KI/kq7Ql4qzTSiV7CsvfyedVHvySU3K/RiXBcaVRtu/z6mMyvS/VDAW8TM8o/pQa3JrGCeFNa0W
	K9TmgQyUyR9aH3bbW+mom1lpA5Pn0WnGq2X31/mEg7L6jV/ZzJVjNJG7F4yA970JZs/C2kO0/Tg
	yyGF1M4gK6hYmflEmtLLps39V
X-Google-Smtp-Source: AGHT+IGmQMxc5/VNAGaWO0hCH+f4b8Q7SahIFp1LbdONT1qeOv/xmmAOcYnZj4hKpZi0xZdpvJ8x5A==
X-Received: by 2002:a05:6830:681a:b0:72c:3235:3b97 with SMTP id 46e09a7af769-72c6380774dmr326621a34.22.1743187015058;
        Fri, 28 Mar 2025 11:36:55 -0700 (PDT)
Received: from [10.69.70.230] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72c58267b79sm460630a34.47.2025.03.28.11.36.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Mar 2025 11:36:54 -0700 (PDT)
Message-ID: <cb0905ec-1e80-4c56-befd-b90243dcfa31@broadcom.com>
Date: Fri, 28 Mar 2025 11:36:53 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: mailbox: Add devicetree binding for
 bcm74110 mbox
To: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: florian.fainelli@broadcom.com, conor+dt@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org, jassisinghbrar@gmail.com,
 bcm-kernel-feedback-list@broadcom.com
References: <20250327221628.651042-1-justin.chen@broadcom.com>
 <20250327221628.651042-3-justin.chen@broadcom.com>
 <e7f51014-10b2-4f9c-9929-f2a4f32b023c@kernel.org>
Content-Language: en-US
From: Justin Chen <justin.chen@broadcom.com>
In-Reply-To: <e7f51014-10b2-4f9c-9929-f2a4f32b023c@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/28/25 12:31 AM, Krzysztof Kozlowski wrote:
> On 27/03/2025 23:16, justin.chen@broadcom.com wrote:
>> From: Justin Chen <justin.chen@broadcom.com>
>>
>> Add devicetree YAML binding for brcmstb bcm74110 mailbox used
>> for communicating with a co-processor.
>>
>> Signed-off-by: Justin Chen <justin.chen@broadcom.com>
> 
> Bindings are before users, see DT submitting patches.
> 
>> ---
>>   .../bindings/mailbox/brcm,bcm74110-mbox.yaml  | 68 +++++++++++++++++++
>>   1 file changed, 68 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml b/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
>> new file mode 100644
>> index 000000000000..139728a35303
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
>> @@ -0,0 +1,68 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mailbox/brcm,bcm74110-mbox.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Broadcom BCM74110 Mailbox Driver
> 
> Driver as Linux driver? Drop, bindings describe hardware.
> 
>> +
>> +maintainers:
>> +  - Justin Chen <justin.chen@broadcom.com>
>> +  - Florian Fainelli <florian.fainelli@broadcom.com>
>> +
>> +description: Broadcom mailbox driver first introduced with 74110
> 
> Same comments.
> 
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - brcm,bcm74110-mbox
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  "#mbox-cells":
>> +    const: 2
>> +    description:
>> +      The first cell is channel type and second cell is shared memory slot
>> +
>> +  brcm,mbox_tx:
> 
> No underscores. See DTS coding style.
> 

Acked. I already had this fixed in the driver, but not in the doc. Woops!

>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: Mailbox transmit doorbell
> 
> Why is this needed in DT? How many instances do you have in one SoC?
> Where is the SoC DTS?
> 

We have 3 possible instances in our current SoC. We currently only 
implement one. arm,scmi. But more will come in the future. I'll put a 
sample arm,scmi node as an example consumer in v2.

>> +
>> +  brcm,mbox_rx:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: Mailbox receive doorbell
>> +
>> +  brcm,mbox_shmem:
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    maxItems: 2
>> +    description: Mailbox shared memory region and size
> 
> No, use existing properties, e.g. memory region.
> 

This is a region from the on chip memory. I will rename to be clear. It 
lies in a different address space as reserved-memory. I can still use 
memory region if you prefer, but I will need to manually strip the 
offset in my driver as the API agreed upon with the FW is an offset from 
the beginning of on chip memory. IMHO this makes things unnecessarily 
complicated.

>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - "#mbox-cells"
>> +  - brcm,mbox_tx
>> +  - brcm,mbox_rx
>> +  - brcm,mbox_shmem
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/irq.h>
>> +
>> +        brcm_pmc_mailbox: brcm_pmc_mailbox@a552000 {
> 
> Use indentation we expect. See writing schema, example-schema.
> 
>> +                #mbox-cells = <2>;
>> +                compatible = "brcm,bcm74110-mbox";
> 
> Fix order, see DTS coding style.
> 
> 
> 

Thanks for the review.
Justin

> Best regards,
> Krzysztof


