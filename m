Return-Path: <devicetree+bounces-133737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 950029FBABE
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:53:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 047347A2318
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 08:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 631BF198853;
	Tue, 24 Dec 2024 08:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VT4xLm7t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD351946B9;
	Tue, 24 Dec 2024 08:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735030367; cv=none; b=FQeZpTd7de/LZhLsVyNduTBEOuX3IPWnC5GXYpS+dBlwX4O/l9ZTTsKehS05lX576bML1tcGXi0xTtmW1H+j3NBhNwahlaJ5ochayBJ6PPEvYnjkZEGIwgu/II6Ijwy0oRyFXPofODJlAHdV9oddQIxxhj4u6vxKjq+ULyXy1pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735030367; c=relaxed/simple;
	bh=wsWYp7QfCmIW8xUSh5qe3ysDgOzJV8vy7SqdMnk84CA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YPxfMMNxSke/U3h4bsdz2DpXgZaf3AnwnWDAgCB7YqBSrNffIGvQJCXS0FSLYwQh03hP53xPRMYiu+5M28R3jB7Lh/A+lbaRppCWNhM61GoYjxRaO+QgABCaTyC2dLKGI3Isgc+5FgVjbBVyHHHUKQaUkbPOBqWjauDV0WEBQm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VT4xLm7t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C69DC4CED0;
	Tue, 24 Dec 2024 08:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735030366;
	bh=wsWYp7QfCmIW8xUSh5qe3ysDgOzJV8vy7SqdMnk84CA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VT4xLm7tJnv1ZBQhaeklQtG5dCsigiU404W9fMDUSamAFTL2VbXfpRUZKicS16vk8
	 NF0mjM7Emmb1tSIZJY9xFs/8o1rzgRDsQdTPrq9E1Ogv8lqzKW4xKZohoAo41rh2am
	 02F6ynaqJsJUtlAgIK87QqKAxTb6Sjp1JcCSn4BUVIbWX30Qn2QBQtD5feE52Rhv3l
	 71zmcE9hmxy6G9HIGF5EbboK9u73m5L95/RSrH+B3zRg5yzgGmmExCJSLqLZdBhSD2
	 r83014oGsyVTk9jpRAe9/MDyRxtXsyHqF3UwRhI99kdfqsiUD4e4QavuZXbRoYDHi8
	 +/VuAeWLU0gXA==
Message-ID: <d8fbc040-070e-4dfd-b634-e1b7fb42d67c@kernel.org>
Date: Tue, 24 Dec 2024 09:52:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: Add Morello compatibility
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Russell King <linux@armlinux.org.uk>
References: <20241223162029.326997-1-vincenzo.frascino@arm.com>
 <20241223162029.326997-2-vincenzo.frascino@arm.com>
 <fc83ab3f-99fe-4566-9a33-670956dd76a4@kernel.org>
 <342b3c31-7e82-41d1-a9f0-9f3973f99486@arm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <342b3c31-7e82-41d1-a9f0-9f3973f99486@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/12/2024 17:41, Vincenzo Frascino wrote:
> 
> 
> On 23/12/2024 16:32, Krzysztof Kozlowski wrote:
>> On 23/12/2024 17:20, Vincenzo Frascino wrote:
>>> Add compatibility to Arm Morello System Development Platform.
>>>
>>> Note: Morello is at the same time the name of an Architecture [1], an SoC
>>> [2] and a Board [2].
>>> To distinguish in between Architecture/SoC and Board we refer to the first
>>> as arm,morello and to the second as arm,morello-sdp.
>>>
>>> [1] https://developer.arm.com/Architectures/Morello
>>> [2] https://www.morello-project.org/
>>>
>>> Cc: Linus Walleij <linus.walleij@linaro.org>
>>> Cc: Rob Herring <robh@kernel.org>
>>> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>> Cc: Liviu Dudau <liviu.dudau@arm.com>
>>> Cc: Sudeep Holla <sudeep.holla@arm.com>
>>> Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>
>>> Cc: Russell King <linux@armlinux.org.uk>
>>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>>> ---
>>>  Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml | 3 +++
>>>  1 file changed, 3 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>>> index 8dd6b6446394..7934d2c4cba0 100644
>>> --- a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>>> @@ -118,6 +118,9 @@ properties:
>>>          items:
>>>            - const: arm,foundation-aarch64
>>>            - const: arm,vexpress
>>> +      - description: Arm Morello System Development Platform
>>> +        items:
>>> +          - const: arm,morello-sdp
>> Also:
>> const: arm,morello
>>
>> Unless you claim that this cannot be used in any other product than SDP,
>> but this then needs explanation in commit msg.
>>
> 
> Morello is a Prototype architecture and there are no plans to use it outside of
> SDP hence I did not add arm,morello.
> 
> I thought it was clear since the note states that Architecture, SoC and Board
> have the same name, if not, happy do address it in v3.
No, it's not clear because that statement still does not close
possibility of creating "Morello SDP v2" board. You should have two
compatibles, even if there are no plans to add new boards.

Best regards,
Krzysztof

