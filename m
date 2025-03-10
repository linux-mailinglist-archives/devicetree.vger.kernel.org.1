Return-Path: <devicetree+bounces-156147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9236BA595DB
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 14:15:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C29FD188E205
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 13:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2658A228C86;
	Mon, 10 Mar 2025 13:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="DTuCIppL"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412BC22157A
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 13:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741612474; cv=none; b=Yhv9PmRnyPqjKQEreW56SekJzLXVXfVhrYYGsvqKzd7VSyCBQLc4gssQblDw6YGgFHGp78rHwzdyrKSWiMY5Zz3D7JNkau/HGD29J2uQ7g9rYW/j4/uBLUY2pvJLLLLLt0iHRjvKu3jx4NGcllZkmxMkjWAQHGALLFw9QgBC9/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741612474; c=relaxed/simple;
	bh=mXYRr76iQEHPUIiMJyNNXujxFi1QRI+Wzxl4a5+XtMQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=At3X89yZ51X1ZXrBDPziYtjzLJRRUbjQm+9akmcWDZCisEsqfYCK31Dawq5W9oq+9u9Nz/p9O475GTZJ3qFTK08dJnHVsUvcSkrs8flwHQkNmOyVkDpncBN3lzvkilM0z8FdhVGTO8ezQb3+D0KRQgf+sO+iZNnRVCVO4cx4duk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=DTuCIppL; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=EnWtnxcfGbW/fp9pNfdQRpjXI4pB7apthfmkCMDnfpc=; b=DTuCIppLlbCab8Q0LtegY6sgiT
	A5SYMhfnMYQxYySLdgRHNtZirI24ub1UXBF29wiBgwMiDq6rLOt0RvG1muvjIA43YpWShAKAnRZFb
	MDUdKp6nYTzuU6a2B62nbGbqa1vOktt3m4+3FThjBQtGo62rS7RVkO06awlDd9mQv99IDEi0u7i+Q
	yD+bScY1TBXO39Q+7FibreaViqeJsAuF7lSNZ0twxJIkTE3DvoCFj/0+Uy9YXPsfV+RNcyLAjAM+n
	Zc0n9jf+gwrD9hyhPkuXLJ9bIEUfXQQdBGLxTkUyxBjlOkgCeBIXj3VptzU8aB76lvR13fnJBGBzK
	9i+qVD2w==;
Received: from [143.107.182.242] (helo=[10.41.68.132])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1trcxT-006UJp-Mt; Mon, 10 Mar 2025 14:14:21 +0100
Message-ID: <2bc573c6-e44f-441b-9b13-baa7df64a641@igalia.com>
Date: Mon, 10 Mar 2025 10:15:13 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] dt-bindings: gpu: v3d: Add SMS to the registers'
 list
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>,
 Jose Maria Casanova Crespo <jmcasanova@igalia.com>,
 Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org,
 kernel-dev@igalia.com, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>, devicetree@vger.kernel.org
