Return-Path: <devicetree+bounces-238595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D31C5C9BD
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:35:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1DABE4F967C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:25:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 812EA30DD0E;
	Fri, 14 Nov 2025 10:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHd0ZFH9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCD23090E2
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763115941; cv=none; b=pZLOijPExz4CQJrUNR5OoMwK2Aqv6GdGS9hqdXj9kJBvHElgDatPXHw4kegkthVwjtO1WdoG5/j3hS5+KcmYlKFy9P067jsuO2DIqRNDknmbrPvaDZB4EOPeR6H5/sjrptYZerrGqt6YlFdEFaNratosrLHWu+MrDK6ogrhuL5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763115941; c=relaxed/simple;
	bh=xbRr64+VOJ7bkaBbrPgTViWV02mxV4dUSmkkvIUgt0U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t/mZURBcs6SaPDA7Ybk1AFHSznc3PxqxrPReFUbog+9CDxJvXo4M53j0KReASOp9gy1R8s0T3/A4KzZ8VnQdNNv5nlArJqzc1skygbVixVmKEM5g/1V9LB/e8SJDS1/bYvzz3CWPUiHHw5ZFODMu+6egXTM/DDwL0LVNFqo7Atg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHd0ZFH9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDAFBC4CEF1;
	Fri, 14 Nov 2025 10:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763115940;
	bh=xbRr64+VOJ7bkaBbrPgTViWV02mxV4dUSmkkvIUgt0U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jHd0ZFH97CRcs94oPE81IgtORCgWd/qGCUP9mZqPE3biFGP6+2jmSxQImwuRY1NPn
	 ia5598L1xPPWX8MzShX/+SQPcSzrP8kj5csIYHvnle+XQjnYRSytrVx0sigKKqwP/1
	 Q0bdDjOWupv3JMUXqnON1psRHS2qKQNoGCl2tBVujoN9Acf72oZDd+5KfQraJWBr7q
	 u+Zr4AGl9oKiquqWDc9aDl+6c1eBaZoGWSQZ6g7hgXGa2br11pwAwVszJck0p9jeZu
	 qu2Fv9VGI+b0JpQPWfs67HlNe5J5Bplh9Tpk79cgcqqVw8whkKpALbqBHObswwK4aQ
	 fAWghhMHJ+erg==
Message-ID: <618422a5-9e74-47e9-a97c-641c47d13186@kernel.org>
Date: Fri, 14 Nov 2025 11:25:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add kfr prefix
To: Gilles BULOZ <gilles.buloz@kontron.com>, Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
References: <13a2c25b-9633-c06c-0c07-95157a2a9c1e@kontron.com>
 <2e04869a-29f8-4c2e-bfe7-0a4b22369a8c@kernel.org>
 <f47ea697-ace1-4909-eefd-7829302fff8a@kontron.com>
 <e9cd0bfe-e410-40c7-861f-274b1998be33@kernel.org>
 <3635333b-689f-215f-0127-5d24c2b7a71f@kontron.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <3635333b-689f-215f-0127-5d24c2b7a71f@kontron.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 14/11/2025 11:19, Gilles BULOZ wrote:
> Le 14/11/2025 à 10:32, Krzysztof Kozlowski a écrit :
> 
>> On 14/11/2025 10:23, Gilles BULOZ wrote:
>>> Le 14/11/2025 à 09:40, Krzysztof Kozlowski a écrit :
>>>
>>>>
>>>> On 14/11/2025 08:53, Gilles BULOZ wrote:
>>>>> Add kfr vendor prefix for Kontron France, which is a single-board
>>>>> computer (SBC) manufacturer.
>>>> There is no user for this.
>>> Hi Krzysztof,
>>>
>>> Yes, there's no user for vendor "kfr" in kernel tree, but Kontron has
>>> produced some ARM boards (VM6103,VX3106,VX6124,VX3124) on which we
>>> ported uboot and added some entries in device tree for board specific
>>> devices (CPLD) using vendor "kfr". We also provide a Linux BSP for these
>>> boards with drivers using compatible = kfr,<cpldchip>.
>>> My patch was just to reserve this vendor officially so that no other
>> You have entire commit msg to explain unusual things. Your commit msg
>> must explain WHY you are doing it so we know WHY we would want to accept
>> that patch. If you do not want to convince me why I want this patch
>> then... I don't want that patch (please watch Greg's talk titled that way).
> 
> Sorry, I had a look to the mailing list archive and did as another developer
> did to have a vendor added to the list, but his patch also added new drivers
> using this vendor, unlike mine.
> 
> I also did not understand you answer "there is no user for this" but I
> guessed, I hope right.
> 
>>
>> Anyway, you cannot "reserve" prefix. You must reference here the
>> upstream user, if it is not obvious.
> 
> With "upstream user", do you mean a driver in the official kernel tree ?
> In this case there's none : we provide our drivers out-of-tree in a BSP package.

Upstream user, or user in this context, is any upstream open-source
project using these bindings or in-kernel DTS.

out-of-tree forks are not upstream, thus does not count here, sorry.


> 
>>
>> Plus I am pretty sure Kontron already has prefix and there is no point
>> for another one. How many companies Samsung has? 10? 20? How many prefixes?
> 
> Yes there's already "Kontron S&T AG" but as Kontron France is making very
> specific products, I thought this was possible to have a different vendor as
> for ACPI/PNP ID registry where Kontron has four entries. Maybe this rule is
> written somewhere but I was not aware and did not see device-tree vendors as
> a rare resource.

One prefix is just enough, there are no benefits usually of having more.

Best regards,
Krzysztof

