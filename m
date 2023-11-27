Return-Path: <devicetree+bounces-19200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAF27FA00C
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:53:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2DF431C20D64
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 12:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D7FE28DA4;
	Mon, 27 Nov 2023 12:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="Q6h8OsYV";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="shZAk4sD"
X-Original-To: devicetree@vger.kernel.org
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E28BD7
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 04:53:01 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id BDB365C012D;
	Mon, 27 Nov 2023 07:52:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Mon, 27 Nov 2023 07:52:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1701089577; x=1701175977; bh=E8dZwrRdtI6b2vaPBCtmzjKkK
	CP5jN5XPRuZ7pI3GUE=; b=Q6h8OsYVuTWogoWxvr8F8TGcBShzooRTfR9sjn/37
	5zGMzJMiCKkBOBaHwTI7P49DxJt4Q3I3xqnSCYCETSiWr4omHdvwJi41KW9g7hHS
	gKKwd+V+V9ZbnhAtQ3amIdzNT84nabkAyCHqULZziPmdXmKVm/fZr8NNsDOuHJil
	sk5zobASaZPxiYfdsYqWT8lnInsSLYVCVuBGCCk2fVWsdtRaMwl9f3OLhYlHJBAG
	3BQtnjuIzPXLsmLC+56KCMgQhTRf2wVOSxdXxdz94oBqE4GbfSctfzmPDtTt0Y5Z
	7zK+Xt5eNvnzR4znGXI/CMDIKMJMcAteWbnXqaNLoxJ2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1701089577; x=1701175977; bh=E8dZwrRdtI6b2vaPBCtmzjKkKCP5jN5XPRu
	Z7pI3GUE=; b=shZAk4sD/QvZfN6GS2RoR50wA6UFPVnHxhyY/gYgqsooek/OARl
	9FMmFdOlLKTOhystC2/6Nq6/7N6VNzhgfto29qC5U2kHPR3UpEFPeWGyr9JzmL/5
	eKLtueas/fyv9TIMbMhpatcRcq9wsCYvNE6ugG3CbdkSHXotS4Ze0JXgYZYoK74T
	WGEoC8Ic11eDTKCWgmDnvxmLM8d70Xtm6xECIea6o3eo5xxwYBdO+a7mLpuO0ZYT
	yuFDwTPzxK1lkMUjIAqx39RHnKCRjcDjZSngplPczHNh1anoKfxLSKcWj1DJ44Em
	eyy1H3Kk3/GZgEXXY6UGyu9aA55DDH5WG7g==
X-ME-Sender: <xms:KZFkZSkb_O8K04yGoMglHIbkn1Ynhip4VHgJF0CYNu4dxBbFmBkLsA>
    <xme:KZFkZZ2CgI4O71Xp2CgslsWP7zDNPPH1d-nC_lVrrnStPN-WZRHDxX5NhZsb4VWYe
    7Hvx6EyvA>
X-ME-Received: <xmr:KZFkZQoDLai8UUiGNBePUN_jdvGXDqQrKq5wb2zXBqG2MwlJJzRFXIp_NWK3zZoJJwegsOUdo2kpbfV2K_V0rrxWrTm3Lqn1SAbs4A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiuddggeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepteejteffudfggfeifeevhedvfeekhfejhfdtteejueetieehueduleetjeeuueet
    necuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmsehfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:KZFkZWmzAMqxFzsHHKiP-9CCHofcTAzarBZ9Cv01H-P1PB9-7_QDjQ>
    <xmx:KZFkZQ1-jFLFTsfH5-ZujNcV4nGmbxlPLYlDWwTF2bJAoCQXoaWGaw>
    <xmx:KZFkZdv181mrLkMkKzdIPDMsb8H-xGvLDyWti9H6HrMyTJRalQWITg>
    <xmx:KZFkZRnuMzEFhXGh-oahr06futMfbQEIoC3t7U46v48RqhCZuYpq1A>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Nov 2023 07:52:53 -0500 (EST)
Message-ID: <27c96f0b-0eaf-4f96-b4eb-bea34dd3cab0@feathertop.org>
Date: Mon, 27 Nov 2023 23:52:51 +1100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <50694679.MN2xkq1pzW@diego>
 <99db2b8a-631b-40df-a33a-c2baeb44c940@feathertop.org>
 <4065853.CrzyxZ31qj@diego>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <4065853.CrzyxZ31qj@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Heiko,

