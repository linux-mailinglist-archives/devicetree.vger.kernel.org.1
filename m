Return-Path: <devicetree+bounces-78211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8884B9117D5
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 03:03:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3399D1F22E3F
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 01:03:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2917A625;
	Fri, 21 Jun 2024 01:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=milkv.io header.i=@milkv.io header.b="rfAzRzQl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D6910F2
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 01:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718931804; cv=none; b=Ec7rF323wBib6qQJQTmWX7AYC85jd6AOXGSb2ucBxiqze66JnqqdVRmmqPUVcT+5x0Si0JdPnFKztVpSDLqkNUVusz4o8uK80Z9qkbJ/tAfGbfKyJS5XV07tNGy6JpQXuxa5hSRg09jcWxtEnDXMMWHpyRB8Y/nrZjb8eQsqMZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718931804; c=relaxed/simple;
	bh=LdCSJpLhvlDJEolSd4MBDT5H/L7tl74MCeLGy0bZo6w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kUW+7T4K9PpXTjfHGrcSMhFAeVCjj+vcGPZSfVYl4LxjSCFoKZPCO/xju3eJXlxtz4X6YmceykY/M7NGELHIdE1Gyq5s8kKCFxCBBvl87LoMyHi+K8SN+1t/HG2pqBhz//+D8Vy48IeC/PNYEmM75kes1EIh9YZDAXcPNidveWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=milkv.io; spf=none smtp.mailfrom=milkv.io; dkim=pass (1024-bit key) header.d=milkv.io header.i=@milkv.io header.b=rfAzRzQl; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=milkv.io
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=milkv.io
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=milkv.io;
	s=pmbt2212; t=1718931750;
	bh=OOnXnpfjNpMMeI7D5CG1cn0mBZZguiF2GaV0QN+Mjx8=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=rfAzRzQlyQdRAuDqRhfNE63A6IUqLaWf46Dm9W9RWcPy+BgCs9FmzVPpYqIffwcO+
	 5I+d6USc8fEkPFJtoqAF19/nBYZym6UOlD7/T91M3Ww5ZrxmoRxqsvE8U+pZpJLmCq
	 bLGNfYFSsjqGzaXSqJKUA5CqG7zcDLXdBx14L7HQ=
X-QQ-mid: bizesmtpsz5t1718931749te96ozg
X-QQ-Originating-IP: zjYGwuMdIrwIDDvfKZ5cWx2aSQlpvGNYvMQAT1lIQ5I=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 21 Jun 2024 09:02:27 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8327780796254329127
Message-ID: <AC74C056BD8A7945+7d7e4fa9-25e6-40a0-b571-ff3d01cb575f@milkv.io>
Date: Fri, 21 Jun 2024 10:02:26 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] riscv: dts: starfive: enable heartbeat LED for Milk-V
 Mars
To: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, kernel@esmil.dk
References: <20240613024827.36512-1-naoki@milkv.io>
 <20240613024827.36512-2-naoki@milkv.io>
 <8ceef5c1-03b3-4468-96e3-d86db5434e82@canonical.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@milkv.io>
In-Reply-To: <8ceef5c1-03b3-4468-96e3-d86db5434e82@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:milkv.io:qybglogicsvrsz:qybglogicsvrsz4a-2

Hi,

On 6/21/24 08:13, Heinrich Schuchardt wrote:
> On 6/13/24 04:48, FUKAUMI Naoki wrote:
>> Milk-V Mars has a green LED to show system load. This patch enables
>> a green LED as a heartbeat LED.
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@milkv.io>
>> ---
>>   arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts | 13 +++++++++++++
>>   1 file changed, 13 insertions(+)
>>
>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts 
>> b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
>> index fa0eac78e0ba..4f4bbf64dbe4 100644
>> --- a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
>> +++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
>> @@ -4,11 +4,24 @@
>>    */
>>   /dts-v1/;
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/leds/common.h>
>>   #include "jh7110-common.dtsi"
>>   / {
>>       model = "Milk-V Mars";
>>       compatible = "milkv,mars", "starfive,jh7110";
>> +
>> +    leds {
>> +        compatible = "gpio-leds";
>> +
>> +        led-0 {
>> +            gpios = <&aongpio 3 GPIO_ACTIVE_HIGH>;
>> +            color = <LED_COLOR_ID_GREEN>;
>> +            linux,default-trigger = "heartbeat";
>> +            function = LED_FUNCTION_HEARTBEAT;
> 
> According to the schematics the StarFive VisionFive 2 board like the 
> Mars board has RGPIO3 connected to a green LED to display the power 
> status. Shouldn't we consider both boards?

I think LED usage is vendor/board specific.

Best regards,

--
FUKAUMI Naoki
Shenzhen MilkV Technology Co., Ltd.

> Best regards
> 
> Heinrich
> 
>> +        };
>> +    };
>>   };
>>   &gmac0 {
> 
> 

