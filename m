Return-Path: <devicetree+bounces-131434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC1A9F335C
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 15:39:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A3691884A7E
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 14:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D830205ABB;
	Mon, 16 Dec 2024 14:39:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg2.qq.com (smtpbgsg2.qq.com [54.254.200.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899F817557
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 14:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.128
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734359976; cv=none; b=UoprQ9qo8ku/UnjgtEkA0UZgSCDidi0qE5OpUiGos9VyIO+YMMqVHbbGqMgV6dc7wFtX65mOUWhJlLQCJXIzukY6zfR2CWLGv0NImcxjZrDxIPnhi8kHX6MUfnvxaP0xlQbftRfJZpHXPJ7y3+/Ho2WHS8Nz4Gw7Eq9C3vkDM5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734359976; c=relaxed/simple;
	bh=DbXK/ILQlrVUPzQEw6zqTpvbJw/sg5bRGxagN5yngSU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NARX2tg1zWCSuWcNmTzN6EfweqbgxhWemWAMyhuwGKpAHI7XMqndD7UyIMwqQeLAQUQnNUQBO+fAbVVggwAgb00t5LvBsmnPhwFFyE8WXJXYBngHgjhaDqDBYu2gKyh0kIRuX45GKbggfU7W68gh3gN5UFXsmxAuBTf4KYUJCBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip3t1734359898tkzofy1
X-QQ-Originating-IP: BzQh8AwljBxeAZzdp8E+hSshgItJvrBw9+dK6a04pUo=
Received: from [IPV6:240f:10b:7440:1:f7da:fd82 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 16 Dec 2024 22:38:14 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2013801449498387670
Message-ID: <E3B9E510C4F8D95A+7a184f12-902b-47ea-894c-4552e189d19b@radxa.com>
Date: Mon, 16 Dec 2024 23:38:13 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for
 pwm-fan for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-3-naoki@radxa.com>
 <0b0efc1d-2340-4ec5-a46e-62a6cebbc2b6@kernel.org>
 <5707EE9715A7E332+f33721f1-8b50-4262-bdaa-468ad2c79ecc@radxa.com>
 <281bce4e-cec5-4ad8-940a-c9ef16202a43@kernel.org>
 <C6FD94DDF2E16CAE+22e3003e-0d66-4092-a9a2-def5daa6c202@radxa.com>
 <feec46a1-76b9-4479-b364-b09cd79b3d69@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <feec46a1-76b9-4479-b364-b09cd79b3d69@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OWhN4QRntHSGlq7whYQmpOJhZYPEdZK4YhXYLycPTehwFwuz5Jt6fB06
	eaEwq/9z+GTbFkov0N41QyPpPt05EMaqQPbvulxZF3tcCsImKM3d3HyfoD+zQZkt5darHHD
	zzLyYq3AB4tbb7JCjNcs7aITdPt6bEQ0YI9w0OyzIKsa1ozEynbglkK3o6T7rC6MANjySWy
	OhQYQLcFJL4iRRVgtyaRdam3CwR/7o65VoO8wVTe2TLztZb56yjfVDf1ZLClBg0nbaHpcvM
	fehSS1T4IqqBq4BVpco7Y2mVljmfARqToUPde67iSRPRUSQrEs+1igvz1ayLYRVjRDKF26g
	d7bBoX5TJGhLZijkY5PsYa7E6XKyNVcw40f85VNJsXjKZJlT6fmXiyFir8whWyM/RbL/rOf
	hdJIF0OIN3e5b0F7oYduRvU2G0a8sUe36ZANDvAoE8ta/AJPJL0ysMDAc04uaDCrEcoaF1l
	ae4Abjta/+HkftPmLwOlzIGzB9y+1pFc2z2qPq2K4n8ASR3IUoQiVssp3kUcUWXm8wHylIZ
	ZYcKLAi5hedlWFWbJHGZtf+h+/PP6QJPt/aG1IlKwDE/Iw1f7sQFCG1Rjbz4qlBCxV9rqk5
	dxZHZPRWxnKzHFe/9vPkmFgGnEa9FJ2MaiYCDO2isJQw+3kjVUldqB6LFb4OBpnBy+M1Gyi
	213FAAonKGsyOdLjv+Xt7XV+ZXuykZZPcNc4z0jK+GneqkEjGaB4TzFGc+G0aS5gU55V2JM
	DkgYAGLViYkVN7yKYLcKQSfzQvFhTGqIDZ0UzLPQt4puaxGp9TyPV2XgGZof5OU/AuztzdH
	SIEJVjDQE9maL7uaBTJQKn75g6UVSxOmN9DX+uEH7QbypA+Y3h1ksdHPiyzeKjcYW/6sKRH
	7RaNwhpEanKUxBXS4bW6G1cidDeYwm5Vi02Gq2gEIVbEc0gp+2GUHRoqbnrpoxHGQgVyIQC
	k+EO+mp2wurhsZq4MxvOJ3+rNaMna1EHMSrai9FUuWYozNUHfxtgCWZZNhafVz69zS84=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0

On 12/16/24 23:27, Krzysztof Kozlowski wrote:
> On 16/12/2024 15:19, FUKAUMI Naoki wrote:
>> On 12/16/24 22:56, Krzysztof Kozlowski wrote:
>>> On 16/12/2024 14:48, FUKAUMI Naoki wrote:
>>>> On 12/16/24 22:37, Krzysztof Kozlowski wrote:
>>>>> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>>>>>> Use more common name "pwm-fan" for pwm-fan node. No functinal change.
>>>>>
>>>>> No, generic name is fan.
>>>>
>>>>     https://lore.kernel.org/all/71aa84af7a030e66487076e0976c8cad@manjaro.org/
>>>>
>>> And? That's incorrect advice.  There is no such device as "pwm-fan".
>>> There is a "fan" and whether it is pwm or gpio it does not matter.
>>>
>>> See DT spec and generic names recommendation.
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml#n67
>>
>> Is it wrong?
> Yes.

Okay, please fix it.

Feel free to use:

Reported-by: FUKAUMI Naoki <naoki@radxa.com>

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 



