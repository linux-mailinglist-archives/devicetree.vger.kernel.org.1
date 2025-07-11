Return-Path: <devicetree+bounces-195417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 89773B018DF
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 11:57:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E2A73AE536
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 09:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 410C127E06D;
	Fri, 11 Jul 2025 09:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="YG4/4yPA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB6F27E058
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 09:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752227804; cv=none; b=mfb7nbe7VLDJoMSpU9jterINOE6YL5PFfrGoRPLKrTqpFbeK1w12NsiEZgX4pJAIZZWpiHV179HnEgIueTENnjxDFMDlHS2fsMMrFoxOEkxwjJ+QJfusZwC53EEpbPaP/gVYVYeqfNGZWXQVSxiCPaSwHD4WYqE11JFxge4Ya5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752227804; c=relaxed/simple;
	bh=P9YKfZF8rBS7dKTf05LCN885kqJ5IcoQSKu2Y9tvQF8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RIgDySmOU4PuaT3hpEcEkNqr4K7ukhWIpKP57eVJC0V3BMPQkRboxjAiW+RgrS9D/B7eOrXfgIe0OnOQJuyzN12CRRhsUWE2uyJ9vXJ7GRjc8dFiBCJS7uAWc+pmRgTcBRapm52kAXL3hYKNszQ2i8EiefJLWfiVPA2e3sf9nfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=YG4/4yPA; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1752227795;
 bh=4rVIc3YXAPNKeRBKRO+kcpmDUDUsEdoUffccwiP9wS4=;
 b=YG4/4yPA0YFmzbBKjXrQm5wjYEbSMZoP7Or+VydahCv3fOU31S0WRqvMKXhqY3M6lkTyfV676
 h/PtEkkoNDu1U6uJ2XhM8dFqzTcaSAADf93MUGA39V323STEC2Q/y8EronDpT6Nja6iu3SGk8Qz
 8h0jxY14C+e1vlDHKLYb3hLbbE5iqOKA34bwcn3kY5Bxszl0EL+lifwFPGAMnSmjoAu/9/ouDUW
 GSAkhjAOFDk3xqZYKYrYA/t4odIynysY7k5NEnWOpuX2rIkKNaQGIzrArlhtRqJITxl2nLUZ7UN
 lLie6lXRDr0y3h0KZr2v5B1U/TyaryQjBG4lIgUS4eQw==
X-Forward-Email-ID: 6870dfd1f6410632f515ce81
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <acbbf570-7a56-4d88-a631-32acd13d29c7@kwiboo.se>
Date: Fri, 11 Jul 2025 11:56:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] arm64: dts: rockchip: Add ArmSoM Sige1
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 ziyao@disroot.org
References: <20250710202958.3717181-5-jonas@kwiboo.se>
 <20250711080009.72677-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250711080009.72677-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 7/11/2025 10:00 AM, Chukun Pan wrote:
> Hi,
> 
>> +	leds {
>> +		compatible = "gpio-leds";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&g_led>, <&r_led>;
>> +
>> +		led-green {
> 
> Should this label be named as led-0/led-1?

The nodes must include 'led' anywhere in their name according to schema:

"""
patternProperties:
  # The first form is preferred, but fall back to just 'led' anywhere in the
  # node name to at least catch some child nodes.
  "(^led-[0-9a-f]$|led)":
"""

Using the color name similar to the the pin labels in schematics made
most sense to me.

Do you want me to change these to conform to the more restricted
^led-[0-9a-f]$ pattern?

> 
>> +&sdio0 {
>> +	bus-width = <4>;
>> +	cap-sd-highspeed;
>> +	cap-sdio-irq;
>> +	disable-wp;
>> +	keep-power-in-suspend;
>> +	mmc-pwrseq = <&sdio_pwrseq>;
>> +	no-mmc;
>> +	no-sd;
>> +	non-removable;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&sdio0_bus4>, <&sdio0_clk>, <&sdio0_cmd>;
> 
> This pinctrl is the same as that of rk3528.dtsi, we can remove it.

I will drop the pinctrl props in a v3.

> 
> BTW there is a fan connector on the board (connected to pwm6m2),
> so pwm6 should be enabled.

I only try to enable controllers for devices that are properly described,
so I ignored the pwm-fan and its required pwm6 controller. Mostly
because it make more sense to describe the fan once thermal support is
completed, work [1] currently being blocked by a rk356x otp series [2]
and that depends on a rk3576 thermal series [3].

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20250620-rk3528/
[2] https://lore.kernel.org/r/20250415103203.82972-1-kever.yang@rock-chips.com
[3] https://lore.kernel.org/r/20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com

> 
>> +&uart2 {
>> +	dma-names = "tx", "rx";
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&uart2m1_xfer>, <&uart2m1_ctsn>, <&uart2m1_rtsn>;
>> +	uart-has-rtscts;
>> +	status = "okay";
>> +
>> +	bluetooth {
>> +		compatible = "brcm,bcm43438-bt";
>> +		clocks = <&cru CLK_DEEPSLOW>;
>> +		clock-names = "lpo";
>> +		device-wakeup-gpios = <&gpio3 RK_PC3 GPIO_ACTIVE_HIGH>;
> 
> Is host-wakeup-gpios needed?

The host-wakeup interrupt is described using interrupt* props, not
using the deprecated host-wakeup-gpios prop.

Regards,
Jonas

> 
> Thanks,
> Chukun
> 
> --
> 2.25.1
> 


