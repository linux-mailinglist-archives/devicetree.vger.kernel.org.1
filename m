Return-Path: <devicetree+bounces-131366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E529F2F18
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:25:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 530261671CF
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 11:25:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19EE12040BF;
	Mon, 16 Dec 2024 11:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="TSWMVG+1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49222.qiye.163.com (mail-m49222.qiye.163.com [45.254.49.222])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498652040BC;
	Mon, 16 Dec 2024 11:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.222
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734348314; cv=none; b=I+1BOuK9ikU2xa4o8znuKnsMVSx2+/sfAfcPtvhpzekNvkEdhF5MatkFmAyRkxMrdTyM1o271xEOiofWe8eoruulqLEJ8+hXDiPOQ9gphWOEXhnC1LH3odxcV9RDqawbQzhhNtoRT1X6tX0HJsKXtkRlDgsB3Jsn2t1Oao71ZZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734348314; c=relaxed/simple;
	bh=OlNUqgZQoTtUJ4o1ZalmxzmamCAl9v2s+goEUZ15lRI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DO40XYFQaD5itwzjNiQ8Zp+nru4ip+H32UyLAVyjsEWfms3aPOR5XUf3XEuO70y67WI2tByhiBZKmVNzTD5+Bky5jPR2ZHZDL+j6yRvLB0ORZlLrjfecAGA/UXDR4r3ISaCNdMkumYtGO2XEj4Pt7lA4RhZNx4qA6NRKco+uwKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=TSWMVG+1; arc=none smtp.client-ip=45.254.49.222
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5dd3578b;
	Mon, 16 Dec 2024 18:09:34 +0800 (GMT+08:00)
Message-ID: <60c85962-f0fc-41c4-a1ec-30d5ddf3196b@rock-chips.com>
Date: Mon, 16 Dec 2024 18:09:34 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/11] drm/rockchip: analogix_dp: Add support for
 RK3588
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com,
 cristian.ciocaltea@collabora.com, l.stach@pengutronix.de,
 andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com,
 kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20241216031225.3746-1-damon.ding@rock-chips.com>
 <20241216031225.3746-4-damon.ding@rock-chips.com>
 <gwogudb5vae7wu452zwuqmdlyaibenoso4f5pjmu3uttckhy2w@shndol4mz5n4>
 <4395748.ejJDZkT8p0@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <4395748.ejJDZkT8p0@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhkaGVZCHR5PHUhLTR8eQ01WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93cef1d14703a3kunm5dd3578b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OCo6HAw*PDIOHBkXGRkTIhAj
	K0xPFDFVSlVKTEhPSE9ITExNT0hOVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFNT0hONwY+
DKIM-Signature:a=rsa-sha256;
	b=TSWMVG+1KPPhUTsuJupB7ml17VcXCXi6hgYoh5crM4IAcKQeA1/3NZtn/okOlIiwa8QH8/zU9to0GLPNjTyJxTvg8/+aS2Xf8j9tfjBGv6W8vYT+tBkYBStFIEf2XB6/gp136FOmD5fRXrVauPO+sFN2HszZXFtr5IRf4+nX/Jc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=35aPFMhQL5nn16dGdQB1pIXzHWsIDzaPqfniZ4tuIOc=;
	h=date:mime-version:subject:message-id:from;

Hi,

On 2024/12/16 17:11, Heiko Stübner wrote:
> Am Montag, 16. Dezember 2024, 09:57:41 CET schrieb Dmitry Baryshkov:
>> On Mon, Dec 16, 2024 at 11:12:17AM +0800, Damon Ding wrote:
>>> RK3588 integrates the analogix eDP 1.3 TX controller IP and the HDMI/eDP
>>> TX Combo PHY based on a Samsung IP block, and there are also two
>>> independent eDP display interface on RK3588 Soc.
>>>
>>> Add just the basic support for now, i.e. RGB output up to 4K@60Hz, without
>>> the tests of audio, PSR and other eDP 1.3 specific features.
>>>
>>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>>
>>> ---
>>>
>>> Changes in v2:
>>> - Add support for the other eDP output edp1
>>> ---
>>>   .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 82 ++++++++++++++++---
>>>   include/drm/bridge/analogix_dp.h              |  3 +-
>>>   2 files changed, 74 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>>> index 871606a31ef1..4c9a55776ada 100644
>>> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>>> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>>> @@ -51,10 +51,12 @@ struct rockchip_grf_reg_field {
>>>   /**
>>>    * struct rockchip_dp_chip_data - splite the grf setting of kind of chips
>>>    * @lcdc_sel: grf register field of lcdc_sel
>>> + * @edp_mode: grf register field of edp_mode
>>>    * @chip_type: specific chip type
>>>    */
>>>   struct rockchip_dp_chip_data {
>>>   	const struct rockchip_grf_reg_field lcdc_sel;
>>> +	const struct rockchip_grf_reg_field edp_mode;
>>>   	u32	chip_type;
>>>   };
>>>   
>>> @@ -134,12 +136,21 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
>>>   		return ret;
>>>   	}
>>>   
>>> +	ret = rockchip_grf_field_write(dp->grf, &dp->data->edp_mode, 1);
>>> +	if (ret != 0)
>>> +		DRM_DEV_ERROR(dp->dev, "failed to set edp mode %d\n", ret);
>>
>> Is it to be called for non-eDP hosts too? Or for older hosts?
> 
> The implementation of rockchip_grf_field_write (in patch1) seems to
> take care of checking if that field actually exists and doing nothing if
> not.
> 
> I think eDP/DP is more a naming thing, the Analogix controller is called
> an eDP controller in all documentation things.
> 
> Even back on rk3288, the Analogix-DP, still is called an eDP controller in
> documentation, with the only difference being that it does not contain
> another additional "dedicated" DP controller
> 
>>> @@ -396,6 +425,7 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>>>   	const struct rockchip_dp_chip_data *dp_data;
>>>   	struct drm_panel *panel = NULL;
>>>   	struct rockchip_dp_device *dp;
>>> +	int id, i;
>>>   	int ret;
>>>   
>>>   	dp_data = of_device_get_match_data(dev);
>>> @@ -410,9 +440,22 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>>>   	if (!dp)
>>>   		return -ENOMEM;
>>>   
>>> +	id = of_alias_get_id(dev->of_node, "edp");
>>> +	if (id < 0)
>>> +		id = 0;
>>
>> Alias is not documented.
> 
> additionally, aliases should never be used to determine actual device
> functionionality - e.g. the hw-device-number
> 
>> Please check how other platforms handle device -> ID conversion and
>> consider following it (yes, the best option currently known is to
>> hardcode bus addresses into the driver data).
> 
> see for example the dw-dsi + dw-dsi2 for existing implementations.
> 

