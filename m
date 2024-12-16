Return-Path: <devicetree+bounces-131424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 788DE9F320B
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 14:57:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 257C91883EBE
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 13:57:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8747205AA4;
	Mon, 16 Dec 2024 13:57:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast3.qq.com (smtpbguseast3.qq.com [54.243.244.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C701229CA
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 13:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.243.244.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734357421; cv=none; b=Hqv8g1o8e/nBznxcrwUKsmxlu85Y+9REajnL4UlOFLZ+qnVXBDS6JXHrAuBzYpn4UoxiQEYou4H4lq9M3i/q2O7Ec8SnpVqlooIgdkbGZFCqDMAeIt13bLbJS/gNke5JO26h4D9YbaGSTlA0/xi6daXNIHL7yzc0ivpUuwT4Pgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734357421; c=relaxed/simple;
	bh=fRYPqGNOwTwnbRnA82TL4moEAfLcW1EL4AJYCmfa7R0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pqJDrL9iChKtL/1Uqhoya26c1K2wyIycJQF5ba2J4mjVx+SKkEqFyKvBLeodr4gU0naiQrMXzkSLNB+qFXrr8+z/ig3PlB/qGdfAWvvAdfzTlsTDNV0015kFpoVIjqlx8lCSBlmOpOfBx73nPesBOM4f1IRxvxUNi5LmaZdE1Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.243.244.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip3t1734357341t2o746d
X-QQ-Originating-IP: g3oBOueSh6CIhvzo6qz9bOcs9RHYOmIh2GsD0+FcEo4=
Received: from [IPV6:240f:10b:7440:1:f7da:fd82 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 16 Dec 2024 21:55:35 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6749853150628244265
Message-ID: <CEBA09BE8EAD762E+d8c828fd-2da7-48ab-ac66-bf3d04d5dc5c@radxa.com>
Date: Mon, 16 Dec 2024 22:55:35 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 04/12] arm64: dts: rockchip: Rename regulator for
 pcie2x1l2 for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-5-naoki@radxa.com>
 <f525d875-734b-4c41-95ba-be07b11f8e1c@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <f525d875-734b-4c41-95ba-be07b11f8e1c@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MX+1SEN3H+wAyRp1SkETiuDQQLEEpagL0NShkp4CDlYAVkVEOGRlZ0Ke
	vHp8tsMr4cBM5RuuCGP0H5ZDj+Ya/aLq3ttj9SQNtbkFUWVAK2+kWcp5IREmIZOsmu9A5tB
	CWb/HYyZjfy+jvFEz+MR8APk27B/VF5M7bfLxme7NIkYQb3vMMgxU4WKraZWfZbLZERntyE
	oy6Bnrt5/dKLjETdfYmP6m4VRW4U3Vesr+XQ7dIS1A0ATazb99GFrq1VW4leM4v7Z5FulbJ
	WkBwMaNeV+YLWfKN9OqjzZdwMprYb4du9DBwzs5m5y0TyVtO7NGzvOK1VFUsW6tnh06FHQM
	csD/vCoaqHRh5UjSgLPVYcKL5duUyE7cExvNEnvlIol8p0vh5LP4wdzeQa1v4Rippwb8IKm
	3tvNVBkDWWEvYHLNFh5e8ucQnMMm8HJAoHMxXbgjMSB7eVULhbYP/8g+edojzyVxwqvYCW1
	gHN9hJp3AJMSyQiKfGOP9KDhQFb0hHy3ZoHapinqs8SnX21FSI0HWDLRgeQV6gz7jzim55K
	l0V+hvrX2yIkQniwQmVFHqT1LDm1Dg+wor98hefKKAjs9nLn2VDTzeoXF08Ro5Zt+LUnlmq
	fQk4/zgg5vMaUzVxYFGOxZQUJwzzrYzRiNsoUCMMtbCvbVeDbEsffXTX597KWbI5s6hrftX
	AkvqjivppCPODrOuaaKdwrKocq5yiYNMMBNBAirK8Cwa0xo0L3Slsi+8F1CKfAc/6RpH0uZ
	CJiysPtattA7f3cjioF33xszX/6yPaxv+wGsSNQDlMycTgqXdp21qLko2EjMPyBPlgEztld
	Oiup5oLK7Mbsc5N49Uv4JP/LNufLREfr9fFHE2nCubAOJvdcNw3K9kTL/6feaXYxNks3gZi
	yaJh9uWTLdvmVQHzOOUGRv6FPbrDYi7AQEiSMltxKhRzjurS7R/A3QMTBvEsTSvP2vRyiR7
	siaQ=
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0

On 12/16/24 22:38, Krzysztof Kozlowski wrote:
> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>> Use consistent name with other regulators. No functional change.
>>
>> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> Changes in v5:
>> - Reword commit message
>> Changes in v4:
>> - reword commit message
>> Changes in v3:
>> - none
>> Changes in v2:
>> - new
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> index 85589d1a6d3b..61d75ab503b2 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> @@ -76,13 +76,13 @@ pwm-fan {
>>   		pwms = <&pwm3 0 60000 0>;
>>   	};
>>   
>> -	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
>> +	vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
> 
> No, neither explained, nor correct. See DTS coding style.
> 
> Please use name for all fixed regulators which matches current format
> recommendation: 'regulator-[0-9]v[0-9]'
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml?h=v6.11-rc1#n46

Thanks for pointing.
(Please blame other dts too)

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 


