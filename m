Return-Path: <devicetree+bounces-22240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CD788806DE2
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 12:28:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 82F141F2139E
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 11:28:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 434F431752;
	Wed,  6 Dec 2023 11:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="CGNhd4sj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49204.qiye.163.com (mail-m49204.qiye.163.com [45.254.49.204])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02F5ED3;
	Wed,  6 Dec 2023 03:28:04 -0800 (PST)
DKIM-Signature: a=rsa-sha256;
	b=CGNhd4sjVn5tsHiRRxZ+t3cUlpsvFLcZiVcSSq+FAgX0kIHfaDkoFGroR1A9sALxte2BSIjPb01MqW/ghoKP/q2t2kg5dVxhU4wvHT3dsdr/j0//cydNaZzdKQEgrgL3zl7HqGgdjUL8YLlSZAUurhwuceBCx0aVcGSIw1MTPO4=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=mIp43tx+cz3waI2qLXLmWvwYJEbJny5dp/W8y+Cp4Dk=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id B6404780300;
	Wed,  6 Dec 2023 19:27:31 +0800 (CST)
Message-ID: <8140e2f4-2081-4492-af17-ce742eef4404@rock-chips.com>
Date: Wed, 6 Dec 2023 19:27:31 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/14] drm/rockchip: vop2: Add debugfs support
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: Andy Yan <andyshrk@163.com>, heiko@sntech.de, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, kever.yang@rock-chips.com,
 chris.obbard@collabora.com
References: <20231130122001.12474-1-andyshrk@163.com>
 <20231130122449.13432-1-andyshrk@163.com>
 <20231205091541.GV1057032@pengutronix.de>
 <593f1092-3f5b-42ab-bc6e-dbd0fc8fb8ba@rock-chips.com>
 <20231206112053.GA1318922@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20231206112053.GA1318922@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0hOSVZPGEgdHUNMQkkfHxhVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c3ee210d1b24fkuuub6404780300
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MTY6Cxw5ODwrElEyPQ8yPBES
	KiMwCjVVSlVKTEtKQ01JS05JTk9OVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSEpMTjcG

Hi Sascha:

On 12/6/23 19:20, Sascha Hauer wrote:
> On Wed, Dec 06, 2023 at 06:20:58PM +0800, Andy Yan wrote:
>> Hi Sascha:
>>
>>>> +	unsigned int n = vop2->data->regs_dump_size;
>>>
>>> 'n' is used only once, it might be clearer just to use the value where
>>> needed and drop the extra variable.
>>
>> Okay, will do.
>>>
>>>> +	unsigned int i;
>>>> +
>>>> +	drm_modeset_lock_all(drm_dev);
>>>> +
>>>> +	if (vop2->enable_count) {
>>>> +		for (i = 0; i < n; i++) {
>>>> +			dump = &vop2->data->regs_dump[i];
>>>> +			vop2_regs_print(vop2, s, dump, false);
>>>> +		}
>>>> +	} else {
>>>> +		seq_printf(s, "VOP disabled:\n");
>>>
>>> There's nothing following after the ':', right? Then this should be
>>> "VOP: disabled\n" or without the colon at all.
>>
>> the colon will be droped in next versin.
>>
>>>
>>>> +	}
>>>> +	drm_modeset_unlock_all(drm_dev);
>>>
>>> This code is repeated in vop2_active_regs_show() below. Maybe factor
>>> this out to a common function?
>>>
>>
>>
>> Do you mean all the code between drm_modeset_lock_all and drm_modeset_unlock_all ?
> 
> Including drm_modeset_lock_all() and drm_modeset_unlock_all(), yes.
> 

Okay, will try in v4.


> Sascha
> 

