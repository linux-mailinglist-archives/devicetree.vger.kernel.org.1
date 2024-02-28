Return-Path: <devicetree+bounces-46953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3BF86B624
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 18:35:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24B60288EB3
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 17:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDD8515CD42;
	Wed, 28 Feb 2024 17:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="SxmHS533"
X-Original-To: devicetree@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D3F15B98E
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 17:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709141728; cv=none; b=h02Z/flhBC7jxksLp/oUvTdCkGXDw9YPU/PPxe1qVTabkzxi70mCqrjYdMofNjCOh2sjtacicFDijzfujfmKmsRo6VtXK9HYXWltW0KNKZ9Rmg4y/wsy3oCqLatQDVAOz48jXOg63KPuTgCCtO8thGw6mFLQ8w+Wyk3SRGn4kN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709141728; c=relaxed/simple;
	bh=98TV+4Reu+TCMQAgDsLOuCCghJ1FRo3f9LyDVUeO1y8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tRVAHeJp2sJXJ23vwvn1SUnmFp02ptcCqfUnaiOBuoR2FuvJOwEOKua70sVYvYIbichiQtb1Zs1jGW6WCyLsywNzp4veji6uLu2C3aI0Bg1TFmX9ulLmTEpQr7wTIYt8HZuxvKe9/2oT6T1xT4QGEEhwen+NdW4TQpOCLspPizY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=SxmHS533; arc=none smtp.client-ip=82.195.75.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description;
	bh=4Eg2lwg3X3LAMV1YyL8y2sgCKnGrJ6OQTRJ35Rq1CVg=; b=SxmHS533VfDl5V8NG+y4FRwoSg
	hW0D3UuedkiTPJrc0TbBXKvYg/8pmgqqVz4WNlUzilwEHH0jw1cGEBCrifeW268zmGt73t+8hDB5E
	Ta2h3vFploxlO10OgvZ6r+l9Q2HtRkwIfserun2ho7pVZ8c1VBkeXI6cqrdYebJ3fA26kUyiq6oTm
	tZrscjT3d/EtMSX6FissL8VgKHUtmht34uucbk6FZvDfTtxatbGkHtLXdR+R56FjIzz4TniJFpqNS
	Q45vx/suj7SXY7vjOizsxpTjGJ6olj0KO4k6wOQtL0OiK9HDewm6gdDJC4OxMDp7r/RC0cTFOB6qb
	jWmVtJQA==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128)
	(Exim 4.94.2)
	(envelope-from <ukleinek@debian.org>)
	id 1rfNNX-00G7sb-Ah; Wed, 28 Feb 2024 17:05:59 +0000
Message-ID: <3268d0dd-0351-4dbd-b707-eb3691147111@debian.org>
Date: Wed, 28 Feb 2024 18:05:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add basic support for QNAP
 TS-433
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Oleksij Rempel <ore@pengutronix.de>
References: <cover.1709034476.git.ukleinek@debian.org>
 <0d9fa5d730ac1cb91261b25b6809fcef3a12f03a.1709034476.git.ukleinek@debian.org>
 <b48cde05-c583-4414-9424-fbb2db3a53ce@lunn.ch>
 <lcvokzcmifxl7skfz2h2shewuou7xpazuhtpnpkgtcyejcfgcy@vvdn5ypyklsx>
 <3295af58-4015-4962-91a0-87b70f18754e@lunn.ch>
Content-Language: en-US, de-DE
From: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Autocrypt: addr=ukleinek@debian.org; keydata=
 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
 MaQkyqbBqIbxBNgANCE5eTk=
In-Reply-To: <3295af58-4015-4962-91a0-87b70f18754e@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Debian-User: ukleinek

On 28.02.24 14:53, Andrew Lunn wrote:
> On Wed, Feb 28, 2024 at 08:23:33AM +0100, Uwe Kleine-König wrote:
>> On Tue, Feb 27, 2024 at 10:00:48PM +0100, Andrew Lunn wrote:
>>>> +&gmac0 {
>>>> +	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
>>>> +	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
>>>> +	assigned-clock-rates = <0>, <125000000>;
>>>> +	clock_in_out = "output";
>>>> +	phy-handle = <&rgmii_phy0>;
>>>> +	phy-mode = "rgmii";
>>>> +	pinctrl-names = "default";
>>>> +	pinctrl-0 = <&gmac0_miim
>>>> +		     &gmac0_tx_bus2
>>>> +		     &gmac0_rx_bus2
>>>> +		     &gmac0_rgmii_clk
>>>> +		     &gmac0_rgmii_bus>;
>>>> +	rx_delay = <0x2f>;
>>>> +	tx_delay = <0x3c>;
>>>
>>> Have you tried phy-mode = "rgmii-id"; and not have these two _delay
>>> settings?
>>
>> I didnt' up to now. I applied the following on top of my dts:
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
>> index ba7137f80075..a8747d9f36da 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
>> @@ -39,15 +39,13 @@ &gmac0 {
>>   	assigned-clock-rates = <0>, <125000000>;
>>   	clock_in_out = "output";
>>   	phy-handle = <&rgmii_phy0>;
>> -	phy-mode = "rgmii";
>> +	phy-mode = "rgmii-id";
>>   	pinctrl-names = "default";
>>   	pinctrl-0 = <&gmac0_miim
>>   		     &gmac0_tx_bus2
>>   		     &gmac0_rx_bus2
>>   		     &gmac0_rgmii_clk
>>   		     &gmac0_rgmii_bus>;
>> -	rx_delay = <0x2f>;
>> -	tx_delay = <0x3c>;
>>   	status = "okay";
>>   };
>>   
>> and this makes the machine unable to complete dhcp. I see the requests
>> and replies on the dhcp server side, but the machine tells me not to
>> receive a dhcp reply. So the above patch breaks the receive path.
> 
> O.K.
> 
> This binding is particularly bad. What does 0x3c mean? Generally, we
> use rx-internal-delay-ps making it clear what the value means.
> 
> RGMII requires a 2ns delay between the clock and the data. Generally,
> we have the MAC insert 0 delay, and request the PHY add the 2ns delay
> by specifying "rgmii-id". Sometimes you need to fine tune this,
> because of the length of the tracks etc. You can then do that fine
> tuning either in the PHY, or the MAC.
> 
> Looking at the binding:
> 
>    tx_delay:
>      description: Delay value for TXD timing.
>      $ref: /schemas/types.yaml#/definitions/uint32
>      minimum: 0
>      maximum: 0x7F
>      default: 0x30
> 
>    rx_delay:
>      description: Delay value for RXD timing.
>      $ref: /schemas/types.yaml#/definitions/uint32
>      minimum: 0
>      maximum: 0x7F
>      default: 0x10
> 
> For your board, you have increased both values from there default
> values. My guess is 0x30 tx_delay is 2ns, and 0x10 rx_delay is also
> 2ns.
> 
> So maybe try:
> 
> rx_delay = <0x1f>;
> tx_delay = <0x0c>;
> 
> combined with rmgii-id.

With the right phy driver (MOTORCOMM_PHY) enabled, it works also without 
specifying {rx,tx}_delay. Thanks to Oleksij for the relevant hint. I'll 
switch to that then.

Best regards
Uwe


