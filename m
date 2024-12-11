Return-Path: <devicetree+bounces-129630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFFA9EC638
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:59:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 129AF1886C49
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 07:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D39AB1DE3B6;
	Wed, 11 Dec 2024 07:58:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7B51D6DB6
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 07:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733903898; cv=none; b=fyWs4KCJ4l712FPn+OAb7OQrS+K7yV5hGuhm20QBrETaMj7l4Hbf1fnTA33M75H5WT3idA+sm/40a9261zsI7G+CirKtuI0L6NEnzIBNR5Y4O4Baeg1AVI8nONWjDeI4KFgjThcwIDPzwa9sbmkMDS0/aJWD8ums19TREDZTkAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733903898; c=relaxed/simple;
	bh=AJchcp9I7gvN6pIApEq3EhL5a7SJGsKmzJXYgF4gJlo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kK8ztSehthj+G5hI4w+NHl07NotUAHmP5fUhYw4lMaszrLK9A2g6wwmR7z6T76dPuBlVjc6M/0NEvOY10BiiR00vIKZ3EuptD8wTugARmxII5SQ/rLReFscFvWSwhDmED56+BvLG0ayjSp1Fr+1+l/LpUa39he78tHGWcjEa+MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip2t1733903824tds9gjk
X-QQ-Originating-IP: zcTIbWaBgJpLWN8vwo14CuHPWEubdTVz0EHQf+awOwI=
Received: from [IPV6:240f:10b:7440:1:b238:648b ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 11 Dec 2024 15:56:59 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7527078534577677566
Message-ID: <61D7C8736BCC33AE+805a6e6c-211d-4049-b4be-cb260907ab7d@radxa.com>
Date: Wed, 11 Dec 2024 16:56:59 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Convert blue LED to "pwd-leds"
 for Radxa ROCK 5A/5C
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241211063222.57904-1-naoki@radxa.com>
 <20241211-maturity-recess-33c8c3e1a771@thorsis.com>
 <b65002617b40c434821f5fac41d8e1b9@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <b65002617b40c434821f5fac41d8e1b9@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MI3JFhEp21hOUxetmilohDKfRyTlVSHvjW4RK7POLTNEaLl/rbFXHeFn
	JZ07bTJlpIZbGqJM6lxY9xIOsZvzE9YW8OfzTNK7gvCT54z3Zl0WkFqS/F+eQQtYyCq2b+x
	DuFeNXQq2W7cS6KACf69v2HfQ/Ye5t2IMGF6HvGE51lVmHiK6VRe8LCSZFOZr1YzHYwpPFH
	UfjFZEt7SkWiw5PlyWiH2lkNHyIAB4hK90Y7x3PjeF+GvnIwbxAr8Q9OS3KdSSl5kqOMZxT
	2uQBcew0MUgUJTrO6QbSotZqmnbR8am/v+MlJeUJ9C49AuS/3+Y8gvg8Z3H9SLhtIElcamU
	8AGSMbMbYzwLyRXQb6UaeE7lK4hDAPOY4uHrAIKqzIjs3xzbFGWxLWjqZ6LX72WJ5FFewNE
	BHZUKyoB/IvSGb7L1weV8OrbKdP0Vl3DBsjqin76enEonkFnz330QsTfXRYBf7062FdRIVu
	VhXtSajJaWNuOL7DAnsfILisWxbEK8+T2ibNpawHDasu/egNL78goxxQpXQ3fUgiPhEhvSN
	ZBNkv8ZRjQrFr12/LXEyaVhDNFXjwPIyAEu7bL7yyc9Ah5liCARyOlPPS4lTHqgI08quwtr
	xccQR0zOmDhQ9Lh1dc68ne/CTtZw/8urMIttgkqSOSkWEQ4hGdOIwmoMUxC3UhIXrnYAp+M
	CAjERWblbMEXoVNRmqyS8lCySkZrbRLASBJRWBZeOL7BaQ+WMnHS9nFNUa7tStEVnAgeNK8
	nJrbutuAIwuzlIWAj0OtL5KaJr5iupwPUHJEUp855a7EkmF4jFJA/uT2Z8+sQbA/2RIgc0A
	qZBLIvbSJdHq9gmMbhLasaiTQTWYE2oV4z0MdQujPopmiWINaD+eFbJS2xva3w9mBaRBpoa
	F5ZdNvaJ1iDx6CTZuTeSzG6LcRvHbbZCj3k7P6PYv9RokYotP758N8Aas0h7DOhAOiUsPSk
	ntPdFeSuiIVO69Px4FqxxZ6GIU5f0kughprVVEWtDLanXJQ==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0

Hi Alexander and Dragan,

On 12/11/24 16:45, Dragan Simic wrote:
> Hello Alexander and Fukaumi,
> 
> On 2024-12-11 08:36, Alexander Dahl wrote:
>> there's still a typo in the subject.  It should probably also read
>> "pwm", right?
> 
> Indeed.  Here's how the patch summary could be worded instead:
> 
>    arm64: dts: rockchip: Use PWM to drive blue LED on ROCK 5A/5C
> 
> Simplified and less wordy, but still descriptive enough. :)


