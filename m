Return-Path: <devicetree+bounces-155317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5116FA5631B
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 09:59:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D46916DDA4
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 08:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9811D1E1DEA;
	Fri,  7 Mar 2025 08:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ernTCcp2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBB41DC99A;
	Fri,  7 Mar 2025 08:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741337988; cv=none; b=EKJQa6M8GYERy7Xv8gTbCiWqAacxCMI8aPn/3ClOi36Uj2G7hdTTf5ef/7XLoLdAcvYN09Z0X7qHNvnx1Crg14XKKAf6hzWTL31lz1Z3ig3r2qRjB8LGruixM34sJIwcOmxbKSu+Jkcz0lLbIfoV9bcmJUsYjf6tmgOnLRZ58PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741337988; c=relaxed/simple;
	bh=OUm7r7IpsmT73wpd2azBUljbUrW/IqVpCS+NbA3cdD8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A76j1sr5wVHFUe+OwQTo95RcUy6XUxE+3aP/yoJGbjEbllVWDkJUqI0bPeOnMSSQG87WWNOOfQAGCluV6RBbORFVPyx6frkEBdwynvAUF/iOvi+XnHu0oVKeW8EyMUhjve7WYMTX4JcpLmtZea+8vCUseOZoR/9GM97M80yZ8JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ernTCcp2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09EC7C4CED1;
	Fri,  7 Mar 2025 08:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741337987;
	bh=OUm7r7IpsmT73wpd2azBUljbUrW/IqVpCS+NbA3cdD8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ernTCcp2o/kCxExwSGkbZOyzh6oF9W/6wtDyKXNyH900Nr+5vjVjbCzhxnoBlYtym
	 HLFZVN2MhtEYTdw9aPiCSX+aMKWnb3OySFZ6jaFmOnJHIQ9sAuuaAH6caSepvR/uqf
	 WC1rA+By+L0IxyLYkAHhAeslfFc2keV7H0cr+0u7HhFuu1hUiy0OM86F60PkWYDr32
	 pUjyYIANYz4kRLOTYS9OQ0rlsW20BdgbeMbIhkT9IlHPmCfqpyABZRZzKnWhYe8JUD
	 6x2qI1C1/ulCK+pl34ozOSypZ/H0lXk6Jh9Uh6MqRjGwPQUO+RbaOU69T3EvRXNUVJ
	 idKQ/9hRlbG7w==
Message-ID: <2f39acd2-e378-47cf-b852-bee1a38108c5@kernel.org>
Date: Fri, 7 Mar 2025 09:59:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [EXTERNAL] Re: [PATCH v3 3/3] arm64: dts: marvell: cp11x: Add
 reset controller node
To: Wilson Ding <dingwei@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "robh@kernel.org" <robh@kernel.org>
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 Sanghoon Lee <salee@marvell.com>, Geethasowjanya Akula <gakula@marvell.com>
References: <20250227192536.2426490-1-dingwei@marvell.com>
 <20250227192536.2426490-4-dingwei@marvell.com>
 <d085c34a-fdbf-4950-a2e3-b3d25a1c0145@kernel.org>
 <BY3PR18MB46730C150D4CB9619B3B05FBA7CC2@BY3PR18MB4673.namprd18.prod.outlook.com>
 <050ae833-10b5-4d80-9856-8bc2f434a74f@kernel.org>
 <BY3PR18MB46739700B533630D65C60808A7C82@BY3PR18MB4673.namprd18.prod.outlook.com>
 <87b9e9c3-87db-4ebe-96b0-4f04705ef6f8@kernel.org>
 <BY3PR18MB4673B4CEB60D3D21AB17B01DA7C82@BY3PR18MB4673.namprd18.prod.outlook.com>
 <03b14353-5d47-48de-99fd-9cc48bad5651@kernel.org>
 <BY3PR18MB4673BD07048F8AF7EA55282CA7CA2@BY3PR18MB4673.namprd18.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <BY3PR18MB4673BD07048F8AF7EA55282CA7CA2@BY3PR18MB4673.namprd18.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/03/2025 18:42, Wilson Ding wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzk@kernel.org>
>> Sent: Wednesday, March 5, 2025 11:29 PM
>> To: Wilson Ding <dingwei@marvell.com>; linux-kernel@vger.kernel.org;
>> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
>> robh@kernel.org
>> Cc: andrew@lunn.ch; gregory.clement@bootlin.com;
>> sebastian.hesselbarth@gmail.com; krzk+dt@kernel.org; conor+dt@kernel.org;
>> p.zabel@pengutronix.de; Sanghoon Lee <salee@marvell.com>;
>> Geethasowjanya Akula <gakula@marvell.com>
>> Subject: [EXTERNAL] Re: [PATCH v3 3/3] arm64: dts: marvell: cp11x: Add reset
>> controller node
>>
>> On 04/03/2025 20:08, Wilson Ding wrote:
>>>
>>> I did consider shrinking the syscon's register address range to make
>>> the reset-controller node to be independent from the syscon node.
>>> However, I found the syscon node is also referred by some devices for
>>> miscellaneous configurations . The reset configuration register
>>> happens to be located in between these registers and clock/GPIO
>>> registers.
>>>
>>>> drop offset in your patch or unify everything into 'reg'.
>>>>
>>>
>>> This is exactly what I proposed in v3 patch. Do I misunderstand you?
>>>
>>> CP11X_LABEL(swrst): reset-controller@268 {
>>> 	compatible = "marvell,armada8k-reset";
>>> 	reg = <0x268 0x4>;
>>> 	#reset-cells = <1>;
>>> };
>>
>> I don't see the other device being fixed here. How did you unify them?
> 
> This patch series is about the proposal of Armada8K's reset controller
> dt-binding. The dt-bindings issues of clock/GPIO controllers have been
> there for years. Having to say, it is not just a simple patch to fix it. It


I understand, you just want to throw your patch here over the wall. It's
reasonable, I feel it. Just like previous cases for this binding -
everyone wanted one subnode at a time, ignoring bigger picture, each
time making it franken-node or franken-binding.

Please listen to Greg's talk from years ago about upstreaming. "I don't
want your code":
https://www.youtube.com/watch?v=fMeH7wqOwXA


Best regards,
Krzysztof

