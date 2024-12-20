Return-Path: <devicetree+bounces-132916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5559F8AF8
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 05:13:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1307F7A10DC
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 04:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F3FF46434;
	Fri, 20 Dec 2024 04:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="BNh8FahP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32115.qiye.163.com (mail-m32115.qiye.163.com [220.197.32.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA30E29A1;
	Fri, 20 Dec 2024 04:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.115
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734668004; cv=none; b=o6n+TkFeD/KCgRlse5xdCkievwPLii7d843vQUbQBWWLFT9hKB3w7hXabus9BU3DwiHnST9f8tPNHKnNW3LKkiZMd4Vj2HKKczf6GPcpu32EMUw4jg0vNLZBtDDDyt9KpOdmAchuu0hu3yfZMjk4fUV/Wi2/wlqTgyGoREgV/vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734668004; c=relaxed/simple;
	bh=H6ZYzaazEyuHn0kJZ8DViEEpYPz4WDkTWHw0gSZZyjM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lTJuo9198lDRkP3vymy8Tn6XpQakLg233kLz0jl+V8ZGE+ceOIqu4CVvn4gaQNSG4LRCMSwzrn28gtjUK9BNJopSffbjpOFxAOLEVrZi87CH94fU0DRgRum2PvcVejzB5Wjl62r0WjEPAoT1Nt8FFZUX7yThZ2GtaAZbBBtU/P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=BNh8FahP; arc=none smtp.client-ip=220.197.32.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6490df3d;
	Fri, 20 Dec 2024 11:37:42 +0800 (GMT+08:00)
Message-ID: <654c30ec-7d7e-4956-9a48-15bfcea34acc@rock-chips.com>
Date: Fri, 20 Dec 2024 11:37:43 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/15] drm/bridge: analogix_dp: Add support for phy
 configuration.
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
 <20241219080604.1423600-8-damon.ding@rock-chips.com>
 <a6vvydjbx3hbckoy74iiyzguyyacwvdh6iirqydjfvhwgocw3a@knecggjcbcid>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <a6vvydjbx3hbckoy74iiyzguyyacwvdh6iirqydjfvhwgocw3a@knecggjcbcid>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh0dT1ZOHxpOTEoYSh1KTU5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e2247d3c03a3kunm6490df3d
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PVE6URw4ODINPgoBNxZKElYx
	VjkaCSJVSlVKTEhPTU1OQ01PSk9OVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFOSUxPNwY+
DKIM-Signature:a=rsa-sha256;
	b=BNh8FahPwmuvK6MM0EPKjBum6/FRTxh5eh7cdcI7tDsXipaU4vLw5CVWum79FFyoe/28F8jWM6uOx23DYydpmSHsWVc7C8J2P4hzwpMa6FvkHR+l02aaVOiz3ltW/HPkZEAgtHOGjmLmDczOHqnQlEDX7yt3mukQFM4SIZ/h6fw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=vmzJTIEG/eblu6dvI0z4VxTeppAOPZKokTvbYKlKCgE=;
	h=date:mime-version:subject:message-id:from;

Hi Dmitry,

