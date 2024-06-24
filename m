Return-Path: <devicetree+bounces-79259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD5F9147C6
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 12:44:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE2C3281BFC
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E0CA136E3B;
	Mon, 24 Jun 2024 10:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=milkv.io header.i=@milkv.io header.b="rzZ+QoRU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgjp3.qq.com (smtpbgjp3.qq.com [54.92.39.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A181369A3
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 10:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.92.39.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719225831; cv=none; b=Hbk+NYdxHTZZU4VL+bApawKTJqghvrgEGFrNWkJYOVmDmVeyINkgktuqyQo2srMFe6HYIwZNKqVdk8n3h5TSvtRg5qmE4Q++MMQMzBdLbgSh9lG/hrxi/qt2lO9EubWe028aKtBodsWLXM/+hJOzZ3eHOQSC2ipELIeP+JhhaS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719225831; c=relaxed/simple;
	bh=CYxX3pr1abZiEDmRJl5q4IEnrQkH0o4ajad2CUCKoLM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gwj0prADsWESjGbql1GZOEYbqwCFdBo02TTxPC8Eazl8zbxPwdJJbVW09BzAErZMtW5A2ELigvBsBzD6/rUk0uogqbMM8ZFr1y/d4PQHd3OWui4U/F2EdN3TkcfMTfUGG37KLI1GlWz41CTtQrEmLk1iA95dYx36AqHs3yAEBDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=milkv.io; spf=none smtp.mailfrom=milkv.io; dkim=pass (1024-bit key) header.d=milkv.io header.i=@milkv.io header.b=rzZ+QoRU; arc=none smtp.client-ip=54.92.39.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=milkv.io
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=milkv.io
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=milkv.io;
	s=pmbt2212; t=1719225778;
	bh=sekKpimCctA0okQna9i1fH0J/PrsR0PvqSGbrwoPYJI=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=rzZ+QoRUvw3FwZcZWpztY9qHfXoPyUFYPHobNy1CKUj5LNK5F6Y+wRHCzmajV4DC/
	 3BWnArZETfYcD9ZZqiQngi0aN6nmsBFcoqGFxrYGSaNKnOyFfyQSzNkZyWfwRfj4di
	 68kzw4Rke9iIruvT0KgL+IcnzhB9YWvXP8axvnqw=
X-QQ-mid: bizesmtp85t1719225772t7y9mbj4
X-QQ-Originating-IP: UW+IHoZnpzQqZ5eHkn509peR9S4Q+TWYo3iaqYLOdls=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 24 Jun 2024 18:42:49 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4310506951962495159
Message-ID: <DD700917BCC5A08D+fac89999-b4c2-40c2-b2a5-a4be69ca3fe1@milkv.io>
Date: Mon, 24 Jun 2024 19:42:47 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] riscv: dts: starfive: enable heartbeat LED for Milk-V
 Mars
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, kernel@esmil.dk
References: <20240613024827.36512-1-naoki@milkv.io>
 <20240613024827.36512-2-naoki@milkv.io>
 <8ceef5c1-03b3-4468-96e3-d86db5434e82@canonical.com>
 <AC74C056BD8A7945+7d7e4fa9-25e6-40a0-b571-ff3d01cb575f@milkv.io>
 <2C13D76B7FA9727D+6cf7c812-5cf9-4fd6-a79b-8f2899c7c3de@milkv.io>
 <CAJM55Z_ORHP2P01CqTN192TBmgfj93aLNhrw4cz4b-itnn5TBw@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@milkv.io>
In-Reply-To: <CAJM55Z_ORHP2P01CqTN192TBmgfj93aLNhrw4cz4b-itnn5TBw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:milkv.io:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

On 6/24/24 18:44, Emil Renner Berthing wrote:
> FUKAUMI Naoki wrote:
>> Hi,
>>
>> On 6/21/24 10:02, FUKAUMI Naoki wrote:
>>> Hi,
>>>
>>> On 6/21/24 08:13, Heinrich Schuchardt wrote:
>>>> On 6/13/24 04:48, FUKAUMI Naoki wrote:
>>>>> Milk-V Mars has a green LED to show system load. This patch enables
>>>>> a green LED as a heartbeat LED.
>>>>>
>>>>> Signed-off-by: FUKAUMI Naoki <naoki@milkv.io>
>>>>> ---
>>>>>    arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts | 13 +++++++++++++
>>>>>    1 file changed, 13 insertions(+)
>>>>>
>>>>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
>>>>> b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
>>>>> index fa0eac78e0ba..4f4bbf64dbe4 100644
>>>>> --- a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
>>>>> +++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
>>>>> @@ -4,11 +4,24 @@
>>>>>     */
>>>>>    /dts-v1/;
>>>>> +#include <dt-bindings/gpio/gpio.h>
>>>>> +#include <dt-bindings/leds/common.h>
>>>>>    #include "jh7110-common.dtsi"
>>>>>    / {
>>>>>        model = "Milk-V Mars";
>>>>>        compatible = "milkv,mars", "starfive,jh7110";
>>>>> +
>>>>> +    leds {
>>>>> +        compatible = "gpio-leds";
>>>>> +
>>>>> +        led-0 {
>>>>> +            gpios = <&aongpio 3 GPIO_ACTIVE_HIGH>;
>>>>> +            color = <LED_COLOR_ID_GREEN>;
>>>>> +            linux,default-trigger = "heartbeat";
>>>>> +            function = LED_FUNCTION_HEARTBEAT;
>>>>
>>>> According to the schematics the StarFive VisionFive 2 board like the
>>>> Mars board has RGPIO3 connected to a green LED to display the power
>>>> status. Shouldn't we consider both boards?
>>>
>>> I think LED usage is vendor/board specific.
>>
>> do I need to do something for VF2 to merge my patch?
> 
> It's not strictly required, but it would be great if you could add the LED to
> the VF2 too, thank you.
> 
> Also I'm not sure if you saw my previous reply:
> https://lore.kernel.org/linux-riscv/CAJM55Z_j8gWFyKvsiu-oGDV7Hacr4Amt5FdkHdjKnhZwZgxncA@mail.gmail.com/

sorry, I missed your previous reply...

I think it's better to follow vendor kernel behavior (except strange 
label...), so I want to use linux,default-trigger in dts.

Best regards,

--
FUKAUMI Naoki
Shenzhen MilkV Technology Co., Ltd.

> /Emil
> 

