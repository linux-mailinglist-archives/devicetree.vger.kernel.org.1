Return-Path: <devicetree+bounces-79046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5762B913F07
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 01:10:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE77A28163B
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 23:10:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DC181849F5;
	Sun, 23 Jun 2024 23:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=milkv.io header.i=@milkv.io header.b="cRD8faYi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr1.qq.com (smtpbgbr1.qq.com [54.207.19.206])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293914085D
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 23:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.19.206
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719184223; cv=none; b=dmXD+/I9aIhHhYdpzxFULlGWY28NPgxlrUP4ju9faUvAH80aHnMeFn+afNIgJf+uYb9l0DHU17WqdYgRT0F7AnUY/8aErHgQEOZK0JCLDyGHVLTYSaxhNNBteCJcfW4tT5wyAxJfGOmUmruDTnJd+FePT1u0J+ck7m59JaG7JSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719184223; c=relaxed/simple;
	bh=0VdSOoccM+4uzERVeC/Eh5yHrP3Urp2jPmtaV9qpAbA=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=sW6gNu6vzDXJL83z2w0FlvLUFz1fP/Jm678ehK+f9thkhpZ1qVnFotvwKKptvk1j27GMH0J6j4/TwYnI0e55F6crZ9d6d21LxcVlpmXTmX5VasLzR3erNnmV3WRL5eS0MOeSuNHBEWubZi0NvuLXWTAlJ29nHCIxL0YjpKLPFxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=milkv.io; spf=none smtp.mailfrom=milkv.io; dkim=pass (1024-bit key) header.d=milkv.io header.i=@milkv.io header.b=cRD8faYi; arc=none smtp.client-ip=54.207.19.206
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=milkv.io
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=milkv.io
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=milkv.io;
	s=pmbt2212; t=1719184152;
	bh=c1FNIYKWK2v/CHo6YcQ80GNZCeRUA6RKed6FfWTijXY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To;
	b=cRD8faYiyjEljLSBnN4JrMpn/8+BflswiXAs0xDYYcVEmXsW1Z2uN7auNdd9XGb3e
	 EYceAH4NNcEv0WRTIOgjpeJPyCF7G7ODZ4f9eGJF13+MRv1dceoE6JLuQxbhZeR0g5
	 S7iXgynjBb6jUIOgws2W1a/Z8UHsLCnThQPw8efg=
X-QQ-mid: bizesmtpsz10t1719184150t1mqgn
X-QQ-Originating-IP: c0Hs9XbuCd2FmITUynqFI5aLu5qHBI4STk38ou+Ta8Q=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 24 Jun 2024 07:09:08 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7920811834183669360
Message-ID: <2C13D76B7FA9727D+6cf7c812-5cf9-4fd6-a79b-8f2899c7c3de@milkv.io>
Date: Mon, 24 Jun 2024 08:09:08 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] riscv: dts: starfive: enable heartbeat LED for Milk-V
 Mars
From: FUKAUMI Naoki <naoki@milkv.io>
To: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, kernel@esmil.dk
References: <20240613024827.36512-1-naoki@milkv.io>
 <20240613024827.36512-2-naoki@milkv.io>
 <8ceef5c1-03b3-4468-96e3-d86db5434e82@canonical.com>
 <AC74C056BD8A7945+7d7e4fa9-25e6-40a0-b571-ff3d01cb575f@milkv.io>
Content-Language: en-US
In-Reply-To: <AC74C056BD8A7945+7d7e4fa9-25e6-40a0-b571-ff3d01cb575f@milkv.io>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:milkv.io:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

On 6/21/24 10:02, FUKAUMI Naoki wrote:
> Hi,
> 
> On 6/21/24 08:13, Heinrich Schuchardt wrote:
>> On 6/13/24 04:48, FUKAUMI Naoki wrote:
>>> Milk-V Mars has a green LED to show system load. This patch enables
>>> a green LED as a heartbeat LED.
>>>
>>> Signed-off-by: FUKAUMI Naoki <naoki@milkv.io>
>>> ---
>>>   arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts | 13 +++++++++++++
>>>   1 file changed, 13 insertions(+)
>>>
>>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts 
>>> b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
>>> index fa0eac78e0ba..4f4bbf64dbe4 100644
>>> --- a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
>>> +++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
>>> @@ -4,11 +4,24 @@
>>>    */
>>>   /dts-v1/;
>>> +#include <dt-bindings/gpio/gpio.h>
>>> +#include <dt-bindings/leds/common.h>
>>>   #include "jh7110-common.dtsi"
>>>   / {
>>>       model = "Milk-V Mars";
>>>       compatible = "milkv,mars", "starfive,jh7110";
>>> +
>>> +    leds {
>>> +        compatible = "gpio-leds";
>>> +
>>> +        led-0 {
>>> +            gpios = <&aongpio 3 GPIO_ACTIVE_HIGH>;
>>> +            color = <LED_COLOR_ID_GREEN>;
>>> +            linux,default-trigger = "heartbeat";
>>> +            function = LED_FUNCTION_HEARTBEAT;
>>
>> According to the schematics the StarFive VisionFive 2 board like the 
>> Mars board has RGPIO3 connected to a green LED to display the power 
>> status. Shouldn't we consider both boards?
> 
> I think LED usage is vendor/board specific.

do I need to do something for VF2 to merge my patch?

--
FUKAUMI Naoki
Shenzhen MilkV Technology Co., Ltd.

> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Shenzhen MilkV Technology Co., Ltd.
> 
>> Best regards
>>
>> Heinrich
>>
>>> +        };
>>> +    };
>>>   };
>>>   &gmac0 {
>>
>>

