Return-Path: <devicetree+bounces-19125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A1F7F9C88
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:23:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9B149B20C82
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 09:23:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18F8A14015;
	Mon, 27 Nov 2023 09:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="MRQjsfVX";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="Phd8Xngk"
X-Original-To: devicetree@vger.kernel.org
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com [66.111.4.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA57ECB
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:23:15 -0800 (PST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id CE98B5C0179;
	Mon, 27 Nov 2023 04:23:12 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 27 Nov 2023 04:23:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1701076992; x=1701163392; bh=r7lWTaFRIZAiw7mVFsThMLF7n
	tbrm197jpXoSjf2C7s=; b=MRQjsfVXH+hoCtjkXuioBVlqET6Nh/+nFgsj1vZyj
	M8XPCofBnaShS+T/ftWRKdGp4ScUm8Mj/II9OSSvvJHs6+mlHIK4sACuFOzvbjXj
	mM3Vyqot46M5Ut4pbCcuPTfsxFsO28d3Xxf4hUmA7SK97+yPfl99gQLwHKFOxwiY
	1DI3H+5LAn1z6La2g/kilasP/AwpNJbYO/yajuEHuy5HAK/k7+xAxN6CV6McW5Xz
	TcmhJbVJu++U9RyUZ+/T5ygJMMuVEw5OoYp2M6vI711xl3SO0gT4n+E9WJ+L4ozB
	vQSa0o/K6LL6/Zy6sZoE5rS0haiTPj+U9Rq5vbEV9Dlpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1701076992; x=1701163392; bh=r7lWTaFRIZAiw7mVFsThMLF7ntbrm197jpX
	oSjf2C7s=; b=Phd8XngkLUZ3I2Q44/HXSxoHw98cFvPCFK+NWfeG40cGoJLKwBh
	LpL5cqtJpnWsQoXwvC7bgbq2feB/tNsjbMHopRkrwlvl4Ir7nhMjqL0HQpqqeLmZ
	gR0qr/EUgpEHmFx07hsy7KBvE3KKV9mHDlIgYrw+O59F+sj0EI1pd/6u2Kt30BEE
	y29Qxv7jby2Gl/s4rg1FS81fXZjBRpC2E0Rx5XH6HfrCHHGeavDAWPuRuQYqnMoS
	zzebpbVRqFHfQrBVTq1Iy64rT47UYyToFuSd2OvG3YywgPb78c5yAZ0k2yQ/LPZh
	NuVPUqih6IDMvhg5CIoYBhLA6f6JWLhNdDA==
X-ME-Sender: <xms:AGBkZa8mKYyN1rQTjvflktAg6tDgLrvI8y6IKKZ4Rhe5heIoYOk8dQ>
    <xme:AGBkZavOkFm16-AX1_9iliL7sl8DKqRpGrrMK_e4ovL8txUKamPbWL800LOsYwqGO
    xDai_KWDA>
X-ME-Received: <xmr:AGBkZQD5WQOeugIQC7jYugqflbaAYfa6mgZM_YYDc_BJJpLFCeBCUyr8TTVAgV3vuDcclQgIT4XTqhVvn3vvXSuSIVqIlcGOg99qUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiuddgtddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepteejteffudfggfeifeevhedvfeekhfejhfdtteejueetieehueduleetjeeuueet
    necuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmsehfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:AGBkZSdx6BMpmA7gcsyXZErxFtFA2TLEfBKac44Wbf4MojYCZ476SA>
    <xmx:AGBkZfP72K3-_ojoT7i4F0fd4mpbLZN6-_WpkiyBp5ekm3Uv4h1ENQ>
    <xmx:AGBkZck0qnb53ct36JNfHfdh6JnycsT-M_M00Apfg9bnUHLQF_pfUw>
    <xmx:AGBkZadZR5faFs_RUVxpRz0hRYv_fmNxJkZGfv4Ji9JRinH-rXjHeg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Nov 2023 04:23:08 -0500 (EST)
Message-ID: <d5fef204-a4db-4452-9e22-8928b9db54d5@feathertop.org>
Date: Mon, 27 Nov 2023 20:23:05 +1100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <20231122122232.952696-5-tim@feathertop.org>
 <813224c2-398d-4c2d-8909-1839ce63be60@linaro.org> <4762834.KRxA6XjA2N@diego>
 <b0c637f5-5abf-420b-8b02-839eba68799e@linaro.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <b0c637f5-5abf-420b-8b02-839eba68799e@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi

On 11/27/23 17:52, Krzysztof Kozlowski wrote:
> On 27/11/2023 00:06, Heiko Stübner wrote:
>> Hi Krzysztof,
>>
>> Am Mittwoch, 22. November 2023, 13:29:47 CET schrieb Krzysztof Kozlowski:
>>> On 22/11/2023 13:22, Tim Lunn wrote:
>>>> Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126
>>>>
>>>> Signed-off-by: Tim Lunn <tim@feathertop.org>
>>>> ---
>>>>
>>>> (no changes since v1)
>>>>
>>>>   arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
>>>>   arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 +++++++++++++++
>>>>   2 files changed, 25 insertions(+)
>>>>
>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>> index 4f85b7b3fc4c..167a48afa3a4 100644
>>>> --- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>> @@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
>>>>   				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
>>>>   		};
>>>>   	};
>>>> +	i2c2 {
>>>> +		/omit-if-no-ref/
>>>> +		i2c2_xfer: i2c2-xfer {
>>>> +			rockchip,pins =
>>>> +				/* i2c2_scl */
>>>> +				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
>>>> +				/* i2c2_sda */
>>>> +				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
>>>> +		};
>>>> +	};
>>>>   	pwm2 {
>>>>   		/omit-if-no-ref/
>>>>   		pwm2m0_pins: pwm2m0-pins {
>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>> index 6c5c928f06c7..cf1df75df418 100644
>>>> --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>> @@ -21,6 +21,7 @@ / {
>>>>   
>>>>   	aliases {
>>>>   		i2c0 = &i2c0;
>>>> +		i2c2 = &i2c2;
>>> No, this should be per-board to match board labeling/schematics.
>> At least for i2c, uarts and i.e. spi ... Rockchip manuals, pin namings
>> and also all board schematics I've seen so far are very consistent for
>> these ... i2c2 for example is labled i2c2 both in the pins in the socs
>> and also in the board-schematics using them.
>>
>> So while I can agree that things like mmc-aliases might be board-specific,
>> I do think aliases for the core busses should be able to live in the soc dtsi
>> as for all Rockchip SoCs so far?
> If you do not list here all aliases, it is already board-specific, isn't it?
>
> https://lore.kernel.org/linux-rockchip/CAK8P3a25iYksubCnQb1-e5yj=crEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com/
I had only added aliases for nodes that are implemented. RV1126 has 6 
i2c busses but so far not all these exist in the soc.dtsi.

Regards
    Tim
> Best regards,
> Krzysztof
>

