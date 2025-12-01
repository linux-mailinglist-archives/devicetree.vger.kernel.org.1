Return-Path: <devicetree+bounces-243262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DFFC9612F
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 09:10:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 285603A2640
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 08:10:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 386142BE053;
	Mon,  1 Dec 2025 08:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="SgFW8inr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973182.qiye.163.com (mail-m1973182.qiye.163.com [220.197.31.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8DC3C17;
	Mon,  1 Dec 2025 08:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.82
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764576646; cv=none; b=tr8YGN1x5J20i2NQy9loMwJc9HsCIYHVuuoXWd1+y5oOTuyHLoe+8gRwZrwp8jQZq3ZcrmF9eMTk0mYlCva9XWMsXLHGpye429qKLeAoBPVQY4na07csREGTHA5fvfvCit9L9tLfKCJG+VzlHzxTgqKob2aLCOr9G/o/4n9pPtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764576646; c=relaxed/simple;
	bh=mDzLKkFmp7NNylKbX6nEdkLXs50u5GsmBHY6gPIxcBk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iq+DWgqKLuw0izXch2RHzmuI0NKw+f5D2cUcYuynBXNfLmzmUh+zbc827MpvU49HG7Ax3fwgyyLY9SYgMEeKjw1vIvFcKkec3RdG4U2Pre/vIYzQ2fA1cduqj8uXPTYSvAaYaQVlIOR10/nDruXkTqsnOYCMZi1G4/m0xLH37VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=SgFW8inr; arc=none smtp.client-ip=220.197.31.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2b80636d7;
	Mon, 1 Dec 2025 16:10:30 +0800 (GMT+08:00)
Message-ID: <98a847f7-0880-4e5b-a946-26dc81fde5d2@rock-chips.com>
Date: Mon, 1 Dec 2025 16:10:29 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: iommu: rockchip: Add support for
 multiple interface clocks
To: Krzysztof Kozlowski <krzk@kernel.org>, Chaoyi Chen <kernel@airkyi.com>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251128071322.92-1-kernel@airkyi.com>
 <20251128071322.92-2-kernel@airkyi.com>
 <96958186-0e46-4606-ae36-239112eb31ea@kernel.org>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <96958186-0e46-4606-ae36-239112eb31ea@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9ad8f6968503abkunm093ab6149dd25d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx9IGVZCS0pIHU5JGk8ZS0tWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=SgFW8inrluQrSm0Ix/lMa3syFKAMWrjToL5LGiveUNyz6OAnclQEh7uHh5n2TBkLwfl6w2aKhOkcyOkt2rofXiBBuUe760zci1nT9J9hEFtRXTV3UULX9IixlXz8JhAmljyH+WOpYwpuZ7T2GyhEazAmJsS8irdhBBaueMD+BqE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=WpCNmZU9OuV8CRk1ASUXdYD2SrFmtUWcB4i78gH8CCA=;
	h=date:mime-version:subject:message-id:from;

Hi Krzysztof,

On 12/1/2025 3:55 PM, Krzysztof Kozlowski wrote:
> On 28/11/2025 08:13, Chaoyi Chen wrote:
>> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>>
>> The iommu found on RK3576 NPU and RK3576 RKVDEC have 4 clock instead of
>> 2 clock. Their clock names might differ, but I don't think that matters
>> much.
>>
>> Add support for them.
>>
>> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>> ---
>>
>> Changes in v2:
>> - Rewrite dt binding.
>>
>>  .../bindings/iommu/rockchip,iommu.yaml        | 52 ++++++++++++++++---
>>  1 file changed, 46 insertions(+), 6 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
>> index 6ce41d11ff5e..dfa5e25476d9 100644
>> --- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
>> +++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
>> @@ -27,6 +27,8 @@ properties:
>>            - enum:
>>                - rockchip,rk3576-iommu
>>                - rockchip,rk3588-iommu
>> +              - rockchip,rk3576-npu-iommu
>> +              - rockchip,rk3576-rkvdec-iommu
>>            - const: rockchip,rk3568-iommu
>>  
>>    reg:
>> @@ -42,14 +44,12 @@ properties:
>>      minItems: 1
>>  
>>    clocks:
>> -    items:
>> -      - description: Core clock
>> -      - description: Interface clock
> 
> These go to specific variant if:then.
> 
>> +    minItems: 2
>> +    maxItems: 4
>>  
>>    clock-names:
>> -    items:
>> -      - const: aclk
>> -      - const: iface
>> +    minItems: 2
>> +    maxItems: 4
> 
> So you just allow any names, like pink-pony.
> 
> No, define common list here. Actually same for clocks.

Will fix in v3.

> 
>>  
>>    "#iommu-cells":
>>      const: 0
>> @@ -64,6 +64,46 @@ properties:
>>        Some mmu instances may produce unexpected results
>>        when the reset operation is used.
>>  
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - rockchip,rk3576-npu-iommu
>> +              - rockchip,rk3576-rkvdec-iommu
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 4
>> +        clock-names:
>> +          minItems: 4
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          items:
>> +            - const: rockchip,iommu
>> +            - const: rockchip,rk3568-iommu
>> +    then:
>> +      properties:
>> +        clocks:
>> +          maxItems: 2
> 
> Why this is unspecific now? Please look at other examples how it is
> done, e.g. Samsung clocks.

I looked at some examples. Maybe it need to set both minItems and 
maxItems here? I'm not sure I understood your point.

> 
> 
> Best regards,
> Krzysztof
> 
> 

-- 
Best, 
Chaoyi

