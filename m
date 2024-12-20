Return-Path: <devicetree+bounces-132971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5E59F8DFB
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 09:29:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CE331896831
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 08:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A3BC1A83E5;
	Fri, 20 Dec 2024 08:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="iEi6g1WM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m118114.qiye.163.com (mail-m118114.qiye.163.com [115.236.118.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD1A8632B;
	Fri, 20 Dec 2024 08:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.118.114
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734683383; cv=none; b=oO9/Ml19F3D7A6YTHKo19XkJHL4IgXT6tv75uEG8CbTr7I3Tbm2xqQVQL/5LYKgwcNPorZfq6rtlWLdxPeoDoRJBYJS/t9gKp1kYGO0tb+6XyO/R8GigSdFNMeN8QeCLFj4FZ6wROsIAQxj8C2bK1ngqyoluLwG288FoKpIo4Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734683383; c=relaxed/simple;
	bh=O+K5B1wYGfhjAl008Xxvwb6kItPu6J78NWcu0HglW0g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tfm3W5cmALybD2sKhPEs7Bdxoda2HyLMFh78eVL8+Ctxn1K0Up9s6Z2YXFJGACxENAHs0j8GnipE9g0rcsdpPU52FUXSz6jF9Dk7Ah9eMZJMcFvXukeFkBZj9lhsRxgoSWjV3+wIi1Owdb3NtIpMYitpjs/L2k5VSui26FowY58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=iEi6g1WM; arc=none smtp.client-ip=115.236.118.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6524bd1b;
	Fri, 20 Dec 2024 16:29:28 +0800 (GMT+08:00)
Message-ID: <3663bbec-fcb2-4f93-aae6-3c2082491069@rock-chips.com>
Date: Fri, 20 Dec 2024 16:29:27 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/15] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-9-damon.ding@rock-chips.com>
 <aiggslcdbdmnc2amlvmzycyxmu3f5zp6kt4ifgzq5gkuugmnem@oqnwf4o7hbss>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <aiggslcdbdmnc2amlvmzycyxmu3f5zp6kt4ifgzq5gkuugmnem@oqnwf4o7hbss>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkkfSFZMQ0hDHUMeTkMYGEJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e32f9ba603a3kunm6524bd1b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PRA6Lgw6ETIUTQg#DBcePSI8
	AiwKCRBVSlVKTEhPTUNISExLSkJLVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJQ0pDNwY+
DKIM-Signature:a=rsa-sha256;
	b=iEi6g1WMQQreiv/+FEJCxMCUiHjf/pV7eXzPhn/R84mzSsPiUpa3E0pgNA78zs+aUH82NbkYE5nvx0SD3EXcLWntxzRLBLx5uPo67d6NN2FC4uiXzp/o+RB9hp572xA8aE1pa2rgbtS2afjv1ldkQhc3tnc4vYHr8cUpRnoDCyg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=GihI+WisojgBHpW5R0ME2hXDuA+DiNX0v2ROBByVWgY=;
	h=date:mime-version:subject:message-id:from;

Hi Dmitry,

On 2024/12/20 8:16, Dmitry Baryshkov wrote:
> On Thu, Dec 19, 2024 at 04:05:57PM +0800, Damon Ding wrote:
>> The rockchip_dp_of_panel_on_aux_bus() helps to check whether the DT
>> configurations related to the DP AUX bus are correct or not.
>>
>> If failed to get the panel from the platform bus, it is good to try
>> the DP AUX bus. Then, the probing process will continue until it enters
>> the analogix_dp_bind(), where devm_of_dp_aux_populate_bus() is called
>> after &analogix_dp_device.aux has been initialized.
> 
> No. devm_of_dp_aux_populate_bus() should be called before bind(). And
> bind should only be called from the done_probing() callback. The reason
> is very simple: the panel driver might be built as a module and might be
> not available when the analogix driver is being probed.
> 
> Also, please invert the logic of the commit message (and the driver).
> The platform bus should be a fallback if there is no AUX bus panel, not
> other way around.
> 

I have tried the logic as you recommanded, and it is really a good way. 
I will fix this in the next version.

>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>   .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 24 +++++++++++++++++--
>>   1 file changed, 22 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> index ba5263f85ee2..60c902abf40b 100644
>> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> @@ -317,6 +317,24 @@ static const struct drm_encoder_helper_funcs rockchip_dp_encoder_helper_funcs =
>>   	.atomic_check = rockchip_dp_drm_encoder_atomic_check,
>>   };
>>   
>> +static bool rockchip_dp_of_panel_on_aux_bus(const struct device_node *np)
>> +{
>> +	struct device_node *bus_node, *panel_node;
>> +
>> +	bus_node = of_get_child_by_name(np, "aux-bus");
>> +	if (!bus_node)
>> +		return false;
>> +
>> +	panel_node = of_get_child_by_name(bus_node, "panel");
>> +	of_node_put(bus_node);
>> +	if (!panel_node)
>> +		return false;
>> +
>> +	of_node_put(panel_node);
>> +
>> +	return true;
>> +}
>> +
>>   static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
>>   {
>>   	struct device *dev = dp->dev;
>> @@ -435,8 +453,10 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>>   		return -ENODEV;
>>   
>>   	ret = drm_of_find_panel_or_bridge(dev->of_node, 1, 0, &panel, NULL);
>> -	if (ret < 0)
>> -		return ret;
>> +	if (ret < 0) {
>> +		if (!rockchip_dp_of_panel_on_aux_bus(dev->of_node))
>> +			return ret;
>> +	}
>>   
>>   	dp = devm_kzalloc(dev, sizeof(*dp), GFP_KERNEL);
>>   	if (!dp)
>> -- 
>> 2.34.1
>>
> 

Best regards,
Damon


