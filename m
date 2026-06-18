Return-Path: <devicetree+bounces-313426-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 85j3LLbaM2oUHQYAu9opvQ
	(envelope-from <devicetree+bounces-313426-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 13:47:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3007869FCF4
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 13:47:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b="fAdfA6s/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313426-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313426-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B6E47303280F
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 11:46:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AD5D3DB960;
	Thu, 18 Jun 2026 11:46:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2E13909BF;
	Thu, 18 Jun 2026 11:46:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781783213; cv=none; b=mk3D9LyjQliPztyEKcjx8kvTq0kuqvjyFJ8RlBC3jiK6SeIyx+RcRvfPrT3fImsHK/GPhw8Kn8MJSu7z3v9To+jOTq9EcyhARPJFdjhjAG/y23o/iDDhT4RaHzgUGzdXYxvAyuQa5gcsqspH+1At3kzABrkHe2rzd56iBZ0GUuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781783213; c=relaxed/simple;
	bh=9yeH/5xhRUOAdE0bJjDccTvLL5+CdjMFstSXsgg0CEQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ismzrvc9YCSa2pdiWBxvlfn8a0N4w54OzaqWAiKp5EbkXgCesQjFnQs8eLU0M4C6r+UXeE9YRAqBb+7Gg5eTOHLzib5xeDxY7h5koib9VgKtR9musAjaMjFmdpzMM7QKL5GNCxBm4AUCKPNOxpr/EEAJ1M0DSvtGrhcD023NIJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=fAdfA6s/; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781783203;
	bh=9yeH/5xhRUOAdE0bJjDccTvLL5+CdjMFstSXsgg0CEQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fAdfA6s/ZcUtfI0N7T8BtYWrLx/JOtP3a33kFxOh5bjoWupssUOOgxtoUr3j2dE8z
	 0twbUF21YFAMQhuf2x99LsrQxObeD3eFSmL0IGZwSwp4gVL9U/iqtTo3dc66btDw38
	 kLuxFQoIhNHI/uK/e+brFxjffnZdSGyMgr7pM8WAPKqHnljq3IQcBtqCwIxm/7QY6F
	 ZXgHPYm5eN5Nl4zBi9A2OLY3EGRmtsE5gCdITVDNPPb+D60MBHFW2XhnALWNACs5jC
	 2OWN/pIzRgX7sHNSUJr1sQEPbd38XLxyMI4qNnYPeGoFEcy9ggydxrHuGh6gotZTLn
	 RG8fn+TYDJQpA==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D5D7817E0151;
	Thu, 18 Jun 2026 13:46:42 +0200 (CEST)
Message-ID: <302d42b0-108e-4936-bc34-49b9194985f1@collabora.com>
Date: Thu, 18 Jun 2026 14:46:42 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] drm/rockchip: vop2: Reset AXI and DCLK to improve
 robustness
