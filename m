Return-Path: <devicetree+bounces-17931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 001187F4762
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 14:10:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADD72281140
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 13:10:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C8C24C623;
	Wed, 22 Nov 2023 13:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="wEXHfJxm";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="hyHO2FVM"
X-Original-To: devicetree@vger.kernel.org
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2A0510C
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 05:09:55 -0800 (PST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 702F33200AFD;
	Wed, 22 Nov 2023 08:09:54 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Wed, 22 Nov 2023 08:09:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1700658593; x=1700744993; bh=8JYFkWpBAJZ7oAK7axaEz4qpz
	7gfYd54GwE6wk4IGMM=; b=wEXHfJxmZpXxMt+bflkLpJuZXa2+w5392/GKS3bK9
	qzFFhucVp97QXwNuc2j59OCRTXBjK3+S22A6b7xJJUV0pXCV77/wo71QD9feJLK/
	+FmdIw7/60gMCwrxc/WQHIVUjUgCfFkmjzJ57TRSBe4uXdrAZbWb/7JemNd5XOcd
	jWfyK5UHMoWj3bZHb+AtnexbzfLmxm9AUyU14XbL2DKyi9vx9HAEdPRNTKRiOj1O
	W8dkPF2KIMHnFbI3oP6dwW6RWHOrXC0xSNfSQstrg1GJumsE9fDyjpIoQXwSfM62
	kn8OxAi+4CxFxP9JZ52o4dH3q6R4YcqKxAk6nBb5YKmeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1700658593; x=1700744993; bh=8JYFkWpBAJZ7oAK7axaEz4qpz7gfYd54GwE
	6wk4IGMM=; b=hyHO2FVMSr3vLZOUPe7MO844IQ9H+/AqUAgvMS/rFjKAdn0KRau
	oT2iW6iCqG+IslrvikVk8cq5d2aO3SmgGO0XTGdG0X/OOAv0d+5Of4J5ReUS2Qkr
	/SvmcuTXpK0s7SOTFoGEuhDCrlc5VLF50qWusxpfFbfeJKUzLntFewWnivFQoIat
	rqKUm0O+6M/KkrvLF+q4YLy9wwA/CF9jzo+lENfDswPs6XBn3rAl6oStWkF59uJT
	asC94VYaJUFpo8vHy1pXlBgF0H4CvvvA7Lh130fAXOG4jFkbCEgbUzS9t3ZzrXFY
	MGx7dAbBcCOm2T+wRstAluOXBKiCGUeOmhQ==
X-ME-Sender: <xms:of1dZfGp4OxSZRv144xAfk8iTdZwVrjsmdhgiMENcr0G08RXRBkFTA>
    <xme:of1dZcX9eKQSxXpHjqeMllCc0S60ACylKRCgd8NzRzpPh5IeOkjCj3C9dGIhZLQQB
    un6EYSXKg>
X-ME-Received: <xmr:of1dZRJjf3oXH7c29mwGKAIHvihOSuvSnkwvV4F_P2sD2VmY1W96A7gTutcSVAVxER_lpjE2LvYg0E5gypLSW2lcfQtA38_vk4kW3Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddggeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepueegfefgveeuiedtheffgfefveejkeetiefhhfdvjeevlefhueekudeuleeghfek
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:of1dZdHGutAX9pizXGlIA9_q9c_ZU0HSFxAitli6NEpWMo7gC0bgUg>
    <xmx:of1dZVUxFnEGDViaGbxM2xlfa7-XuR_R8lg0autLWBfavbd0yITeyg>
    <xmx:of1dZYP7B8i5-0hmGtbmPJqDvDSN_SPYDpjXMrbr4nLW3-evqI0FIg>
    <xmx:of1dZUGDYYQYxYZ0spK83MoEU0sLlORAPmJ_ZZAzAOlE8k8FPnSpUQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Nov 2023 08:09:49 -0500 (EST)
Message-ID: <4baa862c-3e05-46f4-a70e-aaa50ecd424a@feathertop.org>
Date: Thu, 23 Nov 2023 00:09:46 +1100
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
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <20231122122232.952696-5-tim@feathertop.org>
 <813224c2-398d-4c2d-8909-1839ce63be60@linaro.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <813224c2-398d-4c2d-8909-1839ce63be60@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Krzysztof

On 11/22/23 23:29, Krzysztof Kozlowski wrote:
> On 22/11/2023 13:22, Tim Lunn wrote:
>> Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126
>>
>> Signed-off-by: Tim Lunn <tim@feathertop.org>
>> ---
>>
>> (no changes since v1)
>>
>>   arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
>>   arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 +++++++++++++++
>>   2 files changed, 25 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>> index 4f85b7b3fc4c..167a48afa3a4 100644
>> --- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>> +++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>> @@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
>>   				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
>>   		};
>>   	};
>> +	i2c2 {
>> +		/omit-if-no-ref/
>> +		i2c2_xfer: i2c2-xfer {
>> +			rockchip,pins =
>> +				/* i2c2_scl */
>> +				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
>> +				/* i2c2_sda */
>> +				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
>> +		};
>> +	};
>>   	pwm2 {
>>   		/omit-if-no-ref/
>>   		pwm2m0_pins: pwm2m0-pins {
>> diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>> index 6c5c928f06c7..cf1df75df418 100644
>> --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
>> +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>> @@ -21,6 +21,7 @@ / {
>>   
>>   	aliases {
>>   		i2c0 = &i2c0;
>> +		i2c2 = &i2c2;
> No, this should be per-board to match board labeling/schematics.
>
I was just following what seemed to be done in some other Rockchip 
<SoC>.dtsi files. I will move this alias
and the other ones for serial and ethernet into the board file instead then.

Regards
   Tim
>
> Best regards,
> Krzysztof
>