yes, it's typo... thanks for pointing and fixing.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> Am Wed, Dec 11, 2024 at 06:32:22AM +0000 schrieb FUKAUMI Naoki:
>>> The pin connected to the blue LED, GPIO3_D5, is not only a GPIO but
>>> also has a PWM function. Using PWM, the user can change the brightness
>>> of the LED.
>>>
>>> Convert blue LED from "gpio-leds" to "pwm-leds" and enable related PWM.
>>>
>>> Acked-by: Dragan Simic <dsimic@manjaro.org>
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>> ---
>>> this patch depends on [1] which depends on [2].
>>>
>>> [1] https://patchwork.kernel.org/project/linux-rockchip/ 
>>> cover/20241209132406.4232-1-naoki@radxa.com/
>>> [2] https://patchwork.kernel.org/project/linux-rockchip/ 
>>> cover/20241209125131.4101-1-naoki@radxa.com/
>>> ---
>>> Changes in v2:
>>> - Reword commit message
>>> ---
>>>  .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 34 ++++++++++++-------
>>>  1 file changed, 22 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi b/arch/ 
>>> arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>>> index d0b9513d56a7..d72314d917da 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>>> @@ -46,7 +46,7 @@ hdmi0_con_in: endpoint {
>>>      leds {
>>>          compatible = "gpio-leds";
>>>          pinctrl-names = "default";
>>> -        pinctrl-0 = <&led_pins>;
>>> +        pinctrl-0 = <&led_pin>;
>>>
>>>          led-0 {
>>>              color = <LED_COLOR_ID_GREEN>;
>>> @@ -54,14 +54,6 @@ led-0 {
>>>              function = LED_FUNCTION_POWER;
>>>              gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
>>>          };
>>> -
>>> -        led-1 {
>>> -            color = <LED_COLOR_ID_BLUE>;
>>> -            default-state = "on";
>>> -            function = LED_FUNCTION_STATUS;
>>> -            gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
>>> -            linux,default-trigger = "heartbeat";
>>> -        };
>>>      };
>>>
>>>      fan: pwm-fan {
>>> @@ -72,6 +64,19 @@ fan: pwm-fan {
>>>          pwms = <&pwm3 0 60000 0>;
>>>      };
>>>
>>> +    pwm-leds {
>>> +        compatible = "pwm-leds";
>>> +
>>> +        led-1 {
>>> +            color = <LED_COLOR_ID_BLUE>;
>>> +            default-state = "on";
>>> +            function = LED_FUNCTION_STATUS;
>>> +            linux,default-trigger = "heartbeat";
>>> +            pwms = <&pwm11 0 1000000 0>;
>>> +            max-brightness = <255>;
>>> +        };
>>> +    };
>>> +
>>>      vbus_typec: regulator-vbus-typec {
>>>          compatible = "regulator-fixed";
>>>          regulator-name = "vbus_typec";
>>> @@ -422,9 +427,8 @@ &pcie2x1l2 {
>>>
>>>  &pinctrl {
>>>      leds {
>>> -        led_pins: led-pins {
>>> -            rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>,
>>> -                    <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
>>> +        led_pin: led-pin {
>>> +            rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
>>>          };
>>>      };
>>>
>>> @@ -467,6 +471,12 @@ &pwm3 {
>>>      status = "okay";
>>>  };
>>>
>>> +&pwm11 {
>>> +    pinctrl-names = "default";
>>> +    pinctrl-0 = <&pwm11m3_pins>;
>>> +    status = "okay";
>>> +};
>>> +
>>>  &saradc {
>>>      vref-supply = <&vcca_1v8_s0>;
>>>      status = "okay";
>>> -- 
>>> 2.43.0
> 



