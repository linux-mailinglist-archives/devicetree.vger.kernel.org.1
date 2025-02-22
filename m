Return-Path: <devicetree+bounces-149857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 52704A40960
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 16:11:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E3F117F20C
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 15:11:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC83514A095;
	Sat, 22 Feb 2025 15:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Y92UJFtt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3281.qiye.163.com (mail-m3281.qiye.163.com [220.197.32.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4660B2CCDB;
	Sat, 22 Feb 2025 15:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740237101; cv=none; b=dAkKwPVPq/JaYyCRhkfm59/g2cGVjS3wfhB6a3UhcB1CAPwktH9H2psU8B6SdZz7dxKrjYm0liLgxk84X+vdv6AiyXK0fnAsVcTv8V/prqOVAs/5Muhr5QVrPrnq6Ayb2Lrtpp8VXXVt0/PN0S7ZxpDGiXZqyEjOEh231E85e4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740237101; c=relaxed/simple;
	bh=mTV/5QqFzhxWn+xwDA/hl5QO5v0pkatLlDg3aZDa2u0=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=WjKbtyoo2ZyMAlPKZaCVL52l4oTRbDSh//IASWdzMrcg5b8u4j1jzR8t/dAabO3ZwFO61KjUukZrj6R4+cJOPo+QZnoKND87aduS+8rt29Gg193w/NquL8tPFdCZhYPvG7Rdye47SBKSRyHWCoeRNWySuSVydye69YvqNB38KvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Y92UJFtt; arc=none smtp.client-ip=220.197.32.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id bdb815ed;
	Sat, 22 Feb 2025 19:42:11 +0800 (GMT+08:00)
Message-ID: <cec09e08-253a-4011-8b37-062a492b2166@rock-chips.com>
Date: Sat, 22 Feb 2025 19:42:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 08/14] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
From: Damon Ding <damon.ding@rock-chips.com>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com,
 cristian.ciocaltea@collabora.com, l.stach@pengutronix.de,
 dmitry.baryshkov@linaro.org, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-9-damon.ding@rock-chips.com>
 <3340006.44csPzL39Z@diego>
 <799ccbd2-0c3b-4a55-b47e-1899975c4020@rock-chips.com>
Content-Language: en-US
In-Reply-To: <799ccbd2-0c3b-4a55-b47e-1899975c4020@rock-chips.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk1KHVZNH0MeGE4aSx5KSR5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a952d770b2103a3kunmbdb815ed
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PQg6UQw4HjITHR8BCSwQPEMC
	CjxPCzJVSlVKTE9LSUlPTkhJTExDVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSklMNwY+
DKIM-Signature:a=rsa-sha256;
	b=Y92UJFttJrKQq0DuTKRVVl+jI3C1nW3GpfRAsIRUKxxqsqyscny5c+PEGieUuWGzD4GNzWLe0xO9/k8syqOHqQEkoFl2n4g6V2MzTgULPpEqlUwCe8MUMe2kJVx/utZ5QulR+YIRk99rHXSHeiukOBA5kU6+dEtLNKUkmc5NEcA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=UGXM61VcEnYUmRYBHrm58jOs9cPBU004JHiH81XeNnI=;
	h=date:mime-version:subject:message-id:from;

On 2025/2/22 19:25, Damon Ding wrote:
> Hi Heiko,
> 
> On 2025/1/31 4:33, Heiko Stübner wrote:
>> Hi Damon,
>>
>> Am Donnerstag, 23. Januar 2025, 11:07:41 MEZ schrieb Damon Ding:
>>> Move drm_of_find_panel_or_bridge() a little later and combine it with
>>> component_add() into a new function rockchip_dp_link_panel(). The 
>>> function
>>> will serve as done_probing() callback of devm_of_dp_aux_populate_bus(),
>>> aiding to support for obtaining the eDP panel via the DP AUX bus.
>>>
>>> If failed to get the panel from the DP AUX bus, it will then try the 
>>> other
>>> way to get panel information through the platform bus.
>>>
>>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>>
>>> ---
>>
>>> @@ -450,9 +461,17 @@ static int rockchip_dp_probe(struct 
>>> platform_device *pdev)
>>>       if (IS_ERR(dp->adp))
>>>           return PTR_ERR(dp->adp);
>>> -    ret = component_add(dev, &rockchip_dp_component_ops);
>>> -    if (ret)
>>> -        return ret;
>>> +    ret = devm_of_dp_aux_populate_bus(analogix_dp_get_aux(dp->adp), 
>>> rockchip_dp_link_panel);
>>
>> This causes an undefined-reference error, so you probably need 
>> something like:
>>
>> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/ 
>> rockchip/Kconfig
>> index f9cbbb40b36f..fa946a809858 100644
>> --- a/drivers/gpu/drm/rockchip/Kconfig
>> +++ b/drivers/gpu/drm/rockchip/Kconfig
>> @@ -8,6 +8,7 @@ config DRM_ROCKCHIP
>>          select DRM_PANEL
>>          select VIDEOMODE_HELPERS
>>          select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
>> +       select DRM_DISPLAY_DP_AUX_BUS if ROCKCHIP_ANALOGIX_DP
>>          select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
>>          select DRM_DW_HDMI_QP if ROCKCHIP_DW_HDMI_QP
>>          select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
>>
>>
>>
>>
>>
> 
> Yeah, I will add a new separate commit to do it in the next version.
>

Oh...I believe it would be better to do it directly in this patch. ;-)

> Best regards
> Damon
> 
> 
> 



