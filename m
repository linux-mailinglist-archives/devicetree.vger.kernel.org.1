Return-Path: <devicetree+bounces-139408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A89A15C1C
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 10:20:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7EE371883A43
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 09:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4DAD1632E6;
	Sat, 18 Jan 2025 09:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeXE91Rw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B80D5789D;
	Sat, 18 Jan 2025 09:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737192001; cv=none; b=snOsK2/alEbLg3fldD6tKsijp62Id3W5o57SsUC85QDf7IiufhO7skhnQA3/wulPb+aRbtyAv4YrhcGr8T53ArOPELQFhlaqNnJ5259xlV1IuKPWrmoUPL56CFP29wmlApz+L4mWS52+nDhdWag2jV5N7XE7Ngvclp70LX9oEUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737192001; c=relaxed/simple;
	bh=JUEliZBo7/CjvZ8kETdFp4BYykF5r5B2KqwI5KLLyqU=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=pWUVpR9z+2MlQNNyf6JvcBvoMjC4AZ6T7JoDGG3POXKqW/1SYaxmO7DRrwso1514ORpNEJOfkMDoBko0fs0YcKXAXDYVRobA1LYFBrv28+ZcEWvOFMO7v7xDfO8pQg5CcN7YLCSRPs04fHf0FARvaWVzfGek0kZXnUIoit6qU6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeXE91Rw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6033C4CED1;
	Sat, 18 Jan 2025 09:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737192000;
	bh=JUEliZBo7/CjvZ8kETdFp4BYykF5r5B2KqwI5KLLyqU=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=EeXE91Rw7cDz/o7uoVMY53DBvZLpkgIQKvclt+XnhV3F4BM0HNMlGul16jUAw/gPJ
	 6hTvdcfndFGDEU3LbMnrniDr4vUXuDagtH4ONG42u3aFaf7zSQU425JFwqSjJPfPz1
	 TphFNRotExEp0Oor0kyc18ii9mJFyRnznxq+pb5YHFyH8r95g50R7ayUmsAPR+zq9c
	 1HXP8fsy3nfe9Ajs8OcBrcgVuX0gp2t6a9WmpNd+dZx6yw8ZoVTe7oSkyohYZBRz3r
	 nJSB1uOkaLgtcCyjjM9pW/SOcNxgvV1D/MqVZN1HOip/uYJKF4JHJRu4oVZssS6L/G
	 iA9TEWM08WniQ==
Message-ID: <ea651368-bcfc-4f24-8ed6-1c558707ffda@kernel.org>
Date: Sat, 18 Jan 2025 10:19:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1 4/6] arm64: dts: rockchip: add rk3328 usb3 phy node
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Diederik de Haas <didi.debian@cknow.org>, Peter Geis
 <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: zyw@rock-chips.com, kever.yang@rock-chips.com, frank.wang@rock-chips.com,
 william.wu@rock-chips.com, wulf@rock-chips.com,
 linux-rockchip@lists.infradead.org, Alex Bee <knaerzche@gmail.com>,
 Conor Dooley <conor+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
 <20250115012628.1035928-5-pgwipeout@gmail.com>
 <7c7ce820-8a9b-46df-b143-f77835b7e5a0@kernel.org>
 <D73NJYSP62XH.28CVZPNUE21H3@cknow.org>
 <e1097f84-e40f-45ff-8b8d-125f7159ec1e@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <e1097f84-e40f-45ff-8b8d-125f7159ec1e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/01/2025 09:41, Krzysztof Kozlowski wrote:
> On 16/01/2025 17:53, Diederik de Haas wrote:
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
> 
> Coding style is clear: it is 80. It also has caveat about code
> readability and several maintainers have their own preference.
> 
>> Dragan Simic which deliberately changed code to make use of 100.
>> Being fed up with my own confusion, I submitted a PR to 
>> https://github.com/gregkh/kernel-coding-style/ which got accepted:
>> https://github.com/gregkh/kernel-coding-style/commit/5c21f99dc79883bd0efeba368193180275c9c77a
> 
> That's not kernel. That's Greg...
> 
>>
>> So now both the vim plugins code and README say 100.
>> But as noted in my commit message:
>>
>>   Note that the current upstream 'Linux kernel coding style' does NOT
>>   mention the 100 char limit, but only mentions the preferred max length
>>   of 80.
>>
>> Or is it 100 for code, but 80 for DeviceTree files and bindings?
> 
> From where did you get 100? Checkpatch, right? Kernel coding style is
> clear, there is no discussion, no mentioning 100:
> 
> "The preferred limit on the length of a single line is 80 columns. "
> 
> So to be clear: all DTS, all DT bindings, all code maintained by me and
> some maintainers follows above (and further - there is caveat)
> instruction from coding style. Some maintainers follow other rules and
> that's fine.


Although let me add here caveat, after looking at some other code: DTS
due to its nature of a lot of parent-child relationships combined with
long constants ("GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>") has the strongest
exception or the strongest second part of the coding style:
"...unless exceeding 80 columns significantly increases readability..."

And again: that's from official coding style document (so something
which have been for years), no matter what other people tell you they
think exists since years as coding style.

Splitting line, I commented here in this patch, did not improve readability.

Quite opposite: the line there was less readable in current format thus
it is not even about coding style anymore, but just readability style.
Any list with more than two short entries (by number of characters in
list item) or any list with more than one long entry should be split for
readability. However actual ITEMS in list should not be split - but
again coding style is here very precise since years. 80 unless
significantly increases readability.

Best regards,
Krzysztof

