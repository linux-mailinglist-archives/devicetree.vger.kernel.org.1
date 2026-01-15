Return-Path: <devicetree+bounces-255781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E8FD28967
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 22:03:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8F994308C64F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 21:01:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0708732B982;
	Thu, 15 Jan 2026 21:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rid881U+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7803324B34;
	Thu, 15 Jan 2026 21:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768510869; cv=none; b=dAXWNY7fXnjF0x9CE8u3GkPdFE66x4DuVbGRSiSBafMavnKAwsEh4smPsBFQYI9bhkdkkvJwBCfab8AQY8eaBV71Bd+I49rlEQFQ2HvVRCN+6QdNMlvOmbQSftqcm54YYhGqANo+2bQ/G2JB2dEfjduVJbfLBh9QKdFaGvS0vDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768510869; c=relaxed/simple;
	bh=QfsMNmFCztsyq6fZJ7VSMdsgX/l/Es58sdOM/qNqfSs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YAZfwqc7lglWjRE3dGNx47u6pN2NpPieMESiSJsHZbuaOtaqjybcQN/+C2o1n6vbWIqK7ugdeLwiMqBU+7Zb4HEAQIZ/diKP8ngYwSKlGHvfXxlfaeyEW35urPD0atp8hw3OjvGLIqcXGrrf8Jn4hb0oif1pezteQXXTqQO/KH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rid881U+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2AE6C16AAE;
	Thu, 15 Jan 2026 21:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768510869;
	bh=QfsMNmFCztsyq6fZJ7VSMdsgX/l/Es58sdOM/qNqfSs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Rid881U+QmflYLG6vrqUL26x7HkadOcPMi61652uLkFOrAQUoH7zNCC62Vwg+b8XC
	 +OlZqBHcKHik5yo9rqpu/ZkS4+KLY0/kuak3yWw1wdGByxGY48REjZ9F3fcrhHPfXz
	 MgrxZlyzsA5rdbOh1/Qr59fNRW4PA0pqHLvmkni5HRhP9Q3SlqPSFulwMhVsy6URLh
	 LlAKmWarpVTRj0BYSp+eXJ9vOT2XLTQ/Rf5YJ10p7gBTBdN6+ODxE/xCJEIFm+wZoa
	 GqPTmYiNPQwM/q3L6jDAFzgUPaaIrUzXOP+yS3FIcbPuF1s8UEgpJnkV36FnfP4jfc
	 3OerY28QpsSaw==
Message-ID: <ecbb2dc3-7895-434d-b502-cbc82150fe01@kernel.org>
Date: Thu, 15 Jan 2026 22:01:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [EXT] Re: [PATCH v4 2/5] dt-bindings: i3c: Add NXP P3H2x4x
 i3c-hub support
To: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "robh@kernel.org"
 <robh@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, "lee@kernel.org"
 <lee@kernel.org>, Frank Li <frank.li@nxp.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 Vikash Bansal <vikash.bansal@nxp.com>, Priyanka Jain
 <priyanka.jain@nxp.com>,
 Shashank Rebbapragada <shashank.rebbapragada@nxp.com>
References: <20260113114529.1692213-1-aman.kumarpandey@nxp.com>
 <20260113114529.1692213-2-aman.kumarpandey@nxp.com>
 <20260114-wonderful-vermilion-starfish-ad6ec9@quoll>
 <GVXPR04MB97786A5E118F5D12A9BA591B998CA@GVXPR04MB9778.eurprd04.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <GVXPR04MB97786A5E118F5D12A9BA591B998CA@GVXPR04MB9778.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/01/2026 13:21, Aman Kumar Pandey wrote:
> 
> On Tue, Jan 13, 2026 at 01:45:26PM +0200, Aman Kumar Pandey wrote: 
>> +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
>>> +cetree.org%2Fschemas%2Fmfd%2Fnxp%2Cp3h2840-i3c-
>> hub.yaml%23&data=05%7C
>>>
>> +02%7Caman.kumarpandey%40nxp.com%7C75a7d6f1f8b74fd3ac5808de5346
>> 3133%7C
>>>
>> +686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C639039758104017624%7
>> CUnkno
>>>
>> +wn%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwM
>> CIsIlAiOiJX
>>>
>> +aW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=Ze
>> GSgy3cF
>>> +whQbcO%2BserynVrrrqYGOIwBMgVjgdY25Lg%3D&reserved=0
>>
>> This is not a MFD device. Place it in appropriate place, e.g. i2c or i3c
>> controllers directory.
>>
> 
> Thanks for the review and the comment.
> 
> I would like to clarify why I modeled the P3H2840 as an MFD.

I do not see any model as MFD. You placed it in MFD directory and this
is what I contest.

Otherwise please point me to any hardware description what "MFD" is,
because for sure your I3C hub is not this:
https://en.wikipedia.org/wiki/MFD - scroll down to "Multifunction
device" in "Computing".

> While the primary function of the chip is an I3C hub, 

Wrap your emails so it will be possible to reply and read it.

So there you have your primary function.

> this device also contains a programmable regulator which is exposed externally and can be used to power downstream devices on the board, not only the internal hub logic. This regulator has:
> - Independent enable/disable control
> - Independent voltage configuration
> 
> From the board and hardware point of view, this block is not only a "hub-internal" power control, but a board-level power resource that other devices depend on. 
> hub logic and the regulator block have distinct roles and different Linux subsystems (I3C hub vs regulator framework), I modeled this as an MFD with two child devices.

Linux subsystems do not matter. We speak about bindings, not drivers.

You ignored some of my other comments. Your email is completely
unreadable, so answer is still NAK. Read my comments fully, fix your
email setup and then answer without all this messed quotes.

Best regards,
Krzysztof

