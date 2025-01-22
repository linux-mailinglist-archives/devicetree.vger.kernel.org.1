Return-Path: <devicetree+bounces-140205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A39F8A18E01
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:01:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4EA587A2CD2
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 09:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 969AE1A76D0;
	Wed, 22 Jan 2025 09:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="CdOlo6lm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15595.qiye.163.com (mail-m15595.qiye.163.com [101.71.155.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C234C1FAA;
	Wed, 22 Jan 2025 09:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737536505; cv=none; b=T5SfnIMXgLcFphcJOFmTbXowi6O46TT9n96scFWS9cwyAMDr1w1MUAcZpRbUC0Gr84NR/KFi6yCIj8ORYvux6OBvo/+T2/CmcCXCZlz28agt0gTMNCTXqrJy1jsUBDKrbQks6AGzGuaDDLtYLpLC3Oba6pCepuKN2k8SvLoM3pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737536505; c=relaxed/simple;
	bh=KKA9W+wl9Jjpf4jnQWr7vbL5t54b5rQGsBkCq+0B6rs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MYjRLEUGTMfeBORMiTnTYnZ2IR3+0y6EpAVT19NDBHynwAI/st2gcyEDHFnShHqgq/Klm7DwCdLXv9PyRO2EFsxd5KLZk8zubOdJ9fidpU7X+NS+f0ONSoHJLQ3zTqQoSYMtZjQaVpnSCpDhIJjQaSDCdI41Gi8jisTLsxM/ty4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=CdOlo6lm; arc=none smtp.client-ip=101.71.155.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 965a3ba9;
	Wed, 22 Jan 2025 16:46:13 +0800 (GMT+08:00)
Message-ID: <a8bee693-cbde-469d-abcf-363311cfd904@rock-chips.com>
Date: Wed, 22 Jan 2025 16:46:12 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/20] drm/rockchip: analogix_dp: Replace DRM_...()
 functions with drm_...() or dev_...()
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, dmitry.baryshkov@linaro.org,
 andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com,
 kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-6-damon.ding@rock-chips.com>
 <40b09942.533e.19449c023a1.Coremail.andyshrk@163.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <40b09942.533e.19449c023a1.Coremail.andyshrk@163.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxlKTFYfSElJQh9CTU4eQ01WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a948d30cfa903a3kunm965a3ba9
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6K006Lhw6SjIVEi8SKE4XShUf
	HEMaFBJVSlVKTEhMTkhOTkxOTEhIVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFOQkpPNwY+
DKIM-Signature:a=rsa-sha256;
	b=CdOlo6lmDRB4B2FOT82IxbLbIyXMAxBKKopGXCJ2EzehgX1Cl05tmxy0Ma0cDy0A9sn1y4xgW1WMUgIw1T8zrJovXdz668XXGBCK9+ee9XMAsGo5n2i2fN+zmnJs4sLvXMi528J8v5akDjJ8Ho8EjAVfK7sqEdneI6gW6SYe7/Q=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=SGeWmn+7dN7qVlWb70UZTMoFGv6yi5gXMUKkERJ9lEc=;
	h=date:mime-version:subject:message-id:from;

Hi Andy,

