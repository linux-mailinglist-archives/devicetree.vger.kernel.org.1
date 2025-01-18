Return-Path: <devicetree+bounces-139410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 672FDA15C23
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 10:25:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C0D9C1889854
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 09:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BBB517C224;
	Sat, 18 Jan 2025 09:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="kiwlxS4g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAE515789D;
	Sat, 18 Jan 2025 09:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737192311; cv=none; b=e7S91C47ugrQGhy3dpNLRrLzLmlU6NSQKpr7iw/WYo5nbsnaCJdKIsUwE2pzocXb4q/0qckLZtWKG8asYuZNqbcLwZIHyr7a1ef9pD1Yczzh9+OWqCkhtWGOpvy3WQvNHuPOSbUV71a7XBr6Xw7T8mZmp5/0pVB8bb5E9OszqGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737192311; c=relaxed/simple;
	bh=vwymbIYCd1KLQ37rlGh0557bBwmIP+9DkmwskhVTzS8=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=CG28g6u7vXumrD7NIFZ7rQhJmtI3RtHoZgTcWiY5D/z9d3UUtGk1+iiUQhssVX7lkYe7dMq1KQYe62sMzKXzPtgcUeACGa+/FotBkmVXCw96w96sA18S2w8xzrq3o3x1yNY+ML311gd+fkJ66/SePslAX/tjr/Nsq4iZqLTXAZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=kiwlxS4g; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1737192301;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=f3gaHJhxYmNnOibwoWf6n+HsBORRNWAm1WBlAvkjJ5c=;
	b=kiwlxS4gR7ebogOG+lpIeJxKepxcvjj1PHy+JhwHYk8NWBxoPtOQM4yqlbIBObWQAOySJJ
	8ISijcucWY1FzlW0ZgF2/U/agqwkB2PIWlQ2Y3TsVgoeLnT47UNaur+W80q+0xclNHhMni
	ivpjhRTmJeV8bQmMCmzjaEAt9zFY/oPP2QwkKdHXtXdBdKbv44rR2btiH34bdo+orUR4zI
	6TFEvtiU5G1OkvCD2HauR/PCyUJiXQyJ36VJGLRa/AMU2YRDq5OTEvzG9X6TUMtYZ/tlCW
	ypPIdzRUp1COdxMAPmyBtsU96eU21WkwVSv6Vvno27R6AP0YBkOI65dqh7CylA==
Date: Sat, 18 Jan 2025 10:25:00 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Diederik de Haas <didi.debian@cknow.org>, Peter Geis
 <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>, zyw@rock-chips.com,
 kever.yang@rock-chips.com, frank.wang@rock-chips.com,
 william.wu@rock-chips.com, wulf@rock-chips.com,
 linux-rockchip@lists.infradead.org, Alex Bee <knaerzche@gmail.com>, Conor
 Dooley <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>, Jonas
 Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob
 Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v1 4/6] arm64: dts: rockchip: add rk3328 usb3 phy node
In-Reply-To: <dcfb46e8-f29a-4eee-b8f8-1ff774f272ce@kernel.org>
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
 <20250115012628.1035928-5-pgwipeout@gmail.com>
 <7c7ce820-8a9b-46df-b143-f77835b7e5a0@kernel.org>
 <D73NJYSP62XH.28CVZPNUE21H3@cknow.org>
 <1bc91b4214a1099801aaed6b3ef81ef3@manjaro.org>
 <dcfb46e8-f29a-4eee-b8f8-1ff774f272ce@kernel.org>
Message-ID: <60ced7df829e7c10e264627cc0947762@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Krzysztof,

