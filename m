Return-Path: <devicetree+bounces-157937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B055A636D7
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 18:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C73C916DD77
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 17:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AA7C1A5B96;
	Sun, 16 Mar 2025 17:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="NRizFtls"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B7515C0
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742146976; cv=none; b=qHYOoyfjDQByhtrFMYBamrdhlDz5hSzK62B3IWQAfctQFYx4bBovjaz9fGzFsVYOjxJSr67nJ9x7MDjimzhNb+sOuHxVjv2dcY/xdQWQGpcYzbe3JvcDoGEgpB3Znj8nVlK3pj7dtDesfrsldeWy7kpEouNeMl0WbhuRaCfVc6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742146976; c=relaxed/simple;
	bh=zQxr4mLTxBKw7JpeD1Rd4R6CSQ3UuA+NlRKVmkr3As4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SMpdMa+G+W6bfEGWQVaze/VuNEpJx5EZmz2FtTG+7v2EHudwJ3Wmft+e8RmjLlM6nGpF36MNeglre90SmuzwNYwfTgTWLlkLqQ1aScs6hHA6yK44P1SoTMZyQ7ms+YskgDPb1H6TYV9ev6vt/uLARXvIqSyX1RpkFd2Q4gydK3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=NRizFtls; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5TFa0j5GoBN/ntielEWGjn4MLKP2mpIoBRC/80PT/Ns=; b=NRizFtlsdsPMmjSnei/6s0u1ZC
	eEXxZtjwaj9HuJp01gPr28qSiVn7eMPz3/nOmoW7dtr+mCtdKCOfPFY6IluQ9gJTKtqgW+xs63wNF
	i/1Xu/PAxjiuRwjXof9fs9O+ZYSAYcdX/4xVK8yS+8SEsIyEcfo6ShWJRsni4CnQAtA5JJSzyq4Fv
	GFpG3uJ/pEy3gALMokJFzScEGwlI6VzVfvMz7VPHm2mbMiD1zWejsP/K85oPkY8QTfpUDlKnuysXh
	ph7y+SFxyIyKw9+sCycxGf7hR8WXzF08ObhMYJ6ks6XKpAIKDdRdc8QlOJALzr6Xfr6UZuHLRzJZv
	suR+sC3g==;
Received: from [189.7.87.178] (helo=[192.168.0.224])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1tts0c-001BBp-50; Sun, 16 Mar 2025 18:42:46 +0100
Message-ID: <85c9958d-0f69-4048-ab7b-ba40a0d855ca@igalia.com>
Date: Sun, 16 Mar 2025 14:42:37 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/6] dt-bindings: gpu: v3d: Add additional examples to
 improve binding checks
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Stefan Wahren <wahrenst@gmx.net>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, kernel-dev@igalia.com
References: <20250316-v3d-gpu-reset-fixes-v5-0-9779cdb12f06@igalia.com>
 <20250316-v3d-gpu-reset-fixes-v5-4-9779cdb12f06@igalia.com>
 <20250316-abiding-badger-of-joy-0acd4c@krzk-bin>
Content-Language: en-US
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20250316-abiding-badger-of-joy-0acd4c@krzk-bin>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Krzysztof,

On 16/03/25 13:43, Krzysztof Kozlowski wrote:
> On Sun, Mar 16, 2025 at 11:15:11AM -0300, Maíra Canal wrote:
>> To prevent future changes that might inadvertently break the ABI, add
>> more examples to the binding. These examples improve coverage and help
> 
> Examples are not related to ABI at all.
> 
>> ensure `make dt_binding_check` produces more robust validation results.
> 
> No, don't add more examples differing by one property. Keep one/two
> examples.

I had the intention to add examples to avoid people from changing the
reg order in the future. For example, we changed the register order when
we converted the binding from txt to YAML. My goal was to avoid such
thing to happen again.

 From the feedback, I'll drop this patch. Thanks!

Best Regards,
- Maíra

> 
>>
>> Signed-off-by: Maíra Canal <mcanal@igalia.com>
>> ---
>>   .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 34 ++++++++++++++++++++--
>>   1 file changed, 32 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>> index 766a310ab653855d7cc9a80f18c2083218fe307e..39b8f0ee1f727628307d758844008ae1189902b2 100644
>> --- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>> +++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>> @@ -123,6 +123,38 @@ allOf:
>>   additionalProperties: false
>>   
>>   examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/soc/bcm2835-pm.h>
>> +
>> +    gpu@7ec00000 {
>> +      compatible= "brcm,2711-v3d";
>> +      reg = <0x7ec00000 0x4000>,
>> +            <0x7ec04000 0x4000>;
>> +      reg-names = "hub", "core0";
>> +
>> +      power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
> 
> That's the only notable difference - one new property.
> 
>> +      resets = <&pm BCM2835_RESET_V3D>;
>> +      interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
>> +    };
>> +
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/soc/bcm2835-pm.h>
>> +
>> +    gpu@2000000 {
>> +      compatible = "brcm,2712-v3d";
>> +      reg = <0x02000000 0x4000>,
>> +            <0x02008000 0x6000>,
>> +            <0x02030800 0x0700>;
>> +      reg-names = "hub", "core0", "sms";
>> +
>> +      power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
>> +      resets = <&pm BCM2835_RESET_V3D>;
>> +      interrupts = <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
>> +                   <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>;
> 
> No differences here at all.
> 
> Best regards,
> Krzysztof
> 