To: Philipp Zabel <p.zabel@pengutronix.de>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: kernel@collabora.com, Andy Yan <andyshrk@163.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260617-dw-hdmi-qp-yuv-v1-0-a665cfd06d7d@collabora.com>
 <20260617-dw-hdmi-qp-yuv-v1-2-a665cfd06d7d@collabora.com>
 <7c79f233c863654b0266de4b5ec5a8c72bb17715.camel@pengutronix.de>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <7c79f233c863654b0266de4b5ec5a8c72bb17715.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313426-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[pengutronix.de,rock-chips.com,sntech.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com];
	FORGED_SENDER(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORGED_RECIPIENTS(0.00)[m:p.zabel@pengutronix.de,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:kernel@collabora.com,m:andyshrk@163.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[collabora.com,163.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp,rock-chips.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3007869FCF4

On 6/18/26 12:39 PM, Philipp Zabel wrote:
> On Mi, 2026-06-17 at 21:51 +0300, Cristian Ciocaltea wrote:
>> Assert the AXI reset in the CRTC disable path, and the VP DCLK reset in
>> the enable path.
>>
>> These resets are intended to leave the hardware in a clean state for the
>> next use, helping recover from exceptions such as IOMMU page faults, as
>> well as to prevent random display output glitches, such as a blank
>> image, observed when switching modes that also change the color format,
>> e.g. from RGB to YUV420 and vice versa.
>>
>> For now this seems to affect only the RK3588, hence the resets are
>> optional and will be provided in the device tree for this SoC only.
>>
>> Co-developed-by: Andy Yan <andy.yan@rock-chips.com>
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 35 ++++++++++++++++++++++++++++
>>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  4 ++++
>>  2 files changed, 39 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> index 4cce3e336f5b..2833fb49ad81 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> @@ -17,6 +17,7 @@
>>  #include <linux/platform_device.h>
>>  #include <linux/pm_runtime.h>
>>  #include <linux/regmap.h>
>> +#include <linux/reset.h>
>>  #include <linux/swab.h>
>>  
>>  #include <drm/drm.h>
>> @@ -860,6 +861,26 @@ static int vop2_core_clks_prepare_enable(struct vop2 *vop2)
>>  	return ret;
>>  }
>>  
>> +static void vop2_clk_reset(struct vop2 *vop2, struct reset_control *rstc)
> 
> The _clk part of the function name is misleading ...

Ack.  

We need to make this clearly distinct from another similarly named function,
vop2_crtc_reset(), hence I'd propose:

- vop2_reset_assert_deassert()
- vop2_reset_cycle()
- vop2_do_reset()

Any preference / alternative suggestions?

> 
> [...]
>> @@ -938,6 +959,8 @@ static void vop2_disable(struct vop2 *vop2)
>>  {
>>  	rockchip_drm_dma_detach_device(vop2->drm, vop2->dev);
>>  
>> +	vop2_clk_reset(vop2, vop2->axi_rst);
> 
> ... because this function is also called with the AXI reset control.
> 
>> +
>>  	pm_runtime_put_sync(vop2->dev);
>>  
>>  	regcache_drop_region(vop2->map, 0, vop2_regmap_config.max_register);
>> @@ -1948,6 +1971,8 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
>>  
>>  	vop2_crtc_atomic_try_set_gamma(vop2, vp, crtc, crtc_state);
>>  
>> +	vop2_clk_reset(vop2, vp->dclk_rst);
>> +
>>  	drm_crtc_vblank_on(crtc);
>>  
>>  	vop2_unlock(vop2);
>> @@ -2531,6 +2556,11 @@ static int vop2_create_crtcs(struct vop2 *vop2)
>>  			return dev_err_probe(drm->dev, PTR_ERR(vp->dclk),
>>  					     "failed to get %s\n", dclk_name);
>>  
>> +		vp->dclk_rst = devm_reset_control_get_optional(vop2->dev, dclk_name);
> 
> Please use devm_reset_control_get_optional_exclusive() directly.

Thanks for pointing this out, I missed the comment mentioning the explicit API
transition.

>> +		if (IS_ERR(vp->dclk_rst))
>> +			return dev_err_probe(drm->dev, PTR_ERR(vp->dclk_rst),
>> +					     "failed to get %s reset\n", dclk_name);
>> +
>>  		np = of_graph_get_remote_node(dev->of_node, i, -1);
>>  		if (!np) {
>>  			drm_dbg(vop2->drm, "%s: No remote for vp%d\n", __func__, i);
>> @@ -2890,6 +2920,11 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
>>  		return dev_err_probe(drm->dev, PTR_ERR(vop2->pll_hdmiphy1),
>>  				     "failed to get pll_hdmiphy1\n");
>>  
>> +	vop2->axi_rst = devm_reset_control_get_optional(vop2->dev, "axi");
> 
> Same as above, devm_reset_control_get_optional_exclusive().

Ack.

Thanks for reviewing,
Cristian

