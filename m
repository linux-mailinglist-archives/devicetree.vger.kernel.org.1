Return-Path: <devicetree+bounces-227350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE77BE0C5D
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 23:14:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8E0D64E3236
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:14:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03C232D374A;
	Wed, 15 Oct 2025 21:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="b2Ch8KFL"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C154C3A8F7
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 21:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760562893; cv=none; b=n5dWq2l5u+5hQt6DeKod7zMZ6re5EoiLUfLnvRUzvl5hMZAXu0yGcUs9u1wIr8FHyw5WUygR7sxFFMgiHFDvN5IIWsTgTmyDjplV/54X7adXJ1gBo4sSwihXoalXfYaeVuG0mExDVYoc9b0NEmVelduhMrNuKzK08OpoAUifBC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760562893; c=relaxed/simple;
	bh=zkiZ/eu7Z3CIagnnUlT7M5TqSPRcECMp5fP+Gx2/JQE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SK3Uk3bXfjWvFhNIJBPOgCBGo17FRThcyBc6uAf0uX4hYAO9UBAT/Q7D3z+tP3CMArKpgclf/q7Q1CG8BY8TTWKXG1CLI+FejS1OxYLpL8pO6m4yEczC8XukJ6dniqAEZE94odZ8LsRGGR/kYbIooWON8136SSaeemRto8kUCwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=b2Ch8KFL; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760562889;
	bh=zkiZ/eu7Z3CIagnnUlT7M5TqSPRcECMp5fP+Gx2/JQE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=b2Ch8KFLcmftV8KVxf+RsBh1T07gUeCuDfHhfGziTiou/8qQJzuywtp5ci19XMY7e
	 mm2l/g2dSbm4KmjqefXCgHiH5GoP5ppi3v/uE5nG3ir067Qkkp7hUPlXcodE50P8hk
	 hJGv4K2ae94mp9gJcHrRMqG7hFsW47KkBccDptbwn+EAT4bCTXWNtnzVF/Zd4ddyyY
	 /w1F99eRyl6V/En+nGBOVwt6y+m6oqDLswdsq1Ginl0viQEBPtub2ggyjckI4EZHEp
	 EE1lJm7Lbd5kYi3VNgeENqQLms0VRydmhciC35ukRIokH6qF+78CxyBZbpuO0s84Eg
	 EReE78b2R9IUA==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0B62517E12C8;
	Wed, 15 Oct 2025 23:14:49 +0200 (CEST)
Message-ID: <ea6a38dc-65e1-4ac7-ad3a-813633fdff96@collabora.com>
Date: Thu, 16 Oct 2025 00:14:48 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] drm/rockchip: dw_hdmi_qp: Improve error handling
 with dev_err_probe()
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Alexey Charkov <alchark@gmail.com>, Algea Cao <algea.cao@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Cenk Uluisik <cenk.uluisik@googlemail.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Ripard
 <mripard@kernel.org>, Muhammed Efe Cetin <efectn@6tel.net>,
 Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>,
 Sandy Huang <hjc@rock-chips.com>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
 <20251005235542.1017-3-laurent.pinchart@ideasonboard.com>
 <gai5hfvu6xbbqpk4mu3i6nejolijeokjy3mkzca5xwzb4xwic7@jmee36svmwnb>
 <8706f168-5598-4f91-9ad0-fdbd04b410b7@collabora.com>
 <20251006162631.GK5944@pendragon.ideasonboard.com>
 <bfb68ced-e6ec-4636-816e-9b8fe8aa10b4@collabora.com>
 <20251009094122.GF12674@pendragon.ideasonboard.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20251009094122.GF12674@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/9/25 12:41 PM, Laurent Pinchart wrote:
> On Thu, Oct 09, 2025 at 10:24:25AM +0300, Cristian Ciocaltea wrote:
>> On 10/6/25 7:26 PM, Laurent Pinchart wrote:
>>> On Mon, Oct 06, 2025 at 05:37:23PM +0300, Cristian Ciocaltea wrote:
>>>> On 10/6/25 3:02 PM, Dmitry Baryshkov wrote:
>>>>> On Mon, Oct 06, 2025 at 02:55:38AM +0300, Laurent Pinchart wrote:
>>>>>> From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>>>>>
>>>>>> The error handling in dw_hdmi_qp_rockchip_bind() is quite inconsistent,
>>>>>> i.e. in some cases the error code is not included in the message, while
>>>>>> in some other cases there is no check for -EPROBE_DEFER.
>>>>>>
>>>>>> Since this is part of the probe path, address the aforementioned issues
>>>>>> by switching to dev_err_probe(), which also reduces the code a bit.
>>>>>>
>>>>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>>>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>>>> ---
>>>>>>  .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 62 +++++++------------
>>>>>>  1 file changed, 24 insertions(+), 38 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
>>>>>> index 7d531b6f4c09..4e7794aa2dde 100644
>>>>>> --- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
>>>>>> +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
>>>>>> @@ -457,10 +457,8 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
>>>>>>  		return -ENODEV;
>>>>>>  
>>>>>>  	if (!cfg->ctrl_ops || !cfg->ctrl_ops->io_init ||
>>>>>> -	    !cfg->ctrl_ops->irq_callback || !cfg->ctrl_ops->hardirq_callback) {
>>>>>> -		dev_err(dev, "Missing platform ctrl ops\n");
>>>>>> -		return -ENODEV;
>>>>>> -	}
>>>>>> +	    !cfg->ctrl_ops->irq_callback || !cfg->ctrl_ops->hardirq_callback)
>>>>>> +		return dev_err_probe(dev, -ENODEV, "Missing platform ctrl ops\n");
>>>>>
>>>>> This only makes sense for the purpose of unification.
>>>>
>>>> Right, as mentioned in the commit description, the intention was to ensure
>>>> consistent error handling across the probe path rather than limiting the scope
>>>> to -EPROBE_DEFER exclusively.
>>>
>>> Should I revert this change in v3 or keep it ? I see value in
>>> unification, but I don't mind either way. Dmitry, what's your preference
>>> ?
>>
>> I missed to point out this patch has been also sent a while ago as part of
>> another series [1] which should be ready for merging.  It'd be great if there's
>> no need to revert any changes, otherwise we need to keep those in sync.
>>
>> Regardless, I'll let you know if that gets applied first, allowing us to drop
>> this one after rebasing.
> 
> Thanks for the information. I'm happy to merge 3/5 on top of that
> series. The DT binding change in 1/5 can be merged separately.

That series has been applied onto drm-misc-next.

>> [1] https://lore.kernel.org/all/20250903-rk3588-hdmi-cec-v4-3-fa25163c4b08@collabora.com/
> 


