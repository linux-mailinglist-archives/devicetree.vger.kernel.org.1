Return-Path: <devicetree+bounces-157778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C22A62C62
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 13:17:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17BAC17BC73
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 12:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27FE81F4E37;
	Sat, 15 Mar 2025 12:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="qB1pv0a/"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E97F193402
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 12:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742041042; cv=none; b=SSvUx2Tn+14RSVPG8iAC+B++lSULGgK48M8FLOeiCZsptNDQLnojOJSPOAo2TF8w+4vbSZDkUblDIogoqbb6GlR3CD9y7h1f6YLRRjjGvo4Uhq6jvHrlVaFIqkwf2PSNqhieC5eJVWk0rpBt6541L1TvJVyM/522ZMWOdD0E6TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742041042; c=relaxed/simple;
	bh=L9PCrPoJ3CkYm2pPoXzPCjXLLj9YCG1ElIkfwX60csA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F6OWVVBC29ISaFCBNoUmg4r0KUgdXV1FlndMy0vcMWJRyMSkQOpvbpk4wklftoJI5v0YFDEci3t6ru5LrxyvgjCM1bfQnmZjADRb57C3YVNmFvuysBOZJWtVyF88cGPey63yS85HJZ2bM8U3PdPYiTvqm41a6JfoKOa02dssHtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=qB1pv0a/; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=BfgqA1HeUzPu2eLpTAzKF9T62ogHoCOoKafmriKcVr8=; b=qB1pv0a/BNivEdRw9PUnPCdrYQ
	PyBEGtu185P0fnKq8JVM++oQAB4nH4FVlhdfXUeKsfbmJaVoEbWHxKyTsurHBKdiezwHlS+TP2vI8
	YyG1yatpnm2aYyGvzfVI/uln7WkOMwbXSuhkDbuvnbSZuZ3F9Etid9F5xzpDRvctYqsdrBBnRIXke
	zqP5L0C/nkA49SQXO2GIYBG4lFLerslGXaIY7QyooOvr3EY/AJG1xP61b2NSCvtvy626JFZ2efMwj
	ktE67UXRufdSJwRIEmvFsmi3XybAVAXx0a/z2/FJWwyqefK7UCufo0GTWr9FKl9K9CjgzE56eLo4q
	76tAHpaQ==;
Received: from [189.7.87.178] (helo=[192.168.0.224])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1ttQRv-000T1T-Jl; Sat, 15 Mar 2025 13:17:07 +0100
Message-ID: <e3d70d16-8701-4096-ba4b-e21cb1da7905@igalia.com>
Date: Sat, 15 Mar 2025 09:17:00 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/7] dt-bindings: gpu: v3d: Add per-compatible register
 restrictions
To: Stefan Wahren <wahrenst@gmx.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, kernel-dev@igalia.com,
 Maxime Ripard <mripard@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>
References: <20250313-v3d-gpu-reset-fixes-v4-0-c1e780d8e096@igalia.com>
 <20250313-v3d-gpu-reset-fixes-v4-4-c1e780d8e096@igalia.com>
 <3fbaa5ed-e70f-4293-99d0-faf22f3c4adf@kernel.org>
 <701c71cb-47a6-4970-bd21-ae61cf971f7c@igalia.com>
 <0edcd27d-64a6-494e-bc81-5a9ad89d4d90@gmx.net>
Content-Language: en-US
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
In-Reply-To: <0edcd27d-64a6-494e-bc81-5a9ad89d4d90@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Stefan,

