Return-Path: <devicetree+bounces-19136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5356F7F9CFC
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:59:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AD0DFB20CEB
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 09:59:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7927C17987;
	Mon, 27 Nov 2023 09:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="DuU2+cGn";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="a3k9/28s"
X-Original-To: devicetree@vger.kernel.org
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23B1BF0
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:58:52 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id B24735C0191;
	Mon, 27 Nov 2023 04:58:49 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Mon, 27 Nov 2023 04:58:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1701079129; x=1701165529; bh=hqkiDp3oWjtShpC66539083zg
	0GmCmOTf3X1u+f5Il4=; b=DuU2+cGnzLrnCURK8IcrbuUyeXO4Lwk9kgAXxODbo
	nq3rqgOcsFbJVH2/Pla2z1aiyvFwOy0GQxNZUKpndp5A5hCYm9gIGE5lII4I9cgv
	OEH3T1dXpOqq62H3GLeepLYSBFbz6OPa5uE9ecrGyPZpHsa3e94FU1x4uv4nbXkK
	AS1FFh2Y+2o3F1soUtvdbBWGLAshtKoysKmFfqsGSXPcYamhhx0lOo/q3G4x2Xzu
	XyQ9XwpxwOV82lTZG0G4baIH7qg1uXMFedjJ+qbciP5HcS8pgqHnBbw2wdEOV7Ru
	zWOY3KpiSr0Yi2VT5hqNMchVAQO+qjTj+8XmWtpjaIMmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1701079129; x=1701165529; bh=hqkiDp3oWjtShpC66539083zg0GmCmOTf3X
	1u+f5Il4=; b=a3k9/28sSg7kn2NGnpjjUe1+crWqrBylPYPfN0RmFYY0++WRh5u
	dtG8WUNdrEqA+cU+R0NWRL1rJY8QfJeV9xwxbAY9tlZmyTmQ6OTmTGb6Md/Z7S23
	qg/Ypd6EQVM/pDafQgJ0lWiJBnar/qh0tkRXQV+SRzC0Ra+037lQBN2zxvHlfpJM
	oCpTb9y1FBcS3PaJDvvGyRYh7DPsLki400UE8/kXsSF+4KHkN4HaK+iWhP8oLHSj
	iwAZfzkJvFATRq0VzT+s46Yzld3gUJv6vufHe5LTudaOf/avLHdI9Raii2M/cEVT
	Tfhe623kcw4lLUU1titr1G7uuaByq/f2saA==
X-ME-Sender: <xms:WWhkZa2T42hkrXHKID0lNj0Mrm_ZKWnGyblMWaSa0DmEVjX5xBRPZA>
    <xme:WWhkZdFqBZHG9Ro6n9yS3kUJfDwdAH_ByfmK1rP5OTf78W9FX3Oc-XwAIRa_6mbcy
    x50Y3Tcfw>
X-ME-Received: <xmr:WWhkZS6ZUkuEHMWqd37FXn2rk8yQeTsG34gqnvNbZmPRIoJU5FXNI4HSgzHDKXYL85WL_p-URWc7zz1kxq8MUABc2LHsTFoYP-Ng0Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiuddguddtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepteejteffudfggfeifeevhedvfeekhfejhfdtteejueetieehueduleetjeeuueet
    necuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmsehfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:WWhkZb34FadkyuSAnapFioyxlKeSIGHW-pFWo28yYB77K6ky3afDOw>
    <xmx:WWhkZdF6VFKYdqTwnGwNQhn4wvdqJirotabb4G5VRvVNAcDazlKwwA>
    <xmx:WWhkZU-t4usDPfGCag8_9V-yky6s1KUwbTph0cfztynp3SDZsKwqlA>
    <xmx:WWhkZU1LU5Zi0wGW2QbudXuBImG_sZgDJD_IZDKEVDXE2EfNA4mvrw>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Nov 2023 04:58:45 -0500 (EST)
Message-ID: <99db2b8a-631b-40df-a33a-c2baeb44c940@feathertop.org>
Date: Mon, 27 Nov 2023 20:58:43 +1100
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
 <d5fef204-a4db-4452-9e22-8928b9db54d5@feathertop.org>
 <7b8a830d-42d0-4220-b9fe-3f5fff43e74d@linaro.org> <50694679.MN2xkq1pzW@diego>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <50694679.MN2xkq1pzW@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 11/27/23 20:45, Heiko Stübner wrote:
