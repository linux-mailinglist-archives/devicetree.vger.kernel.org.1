Return-Path: <devicetree+bounces-139412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E75D7A15C2E
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 10:32:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0DED2166760
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 09:32:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 494D015FA7B;
	Sat, 18 Jan 2025 09:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4FJVbUT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207E627468;
	Sat, 18 Jan 2025 09:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737192727; cv=none; b=LSHNKpChSp4AwL+h3N2qI7tvvjpxhK02axxneW36v9Ky39gs0UC40sW7SC6DmMpLRRBpYxzmWXGC58Y9tRWikna7VfRUgZ0PqrYZh8zrYS0V2K6aaIgYm+n1lF7SMKeFiPUqbxesriAcq+htfr73jLKS9RN3xhq79YJEiwFE92c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737192727; c=relaxed/simple;
	bh=slDFS1qOHP2hPu4/TrE55BlL9AU6Ssnc1WzwiO4eZM0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a2+08apsPi9W7lO7xLZn5AdgMrc44qcVIjBLdxDyzxy86g1C7WxbeNVSSnHGQLok0UWncCaRIWY+uvyLBg4e86UO4DxhSmAjPLDtuOkyXD8hs70gto3B30AhsXIOWqJ/d0kAkp1B1CjERcxl8Q/Wg30eg36XLrlc3zbaIUcCiU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4FJVbUT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5ABD0C4CED1;
	Sat, 18 Jan 2025 09:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737192726;
	bh=slDFS1qOHP2hPu4/TrE55BlL9AU6Ssnc1WzwiO4eZM0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=G4FJVbUTzch8dTtYYYADsRELcaT9FUxu2zMFtIUD2iDmE67AEr7hTx47a8cTW47le
	 U/wpaQBi0zHQcWpXpGsgDNLwUdpVMhb91hZ0Q0j10D0Pgx+akCjgZ/2AIbEa7rFwNm
	 NcEr5LzI6bsCHOcmj960J6jbLOmkRZwU+2yU1Wp2vZIX0OJupmPhVIjPjhin4gYPax
	 MjB6VuCFxW/S1ivcSMJ5tMvX39vJru6DS8z+BYLJ5KCP6wgmMjl+kMbM52dyHptpff
	 RrkftLbTHlry+dumuawOSUPmdvGmCEKuNZlIFzr1eiSxkT1nO+0Pw0HgcPxHkk0hsW
	 1WY89DtOJTv2w==
Message-ID: <20b474be-301e-4dc3-9eb7-77e9ef075191@kernel.org>
Date: Sat, 18 Jan 2025 10:31:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1 4/6] arm64: dts: rockchip: add rk3328 usb3 phy node
To: Dragan Simic <dsimic@manjaro.org>
Cc: Diederik de Haas <didi.debian@cknow.org>, Peter Geis
 <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>, zyw@rock-chips.com,
 kever.yang@rock-chips.com, frank.wang@rock-chips.com,
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
 <dcfb46e8-f29a-4eee-b8f8-1ff774f272ce@kernel.org>
 <60ced7df829e7c10e264627cc0947762@manjaro.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <60ced7df829e7c10e264627cc0947762@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/01/2025 10:25, Dragan Simic wrote:
