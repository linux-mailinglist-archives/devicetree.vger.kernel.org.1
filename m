Return-Path: <devicetree+bounces-159929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5E8A6D157
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:03:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3E7616B6DA
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01DC8193062;
	Sun, 23 Mar 2025 22:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="jbqF4OpM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C90013635E
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.59
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742767435; cv=none; b=XksT5Qa0y9pNTuoTXmAk5roEU9bTlTvrfhtfih5vNLw+qEWZvsHM7wU2Ns1xNw0JPzy9pXvK/nWJ0kSScj5ZFe1gUJ0k+2d8fnQnqgMDYkzwWm7unbBCMnW7mdyEpNAonM53H87gcKswrDRAkLBv2e8Nwp6ld4QKl5qWX7O4QqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742767435; c=relaxed/simple;
	bh=ouZ+ajAd1ZI0QhE6GtHzDNbSoWotfxQ3ntZ4LbYMFNk=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=BHnuU6QBpzHfFGrTw7g00mM9jbHQFDX3OZHMJsB19kzOxrosCxh7TMFbJTWIZ9bxHIFG51IMwx+AL5um/VFNdnIAb6IMLdVSzZxXH++IjrjbUFngNcJIte9sGT2dpO1pEFR8pTzsw/+c9mxLhTvw+vavEhiBM4wMc71aTKQv8WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=jbqF4OpM; arc=none smtp.client-ip=121.127.44.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: References: Cc:
 To: From: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1742767433;
 bh=XY3BA1Vv02oLfVKMD+vhtMt4wqV14ktZSaEZlGUTwv8=;
 b=jbqF4OpMJbfYya2OvlaUKDGR2wW1oCtuVa+C6f2lraNb7zuCZrG+k5X02stoDhHaTUtx88EEa
 ldl3x2oJlqD9+Nzr684FEuFNzg6j2pFT9JAz8CDr6uJp7+6XFPYwcH1VgnOR+xv3zo7mZZreWIO
 gnKElRI4odGtfNF1Vs3EsJfhHsZMhg92WXNtJGa9E+r7yp4UuK55Xu2QxLEXdXgTRAK/ewUps3S
 p3CBjtxNUaIluZRXGbI6K35pk5JnRQfu28Qb3aRdrbXKSfSpY9ltSzE3kSIRnZH1/obFXVd5ieh
 Yq4G70nDn7aym2wxR8xkmMat+HKCvTSCZHnwtviVDWpQ==
X-Forward-Email-ID: 67e08547bd529871d5f812bb
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <364bed4f-4ae1-48d5-ae6e-369668456d8e@kwiboo.se>
Date: Sun, 23 Mar 2025 23:03:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: Add pwm nodes for RK3528
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250318120003.2340652-1-amadeus@jmu.edu.cn>
 <20250318120003.2340652-2-amadeus@jmu.edu.cn>
 <0d638134-0c0d-4918-af47-e23d2ead3bf3@kwiboo.se> <2499436.jE0xQCEvom@phil>
 <0f0a35ba-d85d-49eb-92dd-7bc17358aeaf@kwiboo.se>