On 15/03/25 06:52, Stefan Wahren wrote:
> Hello,
> 
> Am 13.03.25 um 20:04 schrieb Maíra Canal:
>> +Cc Stefan
>>
>> Hi Krzysztof,
>>
>> On 13/03/25 12:03, Krzysztof Kozlowski wrote:
>>> On 13/03/2025 15:43, Maíra Canal wrote:
>>>> In order to enforce per-SoC register rules, add per-compatible
>>>> restrictions. V3D 3.3 (represented by brcm,7268-v3d) has a cache
>>>> controller (GCA), which is not present in other V3D generations.
>>>> Declaring these differences helps ensure the DTB accurately reflect
>>>> the hardware design.
>>>>
>>>> While not ideal, this commit keeps the register order flexible for
>>>> brcm,7268-v3d with the goal to keep the ABI backwards compatible.
>>>>
>>>> Signed-off-by: Maíra Canal <mcanal@igalia.com>
>>>> ---
>>>>   .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 73
>>>> ++++++++++++++++++----
>>>>   1 file changed, 61 insertions(+), 12 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>>>> b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>>>> index
>>>> dc078ceeca9ac3447ba54a7c8830821f0b2a7f9f..9867b617c60c6fe34a0f88a3ee2f581a94b69a5c
>>>> 100644
>>>> --- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>>>> +++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml

[...]

>>>> +  - if:
>>>> +      properties:
>>>> +        compatible:
>>>> +          contains:
>>>> +            const: brcm,7268-v3d
>>>> +    then:
>>>> +      properties:
>>>> +        reg:
>>>> +          items:
>>>> +            - description: hub register
>>>> +            - description: core0 register
>>>> +            - description: GCA cache controller register
>>>> +            - description: bridge register (if no external reset
>>>> controller)
>>>> +          minItems: 3
>>>> +        reg-names:
>>>> +          items:
>>>> +            - const: hub
>>>> +            - const: core0
>>>> +            - enum: [ bridge, gca ]
>>>
>> > So GCA is always there? Then this should be just 'gca'. Your list for
>>
>> GCA is always there for V3D 3.3, therefore it is always there for
>> brcm,7268-v3d.
>>
>>> 'reg' already says that third item must be GCA. I understand that you do
>>> not want to affect the ABI, but it already kind of is with enforcing GCA
>>> in 'reg'.
>>
>> I'm adding Stefan to the loop as he was the one that converted this DT
>> binding to YAML. Stefan, could you share your thoughts about breaking
>> the ABI for BCM7268? We would enforce the following order: hub, core0,
>> bridge, and gca.
> Phew, that was over 4 years ago. To be honest, my only motivation back
> then was to prepare support for the Raspberry Pi 4 (BCM2711). I did it
> all in my spare time and never had access to any Broadcom documents. I
> have no idea about all the other BCM chips, so a possible break of the
> ABI for the BCM7268 was an accident. I don't know if Florian Fainelli or
> Maxime Ripard can help here.

Thanks for providing your feedback! I did my diligence and now I know
which SoCs have each register bank. For BCM2711, BCM2712, and BCM7278,
the ABI will be preserved. As for BCM7268, I plan to enforce the order
specified in the current DT binding example: hub, core0, bridge, and
gca.

Florian, it would be great to hear your feedback about BCM7268.

> 
> By the way the two schema maintainers have not been active at V3D for a
> long time, so it would be good if someone could take over.

I sent a patch [1] to step in as maintainer.

[1] 
https://lore.kernel.org/dri-devel/20250313-v3d-gpu-reset-fixes-v4-0-c1e780d8e096@igalia.com/T/#mf8ffc3dc7a216efc1842d773787394c3506814cd

Best Regards,
- Maíra

> 
> Regards
>>
>>>
>>> I anyway do not understand why 'gca' or 'bridge' are supposed to be
>>> optional. Does the given SoC differ between boards? What is the external
>>> reset controller here? External like outside of SoC?
>>
>> TBH I never saw BCM7268 or BCM7278 in the wild, but you are correct,
>> "bridge" shouldn't change for the same SoC. I'll do my diligence and
>> research more about those SoCs.
>>
>> Best Regards,
>> - Maíra
>>
>>>
>>> Best regards,
>>> Krzysztof
>>
> 


