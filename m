Return-Path: <devicetree+bounces-19844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FFB7FCFAA
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 08:03:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6B351F20F8E
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 07:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72B66F9E4;
	Wed, 29 Nov 2023 07:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="BGYVZATQ"
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 561 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 28 Nov 2023 23:03:17 PST
Received: from mail-m12793.qiye.163.com (mail-m12793.qiye.163.com [115.236.127.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06713DC;
	Tue, 28 Nov 2023 23:03:16 -0800 (PST)
DKIM-Signature: a=rsa-sha256;
	b=BGYVZATQB6lTahhv420xh9G/Uxq5CQrrNTWhRt7vbpKAoczsUpZwYQ2N3vDEJfKqV+pdvlC4UKyIcyrtTnmPT+It97feALmocPJgXkwViY181JJaSyFTMPC0hsdWUkvPucVkNtKCK5HnVeGe2DiByNVJDQ7dl3NAXjCfcOBeYdM=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Kp7KhheW6iIZn3I5ex3GwoD360GOF4bAbDlX84aX464=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 0F87B780201;
	Wed, 29 Nov 2023 14:52:56 +0800 (CST)
Message-ID: <9cdedbb6-67c0-4c43-9f82-629504aae933@rock-chips.com>
Date: Wed, 29 Nov 2023 14:52:55 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/12] drm/rockchip: vop2: Set YUV/RGB overlay mode
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com
References: <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125438.3454608-1-andyshrk@163.com>
 <20231127141632.GF977968@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20231127141632.GF977968@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRkYQlZLHU5KTENDTR8ZShhVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c19da26c7b24fkuuu0f87b780201
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ME06PDo4CDwxSxw8HRcKODoL
	HQgaCjxVSlVKTEtKSU9LTExNQkJOVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTUpOQzcG

Hi Sasha:

On 11/27/23 22:16, Sascha Hauer wrote:
> On Wed, Nov 22, 2023 at 08:54:38PM +0800, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>>
>> Set overlay mode register according to the
>> output mode is yuv or rgb.
>>
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>> ---
>>
>> (no changes since v1)
>>
>>   drivers/gpu/drm/rockchip/rockchip_drm_drv.h  |  1 +
>>   drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 19 ++++++++++++++++---
>>   2 files changed, 17 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
>> index 3d8ab2defa1b..7a58c5c9d4ec 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
>> @@ -51,6 +51,7 @@ struct rockchip_crtc_state {
>>   	u32 bus_format;
>>   	u32 bus_flags;
>>   	int color_space;
>> +	bool yuv_overlay;
> This struct already contains a bool type variable. Please add this one
> next to it to keep the struct size smaller.


Okay, will do.

>
>>   };
>>   #define to_rockchip_crtc_state(s) \
>>   		container_of(s, struct rockchip_crtc_state, base)
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> index a019cc9bbd54..b32a291c5caa 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> @@ -1612,6 +1612,8 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
>>   
>>   	vop2->enable_count++;
>>   
>> +	vcstate->yuv_overlay = is_yuv_output(vcstate->bus_format);
>> +
>>   	vop2_crtc_enable_irq(vp, VP_INT_POST_BUF_EMPTY);
>>   
>>   	polflags = 0;
>> @@ -1639,7 +1641,7 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
>>   	if (vop2_output_uv_swap(vcstate->bus_format, vcstate->output_mode))
>>   		dsp_ctrl |= RK3568_VP_DSP_CTRL__DSP_RB_SWAP;
>>   
>> -	if (is_yuv_output(vcstate->bus_format))
>> +	if (vcstate->yuv_overlay)
>>   		dsp_ctrl |= RK3568_VP_DSP_CTRL__POST_DSP_OUT_R2Y;
>>   
>>   	vop2_dither_setup(crtc, &dsp_ctrl);
>> @@ -1948,10 +1950,12 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
>>   	u16 hdisplay;
>>   	u32 bg_dly;
>>   	u32 pre_scan_dly;
>> +	u32 ovl_ctrl;
>>   	int i;
>>   	struct vop2_video_port *vp0 = &vop2->vps[0];
>>   	struct vop2_video_port *vp1 = &vop2->vps[1];
>>   	struct vop2_video_port *vp2 = &vop2->vps[2];
>> +	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(vp->crtc.state);
>>   
>>   	adjusted_mode = &vp->crtc.state->adjusted_mode;
>>   	hsync_len = adjusted_mode->crtc_hsync_end - adjusted_mode->crtc_hsync_start;
>> @@ -1964,7 +1968,14 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
>>   	pre_scan_dly = ((bg_dly + (hdisplay >> 1) - 1) << 16) | hsync_len;
>>   	vop2_vp_write(vp, RK3568_VP_PRE_SCAN_HTIMING, pre_scan_dly);
>>   
>> -	vop2_writel(vop2, RK3568_OVL_CTRL, 0);
>> +	ovl_ctrl = vop2_readl(vop2, RK3568_OVL_CTRL);
>> +	if (vcstate->yuv_overlay)
>> +		ovl_ctrl |= BIT(vp->id);
>> +	else
>> +		ovl_ctrl &= ~BIT(vp->id);
> Some
>
> #define RK3568_OVL_CTRL__YUV_MODE(vp)	BIT(vp)
>
> Would be nice.


Okay, will do.

>> +
>> +	vop2_writel(vop2, RK3568_OVL_CTRL, ovl_ctrl);
> Is it necessary to write this register twice?

I don't think so. Just follow the original code write it here.

Anyway, I will just write once in next version.


And would you please check my response about debugfs patch[0] when it is convenient for you?

I want to know what you think, and prepare the next version.


[0]https://patchwork.kernel.org/project/dri-devel/patch/20231122125601.3455031-1-andyshrk@163.com/

>
>> +
>>   	port_sel = vop2_readl(vop2, RK3568_OVL_PORT_SEL);
>>   	port_sel &= RK3568_OVL_PORT_SEL__SEL_PORT;
>>   
>> @@ -2036,9 +2047,11 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
>>   		layer_sel |= RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs, 5);
>>   	}
>>   
>> +	ovl_ctrl |= RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD;
>> +
>>   	vop2_writel(vop2, RK3568_OVL_LAYER_SEL, layer_sel);
>>   	vop2_writel(vop2, RK3568_OVL_PORT_SEL, port_sel);
>> -	vop2_writel(vop2, RK3568_OVL_CTRL, RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD);
>> +	vop2_writel(vop2, RK3568_OVL_CTRL, ovl_ctrl);
> Sascha
>

