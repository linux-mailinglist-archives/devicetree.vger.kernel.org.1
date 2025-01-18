Return-Path: <devicetree+bounces-139403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F1FA15C06
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 09:47:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2526E167A43
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 08:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AD64166F1A;
	Sat, 18 Jan 2025 08:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URrojRbk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5260815FD13;
	Sat, 18 Jan 2025 08:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737190016; cv=none; b=XBzq9kajiFLd+yKyfGfa59a8d5lU5R6DNoEv/kPneLM9xpkNcyGl8XcZrDX3TuT8mExS1ee9Y54GR2G0ThcU4ZPk8bbrFQMv86HrMHi26o2MVhRAz+Hg8gO09kD9R3FtGgk/XnSKrmuOeKR9QfuX1ulqruxkmpV8nGfUVdUK5DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737190016; c=relaxed/simple;
	bh=WfZXGy+wKNZRWbfQVNLuFDIe2KamP/Qh8JFA7eT4qFU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b04P4q1LlDpuOsHo0H+7Q8yxH0xvyE7U1ZZmAvewAk5eXBXUvyXP2KjngxlU0vZ4dLf00huwNkzxc73VoCkm37kgDAwoqivtM8wH6x4KT/7vtNYyyXH8Uh4j2JOefKxO0joKx/qXBO5EpdSZXFhk+vYjv4EJQ96a6KJdVkXGXBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URrojRbk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F365AC4CED1;
	Sat, 18 Jan 2025 08:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737190015;
	bh=WfZXGy+wKNZRWbfQVNLuFDIe2KamP/Qh8JFA7eT4qFU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=URrojRbkf2KfNhg4ylbvwv0KdROHqnM1vSnZuWaGOJcdknejSgXTZC1XsRe6X97P6
	 By6Cj+/LlajrXg3E1Eb+aZI9q6uAEK+F+vVAWM0EoON2sSFkL2QT1dwHOsSw3MxksR
	 PCVqr2JoiyHob3IKWHWl2aDeqg8O5lz01Hbb2ZgL8Au3sAu7YDEk0bpGTT5dIeC6AY
	 iNyl3KElfGGf4bc1cCLoW4haRPQYCnv2wiDVH09SJYAPbQVIaTMTrx8o7oueqg2wR+
	 IMdnGE/gb7CK72c+Bg+4rrnwqpqR8lV4BBhgB6ZtD0kIowtH9N0kXEFEESSqbfOLA5
	 IUuEOq0hefFSg==
Message-ID: <dcfb46e8-f29a-4eee-b8f8-1ff774f272ce@kernel.org>
Date: Sat, 18 Jan 2025 09:46:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1 4/6] arm64: dts: rockchip: add rk3328 usb3 phy node
To: Dragan Simic <dsimic@manjaro.org>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 zyw@rock-chips.com, kever.yang@rock-chips.com, frank.wang@rock-chips.com,
 william.wu@rock-chips.com, wulf@rock-chips.com,
 linux-rockchip@lists.infradead.org, Alex Bee <knaerzche@gmail.com>,
 Conor Dooley <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
 <20250115012628.1035928-5-pgwipeout@gmail.com>
 <7c7ce820-8a9b-46df-b143-f77835b7e5a0@kernel.org>
 <D73NJYSP62XH.28CVZPNUE21H3@cknow.org>
 <1bc91b4214a1099801aaed6b3ef81ef3@manjaro.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <1bc91b4214a1099801aaed6b3ef81ef3@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/01/2025 05:10, Dragan Simic wrote:
> Hello Diederik,
> 
> On 2025-01-16 17:53, Diederik de Haas wrote:
>> On Thu Jan 16, 2025 at 2:01 PM CET, Krzysztof Kozlowski wrote:
>>> On 15/01/2025 02:26, Peter Geis wrote:
>>>> Add the node for the rk3328 usb3 phy. This node provides a combined usb2
>>>> and usb3 phy which are permenantly tied to the dwc3 usb3 controller.
>>>>
>>>> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
>>>> ---
>>>>
>>>>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 39 ++++++++++++++++++++++++
>>>>  1 file changed, 39 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>>>> index 7d992c3c01ce..181a900d41f9 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>>>> @@ -903,6 +903,43 @@ u2phy_host: host-port {
>>>>  		};
>>>>  	};
>>>>
>>>> +	usb3phy: usb3-phy@ff460000 {
>>>> +		compatible = "rockchip,rk3328-usb3phy";
>>>> +		reg = <0x0 0xff460000 0x0 0x10000>;
>>>> +		clocks = <&cru SCLK_REF_USB3OTG>, <&cru PCLK_USB3PHY_OTG>, <&cru PCLK_USB3PHY_PIPE>;
>>>
>>> Please wrap code according to coding style (checkpatch is not a coding
>>> style description, but only a tool), so at 80.
>>
>> I'm confused: is it 80 or 100?
>>
>> I always thought it was 80, but then I saw several patches/commits by
>> Dragan Simic which deliberately changed code to make use of 100.
>> Being fed up with my own confusion, I submitted a PR to
>> https://github.com/gregkh/kernel-coding-style/ which got accepted:
>> https://github.com/gregkh/kernel-coding-style/commit/5c21f99dc79883bd0efeba368193180275c9c77a
>>
>> So now both the vim plugins code and README say 100.
>> But as noted in my commit message:
>>
>>   Note that the current upstream 'Linux kernel coding style' does NOT
>>   mention the 100 char limit, but only mentions the preferred max 
>> length
>>   of 80.
>>
>> Or is it 100 for code, but 80 for DeviceTree files and bindings?
> 
> I don't know about the DT files and bindings, but the 100-column limit
> for the kernel code has been in effect for years.  In this day and age,

That's just false. It was never in effect for years. Read kernel coding
style document.

> 80 columns is really not much (for the record, I've been around when
> using 80x25 _physical_ CRT screens was the norm).

You mistake agreement on dropping strong restriction in 2020 in
checkpatch, which is "not for years" and even read that commit: "Yes,
staying withing 80 columns is certainly still _preferred_."

Checkpatch is not coding style. Since when it would be? It's just a tool.

And there were more talks and the 80-preference got relaxed yet still
"not for years" (last talk was 2022?) and sill kernel coding style is
here specific.

Best regards,
Krzysztof

