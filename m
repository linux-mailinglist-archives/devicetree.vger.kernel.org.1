Return-Path: <devicetree+bounces-16803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1628B7EFC92
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 01:32:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46D3D1C20986
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 00:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5761663F;
	Sat, 18 Nov 2023 00:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="IRHlWxk+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m17224.xmail.ntesmail.com (mail-m17224.xmail.ntesmail.com [45.195.17.224])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E672AD7E;
	Fri, 17 Nov 2023 16:32:40 -0800 (PST)
DKIM-Signature: a=rsa-sha256;
	b=IRHlWxk+YneotbWXXipjwIhyejvLSujGGzUjmaoSQDOlf8sxOUu7/H/unSobR+t0UoPdIhsE4NOqh9cXW/u3o2gYb+AiPFjoHhNtBRmQjrLGvCXaw+2eyO0+wTUhOln1Ussjm0scwf9wV7tVMBSnNbpL8pYsHlhTJ81HS2VSaXw=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=2FUg8H3N8HYkU7jgnGugtAhzTBDLaBY11h61I6hIUnQ=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 2A2BC780751;
	Sat, 18 Nov 2023 08:31:56 +0800 (CST)
Message-ID: <3cfcb1a3-bd47-49c4-9f3a-f34d8381ce51@rock-chips.com>
Date: Sat, 18 Nov 2023 08:31:55 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
Content-Language: en-US
To: Jonas Karlman <jonas@kwiboo.se>, Andy Yan <andyshrk@163.com>,
 heiko@sntech.de
Cc: devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 chris.obbard@collabora.com, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 sebastian.reichel@collabora.com
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112855.1771372-1-andyshrk@163.com>
 <37348be2-c7c4-4eb6-8dd0-e6b18923a88e@kwiboo.se>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <37348be2-c7c4-4eb6-8dd0-e6b18923a88e@kwiboo.se>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxgaHlZISEJMSkoZQxlOGktVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8bdfd7625bb24fkuuu2a2bc780751
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kww6KSo4EDw8Dj8NThkRTEs*
	Fz4KChBVSlVKTEtLSU1MTkpMS0JCVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0NKSzcG

Hi Jonas:

On 11/18/23 07:46, Jonas Karlman wrote:
> On 2023-11-14 12:28, Andy Yan wrote:
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
>> ---
>>
>>   drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 324 ++++++++++++++++++-
>>   drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  57 ++++
>>   drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 215 ++++++++++++
>>   include/dt-bindings/soc/rockchip,vop2.h      |   4 +
>>   4 files changed, 593 insertions(+), 7 deletions(-)
>>
> [...]
>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
>> index 22288ad7f326..4745a9260cf8 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
>> @@ -34,6 +34,28 @@ static const uint32_t formats_cluster[] = {
>>   	DRM_FORMAT_Y210, /* yuv422_10bit non-Linear mode only */
>>   };
>>   
>> +static const uint32_t formats_esmart[] = {
>> +	DRM_FORMAT_XRGB8888,
>> +	DRM_FORMAT_ARGB8888,
>> +	DRM_FORMAT_XBGR8888,
>> +	DRM_FORMAT_ABGR8888,
>> +	DRM_FORMAT_RGB888,
>> +	DRM_FORMAT_BGR888,
>> +	DRM_FORMAT_RGB565,
>> +	DRM_FORMAT_BGR565,
>> +	DRM_FORMAT_NV12, /* yuv420_8bit linear mode, 2 plane */
>> +	DRM_FORMAT_NV21, /* yvu420_8bit linear mode, 2 plane */
>> +	DRM_FORMAT_NV16, /* yuv422_8bit linear mode, 2 plane */
>> +	DRM_FORMAT_NV61, /* yvu422_8bit linear mode, 2 plane */
>> +	DRM_FORMAT_NV24, /* yuv444_8bit linear mode, 2 plane */
>> +	DRM_FORMAT_NV42, /* yvu444_8bit linear mode, 2 plane */
>> +	DRM_FORMAT_NV15, /* yuv420_10bit linear mode, 2 plane, no padding */
> NV20 and NV30 drm format have now been merged into mainline linux,
> please add these missing formats. The patch below adds support for them
> to rk356x part of vop2 driver.


Thanks for your reminder and your efforts to make these formats land

mainline. I will add it in the next version.

>
> drm/rockchip: vop2: Add NV20 and NV30 support
> https://lore.kernel.org/linux-rockchip/20231025213248.2641962-1-jonas@kwiboo.se/
>
> NV15/NV20/NV30 formats can be tested using modetest from latest main
> of libdrm.
>
> modetest: add support for DRM_FORMAT_NV{15,20,30}
> https://gitlab.freedesktop.org/mesa/drm/-/merge_requests/329
>
> Regards,
> Jonas
>
>> +	DRM_FORMAT_YVYU, /* yuv422_8bit[YVYU] linear mode */
>> +	DRM_FORMAT_VYUY, /* yuv422_8bit[VYUY] linear mode */
>> +	DRM_FORMAT_YUYV, /* yuv422_8bit[YUYV] linear mode */
>> +	DRM_FORMAT_UYVY, /* yuv422_8bit[UYVY] linear mode */
>> +};
>> +
>>   static const uint32_t formats_rk356x_esmart[] = {
>>   	DRM_FORMAT_XRGB8888,
>>   	DRM_FORMAT_ARGB8888,
> [...]