On 2025-01-18 09:46, Krzysztof Kozlowski wrote:
> On 17/01/2025 05:10, Dragan Simic wrote:
>> On 2025-01-16 17:53, Diederik de Haas wrote:
>>> On Thu Jan 16, 2025 at 2:01 PM CET, Krzysztof Kozlowski wrote:
>>>> On 15/01/2025 02:26, Peter Geis wrote:
>>>>> Add the node for the rk3328 usb3 phy. This node provides a combined 
>>>>> usb2
>>>>> and usb3 phy which are permenantly tied to the dwc3 usb3 
>>>>> controller.
>>>>> 
>>>>> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
>>>>> ---
>>>>> 
>>>>>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 39 
>>>>> ++++++++++++++++++++++++
>>>>>  1 file changed, 39 insertions(+)
>>>>> 
>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi 
>>>>> b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>>>>> index 7d992c3c01ce..181a900d41f9 100644
>>>>> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>>>>> @@ -903,6 +903,43 @@ u2phy_host: host-port {
>>>>>  		};
>>>>>  	};
>>>>> 
>>>>> +	usb3phy: usb3-phy@ff460000 {
>>>>> +		compatible = "rockchip,rk3328-usb3phy";
>>>>> +		reg = <0x0 0xff460000 0x0 0x10000>;
>>>>> +		clocks = <&cru SCLK_REF_USB3OTG>, <&cru PCLK_USB3PHY_OTG>, <&cru 
>>>>> PCLK_USB3PHY_PIPE>;
>>>> 
>>>> Please wrap code according to coding style (checkpatch is not a 
>>>> coding
>>>> style description, but only a tool), so at 80.
>>> 
>>> I'm confused: is it 80 or 100?
>>> 
>>> I always thought it was 80, but then I saw several patches/commits by
>>> Dragan Simic which deliberately changed code to make use of 100.
>>> Being fed up with my own confusion, I submitted a PR to
>>> https://github.com/gregkh/kernel-coding-style/ which got accepted:
>>> https://github.com/gregkh/kernel-coding-style/commit/5c21f99dc79883bd0efeba368193180275c9c77a
>>> 
>>> So now both the vim plugins code and README say 100.
>>> But as noted in my commit message:
>>> 
>>>   Note that the current upstream 'Linux kernel coding style' does NOT
>>>   mention the 100 char limit, but only mentions the preferred max
>>> length
>>>   of 80.
>>> 
>>> Or is it 100 for code, but 80 for DeviceTree files and bindings?
>> 
>> I don't know about the DT files and bindings, but the 100-column limit
>> for the kernel code has been in effect for years.  In this day and 
>> age,
> 
> That's just false. It was never in effect for years. Read kernel coding
> style document.

Perhaps it's about the semantics.

Please see the commit bdc48fa11e46 (checkpatch/coding-style: deprecate
80-column warning, 2020-05-29), which clearly shows that the 80-column
rule is still _preferred_, but no longer _mandatory_.

>> 80 columns is really not much (for the record, I've been around when
>> using 80x25 _physical_ CRT screens was the norm).
> 
> You mistake agreement on dropping strong restriction in 2020 in
> checkpatch, which is "not for years" and even read that commit: "Yes,
> staying withing 80 columns is certainly still _preferred_."
> 
> Checkpatch is not coding style. Since when it would be? It's just a 
> tool.
> 
> And there were more talks and the 80-preference got relaxed yet still
> "not for years" (last talk was 2022?) and sill kernel coding style is
> here specific.

It's perhaps again about the semantics, this time about the meaning
of "for years".  I don't think there's some strict definition of that
term, so perhaps different people see it differently.

To get back to the above-mentioned commit bdc48fa11e46, the 80-column
limit has obviously been lifted, putting the new 100-column limit as
an option for those who prefer having fewer "artificial" line breaks
over adhering strictly to the rules.

Thus, as a maintainer, you're obviously free to enforce the 80-column
limit of you want so.

If my opinion counts, I'd agree with the 80-column limit when it comes
to the device trees and bindings.  Keeping those files at the lower
width usually makes them more readable to me.  However, enforcing the
80-column limit in C and header files very often leads to having line
breaks that do nothing but make the code look a bit silly.

