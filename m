Return-Path: <devicetree+bounces-19587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1637FB62B
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 10:45:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26ABF28272D
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 09:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5892B4A993;
	Tue, 28 Nov 2023 09:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="GHnwIiTv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m17216.xmail.ntesmail.com (mail-m17216.xmail.ntesmail.com [45.195.17.216])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FBDE109;
	Tue, 28 Nov 2023 01:44:51 -0800 (PST)
DKIM-Signature: a=rsa-sha256;
	b=GHnwIiTvHd8Z9J4E/ZBCqGbm0sE+Myj68broo3EMS76znDianpdQCLjgyjL7sx/et1OENuqhQBhFc29jtM4xoNSLKmKpyj78DpUArInIW5HPPg2OrUQl+1YJrKo9AGMPQKBILJWfCRpdN0b9PxYp5qBVyymvHXMWRqie5XxU1Ts=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=GqNr712t8gfptmgAaOy9rxShrLDz8k6UGxNqr2/clXs=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12762.qiye.163.com (Hmail) with ESMTPA id 8D62B5C03A2;
	Tue, 28 Nov 2023 17:44:19 +0800 (CST)
Message-ID: <4e356146-979f-4c30-a230-a0c95c518738@rock-chips.com>
Date: Tue, 28 Nov 2023 17:44:19 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/12] drm/rockchip: vop2: clear afbc en and transform
 bit for cluster window at linear mode
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com, s.hauer@pengutronix.de
References: <20231122125316.3454268-1-andyshrk@163.com>
 <3927498.QCnGb9OGeP@diego>
 <ebe46d19-954d-4dbb-82ba-a443058e9f4e@rock-chips.com>
 <15178289.EVyyLHbfrO@diego>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <15178289.EVyyLHbfrO@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0NKSVZOTR9NSENOGUtIHxpVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c1550b4b4b229kuuu8d62b5c03a2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Py46Pzo4Lzw4Sx4KCTwNOjwU
	KgJPCUJVSlVKTEtKSk1PTU1LT0JMVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSE1OQjcG

Hi Heiko:

On 11/28/23 16:30, Heiko Stübner wrote:
> Am Dienstag, 28. November 2023, 09:03:46 CET schrieb Andy Yan:
>> Hi Heiko:
>>
>> On 11/27/23 23:02, Heiko Stübner wrote:
>>> Am Mittwoch, 22. November 2023, 13:54:25 CET schrieb Andy Yan:
>>>> From: Andy Yan <andy.yan@rock-chips.com>
>>>>
>>>> The enable bit and transform offset of cluster windows should be
>>>> cleared when it work at linear mode, or we may have a iommu fault
>>>> issue.
>>>>
>>>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>>> I guess same here?
>>>
>>> Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
>>
>> I'm not sure if we need a Fixes tag here,  in fact this issue never happens on
>>
>> rk3566/8 , because the cluster windows of rk356x only support afbc format,
>>
>> they don't have a chance to switch between afbc and linear mode.
>>
>> Of course, the lack support of linear mode of rk356x cluster windows is a thoughtless
>>
>> of IC design, if it really support both afbc and linear format, we indeed need this fix.
>>
>> The situation is the same as patch 03/12.
>>
>> So I hope follow your advice, if it need a Fixes tag here.
> ah ok, thanks for the explanation. Then I guess we don't need a fixes tag
> when the rk3568 is not affected by this.
>
> Same for the other patch. If you're re-sending you could add this information
> to the commit message though. (existing support for rk3568 only supports
> afbc cluster windows and is therefore not affected)


Ok, will done.

>
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