> Am Montag, 27. November 2023, 10:27:41 CET schrieb Krzysztof Kozlowski:
>> On 27/11/2023 10:23, Tim Lunn wrote:
>>> Hi
>>>
>>> On 11/27/23 17:52, Krzysztof Kozlowski wrote:
>>>> On 27/11/2023 00:06, Heiko Stübner wrote:
>>>>> Hi Krzysztof,
>>>>>
>>>>> Am Mittwoch, 22. November 2023, 13:29:47 CET schrieb Krzysztof Kozlowski:
>>>>>> On 22/11/2023 13:22, Tim Lunn wrote:
>>>>>>> Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126
>>>>>>>
>>>>>>> Signed-off-by: Tim Lunn <tim@feathertop.org>
>>>>>>> ---
>>>>>>>
>>>>>>> (no changes since v1)
>>>>>>>
>>>>>>>    arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
>>>>>>>    arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 +++++++++++++++
>>>>>>>    2 files changed, 25 insertions(+)
>>>>>>>
>>>>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>>>>> index 4f85b7b3fc4c..167a48afa3a4 100644
>>>>>>> --- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>>>>> @@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
>>>>>>>    				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
>>>>>>>    		};
>>>>>>>    	};
>>>>>>> +	i2c2 {
>>>>>>> +		/omit-if-no-ref/
>>>>>>> +		i2c2_xfer: i2c2-xfer {
>>>>>>> +			rockchip,pins =
>>>>>>> +				/* i2c2_scl */
>>>>>>> +				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
>>>>>>> +				/* i2c2_sda */
>>>>>>> +				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
>>>>>>> +		};
>>>>>>> +	};
>>>>>>>    	pwm2 {
>>>>>>>    		/omit-if-no-ref/
>>>>>>>    		pwm2m0_pins: pwm2m0-pins {
>>>>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>>>>> index 6c5c928f06c7..cf1df75df418 100644
>>>>>>> --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>>>>> @@ -21,6 +21,7 @@ / {
>>>>>>>    
>>>>>>>    	aliases {
>>>>>>>    		i2c0 = &i2c0;
>>>>>>> +		i2c2 = &i2c2;
>>>>>> No, this should be per-board to match board labeling/schematics.
>>>>> At least for i2c, uarts and i.e. spi ... Rockchip manuals, pin namings
>>>>> and also all board schematics I've seen so far are very consistent for
>>>>> these ... i2c2 for example is labled i2c2 both in the pins in the socs
>>>>> and also in the board-schematics using them.
>>>>>
>>>>> So while I can agree that things like mmc-aliases might be board-specific,
>>>>> I do think aliases for the core busses should be able to live in the soc dtsi
>>>>> as for all Rockchip SoCs so far?
>>>> If you do not list here all aliases, it is already board-specific, isn't it?
>>>>
>>>> https://lore.kernel.org/linux-rockchip/CAK8P3a25iYksubCnQb1-e5yj=crEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com/
>>> I had only added aliases for nodes that are implemented. RV1126 has 6
>>> i2c busses but so far not all these exist in the soc.dtsi.
>>>
>> OK, that would explain why you have only two. Anyway, it is just generic
>> guideline, so up to Heiko what to do with it.
> People see "uart2-tx" on their pin-header description and then of course
> want to use ttyS2 ... same with reading i2c2-sda on the pin-header and then
> running i2cdetect on said i2c2 dev node.
>
> And even if i2c1 is not populated (would even be very rare), then people
> would still expect i2c2 to be named that way.
>
> As this is the same for _every_ board, it doesn't really make sense to
> duplicate it every time. Which I guess is similar to what I wrote in reply
> to the mail you linked above :-) .
So I will leave the i2c and serial aliases as they are in rv1126.dtsi then?
>
> It's different for mmc, where this naming scheme isn't normally used,
> so we (mostly?) migrated to them being in the board-specific alias section.

What about the ethernet alias,   the MAC is part of the SoC, should this 
stay as it is
in patch 6 from this series, or move to board dtsi?

Regards
   Tim

