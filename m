Return-Path: <devicetree+bounces-15775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C618D7EBB28
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 03:18:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EADC281369
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 02:18:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80244642;
	Wed, 15 Nov 2023 02:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="cQL6kMnP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFAA4644
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 02:18:51 +0000 (UTC)
X-Greylist: delayed 604 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 14 Nov 2023 18:18:50 PST
Received: from mail-m17218.xmail.ntesmail.com (mail-m17218.xmail.ntesmail.com [45.195.17.218])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3291AC8
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 18:18:49 -0800 (PST)
DKIM-Signature: a=rsa-sha256;
	b=cQL6kMnPwtYJPZmko8Td+ZApmq1jNNukWYBHvhKvj8hVAfTk5NonJgjr+fwoA5JD0T9dIkwepsZsXBEzLC9e9SnbD6pZSkoZhzwJUcGaCxwtNtF0Ovhz+S+ha2KfBAdwP/Bc24TNh5mMseFc+yMfg7kvzRquzlnqrOiRSLc3rBw=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=+0r5sfkCBJ8BY7925qHZXtbfyibcqRxLotDg68tTO/w=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 9B9917801EF;
	Wed, 15 Nov 2023 10:02:42 +0800 (CST)
Message-ID: <b8605ecb-0244-4ff7-8338-759011dee1b3@rock-chips.com>
Date: Wed, 15 Nov 2023 10:02:42 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com, s.hauer@pengutronix.de
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112855.1771372-1-andyshrk@163.com> <7034316.0VBMTVartN@diego>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <7034316.0VBMTVartN@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxlKQ1YeTU9MHx1PQ0weSU9VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8bd0b76993b24fkuuu9b9917801ef
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PyI6OCo5Fzw2TE4sPgMRN00*
	GRIaCRVVSlVKTEtLS0pITE1ITk5OVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSEpNTjcG

Hi Heiko:

On 11/15/23 07:34, Heiko Stübner wrote:
> Hi Andy,
>
> Am Dienstag, 14. November 2023, 12:28:55 CET schrieb Andy Yan:
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
> not a review yet, but when testing and the display sets a mode,
> I always get a bunch of
>
> 	rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq err at vp0
>
> messages in the log (initial mode to console, starting glmark2 from console,
> stopping glmark2 to the console).
>
> I'm not sure what is up with that, have you seen these messages as well
> at some point?

Yes, it will raise POST_BUF_EMPTY when set a mode,  it needs some fix 
like [0]:


I still trying to find a appropriate way to do it with the upstream 
code, as it doesn't affect the

real display function(I must admit that the POST_BUF_EMPTY irq is very 
annoying), so l let  it as

it is in the current version.

By the way, can you see the glmark2 rending on your HDMI monitor now?

[0]https://github.com/Fruit-Pi/kernel/commit/29af993b46f024360e6d02c0d26c9fd3057aa918

>
> Thanks
> Heiko
>
>
>

