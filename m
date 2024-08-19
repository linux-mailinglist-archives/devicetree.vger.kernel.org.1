Return-Path: <devicetree+bounces-94714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E5C9565E2
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 10:45:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0AC8E1F248F9
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 08:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258C115B135;
	Mon, 19 Aug 2024 08:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoIFJLoW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECEBC14BF8A;
	Mon, 19 Aug 2024 08:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724057123; cv=none; b=goglK1NXnfhNVVmIBqwvE4DSNwoSNG69PhdO6Yo654sVNI6yFhyNDqsfg+4dL1SY2NdZbeUHjq7vJ0Ia2C5ef0iWvnsrAO04jA+cXKdfPsQ5Nbk9FshaDaJNkZ7GDCrlaWS0hkuu7ZNnogutPnMVPg6a5y3W7RCW3uVNDzRIXE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724057123; c=relaxed/simple;
	bh=GjUorvjmTU5WRG5EMQuDoN+1MA/+xhI5cJsn+Juh4BU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=cMrkwwjARrv9ALEDpz7i5TGTSfPK10EJReVhymKXlNb7ZBgUyENfWssMeKXSQjJs2Hsqpx86Mtr9Q71iSAEgFwfpGWoPckahDp/xvhPuXzb2SBDXyog8tueNip+FR/BSVwNfCuVKF/Tok0zxDjFIzENbf5jKwhUz3NQYjHEKVJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoIFJLoW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A200C32782;
	Mon, 19 Aug 2024 08:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724057122;
	bh=GjUorvjmTU5WRG5EMQuDoN+1MA/+xhI5cJsn+Juh4BU=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=YoIFJLoWMkULYjYzbILG84V+k9yIe+gLlzbc9AYTl8/K6D2vHtyGxfWUOoyL6XGtP
	 Ft9ZxlruyALRH6yeT7KJX0vmm4kOETsc4R4HDid7b03HnYTm3vNCcatSr0PLivK/aJ
	 5BkKag/qlMlAIqlcUxabBGiA2GLWbdp0aLhE4GwMK6k8SoZpDElYgpOAn5o8R9ZPf/
	 MakZ0cWCzqQjLwtgkgoSbgsAM+/e2kGfcA5zxaXONpZOuJx5MhPTlNp3RYZUc6eRd/
	 POSyXJZXr7veYc9/rcVYMRtJncKhEwc399K3t2Vd99BO9QQQfxxyeXkc0GeCIsWnF4
	 8FJnQS4t/Nuxg==
Message-ID: <a0398ebc-c85c-44b4-afda-5e99a4299b34@kernel.org>
Date: Mon, 19 Aug 2024 10:45:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] dt-bindings: clock: Add AST2700 clock bindings
To: Ryan Chen <ryan_chen@aspeedtech.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
References: <20240808075937.2756733-1-ryan_chen@aspeedtech.com>
 <OS8PR06MB7541CA018C86E262F826B9E5F2BA2@OS8PR06MB7541.apcprd06.prod.outlook.com>
 <OS8PR06MB7541B0D9A43B989DC1738F68F2852@OS8PR06MB7541.apcprd06.prod.outlook.com>
 <5081c41b-dfbd-49ad-a993-b983d4c339f0@kernel.org>
 <OS8PR06MB7541196D3058904998820CFFF2852@OS8PR06MB7541.apcprd06.prod.outlook.com>
 <9465f8c0-5270-46df-af4b-e9ee78db63d1@kernel.org>
 <OS8PR06MB7541CC40B6B8877B2656182CF2852@OS8PR06MB7541.apcprd06.prod.outlook.com>
 <OS8PR06MB75415EC7A912DBD4D21A0035F2852@OS8PR06MB7541.apcprd06.prod.outlook.com>
 <e3733148-142c-40a1-b250-4502e8726f0c@kernel.org>
 <OS8PR06MB7541D5AB85D8E44E89389BC3F2862@OS8PR06MB7541.apcprd06.prod.outlook.com>
 <26988bcd-4d58-4100-b89c-00e8ef879329@kernel.org>
 <OS8PR06MB7541A7E690A2D72BA671622EF28C2@OS8PR06MB7541.apcprd06.prod.outlook.com>
 <929c322e-7385-48da-b925-7f363cf5b6f7@kernel.org>
 <OS8PR06MB7541672B4F9BCAA37E0D4005F28C2@OS8PR06MB7541.apcprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <OS8PR06MB7541672B4F9BCAA37E0D4005F28C2@OS8PR06MB7541.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/08/2024 08:42, Ryan Chen wrote:
>> Subject: Re: [PATCH 3/4] dt-bindings: clock: Add AST2700 clock bindings
>>
>> On 19/08/2024 07:55, Ryan Chen wrote:
>>>> Subject: Re: [PATCH 3/4] dt-bindings: clock: Add AST2700 clock
>>>> bindings
>>>>
>>>> On 13/08/2024 03:53, Ryan Chen wrote:
>>>>>> Drop the define for number of clocks from the header, because it is
>>>>>> not a
>>>>
>>>> *NUMBER OF CLOCKS*
>>>>
>>>>>> binding. You can put it in the driver or not, I don't care and do
>>>>>> not provide guidance on this because I don't know if it makes sense at all.
>>>>>> What I know is that number of clocks is not related to binding. It
>>>>>> is not needed
>>>>
>>>> *NUMBER OF CLOCKS*
>>>>
>>>>>> in the binding, either.
>>>>>
>>>>> Sorry, I am confused.
>>>>> if you think that number of clocks is not related to binding.
>>>>
>>>> *NUMBER OF CLOCKS*
>>>>
>>>>> How dtsi claim for clk?
>>>>> For example in dtsi.
>>>>> include <dt-bindings/clock/aspeed,ast2700-clk.h>
>>>>> usb3bhp: usb3bhp {
>>>>> ....
>>>>> clocks = <&syscon0 SCU0_CLK_GATE_PORTAUSB>;
>>>>
>>>> And where is *NUMBER OF CLOCKS* here? I don't see any problem. No
>>>> useless SCU0_CLK_GATE_NUM define here.
>>>>
>>> Understood now, I will remove those *NUMBER OF CLOCKS*.
>>> And will replace to
>>> #define SCU0_CLK_END  34
>>
>> NAK, it's like you keep ignoring my comments entirely. Even if you call it
>> "SCU0_CLK_NOT_END" it does not change. Do you understand that it is not
>> about name? Read my first comment.
>>
>>>
>>> Refer:
>>> https://github.com/torvalds/linux/blob/master/include/dt-bindings/cloc
>>> k/imx8-clock.h#L87
>>
>> So you found a bug and this allows you to create the same bug?
>>
> Sorry, I don't see this is a bug.

No, it's not a bug, but I do not agree for using arguments like "someone
did it, so I can do the same". Why did you pick up exactly this example
instead of others who removed the clock number?

> But I try to understand your point, you prefer following for clock nums, am I correct?
> https://github.com/torvalds/linux/blob/master/drivers/clk/meson/g12a.c#L5558-L5559

I said that this is not a binding. Don't add to the binding things which
are not a binding.

I don't care how do you implement in drivers - there are several ways
how to achieve it.


Best regards,
Krzysztof


