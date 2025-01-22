Return-Path: <devicetree+bounces-140198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F83A18D7D
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 09:17:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 922303A53BB
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 08:17:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C17BD1B3948;
	Wed, 22 Jan 2025 08:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="h0BffGDB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49201.qiye.163.com (mail-m49201.qiye.163.com [45.254.49.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732E217BB6;
	Wed, 22 Jan 2025 08:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737533837; cv=none; b=CjbQ8hr6BFwXxJoz5PTvJNfyEKd9UTfcZifiHcItA1dccOBCyF65BdSRCR/L4hpUHOy54wW2a9SiOKp3jQvtQ/fH0OyEginf5xgGwy0oGoQL5/KhSWbP4cDJadK+Lw0mGQ0NG26wvunyuVGxdI7NfeacWIOMpke80bNCH9fsHcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737533837; c=relaxed/simple;
	bh=wS0iJPcyRSRmJ7Rsem6YrrR4OrhJuNJ99iiAGfhE0k8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YNCo03feyDwDQLGhB/hBHLuQpAZ416fo3RDsMWVaARCkZvCjIfLLpofjs8hdK1QECXalm3Cq2HisyDs+PqiLQ7SkF1KmA4nAyqxQyqFitXimnNcS4Z9uY9f/SO4qkEhHVyPc2NoMuShp9dY6338d16EwwuH3T6elK30uXooKjqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=h0BffGDB; arc=none smtp.client-ip=45.254.49.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 964943b6;
	Wed, 22 Jan 2025 16:17:04 +0800 (GMT+08:00)
Message-ID: <330041c4-aaee-4b41-8ccd-e2807415c709@rock-chips.com>
Date: Wed, 22 Jan 2025 16:17:03 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/20] drm/rockchip: analogix_dp: Add support to get
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
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-13-damon.ding@rock-chips.com>
 <d7zpv6qt52mhny54dejw4yqlp2k2c437op7qmepqe27pufplqk@64xvohrz7h2q>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <d7zpv6qt52mhny54dejw4yqlp2k2c437op7qmepqe27pufplqk@64xvohrz7h2q>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhlDSVZLSB1LHkgYTkgaHU1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a948d161e8403a3kunm964943b6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PDo6ERw6TTIJQy8BDB0QKUgQ
	CChPCgFVSlVKTEhMTkhIQ0lNSUJIVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJT05PNwY+
DKIM-Signature:a=rsa-sha256;
	b=h0BffGDBOH6ng9qbVn7Hx1mEclB/bytYNe7bHhleXXMVBiLrhiFs/2vIWNDx3nH3ajzpNCFmPtsU6g6qeBJUZEG8a508OpaoL5bOjo5xmETAocJwRQrxDRI1H0OHYdKtOINkPugtQVvcySFrnSiWSV1mvYmQhG69JnvEKoECHTw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=0dJqsA0isVay8dpsPnxyQHy2JrvwJVceSD2lUsDULE4=;
	h=date:mime-version:subject:message-id:from;

Hi Dmitry,

On 2025/1/9 20:48, Dmitry Baryshkov wrote:
> On Thu, Jan 09, 2025 at 11:27:17AM +0800, Damon Ding wrote:
>> Move drm_of_find_panel_or_bridge() a little later and combine it with
>> component_add() into a new function rockchip_dp_link_panel(). The function
>> will serve as done_probing() callback of devm_of_dp_aux_populate_bus(),
>> aiding to support for obtaining the eDP panel via the DP AUX bus.
>>
>> If failed to get the panel from the DP AUX bus, it will then try the other
>> way to get panel information through the platform bus.
>>
>> In addition, use dev_err() instead of drm_err() in rockchip_dp_poweron()
>> , which will be called before rockchip_dp_bind().
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
>> Changes in v4:
>> - Use done_probing() to call drm_of_find_panel_or_bridge() and
>>    component_add() when getting panel from the DP AUX bus
>>
>> Changes in v5:
>> - Use the functions exported by the Analogix side to get the pointers of
>>    struct analogix_dp_plat_data and struct drm_dp_aux.
>> - Use dev_err() instead of drm_err() in rockchip_dp_poweron().
>>
>> ---
>>   .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 41 ++++++++++++++-----
>>   1 file changed, 30 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> index 0957d3c5d31d..3ae01b870f49 100644
>> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> @@ -124,13 +124,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
>>   
>>   	ret = clk_prepare_enable(dp->pclk);
>>   	if (ret < 0) {
>> -		drm_err(dp->drm_dev, "failed to enable pclk %d\n", ret);
>> +		dev_err(dp->dev, "failed to enable pclk %d\n", ret);
> 
> 
> why?
> 

The &rockchip_dp_device.drm_dev will be assigned in rockchip_dp_bind(), 
which is called after probing process. The PM operations have been 
advanced to the probing for the AUX transmission, so the dev_err() may 
be better than drm_err().

>>   		return ret;
>>   	}
>>   
>>   	ret = rockchip_dp_pre_init(dp);
>>   	if (ret < 0) {
>> -		drm_err(dp->drm_dev, "failed to dp pre init %d\n", ret);
>> +		dev_err(dp->dev, "failed to dp pre init %d\n", ret);
>>   		clk_disable_unprepare(dp->pclk);
>>   		return ret;
>>   	}
> 

Best regards
Damon