On 11/27/23 21:29, Heiko Stübner wrote:
> Am Montag, 27. November 2023, 10:58:43 CET schrieb Tim Lunn:
>> On 11/27/23 20:45, Heiko Stübner wrote:
>>> Am Montag, 27. November 2023, 10:27:41 CET schrieb Krzysztof Kozlowski:
>>>> On 27/11/2023 10:23, Tim Lunn wrote:
>>>>> Hi
>>>>>
>>>>> On 11/27/23 17:52, Krzysztof Kozlowski wrote:
>>>>>> On 27/11/2023 00:06, Heiko Stübner wrote:
>>>>>>> Hi Krzysztof,
>>>>>>>
>>>>>>> Am Mittwoch, 22. November 2023, 13:29:47 CET schrieb Krzysztof Kozlowski:
>>>>>>>> On 22/11/2023 13:22, Tim Lunn wrote:
>>>>>>>>> Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126
>>>>>>>>>
>>>>>>>>> Signed-off-by: Tim Lunn <tim@feathertop.org>
>>>>>>>>> ---
>>>>>>>>>
>>>>>>>>> (no changes since v1)
>>>>>>>>>
>>>>>>>>>     arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
>>>>>>>>>     arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 +++++++++++++++
>>>>>>>>>     2 files changed, 25 insertions(+)
>>>>>>>>>
>>>>>>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>>>>>>> index 4f85b7b3fc4c..167a48afa3a4 100644
>>>>>>>>> --- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>>>>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>>>>>>> @@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
>>>>>>>>>     				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
>>>>>>>>>     		};
>>>>>>>>>     	};
>>>>>>>>> +	i2c2 {
>>>>>>>>> +		/omit-if-no-ref/
>>>>>>>>> +		i2c2_xfer: i2c2-xfer {
>>>>>>>>> +			rockchip,pins =
>>>>>>>>> +				/* i2c2_scl */
>>>>>>>>> +				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
>>>>>>>>> +				/* i2c2_sda */
>>>>>>>>> +				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
>>>>>>>>> +		};
>>>>>>>>> +	};
>>>>>>>>>     	pwm2 {
>>>>>>>>>     		/omit-if-no-ref/
>>>>>>>>>     		pwm2m0_pins: pwm2m0-pins {
>>>>>>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>>>>>>> index 6c5c928f06c7..cf1df75df418 100644
>>>>>>>>> --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>>>>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>>>>>>> @@ -21,6 +21,7 @@ / {
>>>>>>>>>     
>>>>>>>>>     	aliases {
>>>>>>>>>     		i2c0 = &i2c0;
>>>>>>>>> +		i2c2 = &i2c2;
>>>>>>>> No, this should be per-board to match board labeling/schematics.
>>>>>>> At least for i2c, uarts and i.e. spi ... Rockchip manuals, pin namings
>>>>>>> and also all board schematics I've seen so far are very consistent for
>>>>>>> these ... i2c2 for example is labled i2c2 both in the pins in the socs
>>>>>>> and also in the board-schematics using them.
>>>>>>>
>>>>>>> So while I can agree that things like mmc-aliases might be board-specific,
>>>>>>> I do think aliases for the core busses should be able to live in the soc dtsi
>>>>>>> as for all Rockchip SoCs so far?
>>>>>> If you do not list here all aliases, it is already board-specific, isn't it?
>>>>>>
>>>>>> https://lore.kernel.org/linux-rockchip/CAK8P3a25iYksubCnQb1-e5yj=crEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com/
>>>>> I had only added aliases for nodes that are implemented. RV1126 has 6
>>>>> i2c busses but so far not all these exist in the soc.dtsi.
>>>>>
>>>> OK, that would explain why you have only two. Anyway, it is just generic
>>>> guideline, so up to Heiko what to do with it.
>>> People see "uart2-tx" on their pin-header description and then of course
>>> want to use ttyS2 ... same with reading i2c2-sda on the pin-header and then
>>> running i2cdetect on said i2c2 dev node.
>>>
>>> And even if i2c1 is not populated (would even be very rare), then people
>>> would still expect i2c2 to be named that way.
>>>
>>> As this is the same for _every_ board, it doesn't really make sense to
>>> duplicate it every time. Which I guess is similar to what I wrote in reply
>>> to the mail you linked above :-) .
>> So I will leave the i2c and serial aliases as they are in rv1126.dtsi then?
> correct
>
>
>>> It's different for mmc, where this naming scheme isn't normally used,
>>> so we (mostly?) migrated to them being in the board-specific alias section.
>> What about the ethernet alias,   the MAC is part of the SoC, should this
>> stay as it is
>> in patch 6 from this series, or move to board dtsi?
> I think judging from everything above (and the other modern boards
> like all rk3588 ones) the ethernet0 alias should move to the board dts(i).
>
> The gmac generally does not have this numbering scheme like i2c or uarts.
Noted, I will prepare these changes in a v3 series

Regards
    Tim.