Indeed, I will fix it in the next version.

> 
> 
>>> +	i = 0;
>>> +	while (is_rockchip(dp_data[i].chip_type))
>>> +		i++;
>>> +
>>> +	if (id >= i) {
>>> +		DRM_DEV_ERROR(dev, "invalid edp id: %d\n", id);
>>> +		return -ENODEV;
>>> +	}
>>
>> Is it applicable to non-eDP case?
> 
> same as above, it's always called eDP in all pieces of documentation,
> (Compliant with DP 1.2 and eDP 1.3)
> 
> Heiko
> 
>>> +
>>>   	dp->dev = dev;
>>>   	dp->adp = ERR_PTR(-ENODEV);
>>> -	dp->data = dp_data;
>>> +	dp->data = &dp_data[id];
>>>   	dp->plat_data.panel = panel;
>>>   	dp->plat_data.dev_type = dp->data->chip_type;
>>>   	dp->plat_data.power_on = rockchip_dp_poweron;
>>> @@ -464,19 +507,38 @@ static int rockchip_dp_resume(struct device *dev)
>>>   static DEFINE_RUNTIME_DEV_PM_OPS(rockchip_dp_pm_ops, rockchip_dp_suspend,
>>>   		rockchip_dp_resume, NULL);
>>>   
>>> -static const struct rockchip_dp_chip_data rk3399_edp = {
>>> -	.lcdc_sel = GRF_REG_FIELD(0x6250, 5, 5),
>>> -	.chip_type = RK3399_EDP,
>>> +static const struct rockchip_dp_chip_data rk3399_edp[] = {
>>> +	{
>>> +		.lcdc_sel = GRF_REG_FIELD(0x6250, 5, 5),
>>> +		.chip_type = RK3399_EDP,
>>> +	},
>>> +	{ /* sentinel */ }
>>> +};
>>> +
>>> +static const struct rockchip_dp_chip_data rk3288_dp[] = {
>>> +	{
>>> +		.lcdc_sel = GRF_REG_FIELD(0x025c, 5, 5),
>>> +		.chip_type = RK3288_DP,
>>> +	},
>>> +	{ /* sentinel */ }
>>>   };
>>>   
>>> -static const struct rockchip_dp_chip_data rk3288_dp = {
>>> -	.lcdc_sel = GRF_REG_FIELD(0x025c, 5, 5),
>>> -	.chip_type = RK3288_DP,
>>> +static const struct rockchip_dp_chip_data rk3588_edp[] = {
>>> +	{
>>> +		.edp_mode = GRF_REG_FIELD(0x0000, 0, 0),
>>> +		.chip_type = RK3588_EDP,
>>> +	},
>>> +	{
>>> +		.edp_mode = GRF_REG_FIELD(0x0004, 0, 0),
>>> +		.chip_type = RK3588_EDP,
>>> +	},
>>> +	{ /* sentinel */ }
>>>   };
>>>   
>>>   static const struct of_device_id rockchip_dp_dt_ids[] = {
>>>   	{.compatible = "rockchip,rk3288-dp", .data = &rk3288_dp },
>>>   	{.compatible = "rockchip,rk3399-edp", .data = &rk3399_edp },
>>> +	{.compatible = "rockchip,rk3588-edp", .data = &rk3588_edp },
>>>   	{}
>>>   };
>>>   MODULE_DEVICE_TABLE(of, rockchip_dp_dt_ids);
>>> diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
>>> index 6002c5666031..54086cb2d97d 100644
>>> --- a/include/drm/bridge/analogix_dp.h
>>> +++ b/include/drm/bridge/analogix_dp.h
>>> @@ -15,11 +15,12 @@ enum analogix_dp_devtype {
>>>   	EXYNOS_DP,
>>>   	RK3288_DP,
>>>   	RK3399_EDP,
>>> +	RK3588_EDP,
>>>   };
>>>   
>>>   static inline bool is_rockchip(enum analogix_dp_devtype type)
>>>   {
>>> -	return type == RK3288_DP || type == RK3399_EDP;
>>> +	return type == RK3288_DP || type == RK3399_EDP || type == RK3588_EDP;
>>>   }
>>>   
>>>   struct analogix_dp_plat_data {
>>
>>
> 
> 
> 
> 
> 
> 

Best regards,
Damon

