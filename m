Return-Path: <devicetree+bounces-248976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B660CD7FA1
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 04:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE8CD300EA33
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 03:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C7B01E2858;
	Tue, 23 Dec 2025 03:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEeyNKpk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3297933E7;
	Tue, 23 Dec 2025 03:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766460890; cv=none; b=aLYoyo3ZRcyl+M83JyV13n005hbEdgeZHOPWE0q3m7vpxKWZCEKAEs7kTe6ic0RNig/gY4LG+PDZCHlga4te7Hq2cnQpURVoZ6/guKZR9bvjM+NEE7tsgY/iDC63wbPCuMG+tdGE9jVBa41+Nwd5LVtXqE5QqpFm51BsG/sFX5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766460890; c=relaxed/simple;
	bh=nvqSmwEbMVQJrCdRPPDXMHnAmoFyv6Up951j02CsOBA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=aXlOvir/WRr2cthKFXdj/iQgAid2DeAC9/ZixVYBvWn4O1VEiNibACzL63PgZXxPBMU1hv8BM+qbrgAYkklBC/WpYc174cEJilsfVTvz0HwpuGpmqaxHsBfxPyywoFeOR4XN5C82gtlvLCyNkQTPJvX/PEAFboex0QEYmpv5VfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEeyNKpk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BF21C116B1;
	Tue, 23 Dec 2025 03:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766460887;
	bh=nvqSmwEbMVQJrCdRPPDXMHnAmoFyv6Up951j02CsOBA=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=lEeyNKpkspdHNRaCdmj4BeHfWUXEM6JXTDrZJGnKq20HZQuy2mYWXyeZbvQbL1/Hc
	 UW7CJvb52ru9aWVm5BQI7qXqB0Yx2qg11DZ2USb3+LJYSpbW5YvZNxhy5KjiZWSFJL
	 n2+38EAyTBsT1+TTl87xh9qAvVo0OW0rL7WWiwN0/RlRj5KjmbrRjF4KY9hNCLVIJm
	 3nKiqkTr+qDenn4ulTMVJ3SZVfdZO9+Y7TNuSGHsCmKwDhOSl36rnzL/1JBBbfUD+H
	 8j11rZ4VTahmpn5bx6D6AsSb0rZI00sDdJC40mVbPTLVJNjJu5w2bPHIVlIe3k9cSU
	 awMyPFN3EgC2g==
Message-ID: <fc89c97f-a455-4e84-a219-6ec7ad9b4216@kernel.org>
Date: Mon, 22 Dec 2025 21:34:46 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] an/rm64: dts: socfpga: agilex: fix CHECK_DTBS
 DTC_FLAGS warning
To: Khairul Anuar Romli <karom.9560@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251219234858.7543-1-karom.9560@gmail.com>
 <ce602264-b685-44c7-a463-e040819a07e4@kernel.org>
 <963594e9-135f-41b4-9105-f9ea0f88badb@gmail.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <963594e9-135f-41b4-9105-f9ea0f88badb@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/22/25 19:15, Khairul Anuar Romli wrote:
> On 22/12/2025 8:16 pm, Dinh Nguyen wrote:
>>
>>
>> On 12/19/25 17:48, Khairul Anuar Romli wrote:
>>> Add start address and ranges to eccmgr. This change corrects the 
>>> warning:
>>>
>>> socfpga_agilex.dtsi:612.10-669.5: Warning (simple_bus_reg): /soc@0/ 
>>> eccmgr:
>>> missing or empty reg/ranges property
>>>
>>
>> Sorry, but I'm not seeing this warning on my local build with v6.19- 
>> rc1, nor at Rob's build[1].
>>
>> Dinh
>>
>> [1] https://gitlab.com/robherring/linux-dt/-/jobs?kind=BUILD
> 
> 
> The warning observe if we build with DTC_FLAGS=-@.
> 

Still do not see the warning.

Dinh

