Return-Path: <devicetree+bounces-232023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 66580C13BD4
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:13:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB7CB188390D
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 09:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7477C2DCF72;
	Tue, 28 Oct 2025 09:12:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau2.qq.com (smtpbgau2.qq.com [54.206.34.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E252DA776
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.34.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761642745; cv=none; b=ROwaF0dZ03WNk0vdHUdJEyOe54MSrw3imAiHfAfqhkXoIH5O2B2LvyTjiXehGJ8rmMRI7tPWz66KHR44ZIrtk0O8dMVuuRffTNAU1tK/JvG5NQL60b9CtmrVfKNIMitTht59/44juu4ryVgAzFuIJcAaw5kpUoelWAxAbqFg6Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761642745; c=relaxed/simple;
	bh=5+4bk9ZtMgv+Y+lVMwmUqgEgJj2gO/6czxH+VQqjsOw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=erGvrfNp0m0oeDKxxs5V+2oKG2Pt+GVxnLo7XwsfSnLmsF36e8Gn451FFOgIpRlNuKfNqEVzuFNP/QdL7mouhhWv0x0WlsotPIwFLF9m5dlRhkUUVF3rIjqEoOu01N3gURItEYLEFT7vr9QOiNXSJGvsHHNWv8trPlG048VkCWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.206.34.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1761642629t75bdeecb
X-QQ-Originating-IP: SWPYxiJW7sXMOgywlHY286iO5iMgqwJ6qjkrQv1EkKI=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 17:10:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1404758684792863449
Message-ID: <9BE63A25A37DE781+3dfa1aa3-a0d3-4877-94df-6e55c92a9773@radxa.com>
Date: Tue, 28 Oct 2025 18:10:22 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Reorder the Radxa board
 entries
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, dsimic@manjaro.org,
 amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251027122641.39396-1-naoki@radxa.com>
 <20251027122641.39396-5-naoki@radxa.com>
 <67e7badd-4b38-4f93-872b-e51a43281d3b@kernel.org>
 <6B986FE9E161F74F+f2826946-a3e9-4618-b5c8-6e29f9f6b83c@radxa.com>
 <1fc497ee-3363-49c9-93eb-20acd4373df9@kernel.org>
 <A39F9BCC6572BA03+67736ed4-86a0-4a78-98af-b2f39aeb785e@radxa.com>
 <20251028-cunning-furry-slug-4fd3dc@kuoka>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251028-cunning-furry-slug-4fd3dc@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NvGGTAUhB2iWHb0P40L9ILh3FLZEsOuhmvWioYgz8sdmcjpGSrdjc9l2
	jD5xRMiZhVGZG4yty6Phpwb5mvZL8KZXBznvANSq5x5BBOrbcxsWxkwVHcIS4qLz3FvYCCp
	se6igFkxCgEPid8FfwUlRb2m7LGnDSIluHYix3SH4JznFnABtn8lsRR/df9sUItCvRkClpQ
	HnVhKAETtCe5N0TedqjT/gUjXjBpTx4fzX4vORamnvBd5IAFTfzrRb4PvgQpbLArFT1lXvL
	4drG0nhL/xzS0JlGJgQm9B9C2WWo740PccR21RJdRsJZ17qPtBXpIK/4mR4+yCNujvPYP6I
	DJIasI5RSgg15Mx3z8uLcTBF8oe9fFeKl4/RM8N+sAKjIEsfWZVtqVyVGSDepTrW2VPVQvx
	9P40Uu7UITGONSvqqJ9fGLioxwn6p7kJMYW/jhpEBUC2+CaZ5So9GFJ0YZoTNC28nFCDeW/
	Omvei+Rshds+b6Z2Jstta66Q6hBkVgULNvSLwEcerbOzJtp1Ve4XE1HXTMvF2mnhaAjh4j9
	gM70WZytU0bRFDYHAK98Wtg4GtX4yisGu39XRiWt1sLb5cruuGnRvVC5wTw0iFj9vtpO6s8
	o8a34QNq7u2VeJssbp3wMYST8LLFaWIwKRQoGxqcLaoNRjGW5/P+BACEG2sfo1ae8FZbbgI
	jNmvSt7cJSkBuMieDntnPJh97M52RLWUscVVaH62AFp/pJGUs7fIeNQxSYFrZMQ17zMekbr
	gQlFIRFpjEIkjp9RYr8rkZ1NQzZxNb/sE0s2JQMOkEwUgm/UsTj/zDTwDuaL2gLGNAIcERX
	xgcyp7iEQj1wzSYg5GREtIYAe0sp1ReIVc1vO7FiJsxfYv+nmcaeu8sh343lqCcblnEpzWA
	qIQ17tZthb1HFcOCszolGfk0o92xzuysstHGDgS+qT+en2SK04StMpf2lnPZujHOm9XJaN/
	to5cYrX/mWcelq80vFgvGl4tUMq9EBwp4Dsw=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0

Hi Krzysztof,

On 10/28/25 17:57, Krzysztof Kozlowski wrote:
> On Tue, Oct 28, 2025 at 04:29:41PM +0900, FUKAUMI Naoki wrote:
>> Hi Krzysztof,
>>
>> On 10/28/25 16:26, Krzysztof Kozlowski wrote:
>>> On 27/10/2025 23:30, FUKAUMI Naoki wrote:
>>>> Hi Krzysztof,
>>>>
>>>> On 10/28/25 04:08, Krzysztof Kozlowski wrote:
>>>>> On 27/10/2025 13:26, FUKAUMI Naoki wrote:
>>>>>> Reorder the Radxa board entries alphanumerically, with the following
>>>>>> exceptions:
>>>>>
>>>>>
>>>>> Why? You must explain that in the commit. What sorting is being used by
>>>>> this file? Why do you think your re-order matches that sorting rule?
>>>>
>>>> I understand there is no rule, only your preference. Thanks.
>>>
>>>
>>> Really there is no? Are you sure?
>>
>> Could you please tell me what sort of sorting is being used for this file?
> 
> I don't know. I am asking you, because if you re-sort something you
> clearly must have know the sorting rule. Otherwise without knowing what
> is current sorting rule, how can you be sure that you sort it correctly
> instead of just making a mess more messy?

If you don't know, how can you be sure my sorting is just making a mess 
more messy?

I'm going to add a new board (Radxa CM5) to this file. First, could you 
tell me where I should add it? Second, could you please tell me why 
that's the correct place?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 
> 



