Return-Path: <devicetree+bounces-93758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 400B8952347
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 22:20:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1BE72857B6
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 20:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F5981C379C;
	Wed, 14 Aug 2024 20:20:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-usa1.onexmail.com (smtp-usa1.onexmail.com [52.205.10.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CCE1C3794
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 20:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.205.10.60
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723666822; cv=none; b=SXJWfI2tCicqsBr/fLDmmnv6SPOiskXb+mIOip8hG2XAvdKxEHDAeFWA9stYFqLL2VEpw1YHe14jG4Y4uKSyx9BU6EDw6ww6HkWW/HtKajYFk0N4tfwTgQnwyV0W6fit/TG8aze5tlk7JRUJI261zl+mo9iHlW6EvWYn9c+2TFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723666822; c=relaxed/simple;
	bh=Kb/dikHIYb2kNWw3Iug8MsA3sstz2oaUCeTgoqHFwjc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L/88Kc6qMCela30Ig8D47Cao29DEFkr4t0602kjCk9PC40kF0Iu4MMoso58mV41LSpypE5Ts0VbtsPgNCaKM+AqRGEryuBzesoFLHBx5oHfFnE+ApjRah333+1zDM2Qjt+dDLxBreKD42UPKIpFp1GZcdSnJlcJTWAIp8vONU3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=52.205.10.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp77t1723666733tpc2c35f
X-QQ-Originating-IP: 7svP2jYGzlEOZVRd0xTQfN2dD3RCAivIW7bnys9U6QY=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 15 Aug 2024 04:18:50 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2262008500744718809
Message-ID: <71AE5BF8A35A4D3D+d4ff3028-7c0d-475e-95e9-8974bcef1d31@radxa.com>
Date: Thu, 15 Aug 2024 05:18:49 +0900
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
 <8FF4228B18A1DFEE+d359188b-64e9-4ce6-8796-f3fecd6a0781@radxa.com>
 <10385642.ICPdZLu4VQ@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <10385642.ICPdZLu4VQ@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

On 8/14/24 20:32, Heiko Stübner wrote:
> Am Mittwoch, 14. August 2024, 12:25:54 CEST schrieb FUKAUMI Naoki:
>> Hi,
>>
>> On 8/14/24 18:57, FUKAUMI Naoki wrote:
>>> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
>>> RK3328 chip.
>>>
>>> [1] https://radxa.com/products/rockpi/pie
>>>
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>> ---
>>> Changes in v4:
>>> - update compatible string for OpenWrt
>>
>> this is for https://github.com/openwrt/openwrt/issues/16168
> 
> I this because openwrt used some out-of-tree devicetree?

no, basically they use upstream dts.
(in this case, dts is backported because they use v6.6 kernel.)

generally their Makefile and script variables refer dts filename.
(dts filename is referred as right name)

> For people reading along, all the other rockpi devices follow a
> 
> 	radxa,rockpi-foo

there are roockpi4x and rockpis ;)

> naming scheme in their compatibles while _this_ new entry uses
> 
> 	 radxa,rock-pi-e-v3

this is new target, so I thought new form can be used.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