On 2025/1/9 14:28, Andy Yan wrote:
> 
> Hi Damon,
> 
> At 2025-01-09 11:27:10, "Damon Ding" <damon.ding@rock-chips.com> wrote:
>> According to the comments in include/drm/drm_print.h, the DRM_...()
>> functions are deprecated in favor of drm_...() or dev_...() functions.
>>
>> Use drm_err()/drm_dbg_core()/drm_dbg_kms() instead of
>> DRM_DEV_ERROR()/DRM_ERROR()/DRM_DEV_DEBUG()/DRM_DEBUG_KMS() after
>> rockchip_dp_bind() is called, and replace DRM_DEV_ERROR() with dev_err()
>> before calling it.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>> .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 29 ++++++++++---------
>> 1 file changed, 15 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> index 546d13f19f9b..8114c3238609 100644
>> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> @@ -100,13 +100,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
>>
>> 	ret = clk_prepare_enable(dp->pclk);
>> 	if (ret < 0) {
>> -		DRM_DEV_ERROR(dp->dev, "failed to enable pclk %d\n", ret);
>> +		drm_err(dp->drm_dev, "failed to enable pclk %d\n", ret);
> 
>                 You just need to pass dp here:
>                  drm_err(dp, "failed to enable pclk %d\n", ret);
> 

I see. It is really better to pass dp instead of dp->drm_dev. I will 
update all relevant logs in the next version.

>> 		return ret;
>> 	}
>>
>> 	ret = rockchip_dp_pre_init(dp);
>> 	if (ret < 0) {
>> -		DRM_DEV_ERROR(dp->dev, "failed to dp pre init %d\n", ret);
>> +		drm_err(dp->drm_dev, "failed to dp pre init %d\n", ret);
>> 		clk_disable_unprepare(dp->pclk);
>> 		return ret;
>> 	}
>> @@ -126,12 +126,13 @@ static int rockchip_dp_powerdown(struct analogix_dp_plat_data *plat_data)
>> static int rockchip_dp_get_modes(struct analogix_dp_plat_data *plat_data,
>> 				 struct drm_connector *connector)
>> {
>> +	struct rockchip_dp_device *dp = pdata_encoder_to_dp(plat_data);
>> 	struct drm_display_info *di = &connector->display_info;
>> 	/* VOP couldn't output YUV video format for eDP rightly */
>> 	u32 mask = DRM_COLOR_FORMAT_YCBCR444 | DRM_COLOR_FORMAT_YCBCR422;
>>
>> 	if ((di->color_formats & mask)) {
>> -		DRM_DEBUG_KMS("Swapping display color format from YUV to RGB\n");
>> +		drm_dbg_kms(dp->drm_dev, "Swapping display color format from YUV to RGB\n");
>> 		di->color_formats &= ~mask;
>> 		di->color_formats |= DRM_COLOR_FORMAT_RGB444;
>> 		di->bpc = 8;
>> @@ -201,17 +202,17 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
>> 	else
>> 		val = dp->data->lcdsel_big;
>>
>> -	DRM_DEV_DEBUG(dp->dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
>> +	drm_dbg_core(dp->drm_dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
>>
>> 	ret = clk_prepare_enable(dp->grfclk);
>> 	if (ret < 0) {
>> -		DRM_DEV_ERROR(dp->dev, "failed to enable grfclk %d\n", ret);
>> +		drm_err(dp->drm_dev, "failed to enable grfclk %d\n", ret);
>> 		return;
>> 	}
>>
>> 	ret = regmap_write(dp->grf, dp->data->lcdsel_grf_reg, val);
>> 	if (ret != 0)
>> -		DRM_DEV_ERROR(dp->dev, "Could not write to GRF: %d\n", ret);
>> +		drm_err(dp->drm_dev, "Could not write to GRF: %d\n", ret);
>>
>> 	clk_disable_unprepare(dp->grfclk);
>> }
>> @@ -236,7 +237,7 @@ static void rockchip_dp_drm_encoder_disable(struct drm_encoder *encoder,
>>
>> 	ret = rockchip_drm_wait_vact_end(crtc, PSR_WAIT_LINE_FLAG_TIMEOUT_MS);
>> 	if (ret)
>> -		DRM_DEV_ERROR(dp->dev, "line flag irq timed out\n");
>> +		drm_err(dp->drm_dev, "line flag irq timed out\n");
>> }
>>
>> static int
>> @@ -277,7 +278,7 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
>>
>> 	dp->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
>> 	if (IS_ERR(dp->grf)) {
>> -		DRM_DEV_ERROR(dev, "failed to get rockchip,grf property\n");
>> +		dev_err(dev, "failed to get rockchip,grf property\n");
>> 		return PTR_ERR(dp->grf);
>> 	}
>>
>> @@ -287,19 +288,19 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
>> 	} else if (PTR_ERR(dp->grfclk) == -EPROBE_DEFER) {
>> 		return -EPROBE_DEFER;
>> 	} else if (IS_ERR(dp->grfclk)) {
>> -		DRM_DEV_ERROR(dev, "failed to get grf clock\n");
>> +		dev_err(dev, "failed to get grf clock\n");
>> 		return PTR_ERR(dp->grfclk);
>> 	}
>>
>> 	dp->pclk = devm_clk_get(dev, "pclk");
>> 	if (IS_ERR(dp->pclk)) {
>> -		DRM_DEV_ERROR(dev, "failed to get pclk property\n");
>> +		dev_err(dev, "failed to get pclk property\n");
>> 		return PTR_ERR(dp->pclk);
>> 	}
>>
>> 	dp->rst = devm_reset_control_get(dev, "dp");
>> 	if (IS_ERR(dp->rst)) {
>> -		DRM_DEV_ERROR(dev, "failed to get dp reset control\n");
>> +		dev_err(dev, "failed to get dp reset control\n");
>> 		return PTR_ERR(dp->rst);
>> 	}
>>
>> @@ -315,12 +316,12 @@ static int rockchip_dp_drm_create_encoder(struct rockchip_dp_device *dp)
>>
>> 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,
>> 							     dev->of_node);
>> -	DRM_DEBUG_KMS("possible_crtcs = 0x%x\n", encoder->possible_crtcs);
>> +	drm_dbg_kms(drm_dev, "possible_crtcs = 0x%x\n", encoder->possible_crtcs);
>>
>> 	ret = drm_simple_encoder_init(drm_dev, encoder,
>> 				      DRM_MODE_ENCODER_TMDS);
>> 	if (ret) {
>> -		DRM_ERROR("failed to initialize encoder with drm\n");
>> +		drm_err(drm_dev, "failed to initialize encoder with drm\n");
>> 		return ret;
>> 	}
>>
>> @@ -340,7 +341,7 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
>>
>> 	ret = rockchip_dp_drm_create_encoder(dp);
>> 	if (ret) {
>> -		DRM_ERROR("failed to create drm encoder\n");
>> +		drm_err(drm_dev, "failed to create drm encoder\n");
>> 		return ret;
>> 	}
>>
>> -- 
>> 2.34.1
>>

Best regards,
Damon