> Hello Krzysztof,
> 
> On 2025-01-18 09:46, Krzysztof Kozlowski wrote:
>> On 17/01/2025 05:10, Dragan Simic wrote:
>>> On 2025-01-16 17:53, Diederik de Haas wrote:
>>>> On Thu Jan 16, 2025 at 2:01 PM CET, Krzysztof Kozlowski wrote:
>>>>> On 15/01/2025 02:26, Peter Geis wrote:
>>>>>> Add the node for the rk3328 usb3 phy. This node provides a combined 
>>>>>> usb2
>>>>>> and usb3 phy which are permenantly tied to the dwc3 usb3 
>>>>>> controller.
>>>>>>
>>>>>> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
>>>>>> ---
>>>>>>
>>>>>>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 39 
>>>>>> ++++++++++++++++++++++++
>>>>>>  1 file changed, 39 insertions(+)
>>>>>>
>>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi 
>>>>>> b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>>>>>> index 7d992c3c01ce..181a900d41f9 100644
>>>>>> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>>>>>> @@ -903,6 +903,43 @@ u2phy_host: host-port {
>>>>>>  		};
>>>>>>  	};
>>>>>>
>>>>>> +	usb3phy: usb3-phy@ff460000 {
>>>>>> +		compatible = "rockchip,rk3328-usb3phy";
>>>>>> +		reg = <0x0 0xff460000 0x0 0x10000>;
>>>>>> +		clocks = <&cru SCLK_REF_USB3OTG>, <&cru PCLK_USB3PHY_OTG>, <&cru 
>>>>>> PCLK_USB3PHY_PIPE>;
>>>>>
>>>>> Please wrap code according to coding style (checkpatch is not a 
>>>>> coding
>>>>> style description, but only a tool), so at 80.
>>>>
>>>> I'm confused: is it 80 or 100?
>>>>
>>>> I always thought it was 80, but then I saw several patches/commits by
>>>> Dragan Simic which deliberately changed code to make use of 100.
>>>> Being fed up with my own confusion, I submitted a PR to
>>>> https://github.com/gregkh/kernel-coding-style/ which got accepted:
>>>> https://github.com/gregkh/kernel-coding-style/commit/5c21f99dc79883bd0efeba368193180275c9c77a
>>>>
>>>> So now both the vim plugins code and README say 100.
>>>> But as noted in my commit message:
>>>>
>>>>   Note that the current upstream 'Linux kernel coding style' does NOT
>>>>   mention the 100 char limit, but only mentions the preferred max
>>>> length
>>>>   of 80.
>>>>
>>>> Or is it 100 for code, but 80 for DeviceTree files and bindings?
>>>
>>> I don't know about the DT files and bindings, but the 100-column limit
>>> for the kernel code has been in effect for years.  In this day and 
>>> age,
>>
>> That's just false. It was never in effect for years. Read kernel coding
>> style document.
> 
> Perhaps it's about the semantics.
> 
> Please see the commit bdc48fa11e46 (checkpatch/coding-style: deprecate
> 80-column warning, 2020-05-29), which clearly shows that the 80-column
> rule is still _preferred_, but no longer _mandatory_.

I brought that commit, but nice that you also found it.

Still: read the coding style, not checkpatch tool.

> 
>>> 80 columns is really not much (for the record, I've been around when
>>> using 80x25 _physical_ CRT screens was the norm).
>>
>> You mistake agreement on dropping strong restriction in 2020 in
>> checkpatch, which is "not for years" and even read that commit: "Yes,
>> staying withing 80 columns is certainly still _preferred_."
>>
>> Checkpatch is not coding style. Since when it would be? It's just a 
>> tool.
>>
>> And there were more talks and the 80-preference got relaxed yet still
>> "not for years" (last talk was 2022?) and sill kernel coding style is
>> here specific.
> 
> It's perhaps again about the semantics, this time about the meaning
> of "for years".  I don't think there's some strict definition of that
> term, so perhaps different people see it differently.
> 
> To get back to the above-mentioned commit bdc48fa11e46, the 80-column
> limit has obviously been lifted, putting the new 100-column limit as


"Lifted" on *CHECKPATCH*, not on coding style. Do you see the
difference? One is a helper tool which people were using blindly and
wrapping lines without thinking, claiming that checkpatch told them to
do so. Other is the actual coding style.

You claim that coding style was changed. This never happened.

And my first  - really the first - comment here was also precise
mentioning that difference:

"Please wrap code according to coding style (*checkpatch is not* a
coding style description, but only a tool), so at 80."


Best regards,
Krzysztof