References: <20250308-v3d-gpu-reset-fixes-v2-0-2939c30f0cc4@igalia.com>
 <20250308-v3d-gpu-reset-fixes-v2-4-2939c30f0cc4@igalia.com>
 <20250310-calculating-flat-cuttlefish-4c9fc2@krzk-bin>
 <4d224fc2-d077-47aa-8b52-edba30c62d19@igalia.com>
 <6f87918b-b4ca-4404-8f1e-e1100190c0f6@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Autocrypt: addr=mcanal@igalia.com; keydata=
 xsBNBGcCwywBCADgTji02Sv9zjHo26LXKdCaumcSWglfnJ93rwOCNkHfPIBll85LL9G0J7H8
 /PmEL9y0LPo9/B3fhIpbD8VhSy9Sqz8qVl1oeqSe/rh3M+GceZbFUPpMSk5pNY9wr5raZ63d
 gJc1cs8XBhuj1EzeE8qbP6JAmsL+NMEmtkkNPfjhX14yqzHDVSqmAFEsh4Vmw6oaTMXvwQ40
 SkFjtl3sr20y07cJMDe++tFet2fsfKqQNxwiGBZJsjEMO2T+mW7DuV2pKHr9aifWjABY5EPw
 G7qbrh+hXgfT+njAVg5+BcLz7w9Ju/7iwDMiIY1hx64Ogrpwykj9bXav35GKobicCAwHABEB
 AAHNIE1hw61yYSBDYW5hbCA8bWNhbmFsQGlnYWxpYS5jb20+wsCRBBMBCAA7FiEE+ORdfQEW
 dwcppnfRP/MOinaI+qoFAmcCwywCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQ
 P/MOinaI+qoUBQgAqz2gzUP7K3EBI24+a5FwFlruQGtim85GAJZXToBtzsfGLLVUSCL3aF/5
 O335Bh6ViSBgxmowIwVJlS/e+L95CkTGzIIMHgyUZfNefR2L3aZA6cgc9z8cfow62Wu8eXnq
 GM/+WWvrFQb/dBKKuohfBlpThqDWXxhozazCcJYYHradIuOM8zyMtCLDYwPW7Vqmewa+w994
 7Lo4CgOhUXVI2jJSBq3sgHEPxiUBOGxvOt1YBg7H9C37BeZYZxFmU8vh7fbOsvhx7Aqu5xV7
 FG+1ZMfDkv+PixCuGtR5yPPaqU2XdjDC/9mlRWWQTPzg74RLEw5sz/tIHQPPm6ROCACFls7A
 TQRnAsMsAQgAxTU8dnqzK6vgODTCW2A6SAzcvKztxae4YjRwN1SuGhJR2isJgQHoOH6oCItW
 Xc1CGAWnci6doh1DJvbbB7uvkQlbeNxeIz0OzHSiB+pb1ssuT31Hz6QZFbX4q+crregPIhr+
 0xeDi6Mtu+paYprI7USGFFjDUvJUf36kK0yuF2XUOBlF0beCQ7Jhc+UoI9Akmvl4sHUrZJzX
 LMeajARnSBXTcig6h6/NFVkr1mi1uuZfIRNCkxCE8QRYebZLSWxBVr3h7dtOUkq2CzL2kRCK
 T2rKkmYrvBJTqSvfK3Ba7QrDg3szEe+fENpL3gHtH6h/XQF92EOulm5S5o0I+ceREwARAQAB
 wsB2BBgBCAAgFiEE+ORdfQEWdwcppnfRP/MOinaI+qoFAmcCwywCGwwACgkQP/MOinaI+qpI
 zQf+NAcNDBXWHGA3lgvYvOU31+ik9bb30xZ7IqK9MIi6TpZqL7cxNwZ+FAK2GbUWhy+/gPkX
 it2gCAJsjo/QEKJi7Zh8IgHN+jfim942QZOkU+p/YEcvqBvXa0zqW0sYfyAxkrf/OZfTnNNE
 Tr+uBKNaQGO2vkn5AX5l8zMl9LCH3/Ieaboni35qEhoD/aM0Kpf93PhCvJGbD4n1DnRhrxm1
 uEdQ6HUjWghEjC+Jh9xUvJco2tUTepw4OwuPxOvtuPTUa1kgixYyG1Jck/67reJzMigeuYFt
 raV3P8t/6cmtawVjurhnCDuURyhUrjpRhgFp+lW8OGr6pepHol/WFIOQEg==
In-Reply-To: <6f87918b-b4ca-4404-8f1e-e1100190c0f6@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Krzysztof,

