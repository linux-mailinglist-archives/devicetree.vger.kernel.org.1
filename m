Return-Path: <devicetree+bounces-140212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B616AA18E7C
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:38:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 957773A5E58
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 09:38:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFA4820FA9E;
	Wed, 22 Jan 2025 09:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="cz1XtlH0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731118.qiye.163.com (mail-m19731118.qiye.163.com [220.197.31.118])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65AD484A3E;
	Wed, 22 Jan 2025 09:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.118
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737538689; cv=none; b=nrfmCXxxWrBLohu8E/fhmsN772DoUBmgo+pq1ll9cVVMS4bNVzajtJAy/KxGWj77cLqEt/aVymxNrawsRQ8IoWimWf37BD2tfLw9VHfUCL3nuM6WksWZv3t0lLphLvUixP86QZY7wrV2vVWdVj8G3HQDlUw/GPjTfqEU3Io34k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737538689; c=relaxed/simple;
	bh=QSH4tt0stW+KzEHvKNk85hcoP2/HsrISzTr2N/1OalA=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=cJpnxfcZMs8huS0p6fFLKSJidtnH/XQFgLPuz4O+qjYSX3/yo98NuuHcHUj8nW1yQqgBeC/y7pGsbdE3dhkTP5olSMLkMQFY3F2HbdlDYpME1MxLpHc/0Fqm2lUCK9x9KK4A+e7i8GOmy4M8LYCwwA//r7To7bwMKd8wGwYfL70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=cz1XtlH0; arc=none smtp.client-ip=220.197.31.118
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 9675abc2;
	Wed, 22 Jan 2025 17:37:54 +0800 (GMT+08:00)
Message-ID: <ba369b98-9a2a-421a-9251-4db3c1dcedd9@rock-chips.com>
Date: Wed, 22 Jan 2025 17:37:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/20] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
From: Damon Ding <damon.ding@rock-chips.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-13-damon.ding@rock-chips.com>
 <d7zpv6qt52mhny54dejw4yqlp2k2c437op7qmepqe27pufplqk@64xvohrz7h2q>
 <330041c4-aaee-4b41-8ccd-e2807415c709@rock-chips.com>
Content-Language: en-US
In-Reply-To: <330041c4-aaee-4b41-8ccd-e2807415c709@rock-chips.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUhIGlYZTUxCGBgaSUtMTE5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a948d601d8703a3kunm9675abc2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OBQ6CQw5FjISDi8qFTpKNx88
	OAwaFDdVSlVKTEhMTkhDTUxOQkxOVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJQkpINwY+
DKIM-Signature:a=rsa-sha256;
	b=cz1XtlH0WFZV+qfxxgiKI+00+Zhi4vQtANGA9k2JuGnZ9MA5lXD1IKZQY2QU84VWYgvk7IK3u/T3JDDNjjtVXFFs07czupDXqcJOFSRfEhZ6JNmukR2pw1uYdVCsXnRhH7J8jzkP0dQH2H82JAriqKTgAktE/gx4t2jvBYHeh/Y=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=CWIxW9kTl68Z5+0J5bhE6cyWfkVb0EOPaTfIzuCrrMI=;
	h=date:mime-version:subject:message-id:from;

Hi Dmitry,

On 2025/1/22 16:17, Damon Ding wrote:
> Hi Dmitry,
> 
> On 2025/1/9 20:48, Dmitry Baryshkov wrote:
>> On Thu, Jan 09, 2025 at 11:27:17AM +0800, Damon Ding wrote:
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
>>> In addition, use dev_err() instead of drm_err() in rockchip_dp_poweron()
>>> , which will be called before rockchip_dp_bind().
>>>
>>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>>
>>> ---
>>>
>>> Changes in v4:
>>> - Use done_probing() to call drm_of_find_panel_or_bridge() and
>>>    component_add() when getting panel from the DP AUX bus
>>>
>>> Changes in v5:
>>> - Use the functions exported by the Analogix side to get the pointers of
>>>    struct analogix_dp_plat_data and struct drm_dp_aux.
>>> - Use dev_err() instead of drm_err() in rockchip_dp_poweron().
>>>
>>> ---
>>>   .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 41 ++++++++++++++-----
>>>   1 file changed, 30 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/ 
>>> drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>>> index 0957d3c5d31d..3ae01b870f49 100644
>>> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>>> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>>> @@ -124,13 +124,13 @@ static int rockchip_dp_poweron(struct 
>>> analogix_dp_plat_data *plat_data)
>>>       ret = clk_prepare_enable(dp->pclk);
>>>       if (ret < 0) {
>>> -        drm_err(dp->drm_dev, "failed to enable pclk %d\n", ret);
>>> +        dev_err(dp->dev, "failed to enable pclk %d\n", ret);
>>
>>
>> why?
>>
> 
> The &rockchip_dp_device.drm_dev will be assigned in rockchip_dp_bind(), 
> which is called after probing process. The PM operations have been 
> advanced to the probing for the AUX transmission, so the dev_err() may 
> be better than drm_err().
> 

Using drm_...() uniformly may be better [0].

>>>           return ret;
>>>       }
>>>       ret = rockchip_dp_pre_init(dp);
>>>       if (ret < 0) {
>>> -        drm_err(dp->drm_dev, "failed to dp pre init %d\n", ret);
>>> +        dev_err(dp->dev, "failed to dp pre init %d\n", ret);
>>>           clk_disable_unprepare(dp->pclk);
>>>           return ret;
>>>       }
>>

Best regards,
Damon

[0]https://patchwork.kernel.org/project/linux-rockchip/patch/20250109032725.1102465-6-damon.ding@rock-chips.com/#26209891


