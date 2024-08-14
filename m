Return-Path: <devicetree+bounces-93776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A2C952501
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 23:56:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24FA82844E8
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 21:56:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AD3D1C824C;
	Wed, 14 Aug 2024 21:56:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg2.qq.com (smtpbgsg2.qq.com [54.254.200.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219F51C7B9F
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 21:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.128
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723672600; cv=none; b=GKzwx0vcvyxK59OEfY2uth2wcxV1i7kp6IfFTGZjg/nKb0KzkOp8ZunoPAPIn5nU+/XqD5ODltv4JEL+FkqPspo3gkxVClR9KWwSzVtmhTQWX2ijliLmlNFVRlLt6Lg4pJQna7PqNJ6sz4e22qTGNR64fx8xHMfhkh1R9SAGVO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723672600; c=relaxed/simple;
	bh=mxs/UG9bY5GeHHsHt2CvOxMLSuBotQHYCuEz7slGDC8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WTm4D9M4mZGLMTjsfV6x6NVDpgRSK315Us3DQCaJFiFNkHzj5HjQXCWCvO/0J15g63jaFGL4COWMVBiQ+o00P0K+hEVa9AzFfP/1VNKrR35xcj4YZbFB8AZlXmTJiexcwKJCT87i87HkCCmfZSlg/TN3t28eSp48geOphUZbofc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp88t1723672539toqoffky
X-QQ-Originating-IP: xIyUMW30ApZD9TYQkJa7cC50cvKLqDzdeQJxFfbvO3U=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 15 Aug 2024 05:55:36 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6573782108803585030
Message-ID: <E2FF51EF97313CA8+53ea57a4-59aa-4415-a1fa-0e56c19ce9d4@radxa.com>
Date: Thu, 15 Aug 2024 06:55:36 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for Radxa
 ROCK Pi E v3.0
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240814095727.1662908-1-naoki@radxa.com>
 <9908246.lRi8OiJO2u@diego>
 <4F2DC0BFBC9A7038+cd76538a-6a56-44a1-9ae6-f81e9088ff48@radxa.com>
 <3456551.yMk1gmxOD6@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <3456551.yMk1gmxOD6@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

hi,

On 8/15/24 06:53, Heiko Stübner wrote:
> Am Mittwoch, 14. August 2024, 22:04:51 CEST schrieb FUKAUMI Naoki:
>> Hi,
>>
>> thanks for the review!
>>
>> On 8/14/24 20:30, Heiko Stübner wrote:
>>> Am Mittwoch, 14. August 2024, 11:57:26 CEST schrieb FUKAUMI Naoki:
>>>> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
>>>> RK3328 chip.
>>>>
>>>> [1] https://radxa.com/products/rockpi/pie
>>>>
>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>> ---
>>>> Changes in v4:
>>>> - update compatible string for OpenWrt
>>>> - drop A-b tag
>>>> Changes in v3:
>>>> - collect A-b tag
>>>> Changes in v2:
>>>> - fix typo in commit message
>>>> - add missing --- in commit message
>>>> - add new section instead of new item in rockchip.yaml
>>>> ---
>>>>    Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>>>>    1 file changed, 5 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>> index 2ad835f4068e..1d426d4e1928 100644
>>>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>> @@ -790,6 +790,11 @@ properties:
>>>>              - const: radxa,rockpi-e
>>>>              - const: rockchip,rk3328
>>>>    
>>>> +      - description: Radxa ROCK Pi E v3.0
>>>> +        items:
>>>> +          - const: radxa,rock-pi-e-v3
>>>> +          - const: rockchip,rk3328
>>>> +
>>>
>>> Please don't add a separate entry for the simple updated version.
>>> Instead group it with the original Rock Pi e above.
>>>
>>> For how to do it, look at the Radxa Zero 3w/3e .
>>
>> https://patchwork.kernel.org/project/linux-rockchip/patch/20240711210526.40448-1-naoki@radxa.com/
>>
>> is this right way?
> 
> Nope. You need an enum. That's the reason I pointed to the Radxa Zero as
> an example [0]
> 
> So your entry should look something like:
> 
>         - description: Radxa ROCK Pi E
>          items:
>            - enum:
>                - radxa,rockpi-e
>                - radxa,rockpi-e-v3
>            - const: rockchip,rk3328

I see. I'll do it in v5.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> that way the binding matches against both:
> 	compatible = "radxa,rockpi-e", "rockchip,rk3328"
> as well as
> 	compatible = "radxa,rockpi-e-v3", "rockchip,rk3328"
> 
> 
> Hope that helps a bit
> Heiko
> 
> 
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/arm/rockchip.yaml#n844
> 
> 
> 