On 3/10/25 09:55, Krzysztof Kozlowski wrote:
> On 10/03/2025 12:57, Maíra Canal wrote:
>>>
>>>> Signed-off-by: Maíra Canal <mcanal@igalia.com>
>>>> ---
>>>>    .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 60 ++++++++++++++++++++--
>>>>    1 file changed, 55 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>>>> index dc078ceeca9ac3447ba54a7c8830821f0b2a7f9f..c0caee055e8c18dbcac0e51aa192951996545695 100644
>>>> --- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>>>> +++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>>>> @@ -27,15 +27,12 @@ properties:
>>>>          - description: core0 register (required)
>>>>          - description: GCA cache controller register (if GCA controller present)
>>>>          - description: bridge register (if no external reset controller)
>>>> +      - description: SMS register (if SMS controller present)
>>>
>>> This lists five items, but you say you have max 4?
>>
>> V3D 3.1 uses hub, core0, gca, and bridge (optional)
>> V3D 4.1 and 4.2 uses hub, core, and bridge (optional)
>> V3D 7.1 uses hub, core0, sms, and bridge (optional)
>>
>> Therefore, for a given DT, you will have 4 items max.
> 
> And how many items do you have here?
> 
>>
>>>
>>>>        minItems: 2
>>>>    
>>>>      reg-names:
>>>> -    items:
>>>> -      - const: hub
>>>> -      - const: core0
>>>> -      - enum: [ bridge, gca ]
>>>> -      - enum: [ bridge, gca ]
>>>>        minItems: 2
>>>> +    maxItems: 4
>>>
>>> So here 4, but earlier 5? These must come in sync.
>>
>> I added maxItems for reg in the allOf section.
> 
> I don't think you answer the comments. I said you listed earlier 5 items
> and then you answered with saying devices have 4 items. Here I said
> these properties must be synced and you said why you added maxItems...
> Not related, read again the feedback.

I'm sorry, I don't usually write DTBs. I believe what I need is to
specify the reg items for each compatible, right?

> 
> 
>>
>>>
>>>>    
>>>>      interrupts:
>>>>        items:
>>>> @@ -60,6 +57,59 @@ required:
>>>>    
>>>>    additionalProperties: false
>>>>    
>>>> +allOf:
>>>
>>> This goes above additionalProperties.
>>
>> Got it.
>>
>>>
>>>> +  - if:
>>>> +      properties:
>>>> +        compatible:
>>>> +          contains:
>>>> +            enum:
>>>> +              - brcm,2711-v3d
>>>> +              - brcm,7278-v3d
>>>> +    then:
>>>> +      properties:
>>>> +        reg:
>>>> +          minItems: 2
>>>> +          maxItems: 3
>>>> +        reg-names:
>>>> +          items:
>>>> +            - const: hub
>>>> +            - const: core0
>>>> +            - const: bridge
>>>
>>> Again un-synced lists.
>>
>> Sorry, what do you mean by un-synced lists?
> 
> xxx and xxx-names must have the same constraints. They do not have here.
> You have two different constraints and you can test your DTS to see that.
 >

I used `make dt_binding_check` to test it and it didn't catch any
errors.

>>
>>>
>>>> +  - if:
>>>> +      properties:
>>>> +        compatible:
>>>> +          contains:
>>>> +            const: brcm,2712-v3d
>>>> +    then:
>>>> +      properties:
>>>> +        reg:
>>>> +          minItems: 3
>>>> +          maxItems: 4
>>>> +        reg-names:
>>>> +          items:
>>>> +            - const: hub
>>>> +            - const: core0
>>>> +            - enum: [ bridge, sms ]
>>>> +            - enum: [ bridge, sms ]
>>>> +          minItems: 3
>>>
>>> Why is this flexible?
>>
>> I cannot guarantee the order and bridge is optional.
> 
> Hm? You must guarantee the order and I do not understand why this needs
> some sort of exception from all other bindings that only here you cannot
> guarantee the order.

I'm trying to keep backwards compatibility. This binding exists for many
years and it always used "enum: [ bridge, gca ]".

Best Regards,
- Maíra

> 
> 
> Best regards,
> Krzysztof


