Return-Path: <devicetree+bounces-23375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DB07A80B187
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 02:40:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B51EB20A78
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 01:40:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28F7580B;
	Sat,  9 Dec 2023 01:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="U1A4+o27"
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 555 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 08 Dec 2023 17:40:16 PST
Received: from mail-m6039.netease.com (mail-m6039.netease.com [210.79.60.39])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0A4810FA;
	Fri,  8 Dec 2023 17:40:16 -0800 (PST)
DKIM-Signature: a=rsa-sha256;
	b=U1A4+o27k8BpDm6vFDm5SLrPKgl34qoVXMOQvOQXRouyshE2USxFMrKUjLBvZqvahaN1PDUCU9HgM8uXSy5TDh1x+LvZ8qX0ywxXkpfTKNVHxQ+uRjDBsoVLKkvr0UTUWJ/zfKU6kxJF2fJr5Yq6Q7h8DxbwtRVqxybgTYz2VTM=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=3ZfnCGij/I8m1TiIlexdEuiMXvToZHxbD5kG64olyL0=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id E461F78018D;
	Sat,  9 Dec 2023 09:30:30 +0800 (CST)
Message-ID: <e0181a1a-b649-4f38-b4f8-f5ee22bcb356@rock-chips.com>
Date: Sat, 9 Dec 2023 09:30:30 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 10/17] dt-bindings: display: vop2: Add rk3588 support
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Yan <andyshrk@163.com>, heiko@sntech.de
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com
References: <20231207075906.651771-1-andyshrk@163.com>
 <20231207080133.652417-1-andyshrk@163.com>
 <0915b94c-596e-4a19-925c-1a5b1d0a3531@linaro.org>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <0915b94c-596e-4a19-925c-1a5b1d0a3531@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhPHlYZHh9JQhoZTElMHk9VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c4c328fdbb24fkuuue461f78018d
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kz46USo5Hjw1Gk46LB4pSwoO
	DkJPCx1VSlVKTEtJS0NOT0hKQ0lIVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSE1DSDcG

HI Krzysztof:

On 12/9/23 01:46, Krzysztof Kozlowski wrote:
> On 07/12/2023 09:01, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>>
>> The vop2 on rk3588 is similar to which on rk356x
>> but with 4 video ports and need to reference
>> more grf modules.
>>
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>>
>> ---
>>
>> Changes in v4:
>> - drop redundant description.
>> - use full stop at all the description's end.
>> - address Krzysztof's review in v3
> 
> What changed? Please list specific changes, not just generic "address
> review".
> 

Sorry, I will keep this in mind in the future.

>>
>> Changes in v3:
>> - constrain properties in allOf:if:then
>> - some description updates
>>
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> This is an automated instruction, just in case, because many review tags
> are being ignored. If you know the process, you can skip it (please do
> not feel offended by me posting it here - no bad intentions intended).
> If you do not know the process, here is a short explanation:
> 
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions, under or above your Signed-off-by tag. Tag is "received", when
> provided in a message replied to you on the mailing list. Tools like b4
> can help here. However, there's no need to repost patches *only* to add
> the tags. The upstream maintainer will do that for tags received on the
> version they apply.
> 
> https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577
> 
> Best regards,
> Krzysztof
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