On 2024/12/20 8:13, Dmitry Baryshkov wrote:
> On Thu, Dec 19, 2024 at 04:05:56PM +0800, Damon Ding wrote:
>> Add support to configurate link rate, lane count, voltage swing and
>> pre-emphasis with phy_configure(). It is helpful in application scenarios
>> where analogix controller is mixed with the phy of other vendors.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
>> Changes in v2:
>> - remove needless assignments for phy_configure()
>> - remove unnecessary changes for phy_power_on()/phy_power_off()
>> ---
>>   .../drm/bridge/analogix/analogix_dp_core.c    |  1 +
>>   .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 56 +++++++++++++++++++
>>   2 files changed, 57 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> index 6f10d88a34c5..9429c50cc1bc 100644
>> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> @@ -1696,6 +1696,7 @@ int analogix_dp_resume(struct analogix_dp_device *dp)
>>   	if (dp->plat_data->power_on)
>>   		dp->plat_data->power_on(dp->plat_data);
>>   
>> +	phy_set_mode(dp->phy, PHY_MODE_DP);
>>   	phy_power_on(dp->phy);
>>   
>>   	analogix_dp_init_dp(dp);
>> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
>> index 3afc73c858c4..613ce504bea6 100644
>> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
>> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
>> @@ -11,6 +11,7 @@
>>   #include <linux/gpio/consumer.h>
>>   #include <linux/io.h>
>>   #include <linux/iopoll.h>
>> +#include <linux/phy/phy.h>
>>   
>>   #include <drm/bridge/analogix_dp.h>
>>   
>> @@ -513,10 +514,25 @@ void analogix_dp_enable_sw_function(struct analogix_dp_device *dp)
>>   void analogix_dp_set_link_bandwidth(struct analogix_dp_device *dp, u32 bwtype)
>>   {
>>   	u32 reg;
>> +	int ret;
>>   
>>   	reg = bwtype;
>>   	if ((bwtype == DP_LINK_BW_2_7) || (bwtype == DP_LINK_BW_1_62))
>>   		writel(reg, dp->reg_base + ANALOGIX_DP_LINK_BW_SET);
>> +
>> +	if (dp->phy) {
>> +		union phy_configure_opts phy_cfg = {0};
>> +
>> +		phy_cfg.dp.lanes = dp->link_train.lane_count;
> 
> Should not be necessary, you are only setting the .set_rate.

Indeed, this can be dropped.

> 
>> +		phy_cfg.dp.link_rate =
>> +			drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;
>> +		phy_cfg.dp.set_rate = true;
>> +		ret = phy_configure(dp->phy, &phy_cfg);
>> +		if (ret && ret != -EOPNOTSUPP) {
>> +			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
>> +			return;
>> +		}
>> +	}
>>   }
>>   
>>   void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
>> @@ -530,9 +546,22 @@ void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
>>   void analogix_dp_set_lane_count(struct analogix_dp_device *dp, u32 count)
>>   {
>>   	u32 reg;
>> +	int ret;
>>   
>>   	reg = count;
>>   	writel(reg, dp->reg_base + ANALOGIX_DP_LANE_COUNT_SET);
>> +
>> +	if (dp->phy) {
>> +		union phy_configure_opts phy_cfg = {0};
>> +
>> +		phy_cfg.dp.lanes = dp->link_train.lane_count;
>> +		phy_cfg.dp.set_lanes = true;
>> +		ret = phy_configure(dp->phy, &phy_cfg);
>> +		if (ret && ret != -EOPNOTSUPP) {
>> +			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
>> +			return;
>> +		}
>> +	}
>>   }
>>   
>>   void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
>> @@ -546,10 +575,37 @@ void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
>>   void analogix_dp_set_lane_link_training(struct analogix_dp_device *dp)
>>   {
>>   	u8 lane;
>> +	int ret;
>>   
>>   	for (lane = 0; lane < dp->link_train.lane_count; lane++)
>>   		writel(dp->link_train.training_lane[lane],
>>   		       dp->reg_base + ANALOGIX_DP_LN0_LINK_TRAINING_CTL + 4 * lane);
>> +
>> +	if (dp->phy) {
>> +		union phy_configure_opts phy_cfg = {0};
>> +
>> +		for (lane = 0; lane < dp->link_train.lane_count; lane++) {
>> +			u8 training_lane = dp->link_train.training_lane[lane];
>> +			u8 vs, pe;
>> +
>> +			vs = (training_lane & DP_TRAIN_VOLTAGE_SWING_MASK) >>
>> +			     DP_TRAIN_VOLTAGE_SWING_SHIFT;
>> +			pe = (training_lane & DP_TRAIN_PRE_EMPHASIS_MASK) >>
>> +			     DP_TRAIN_PRE_EMPHASIS_SHIFT;
>> +			phy_cfg.dp.voltage[lane] = vs;
>> +			phy_cfg.dp.pre[lane] = pe;
>> +		}
>> +
>> +		phy_cfg.dp.lanes = dp->link_train.lane_count;
>> +		phy_cfg.dp.link_rate =
>> +			drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;
> 
> This two should not be necessary, please drop them.

These two are necessary for rk_hdptx_phy_set_voltage(), so they cannot 
be dropped.

> 
>> +		phy_cfg.dp.set_voltages = true;
>> +		ret = phy_configure(dp->phy, &phy_cfg);
>> +		if (ret && ret != -EOPNOTSUPP) {
>> +			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
>> +			return;
>> +		}
>> +	}
>>   }
>>   
>>   u32 analogix_dp_get_lane_link_training(struct analogix_dp_device *dp, u8 lane)
>> -- 
>> 2.34.1
>>
> 

Best regards,
Damon


