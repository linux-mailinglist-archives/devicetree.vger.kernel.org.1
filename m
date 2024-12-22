Return-Path: <devicetree+bounces-133407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B452A9FA765
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:46:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8126B162DBE
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E43C143759;
	Sun, 22 Dec 2024 17:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="PiIQGtOK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFDE33F3
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 17:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734889602; cv=none; b=sSo+J7OuDkPyGoSF64CGoAUC0kFmvjDVYQicUTN0sE6H2SZSEO0kQEPMsvDT1XIwD9wfGwudQKZASK0YpzBcHNltQlG70gPIU2cYnpJ2rR65EM2/KjBJU1R29eYE4rQ+Uh16PfcBDGAoCfBAaGTTm5vNjYNOT9YzDk2en6aq1DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734889602; c=relaxed/simple;
	bh=9n4KNUBmYNQNqQxoqp6mj0QdUaoNXC6ZRGgL2sYr9FQ=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=uEdiWHjNJ3b+/KGTeRwfYOWLUh8ZU8ReM5r9wVAAWNLLmZiXglIm6zCHDtVAZO3FQdxpCB49LzTZzfvg4428e6cnfTi39DW0o5zerWkgRvOHUM6v0b95ATSmv/v9ZjSwcVCp1gue3laTQXkHZFTdzB/P+mn1oocuFGljtVrx4VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=PiIQGtOK; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734889592;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ErMbVbPCDW7ngNvl87w1yb4T3zK/u9GamAsi4JosXm8=;
	b=PiIQGtOKLREfP9gvAz7TFNOIuzbtU+9wbT47upcUqEPJzr2VSuKF/s+W870r9L92HzHUwi
	dc+yKoKWIYGmWJAiG3ZlG28KEJh2FNo4+Z6/YuOQnXA9UR7N0aB/1SiTnmqjtlfVxAdAYL
	n62e9/5MpDlU4WEZvn6e1ZDPxE6dEJq37/lakWhAq7+wIV9omaUGhZiWL168jipkXav0FX
	NtpPaLEIaqukIiwaE2e+pIDlStDAfrlIsingeodLxI6H1fumry9T5qftan6Kjmb20h1SOV
	DUteFHKpPBR1zovvhnI7UJYwoRQb8JyByewV62c8AYV/oXK3abuPEeaekzHgjg==
Date: Sun, 22 Dec 2024 18:46:31 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 04/12] arm64: dts: rockchip: Rename regulator for
 pcie2x1l2 for Radxa ROCK 5C
In-Reply-To: <90eafe45-7863-4c1d-b1e5-55a4fe32c806@kernel.org>
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-5-naoki@radxa.com>
 <f525d875-734b-4c41-95ba-be07b11f8e1c@kernel.org>
 <47B1D9F5B9EC2A94+55e35302-64c6-4651-8f27-416723b8218b@radxa.com>
 <57C678CDC48F30E6+634c520a-a0b8-478f-9b5b-8b746aa5ab9c@radxa.com>
 <99e54beb-fa4b-4d51-9ab7-b35cc61dc164@kernel.org>
 <F023D8BD1C0C2248+234bbc41-2871-49a9-be98-4475e4e6da49@radxa.com>
 <90eafe45-7863-4c1d-b1e5-55a4fe32c806@kernel.org>
Message-ID: <44ba02e34d7bf6a6657894802a87b690@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Krzysztof,

