Return-Path: <devicetree+bounces-19858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 086837FD0B9
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 09:29:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A59F1C2092D
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 08:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AF1311CB2;
	Wed, 29 Nov 2023 08:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Qq6K9775"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m17207.xmail.ntesmail.com (mail-m17207.xmail.ntesmail.com [45.195.17.207])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0105919B0;
	Wed, 29 Nov 2023 00:28:53 -0800 (PST)
DKIM-Signature: a=rsa-sha256;
	b=Qq6K9775/nBsiVQJ4BXZyTcD+50uTadoc3TZZYEurfENxFZWeUb6lsMbFlNQp19V2GWZYA4CR7hxCQq3OvlIcAU0vPsd4ja89GOqSDcbXGJKP4X37H5560HXSOmA0wNL7k8Zx7j62d7Jjn8f/YsuEsW8GUfnrtAFFvW5iYDHnQY=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=aGpoJTy0YujP1OdkZ9q++euEDnLzMZVFRb/6ZJxkj40=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 934D97801C2;
	Wed, 29 Nov 2023 16:28:19 +0800 (CST)
Message-ID: <40b9e4cf-620c-4c7c-8e70-8959dec755c8@rock-chips.com>
Date: Wed, 29 Nov 2023 16:28:19 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/12] drm/rockchip: vop2: Add support for rk3588
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com
References: <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125544.3454918-1-andyshrk@163.com>
 <20231127111937.GW3359458@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20231127111937.GW3359458@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0waS1YYHRhOSR1IQkxLH0xVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5MSUpJVUpLS1VKQl
	kG
X-HM-Tid: 0a8c1a317c5cb24fkuuu934d97801c2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mxg6SAw5Pzw#LBNRVhRPUTEw
	Sz4wCyxVSlVKTEtKSU9NTktLTktDVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0lNSjcG

Hi Sascha,

On 11/27/23 19:19, Sascha Hauer wrote:
> Hi Andy,
>
> Looks good overall, two small things inside.
>
> On Wed, Nov 22, 2023 at 08:55:44PM +0800, Andy Yan wrote:
>>   
>> +#define vop2_output_if_is_hdmi(x)	(x == ROCKCHIP_VOP2_EP_HDMI0 || x == ROCKCHIP_VOP2_EP_HDMI1)
>> +#define vop2_output_if_is_dp(x)		(x == ROCKCHIP_VOP2_EP_DP0 || x == ROCKCHIP_VOP2_EP_DP1)
>> +#define vop2_output_if_is_edp(x)	(x == ROCKCHIP_VOP2_EP_EDP0 || x == ROCKCHIP_VOP2_EP_EDP1)
>> +#define vop2_output_if_is_mipi(x)	(x == ROCKCHIP_VOP2_EP_MIPI0 || x == ROCKCHIP_VOP2_EP_MIPI1)
>> +#define vop2_output_if_is_lvds(x)	(x == ROCKCHIP_VOP2_EP_LVDS0 || x == ROCKCHIP_VOP2_EP_LVDS1)
>> +#define vop2_output_if_is_dpi(x)	(x == ROCKCHIP_VOP2_EP_RGB0)
> Not that it matters in practice here, but you should add braces around
> the x argument in the macros usage, i.e. ((x) == ROCKCHIP_VOP2_EP_RGB0)
Okay , will do.
>> +static unsigned long rk3588_set_intf_mux(struct vop2_video_port *vp, int id, u32 polflags)
>> +{
>> +	struct vop2 *vop2 = vp->vop2;
>> +	int dclk_core_div, dclk_out_div, if_pixclk_div, if_dclk_div;
>> +	unsigned long clock;
>> +	u32 die, dip, div, vp_clk_div, val;
>> +
>> +	clock = rk3588_calc_cru_cfg(vp, id, &dclk_core_div, &dclk_out_div,
>> +				    &if_pixclk_div, &if_dclk_div);
>> +	if (!clock)
>> +		return 0;
>> +
>> +	vp_clk_div = FIELD_PREP(RK3588_VP_CLK_CTRL__DCLK_CORE_DIV, dclk_core_div);
>> +	vp_clk_div |= FIELD_PREP(RK3588_VP_CLK_CTRL__DCLK_OUT_DIV, dclk_out_div);
>> +
>> +	die = vop2_readl(vop2, RK3568_DSP_IF_EN);
>> +	dip = vop2_readl(vop2, RK3568_DSP_IF_POL);
>> +	div = vop2_readl(vop2, RK3568_DSP_IF_CTRL);
>> +
>> +	switch (id) {
>> +	case ROCKCHIP_VOP2_EP_HDMI0:
>> +		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV, if_dclk_div);
> you should clear the bits of a mask before setting them again. The same
> goes for several other bits modified in this switch/case.


Thanks for catching this, will fixed in next version.

>
>> +		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV, if_pixclk_div);
>> +		die &= ~RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX;
>> +		die |= RK3588_SYS_DSP_INFACE_EN_HDMI0 |
>> +			    FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX, vp->id);
>> +		val = rk3588_get_hdmi_pol(polflags);
>> +		regmap_write(vop2->vop_grf, RK3588_GRF_VOP_CON2, HIWORD_UPDATE(1, 1, 1));
>> +		regmap_write(vop2->vo1_grf, RK3588_GRF_VO1_CON0, HIWORD_UPDATE(val, 6, 5));
>> +		break;
> Sascha
>

