Return-Path: <devicetree+bounces-16152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5747EDC78
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 09:01:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 185C6280F0E
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 08:01:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 504B3FC1F;
	Thu, 16 Nov 2023 08:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="KWqvvflA"
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 2093 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 16 Nov 2023 00:01:04 PST
Received: from mail-m118112.qiye.163.com (mail-m118112.qiye.163.com [115.236.118.112])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4814319D;
	Thu, 16 Nov 2023 00:01:04 -0800 (PST)
DKIM-Signature: a=rsa-sha256;
	b=KWqvvflA9+/axwizsRSRSGyg5fk6IiUM3lVg4IWeuLgSTHP3EQwrAHevkwLc9fj1YaVp0MhVr5sxIW+M6U3bH5A8RWx1FFuNaXhOfQX4jKKO0eplRABeNejJiZklHazkzs1VNUFwz0Ei+cMawQgO4+qE4HMijB789pKyiY4iVWo=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=tb1X4KpeIfR7YuU+9FGfgBz5jQqP4HMT01BOCR63WJc=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id A79AA7801AF;
	Thu, 16 Nov 2023 16:00:06 +0800 (CST)
Message-ID: <d6c77064-bae5-41c3-b49f-8c5c3a076a6b@rock-chips.com>
Date: Thu, 16 Nov 2023 16:00:06 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andy Yan <andyshrk@163.com>, heiko@sntech.de, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, kever.yang@rock-chips.com,
 chris.obbard@collabora.com
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112855.1771372-1-andyshrk@163.com>
 <20231115090823.GY3359458@pengutronix.de>
 <229557d7-beec-44e0-9ee6-4a962b33ec79@rock-chips.com>
 <20231116075015.GG3359458@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20231116075015.GG3359458@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxkZGVZKH0weGEofGR9NQ0pVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5MSUpJVUpLS1VKQl
	kG
X-HM-Tid: 0a8bd724fb70b24fkuuua79aa7801af
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NU06Pzo6Pzw8KUIOMiocFBA0
	SyNPCxRVSlVKTEtLSklKTUtMT0NCVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT05NTjcG

Hi Sascha:

On 11/16/23 15:50, Sascha Hauer wrote:
> On Thu, Nov 16, 2023 at 03:24:54PM +0800, Andy Yan wrote:
>>> 	case ROCKCHIP_VOP2_EP_HDMI0:
>>> 	case ROCKCHIP_VOP2_EP_HDMI1:
>>> 		...
>>> }
>>>
>>> would look a bit better overall.
>>>
>>>> +		/*
>>>> +		 * K = 2: dclk_core = if_pixclk_rate > if_dclk_rate
>>>> +		 * K = 1: dclk_core = hdmie_edp_dclk > if_pixclk_rate
>>>> +		 */
>>>> +		if (output_mode == ROCKCHIP_OUT_MODE_YUV420) {
>>>> +			dclk_rate = dclk_rate >> 1;
>>>> +			K = 2;
>>>> +		}
>>>> +
>>>> +		if_pixclk_rate = (dclk_core_rate << 1) / K;
>>>> +		if_dclk_rate = dclk_core_rate / K;
>>>> +
>>>> +		*if_pixclk_div = dclk_rate / if_pixclk_rate;
>>>> +		*if_dclk_div = dclk_rate / if_dclk_rate;
>>> Not sure if this will change with future extensions, but currently
>>> *if_pixclk_div will always be 2 and *if_dclk_div will alway be 4,
>>> so maybe better write it like this
>>
>> Yes, the calculation of *if_pixclk_div is always 2 and *if_dclk_div is always 4,
>>
>> I think calculation formula can give us a clear explanation why is 2 or 4.
>>
>> considering the great power of rk3588, i think it can calculate it very easy.
> Sure it can. My concern is not the CPU time it takes to do that
> equation, but more the readability of the code. For me as a reader it
> might be more easily acceptable that both dividers have fixed values
> than it is to understand the equation.
>
> Your mileage may vary, I won't insist on this.


Or I make it as fixed values, and leave the calculation formula as comments ?

>
>>>
>>>> +		*dclk_core_div = dclk_rate / dclk_core_rate;
>>> *dclk_core_div is calculated the same way for all cases. You could pull
>>> this out of the if/else.
>> Okay, will do.
>>>> +	} else if (vop2_output_if_is_edp(id)) {
>>>> +		/* edp_pixclk = edp_dclk > dclk_core */
>>>> +		if_pixclk_rate = v_pixclk / K;
>>>> +		if_dclk_rate = v_pixclk / K;
>>> if_dclk_rate is unused here.
>>
>> It will be removed in next version.
>>
>>>> +		dclk_rate = if_pixclk_rate * K;
>>>> +		*dclk_core_div = dclk_rate / dclk_core_rate;
>>>> +		*if_pixclk_div = dclk_rate / if_pixclk_rate;
>>>> +		*if_dclk_div = *if_pixclk_div;
>>> Both *if_pixclk_div and *if_dclk_div will always be 1.
>> Actually,  they will be the value of K here,  if it work at split mode(two
>>
>> edp connect to one VP, one show the image for left half, one for right half,
>>
>> a function like a dual channel mipi dsi).
>>
>> I know it split mode is not supported by the current mainline, but i think keep
> Ok.
>
> Sascha
>
>

