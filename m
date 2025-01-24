Return-Path: <devicetree+bounces-140724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B31A1B1B6
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 09:27:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 600733AEA90
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 08:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14AF1218E9F;
	Fri, 24 Jan 2025 08:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="OYTYvei2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973176.qiye.163.com (mail-m1973176.qiye.163.com [220.197.31.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64321218E81;
	Fri, 24 Jan 2025 08:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737707223; cv=none; b=HWSKNlpObKgeFKcCbvh1BESLqSsAHANum/MZA/ljAE0dI+04imP7Srd1pqrqzA5o9Cy+jm2sTbX4McjOqXTJj4g00kZc87pALUxE/QdoAUj99C5cvMlKDnn6qxxwke11M/l1MKJSWyMy70/Q+/bni1Gwoj6CzzG9ZA800M/BMsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737707223; c=relaxed/simple;
	bh=6jtIRYrGnUSTwsRQ3uMu7S90Wr3eOBczV5eVEJKo0Wc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cpxRbVPXvboGJoGxHF7dQdV5BTm/hSoAXA5leI6LFrVJuj2CvHf9du+raSrTtX+1U3w2DK/VUerPrKfjmwmg6MJp2kwSOmwiEqfMK7VkjThLpvJdoPxtfhHSfsWqquyXIAKkp3m9sZWI29hscBv7dd11jpcOrv8sbo+fe3KqbMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=OYTYvei2; arc=none smtp.client-ip=220.197.31.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 996fdf6b;
	Fri, 24 Jan 2025 16:26:49 +0800 (GMT+08:00)
Message-ID: <c1718efc-85de-4356-aa15-2296a0780b2f@rock-chips.com>
Date: Fri, 24 Jan 2025 16:26:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 06/14] drm/bridge: analogix_dp: support to get
 &analogix_dp_device.plat_data and &analogix_dp_device.aux
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-7-damon.ding@rock-chips.com>
 <y4yzgkvcmvmphviuoroijaaotd2zdworbs5tfhdxh74kchirk6@dgoqwoksckiz>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <y4yzgkvcmvmphviuoroijaaotd2zdworbs5tfhdxh74kchirk6@dgoqwoksckiz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQklMHlZOSE9DSUxNGh9DQkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a94976bc3a103a3kunm996fdf6b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MU06Mzo4OTIXHiFLMDBKCA82
	F1YwCxZVSlVKTEhMTEtMSUpKT09CVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJQ0pLNwY+
DKIM-Signature:a=rsa-sha256;
	b=OYTYvei2Jt0VQn6+xbTs8MyEcoB25VtrUR7lof7WSmjRXwxJEUCpdeds8/R8FPtylnCqhMnxEYfnwWe8lhF4tAhafN/OQ4GNnzOSdhxEy1abwkDbtmF4hEXF63QkK1mmAn5qGwbNW9EOHOAF24wqZRsOfWhLaNR2Zq2sBlFtpoM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=/8oAL6qTbQWJkj8r9VXN/YNw8cpkGC6GOUpg2XwzQs8=;
	h=date:mime-version:subject:message-id:from;

Hi Dmitry,

On 2025/1/23 19:19, Dmitry Baryshkov wrote:
> On Thu, Jan 23, 2025 at 06:07:39PM +0800, Damon Ding wrote:
>> Add two new functions: one to find &analogix_dp_device.plat_data via
>> &drm_dp_aux, and the other to get &analogix_dp_device.aux. Both of them
>> serve for the function of getting panel from DP AUX bus, which is why
>> they are included in a single commit.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 14 ++++++++++++++
>>   include/drm/bridge/analogix_dp.h                   |  4 ++++
>>   2 files changed, 18 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> index b05f5b9f5258..8251adfce2f9 100644
>> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> @@ -1794,6 +1794,20 @@ int analogix_dp_stop_crc(struct drm_connector *connector)
>>   }
>>   EXPORT_SYMBOL_GPL(analogix_dp_stop_crc);
>>   
>> +struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct drm_dp_aux *aux)
>> +{
>> +	struct analogix_dp_device *dp = to_dp(aux);
>> +
>> +	return dp->plat_data;
>> +}
>> +EXPORT_SYMBOL_GPL(analogix_dp_aux_to_plat_data);
>> +
>> +struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp)
>> +{
>> +	return &dp->aux;
>> +}
>> +EXPORT_SYMBOL_GPL(analogix_dp_get_aux);
>> +
>>   MODULE_AUTHOR("Jingoo Han <jg1.han@samsung.com>");
>>   MODULE_DESCRIPTION("Analogix DP Core Driver");
>>   MODULE_LICENSE("GPL v2");
>> diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
>> index 6002c5666031..1b119b547988 100644
>> --- a/include/drm/bridge/analogix_dp.h
>> +++ b/include/drm/bridge/analogix_dp.h
>> @@ -7,6 +7,7 @@
>>   #ifndef _ANALOGIX_DP_H_
>>   #define _ANALOGIX_DP_H_
>>   
>> +#include <drm/display/drm_dp_aux_bus.h>
> 
> Nit: it should be enough to just forward-declare struct drm_dp_aux
> instead.
> 

I will move the header file to the driver of Rockchip Analogix DP and 
just use the forward-declare here in the next version.

>>   #include <drm/drm_crtc.h>
>>   
>>   struct analogix_dp_device;
>> @@ -48,4 +49,7 @@ void analogix_dp_unbind(struct analogix_dp_device *dp);
>>   int analogix_dp_start_crc(struct drm_connector *connector);
>>   int analogix_dp_stop_crc(struct drm_connector *connector);
>>   
>> +struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct drm_dp_aux *aux);
>> +struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp);
>> +
>>   #endif /* _ANALOGIX_DP_H_ */
>> -- 
>> 2.34.1
>>
> 

Best regards,
Damon


