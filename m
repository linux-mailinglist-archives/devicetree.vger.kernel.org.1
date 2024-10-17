Return-Path: <devicetree+bounces-112351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CE49A1DD2
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 11:09:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6045283A30
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 09:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA1CE1D86E8;
	Thu, 17 Oct 2024 09:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="vcbLb3ut"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA0542AB1
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 09:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729156145; cv=none; b=bf3ntUofRfCWQyLoqJ1AWdZb5TtcrxVdHQ8bQBA78neMAigNlWSZ9J8bCHmgijhKUok+2v9TN0rRc6XJqLXoB6QuJYeMsYxhNUz4t8NxSS9vxgqOxMy7bRzuOSVKmGuVyP5u2wUKEpJZ1bS/g7VDpwHfiNT3X3DNfXLbwl2HOGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729156145; c=relaxed/simple;
	bh=JMP19euYnIYZ0kdC1Na+4O2R48OM4sV4p0OWSwrK+Y0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z9IIW8B7aCb9HXRbUUD+9JFovaglB/qb2enb+3dMn7nZc/62Tq5X6Q8SXo7PAfrXMi3Y+5r3F/nFHBO8nhXpkjIWDN1scy9HXi+z7ft2ducJnO3xW6b2oHZpNzFDrPYW6OoFBbIm4WY/F3rtnEhDyTZFHol+smqmpULGhRQsbPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=vcbLb3ut; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1729156134;
 bh=dy+VkDErQfJ0xfx5tr89fbY/U4NTS6lYHaZVHtZNXsI=;
 b=vcbLb3utHi6kN8p+/jRpiaerwYZ73Ng2cGoPe0dIbJiUZLDvRznTTjjw26zuOjWwqvf6/Yo09
 RU7KkeuKpd4xEkozAYP3TPUSvhn5EhmcPLWqKvQ0qH517pis6TQgpAYaVFDUaOR7KvNF7w4203r
 5vFtjw7FsMLCqO9FvOAeX0+b4Ydd+5nJ2n0JBIlv3VEGj0mLqiKCiyWEMw8CZsLH+uyOLELK+ss
 64U4PTiLpUDq65Rsm7mZC5w7oXVKofFIA2sv0XPxPkKrs0JQGGT5tdcOfRQCYHoPJbXLS54dBZa
 ndYUCLcO+gQ0KY5v/4edxCl4TV+XJeAboSWe+ncEGQAA==
Message-ID: <4c2ebf98-7c0b-418a-a9de-ebe54acd21af@kwiboo.se>
Date: Thu, 17 Oct 2024 10:58:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/15] drm/rockchip: Set dma mask to 64 bit
To: Andy Yan <andyshrk@163.com>, Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org,
 conor+dt@kernel.org, s.hauer@pengutronix.de, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 derek.foreman@collabora.com, minhuadotchen@gmail.com,
 detlev.casanova@collabora.com, xxm@rock-chips.com,
 Andy Yan <andy.yan@rock-chips.com>
References: <20240920081626.6433-1-andyshrk@163.com>
 <20240920082036.6623-1-andyshrk@163.com>
 <b5e89288-d1c9-4c10-91b3-b1351b623ce6@arm.com>
 <b7d9dff.663d.192994c6b14.Coremail.andyshrk@163.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <b7d9dff.663d.192994c6b14.Coremail.andyshrk@163.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6710d1a6be1821fbc425900a

On 2024-10-17 09:06, Andy Yan wrote:
> 
> 
> Hi Robin,
> 
>  Thanks for your comment。
> 
> At 2024-10-17 01:38:23, "Robin Murphy" <robin.murphy@arm.com> wrote:
>> On 2024-09-20 9:20 am, Andy Yan wrote:
>>> From: Andy Yan <andy.yan@rock-chips.com>
>>>
>>> The vop mmu support translate physical address upper 4 GB to iova
>>> below 4 GB. So set dma mask to 64 bit to indicate we support address
>>>> 4GB.
>>>
>>> This can avoid warnging message like this on some boards with DDR
>>>> 4 GB:
>>>
>>> rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 130 (slots)
>>> rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 0 (slots)
>>> rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 130 (slots)
>>> rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 130 (slots)
>>> rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 0 (slots)
>>
>> There are several things wrong with this...
>>
>> AFAICS the VOP itself still only supports 32-bit addresses, so the VOP 
>> driver should only be setting a 32-bit DMA mask. The IOMMUs support 
>> either 32-bit or 40-bit addresses, and the IOMMU driver does set its DMA 
> Does that mean we can only use the dev of IOMMU ? If that is true， would you
> please give some inspiration on how to implement this? Or is there any other
> diver i can follow。Very sorry for that  I'm not familiar with memory management and the IOMMU。
> 
> 
>> mask appropriately. None of those numbers is 64, so that's clearly 
>> suspicious already. Plus it would seem the claim of the IOMMU being able 
>> to address >4GB isn't strictly true for RK3288 (which does supposedly 
>> support 8GB of RAM).
> 
> We can set DMA mask per device if we can find a right way to do it。

Removing the use of custom rockchip_drm_gem and use the common gem dma
fops should also allow import of framebuffers in >4GB address.

I played around with that [1] last year but never took it further
because it broke multiple VOPs/IOMMUSs on e.g. rk3288. Only IOMMU dte
address handling fixes for >4GB support was sent and got merged.

When I tested [1] on an RK3568 back then it was possible to import video
framebuffers located in >4GB memory and display them on screen without a
spam of "swiotlb buffer is full" lines.

Maybe there is some part of the current custom rockchip_drm_gem code
that can be adjusted to work closer to the common gem dma fops?, or
maybe fully drop rockchip_drm_gem in favor of common gem dma fops could
be an alternative solution?

[1] https://github.com/Kwiboo/linux-rockchip/commit/70695c8f868adec630592fef536364e59793de81

Regards,
Jonas

> 
>>
>> Furthermore, the "display-subsystem" doesn't even exist - it does not 
>> represent any actual DMA-capable hardware, so it should not have a DMA 
>> mask, and it should not be used for DMA API operations. Buffers for the 
>> VOP should be DMA-mapped for the VOP device itself. At the very least
>> the rockchip_gem_alloc_dma() path is clearly broken otherwise (I guess 
>> this patch possibly *would* make that brokenness apparent).
>>
>>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>>> Tested-by: Derek Foreman <derek.foreman@collabora.com>
>>> ---
>>>
>>> (no changes since v1)
>>>
>>>   drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 4 +++-
>>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>>> index 04ef7a2c3833..8bc2ff3b04bb 100644
>>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>>> @@ -445,7 +445,9 @@ static int rockchip_drm_platform_probe(struct platform_device *pdev)
>>>   		return ret;
>>>   	}
>>>   
>>> -	return 0;
>>> +	ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(64));
>>
>> Finally as a general thing, please don't misuse 
>> dma_coerce_mask_and_coherent() in platform drivers, just use normal 
>> dma_set_mask_and_coherent(). The platform bus code has been initialising 
>> the dev->dma_mask pointer for years now, drivers should not be messing 
>> with it any more.
> 
> Got it ， thanks again。
> 
>>
>> Thanks,
>> Robin.
>>
>>> +
>>> +	return ret;
>>>   }
>>>   
>>>   static void rockchip_drm_platform_remove(struct platform_device *pdev)