On 2024-12-22 07:27, Krzysztof Kozlowski wrote:
> On 22/12/2024 04:18, FUKAUMI Naoki wrote:
>> On 12/22/24 05:15, Krzysztof Kozlowski wrote:
>>> On 20/12/2024 07:51, FUKAUMI Naoki wrote:
>>>> On 12/17/24 10:11, FUKAUMI Naoki wrote:
>>>>> On 12/16/24 22:38, Krzysztof Kozlowski wrote:
>>>>>> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>>>>>>> Use consistent name with other regulators. No functional change.
>>>>>>> 
>>>>>>> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
>>>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>>>>> ---
>>>>>>> Changes in v5:
>>>>>>> - Reword commit message
>>>>>>> Changes in v4:
>>>>>>> - reword commit message
>>>>>>> Changes in v3:
>>>>>>> - none
>>>>>>> Changes in v2:
>>>>>>> - new
>>>>>>> ---
>>>>>>>    arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 6 +++---
>>>>>>>    1 file changed, 3 insertions(+), 3 deletions(-)
>>>>>>> 
>>>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts 
>>>>>>> b/arch/
>>>>>>> arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>>>>>> index 85589d1a6d3b..61d75ab503b2 100644
>>>>>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>>>>>> @@ -76,13 +76,13 @@ pwm-fan {
>>>>>>>            pwms = <&pwm3 0 60000 0>;
>>>>>>>        };
>>>>>>> -    pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
>>>>>>> +    vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
>>>>>> 
>>>>>> No, neither explained, nor correct. See DTS coding style.
>>>>>> 
>>>>>> Please use name for all fixed regulators which matches current 
>>>>>> format
>>>>>> recommendation: 'regulator-[0-9]v[0-9]'
>>>>>> 
>>>>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/
>>>>>> tree/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml?
>>>>>> h=v6.11-rc1#n46
>>>>> 
>>>>> 'regulator-[0-9]v[0-9]' is preferred, but 'regulator-[0-9a-z-]+' is 
>>>>> also
>>>>> permitted, right?
>>>>> 
>>>>> i.e. regulator-vcc3v3_pcie2x1l2 should be 
>>>>> regulator-vcc3v3-pcie2x1l2
>>>>> 
>>>>> 
>>>>> Or, should we revert below patch and use 'regulator-[0-9]v[0-9]'?
>>>>> 
>>>>>    https://lore.kernel.org/
>>>>> all/0ae40493-93e9-40cd-9ca9-990ae064f21a@gmail.com/
>>>>> 
>>>>> Is 'regulator-0v0' valid?
>>> 
>>> Why would it be valid? Can you have regulator with 0 volts?
>> 
>> There may be a .dtsi that is shared across multiple .dts, so some
>> regulators may not be able to set a specific voltage in the .dtsi.
>> 
>> How should I describe it?
> 
> How fixed voltage regulator can have non-specific voltage? Sorry, 
> that's
> impossible. Shared DTSI with a regulator means that regulator is 
> shared,
> so it cannot be flexible.
> 
>>>>> Is 'regulator-12v0' invalid?
>>> 
>>> Read the binding. I gave you very specific link.
>> 
>> 46|       - description: Preferred name is 'regulator-[0-9]v[0-9]'
>> 47|         pattern: '^regulator(-[0-9]+v[0-9]+|-[0-9a-z-]+)?$'
>> 
>> The "description" and "pattern" don't match. What you provided is a 
>> link
>> to the "description".
> 
> It's pretty obvious still...
> 
>>>>> How should we handle multiple 1v8/3v3/5v0 regulators?
>>> 
>>> Just add suffix. But usually more than one suffix, 
>>> vcc+3v3+pcie_2x1l2,
>>> means you created a very specific name.
>> 
>> So shouldn't we refer to the schematic?
> 
> So that's the argument you define 10 fixed, uncontrollable regulators 
> in
> DTS? What is the benefit of that exactly? Just unnecessary bloat in 
> DTS,
> in kernel memory and for probe time?

I'm quite surprised to hear you suggesting that some of the hardware
components should be omitted from a board dts(i) file.  Regardless of
some of the hardware components being fixed or adjustable, they should
all be described, for the sake of transcribing the board schematic into
the board dts(i) files accurately and completely.  Furthermore, some
fixed components may actually be needed in the board dts(i) files; for
example, a fixed regulator may be turned on at boot time, or turned on
and off at runtime.

Technically, we could omit the fixed regulators from the board dts(i)
files, _only_ if they aren't powered on and off at boot time or at
runtime, of course, but many more things could technically be omitted
as well from the dts(i) files if we'd follow that rule, which would
result in a huge per-board inconsistency, leading to a mess.

