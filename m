Return-Path: <devicetree+bounces-19577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B73C7FB5E6
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 10:33:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD8781C20D96
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 09:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F022495E1;
	Tue, 28 Nov 2023 09:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="DcLVgxkd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m17213.xmail.ntesmail.com (mail-m17213.xmail.ntesmail.com [45.195.17.213])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B79C492;
	Tue, 28 Nov 2023 01:33:32 -0800 (PST)
DKIM-Signature: a=rsa-sha256;
	b=DcLVgxkd4hRXhqcF3LFgwFiUkuAPVte4HOriks3qtqli+asr6UfOwv7yHAFzmCNlUz7Bf3c5/Bmhnrj/qEbFnUGyFThMExb+W/upEMTqz1W3kNPPB6p7lrjOUYeOjkn1+C2+dgJdnfIgDi8o8qSP0fKbohNU2w8kwVZMuLUenaQ=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=W++6O1OO0uiQqmpaiWwyK1zsoZBp0YmOXKt4LJxyAwk=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12762.qiye.163.com (Hmail) with ESMTPA id 7DFB25C03E3;
	Tue, 28 Nov 2023 17:32:55 +0800 (CST)
Message-ID: <f179e9ae-b2cd-4f6c-badc-4d76d8a3ba0d@rock-chips.com>
Date: Tue, 28 Nov 2023 17:32:55 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/12] drm/rockchip: vop2: Add support for rk3588
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com, s.hauer@pengutronix.de
References: <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125544.3454918-1-andyshrk@163.com> <4788319.uZKlY2gecq@diego>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <4788319.uZKlY2gecq@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkpDTlZPHk1CQ0MZH0sdHh5VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c15464494b229kuuu7dfb25c03e3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NBA6Qjo4Mzw#Dh45Gi81ERw8
	QjgwFAJVSlVKTEtKSk1IQkxNT0xNVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTUJPSjcG

Hi Heiko:

Thanks for you review.

On 11/27/23 23:29, Heiko Stübner wrote:
> Hi Andy,
>
> Am Mittwoch, 22. November 2023, 13:55:44 CET schrieb Andy Yan:
>> From: Andy Yan <andy.yan@rock-chips.com>
>>
>> VOP2 on rk3588:
>>
>> Four video ports:
>> VP0 Max 4096x2160
>> VP1 Max 4096x2160
>> VP2 Max 4096x2160
>> VP3 Max 2048x1080
>>
>> 4 4K Cluster windows with AFBC/line RGB and AFBC-only YUV support
>> 4 4K Esmart windows with line RGB/YUV support
>>
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>>
>> ---
>>
>> Changes in v2:
>> - add rk3588_ prefix for functions which are rk3588 only
>> - make some calculation as fixed value and keep calculation formula as
>>    comment
>> - check return value for some cru calculation functions.
>> - check return value for syscon_regmap_lookup_by_phandle
>> - add NV20/NV30 for esmart plane
>>
>>   drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 381 ++++++++++++++++++-
>>   drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  66 ++++
>>   drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 221 +++++++++++
>>   3 files changed, 660 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> index 4bcc405bcf11..9eecbe1f71f9 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> @@ -271,9 +282,12 @@ static bool vop2_cluster_window(const struct vop2_win *win)
>>   static void vop2_cfg_done(struct vop2_video_port *vp)
>>   {
>>   	struct vop2 *vop2 = vp->vop2;
>> +	u32 val;
>> +
>> +	val = BIT(vp->id) | (BIT(vp->id) << 16) |
>> +		RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN;
>>   
>> -	regmap_set_bits(vop2->map, RK3568_REG_CFG_DONE,
>> -			BIT(vp->id) | RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN);
>> +	regmap_set_bits(vop2->map, RK3568_REG_CFG_DONE, val);
> I don't fully understand that code:
> (1) the write mask is also present on the rk3568, so should this change
>      be a separate patch with a fixes tag?

The write mask of VP config done on rk356x is missing, that means

you can write the corresponding mask bit, but it has no effect.

I once considered making it a separate patch,  I can split it as a separate patch if

you like.

> (2) RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN does not contain the part for
>      the write-mask
>
> 	#define RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN     BIT(15)
>
>      why is this working then?


Actually this bit has no write-mask bit. 🙂

>
>>   }
>>   
>>   static void vop2_win_disable(struct vop2_win *win)
> [...]
>
>> @@ -1298,7 +1346,11 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
>>   			vop2_win_write(win, VOP2_WIN_AFBC_ENABLE, 1);
>>   		vop2_win_write(win, VOP2_WIN_AFBC_FORMAT, afbc_format);
>>   		vop2_win_write(win, VOP2_WIN_AFBC_UV_SWAP, uv_swap);
>> -		vop2_win_write(win, VOP2_WIN_AFBC_AUTO_GATING_EN, 0);
>> +		if (vop2->data->soc_id == 3566 || vop2->data->soc_id == 3568)
>> +			vop2_win_write(win, VOP2_WIN_AFBC_AUTO_GATING_EN, 0);
>> +		else
>> +			vop2_win_write(win, VOP2_WIN_AFBC_AUTO_GATING_EN, 1);
>> +
> I think this at least warrants a comment, what is happening here. Also,
> can you already see how future vop2-users are behaving - aka are all new
> socs in the "else" part of the conditional, or would a switch-case better
> represent future socs?


On rk356x, this bit is auto gating enable, but this function is not work well so

we need to disable this function.

On rk3588, and the following new soc(rk3528/rk3576), this bit is gating disable,

we should write 1 to disable gating when enable a cluster window.


Maybe i add some comments in next version ?



>
>>   		vop2_win_write(win, VOP2_WIN_AFBC_BLOCK_SPLIT_EN, 0);
>>   		transform_offset = vop2_afbc_transform_offset(pstate, half_block_en);
>>   		vop2_win_write(win, VOP2_WIN_AFBC_HDR_PTR, yrgb_mst);
>
>> @@ -1627,9 +1937,17 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
>>   	drm_for_each_encoder_mask(encoder, crtc->dev, crtc_state->encoder_mask) {
>>   		struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
>>   
>> -		rk3568_set_intf_mux(vp, rkencoder->crtc_endpoint_id, polflags);
>> +		/*
>> +		 * for drive a high resolution(4KP120, 8K), vop on rk3588/rk3576 need
>> +		 * process multi(1/2/4/8) pixels per cycle, so the dclk feed by the
>> +		 * system cru may be the 1/2 or 1/4 of mode->clock.
>> +		 */
>> +		clock = vop2_set_intf_mux(vp, rkencoder->crtc_endpoint_id, polflags);
>>   	}
>>   
>> +	if (!clock)
>> +		return;
>> +
> hmm, shouldn't the check for the validity of a mode happen before
> atomic_enable is run? So this shouldn't error out in the middle of the
> function?
>
>
>>   	if (vcstate->output_mode == ROCKCHIP_OUT_MODE_AAAA &&
>>   	    !(vp_data->feature & VOP_FEATURE_OUTPUT_10BIT))
>>   		out_mode = ROCKCHIP_OUT_MODE_P888;
>
> Thanks
> Heiko
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

