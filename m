Return-Path: <devicetree+bounces-241872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5008BC83C7F
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 08:48:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C5C88349CBB
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 07:48:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6987A275AFB;
	Tue, 25 Nov 2025 07:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtxFb7Id"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4042136D4F2;
	Tue, 25 Nov 2025 07:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764056935; cv=none; b=gFalkW109r8sMSH0tjHmPo+VV/uHwSJKTuMYV9jxVJQfqhp8ZIMWrHYF8ZC5+sPIE+qK380jb2vbRW04kGDlqxXLWlvTo7504Pyw4yY5w7dKIjliTr2p0qV1HxHk0O4/hNvlIbMUT7UPbaUhfrh+fTocLjhNe0HCuUeVapdeLDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764056935; c=relaxed/simple;
	bh=x5pM9zLxuZpXecYHZhCLKWNXWy74V7ajlcL8XDCy0hw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NhnZNleYgqXFgxjlgIp5C5SjAV4U1So+IMZfRZSPxqrGsfi3IiopwvZJQ/Pdm8ddgF+qmq0+sXFKdQGTEMyQnuKHNb3+yL2SRYvYubttpoCR2BMKG81XvePSxfBvQFyPi4QeU7cX16mKF07BLDGYm8J/elIQTGDGkC4iPkHo0+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtxFb7Id; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29151C4CEF1;
	Tue, 25 Nov 2025 07:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764056934;
	bh=x5pM9zLxuZpXecYHZhCLKWNXWy74V7ajlcL8XDCy0hw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FtxFb7IdXe1YA2OK4XCBYVUAEISvUoL6lGCR5hiUmbzY18VuDIyAMN4wmBorYG56C
	 QPEKXVqSs1DE7wk+xjAt57EeQZeeOGlq+S9WzSidsL9TBse+1NZszC9LxMJ1vMeDc+
	 We/nxAW26dKCe5CrobQ8E/NJr3lreZDnSzpcF2ASwmZ/dacdE2L+XPvhx+2iUZuIW0
	 zFeyb2qv0qcdSCdSVjAbHvUYtGMaBAqmdx5EcWGPGr5fmHsvjdNN/3ueen6AaBERyY
	 oG3bKVWGaqLfR48pWSik0JgWEWZQlX7IzF6gjUqtBSNxBbCUTJ9JXdvOEN0JxkNaqw
	 W3GiMhWTaB6Ag==
Message-ID: <489e9d44-fac6-4aa8-b094-ef20196e392b@kernel.org>
Date: Tue, 25 Nov 2025 08:48:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: riscv: starfive: add
 xunlong,orangepi-rv
To: Icenowy Zheng <uwu@icenowy.me>, E Shattow <e@freeshell.de>,
 Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Michael Zhu <michael.zhu@starfivetech.com>,
 Drew Fustini <drew@beagleboard.org>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
References: <20251123225059.49665-1-e@freeshell.de>
 <20251123225059.49665-2-e@freeshell.de>
 <20251124-free-bandicoot-of-skill-fa7d9a@kuoka>
 <20251124-state-campsite-3e7788a495c1@spud>
 <0e851ca0-1f56-437d-ae14-094c114d3b77@freeshell.de>
 <dc48fa76-0a08-4c9d-a3d7-724eb255aff8@kernel.org>
 <ff1f0e6b95150896136ab31ce13e0a2c7a3a5fe3.camel@icenowy.me>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <ff1f0e6b95150896136ab31ce13e0a2c7a3a5fe3.camel@icenowy.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 25/11/2025 08:33, Icenowy Zheng wrote:
> 在 2025-11-25星期二的 08:28 +0100，Krzysztof Kozlowski写道：
>> On 24/11/2025 22:59, E Shattow wrote:
>>>
>>> On 11/24/25 05:22, Conor Dooley wrote:
>>>> On Mon, Nov 24, 2025 at 08:28:10AM +0100, Krzysztof Kozlowski
>>>> wrote:
>>>>> On Sun, Nov 23, 2025 at 02:50:44PM -0800, E Shattow wrote:
>>>>>> From: Icenowy Zheng <uwu@icenowy.me>
>>>>>>
>>>>>> Add "xunlong,orangepi-rv" as a StarFive JH7110 SoC-based
>>>>>> board.
>>>>>>
>>>>>> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
>>>>>> Signed-off-by: E Shattow <e@freeshell.de>
>>>>>
>>>>> <form letter>
>>>>> This is a friendly reminder during the review process.
>>>>>
>>>>> It looks like you received a tag and forgot to add it.
>>>>
>>>> It's from me, don't resubmit just to add it since it'll be me
>>>> applying
>>>> anyway.
>>>>
>>>
>>> Hi Conor,
>>>
>>> Okay. Yes I'd dropped the tag since the commit message is
>>> appreciably
>>> different, and you would be handling it again anyways. Thanks! And
>>> thank
>>> you Krzysztof for the reminder -E
>>
>>
>> And where did you explain that you dropped the tag because of that?
>> Please read the form letter carefully.
> 
> Well I think there's no clear definition of "the patch has changed
> substantially" here.
> 
> E may think for this such-short patch, the commit message weighs a lot
> and the change to it is significant to the patch (e.g. making the patch
> not clear enough).

You still did not bother to read what we expect. I do not discuss if
this changed significantly or not, although it is obvious that it did
not change and tag should have been retained.

Look again:
<QUOTE>
Please read:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.
</QUOTE>

Where did you explain that?


Best regards,
Krzysztof