Content-Language: en-US
In-Reply-To: <0f0a35ba-d85d-49eb-92dd-7bc17358aeaf@kwiboo.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2025-03-20 08:02, Jonas Karlman wrote:
> On 2025-03-20 00:47, Heiko Stuebner wrote:
>> Am Donnerstag, 20. März 2025, 00:26:14 MEZ schrieb Jonas Karlman:
>>> Hi Chukun,
>>>
>>> On 2025-03-18 13:00, Chukun Pan wrote:
>>>> Add pwm nodes for RK3528. The PWM core on RK3528 is the same as
>>>> RK3328, but the driver does not support interrupts yet.
>>>
>>> The device tree should describe the hardware, not what the driver
>>> support, so interrupts should probably be included.
>>>
>>> However, looking closer at TRM for i.e. RK3328, RK3568 and RK3588 it
>>> look like the following description is not a true description of the
>>> hardware.
>>>
>>> Each PWM controller seem to support 4 channels, here (and for older RK
>>> SoCs) we instead describe each channel and not the controller.
>>
>> Yep, that is something that did go wrong in the very early days.
>> And all other Rockchip socs also have the same issue - even back
>> to the rk3066.
> 
> I see, look like the PWM has evolved something like following:
> 
> - The controller has always been 1 controller for 4 channels
> - Initial versions only had 2 regs for interrupt outside of the 4x
>   0x10 reg space, one for each channel
> - FIFO was introduced for channel 3
> - Interrupts for FIFO was introduced (in RK3399 or earlier)
> - Additional features/regs was introduced (in PX30 or earlier)
> - PWM_VERSION_ID = 0x02120b34 is used (in RK3308 and later)
> 
>>
>> So yes, at some point we should overhaul the thing.
>>
>> But I think this is more involved, as right now everything is aimed
>> at the current single-channel status quo.
> 
> I did a quick and dirty change in driver to use npwms = 4, and that was
> a rather trivial change, see top commit at [1]. Minimum required change
> in U-Boot also look to be very trivial.

I did a quick test on U-Boot and are preparing a series to add support
for multiple channels in U-Boot, see [2] for an early version that
should hit U-Boot ML in a day or two.

Found some other other issues when digging in the U-Boot pwm-regulator
code so ended up with a bigger series than anticipated, only the last
patch is related to preparation for multiple channels in rk-pwm driver.

[2] https://source.denx.de/u-boot/contributors/kwiboo/u-boot/-/commits/pwm-regulator

Regards,
Jonas

> 
>   cat /sys/kernel/debug/pwm
>   0: platform/ffa90000.pwm, 4 PWM devices
>    pwm-0   ((null)              ): period: 0 ns duty: 0 ns polarity: normal
>    pwm-1   (regulator-vdd-arm   ): requested enabled period: 5000 ns duty: 2250 ns polarity: inverse
>    pwm-2   (regulator-vdd-logic ): requested enabled period: 5000 ns duty: 2800 ns polarity: inverse
>    pwm-3   ((null)              ): period: 0 ns duty: 0 ns polarity: normal
> 
> Not really seeing any reason not to describe these PWM controllers more
> correctly, we need to start somewhere.
> 
> However, I have no idea on how to deal with historic and wrong bindings.
> Driver could possible check if resource space is above 0x10 size and state
> of PWM_VERSION_ID.
> 
>   PWM_VERSION_ID  0x005c  W  0x02120b34  PWM Version ID Register  
> 
> [1] https://github.com/Kwiboo/linux-rockchip/commits/next-20250319-rk3528/
> 
> Regards,
> Jonas
> 
>>
>>
>> Heiko
>>
>>
>>> Maybe something like following would better represent the hardware:
>>>
>>> 	pwm0: pwm@ffa90000 {
>>> 		compatible = "rockchip,rk3528-pwm";
>>> 		reg = <0x0 0xffa90000 0x0 0x10000>;
>>> 		clocks = <&cru CLK_PWM0>, <&cru PCLK_PWM0>;
>>> 		clock-names = "pwm", "pclk";
>>> 		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>,
>>> 			     <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
>>> 	};
>>>
>>> 	pwm1: pwm@ffa98000 {
>>> 		compatible = "rockchip,rk3528-pwm";
>>> 		reg = <0x0 0xffa98000 0x0 0x10000>;
>>> 		clocks = <&cru CLK_PWM1>, <&cru PCLK_PWM1>;
>>> 		clock-names = "pwm", "pclk";
>>> 		interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>,
>>> 			     <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
>>> 	};
>>>
>>> Regards,
>>> Jonas
>>>
>>>>
>>>> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
>>>> ---
>>>>  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 80 ++++++++++++++++++++++++
>>>>  1 file changed, 80 insertions(+)
>>>>

[snip]

