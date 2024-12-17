Return-Path: <devicetree+bounces-131582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CD39F3F8C
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 01:53:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B49B8162D31
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 00:53:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 457BA7602D;
	Tue, 17 Dec 2024 00:48:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD92250F8
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 00:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.16.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734396524; cv=none; b=O3o55HyzEXrCbNvbTa1Gq3Ypf4PAzoXv3q0yTLSzM5zbyUdnqHE3SYa611Od6yboqRufgRfJhcifVPSAOarIq2G8BW606Xlx79WPmIkUGkTUrgCophWerVZ1N98WGLopyEebtocqyoZFuBRMH/0uD789IcNtU6tWEJdDxGaIeaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734396524; c=relaxed/simple;
	bh=iyBhtDKgK4iLibdwXy/JxBhAoBLr7DiUT625/iOz0/Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jx6X3QFG06CSWU6QjGdAmr1phsk5WxD7YTNTBARbvZOZYRu267ACAzl4cgqopvMZ89NExG/KC/aVXbDALpEeLC5YyREuKQ3mq+wCbEJIJ7uwOEECvHg+1QHWB7B79UPRgYCy+ZxYvKnumi43l3CMNzdRbafP0FToPp2cfSJnZCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.206.16.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1734396469tf0h3as
X-QQ-Originating-IP: xdmcjhBK4Kpmp9oApsTuf23GuMNM3gJ5QXJDWaFhDZE=
Received: from [IPV6:240f:10b:7440:1:1e5c:5a5f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 17 Dec 2024 08:47:45 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2829160227594366246
Message-ID: <724A97E2AC940372+aef40e57-fe22-403a-a642-b5a2feae450b@radxa.com>
Date: Tue, 17 Dec 2024 09:47:45 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 10/12] arm64: dts: rockchip: Fix pmic dcdc-reg10 label
 for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-11-naoki@radxa.com>
 <997d39ac-b78c-4584-ba86-d114120bad9c@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <997d39ac-b78c-4584-ba86-d114120bad9c@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OST2d686M2k211owZqeNWWUz9onT6r0ucMDYqeSqTses33GF1/80g9E7
	bYZCpOCxdTTUhFWqGr0PLhZefnWonF8lkv9wS4DdcfThpGmytRaikxhZPELHErW52Iz9egS
	2Ucl5flTBDZ28TbcVTFfI1xO5w9pOolSpKNaTtoFt1RzHH0+mbxLoKYZqoWuPTDcyxqKBhS
	KQY9UjVWQf9FjeFRH795saEJEIY8uLvIvr7byM8lyLa+OtAzdiyI8KQ+PpuCHgRGBUC+9fu
	odab7Hw7jXfD7s59G1flJpACdKDG9rwqL5Fp8DxLX+Cta96HA33Fc842IVUaA0fNvrCzhql
	rBj9yDA2uYGrFrz9rPP0/p4+VarxuLxo/eW+ry3e4XromoU19sE+9CQrU+txEKLgDWy+n26
	tNZxqIx3XAlbHLSrq+kP1WswY7XrTIJCJlEeHsH5S80ci8uGbIdQ0mvvpwcL+ncgj6sTYFa
	+qBR53EtrTCbuQDZK6ABykOEkvmp/5U7B1SKsEv+PgYWvMhnUfBHSEcXFlM5LJ7q9/JNkIc
	ShuPWFsNbUKD/iVPEciaC+sEmFigoOFzuzFu5U0PBuqfZkZShPkCa2n5bBtH9ktwqAWwvDv
	ktoHZwvOa7JarSmdtw9JHbrhrKw/cKScspDUyjw4jVPtR7b+66E8z3pgXmH6Qrc80KmDaw7
	JIsPKRf4t0GWw8rACFoEnyN57RYrNnNY6YHsn2JeSc6RE8xgSIEyADQi+UhV06av09nVtZV
	dCQB/890wofTkY5e53NEqEYUGJ1QO8u0ZkM0HnKlSO/LtP743NNIETleOqsH435v7i5NBe5
	6xjrTbaqPNNJGZaXKlrpn6iL7ft8Lh7T+ec29/Uu9Frg3+7uRtTU/mu7OZNNGS/Afaoh+K0
	/ralkLkFI6NwhVYJY8O5lmkX2sQvW4wcPenADXQf0y6/i/L0pnBKyrmRf4HnKCA0
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0

On 12/16/24 22:40, Krzysztof Kozlowski wrote:
> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>> Fix pmic dcdc-reg10 label to match with schematic[1]. No functional
>> change.
>>
>> [1] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf
>>
>> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
> 
> All your commits have the same flaw. You claim there is no functional
> change, yet there is a real bug to fix.
> 
> All such trivial cleanups are not fixes and should be squashed together.

I see, I'll do "squashed together" for trivial/cosmetic/no functional 
changes without "Fixes" tag.

Thanks for pointing.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 



