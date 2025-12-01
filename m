Return-Path: <devicetree+bounces-243303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE8DC96933
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:10:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60E3F3A1715
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A12CD30214A;
	Mon,  1 Dec 2025 10:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="M9saWfPc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973181.qiye.163.com (mail-m1973181.qiye.163.com [220.197.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADA029BDA2;
	Mon,  1 Dec 2025 10:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764583803; cv=none; b=p9qF+7zcXlpbNwJYTK1i4bX18iOzpatngY427XY6Sw55HE9/aZARtVAojhrThOmt+309pcxeHOD5kSUNarDOWFKqjsrplgnof3ZufIpyYGSgq2OYm4u17fjPwMjW0tTcNmxCqGPwQOKq5jqrlpllZZLp/Jo02aYpBdcEFkN4bcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764583803; c=relaxed/simple;
	bh=ee4ZcnGduBVW9fcxwoKnW8mXBae4FnxxWqgdbVDdjs0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uBpb4HjLrTQ08P/8S4Hz65x5YGrCkL8MnL5PT0c5HtzX3Ffpz/wqi7rXU55kMxgU2EmoT6jUBQdsopwzno2brC57IciQ452orwiYJ6htFhharmUno5WtfejVKMy1X8/JrhnhY4pv6UqS81rZiYU4xr4CIXDxVUGrKous+Bn9QCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=M9saWfPc; arc=none smtp.client-ip=220.197.31.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2b8268f6e;
	Mon, 1 Dec 2025 16:54:21 +0800 (GMT+08:00)
Message-ID: <8ac259e2-c075-4a29-827e-315ad84c6363@rock-chips.com>
Date: Mon, 1 Dec 2025 16:54:20 +0800
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
 <98a847f7-0880-4e5b-a946-26dc81fde5d2@rock-chips.com>
 <491560f1-ee50-43ef-b258-adb5859cb05a@kernel.org>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <491560f1-ee50-43ef-b258-adb5859cb05a@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9ad91ebc9f03abkunm0983dea69e84a6
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx5NTFZJHU9PGU8dSEtJGEtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=M9saWfPcwmCgvCUeKRaAFxKgt02jlM09r19UmbH+tO5Vh9xp+DZUinmwH87OwuvOv7ArvxSu26Q2PGUWibZoa2eqv1u+tJBntgnKHci8pj9M0HzAWvuG/G1NEwv+jnOMDlsOBdlu+dm3tqXnPqdyfBzNR+nbXinw18D0jtUQZHU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=QPt7Lzjv5NOO9AmXGaEbndBUfDWG3N+K6MGje1fGLfs=;
	h=date:mime-version:subject:message-id:from;

On 12/1/2025 4:39 PM, Krzysztof Kozlowski wrote:
> On 01/12/2025 09:10, Chaoyi Chen wrote:
>>>> +  - if:
>>>> +      properties:
>>>> +        compatible:
>>>> +          items:
>>>> +            - const: rockchip,iommu
>>>> +            - const: rockchip,rk3568-iommu
>>>> +    then:
>>>> +      properties:
>>>> +        clocks:
>>>> +          maxItems: 2
>>>
>>> Why this is unspecific now? Please look at other examples how it is
>>> done, e.g. Samsung clocks.
>>
>> I looked at some examples. Maybe it need to set both minItems and 
>> maxItems here? I'm not sure I understood your point.
> 
> Individual items were described before. Now they are not, so first item
> can be anything.
> 
> You need to define the list. If the devices have completely different
> clocks, then you would go with Samsung approach. But devices should not
> have completely different clocks, so you should define common parts in
> top-level and just narrow number of items here. maxItems is enough in
> such case.

Ah, it looks like Samsung's clock bindings rarely have common parts.
At present, there are indeed some common parts for the IOMMU clock,
but I'm not sure how other variants will change. 

I'll give this a try, thank you!

-- 
Best, 
Chaoyi

