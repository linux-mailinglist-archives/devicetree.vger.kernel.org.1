Return-Path: <devicetree+bounces-156105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 74971A5932D
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 12:56:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB02C188F543
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 11:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2861422257E;
	Mon, 10 Mar 2025 11:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="a+4eVCNr"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C933B224252
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 11:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741607806; cv=none; b=qC04RZSgcOKkmWaa1JW5KmBk58U9M3yuCPYOzxkehYfVbopo3Ses/6a2fH1emQPvbOwgscYHLxDi1u4UsuY5HESnwhWT8Ox/xfqOsfdYdcpVB6w07iJnAgKn3MENyY112/FU/65ZOsClcxbusZBVRio9ufv3rHCBeMzy73U9U/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741607806; c=relaxed/simple;
	bh=MGBG1mhrWHS6P8+7zEscLGKdJzcj/knkAnI8LCkCma0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hNYJqXQPbo2bSNDoF5Gq6vE/URExo00q+KOhvTcF8vTOoMMwrL7iOdLxW0J74afEoI/pwJR0MkHKiIAEpxJaU3tQKjLptbUVRHOP4Mzntimq2dO9P8EIDShMaP3ogPTUEgJvTdQLK3tM02oHNsqqMgI74yUGRHuLSVpa3hWf8/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=a+4eVCNr; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KQGViS5hJqTMRIRM6RIbk/s1slShSph0D0BqL260LP0=; b=a+4eVCNrl85q3SwPQ0e95yhEW+
	HDNqafgw3e2liMwlwKsiu5/wqGLKkVCM7/IRtWcJh99U94iHK+8Q7kM8UcwB8Uy2Wm+aQzmelIdUu
	0qqKh13BbgVVGdWtOEXiY9Z3mscejC9OZ5TSNwNNQIr2R2ubxPRmQFnNEOXGK5wkl3r03h53QStj6
	zpa0gpotdAFEgVQQ29cqzYXid+kxv7ndSjizdgSONlujnPZKbwcrB2PK/Dh2ucxFfU/yUTVq/Vmzs
	D1fhB5+m/sQplnUCxH3nAoAhS/VrlE0AKxC7NBW82Q4haryTzghnowaFkw1VTJfUOtfPpUH2wLE6H
	+dOjUhoA==;
Received: from [143.107.182.242] (helo=[10.41.68.132])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1trbkC-006SmH-Uy; Mon, 10 Mar 2025 12:56:35 +0100
Message-ID: <4d224fc2-d077-47aa-8b52-edba30c62d19@igalia.com>
Date: Mon, 10 Mar 2025 08:57:25 -0300
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
In-Reply-To: <20250310-calculating-flat-cuttlefish-4c9fc2@krzk-bin>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Krzysztof,

On 3/10/25 06:49, Krzysztof Kozlowski wrote:
> On Sat, Mar 08, 2025 at 11:33:43AM -0300, Maíra Canal wrote:
>> V3D 7.1 exposes a new register block, called V3D_SMS. As BCM2712 has a
> 
> Where is the comaptible for this new block? Or was it already documented
> but with missing register?

The compatible is brcm,2712-v3d, which was already documented, but with
a missing register.

> 
>> V3D 7.1 core, add a new register item to the list. Similar to the GCA
>> and bridge register, SMS is optional and should only be added for V3D
>> 7.1 variants.
>>
>> In order to enforce per-SoC register rules, add per-compatible
>> restrictions. The restrictions will assure that GCA will only be added
>> in BCM7268 (V3D 3.3) and SMS will only be added in BCM2712 (V3D 7.1).
>>
>> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
>> Cc: Conor Dooley <conor+dt@kernel.org>
>> Cc: Nicolas Saenz Julienne <nsaenz@kernel.org>
>> Cc: devicetree@vger.kernel.org
> 
> Please drop the autogenerated scripts/get_maintainer.pl CC-entries from
> commit msg. There is no single need to store automated output of
> get_maintainers.pl in the git log. It can be easily re-created at any
> given time, thus its presence in the git history is redundant and
> obfuscates the log.
> 
> If you need it for your own patch management purposes, keep it under the
> --- separator.

Sorry, I'll change it for v3.

> 
>> Signed-off-by: Maíra Canal <mcanal@igalia.com>
>> ---
>>   .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 60 ++++++++++++++++++++--
>>   1 file changed, 55 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>> index dc078ceeca9ac3447ba54a7c8830821f0b2a7f9f..c0caee055e8c18dbcac0e51aa192951996545695 100644
>> --- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>> +++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>> @@ -27,15 +27,12 @@ properties:
>>         - description: core0 register (required)
>>         - description: GCA cache controller register (if GCA controller present)
>>         - description: bridge register (if no external reset controller)
>> +      - description: SMS register (if SMS controller present)
> 
> This lists five items, but you say you have max 4?

V3D 3.1 uses hub, core0, gca, and bridge (optional)
V3D 4.1 and 4.2 uses hub, core, and bridge (optional)
V3D 7.1 uses hub, core0, sms, and bridge (optional)

Therefore, for a given DT, you will have 4 items max.

> 
>>       minItems: 2
>>   
>>     reg-names:
>> -    items:
>> -      - const: hub
>> -      - const: core0
>> -      - enum: [ bridge, gca ]
>> -      - enum: [ bridge, gca ]
>>       minItems: 2
>> +    maxItems: 4
> 
> So here 4, but earlier 5? These must come in sync.

I added maxItems for reg in the allOf section.

> 
>>   
>>     interrupts:
>>       items:
>> @@ -60,6 +57,59 @@ required:
>>   
>>   additionalProperties: false
>>   
>> +allOf:
> 
> This goes above additionalProperties.

Got it.

> 
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - brcm,2711-v3d
>> +              - brcm,7278-v3d
>> +    then:
>> +      properties:
>> +        reg:
>> +          minItems: 2
>> +          maxItems: 3
>> +        reg-names:
>> +          items:
>> +            - const: hub
>> +            - const: core0
>> +            - const: bridge
> 
> Again un-synced lists.

Sorry, what do you mean by un-synced lists?

> 
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: brcm,2712-v3d
>> +    then:
>> +      properties:
>> +        reg:
>> +          minItems: 3
>> +          maxItems: 4
>> +        reg-names:
>> +          items:
>> +            - const: hub
>> +            - const: core0
>> +            - enum: [ bridge, sms ]
>> +            - enum: [ bridge, sms ]
>> +          minItems: 3
> 
> Why is this flexible?

I cannot guarantee the order and bridge is optional.

Best Regards,
- Maíra

> 
> Best regards,
> Krzysztof
> 


