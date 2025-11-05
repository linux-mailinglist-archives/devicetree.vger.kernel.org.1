Return-Path: <devicetree+bounces-235427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF94C38625
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 00:39:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1472A1A21A00
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 23:40:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A75E22D0631;
	Wed,  5 Nov 2025 23:39:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast2.qq.com (smtpbguseast2.qq.com [54.204.34.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647251CAA6C
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 23:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762385976; cv=none; b=g/e0OQaag11aIXx5w1kSRD2LC4echuToDPZVuKgj2OHscAIXt6R1bzpAZnnY7lpzdtS8XNYTtv/bQcSRV4atlNBrWnmcHvDScbG/TtRvlYYzETGWX06m8N+f0sDXsj5aZPKwk4katD+dgX5vbbLm17s0KLKM61rtSGtWyC1GDvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762385976; c=relaxed/simple;
	bh=id8YMHAD4Wt5sMPIjAVOJrsFUTlRdX5L0Kzw6tc2RZo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lYkVpEBI+GdFrroJs7PzIvfUtTJCr9biUqtt/DKQz/PJWl8iH19j7AiC4TPPNKO8g94koGZIi2VPXe+FRo8rNCBmN2gOYiF+4aEdtpg+oCkA08ytJjh7FTEg9zQ0w3NPNTqz+lXLLhivhWQPVu3VuptcX4HBnlGI7W6NzAO0UKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1762385933t7f24b51e
X-QQ-Originating-IP: jT53XK8v121mS/zobdecZzFwB1tEZfE3MKKGVRWywe8=
Received: from [IPV6:240f:10b:7440:1:4c9d:dff9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 06 Nov 2025 07:38:50 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 5895672341378937030
Message-ID: <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
Date: Thu, 6 Nov 2025 08:38:49 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Ndw/mc8X39ObmgZRzXUlFkoCtPHFOSIU3CQEb0alWgfy0PMOieic4DNc
	W1Xs1fnnvWuMVU9UHxejXafarnlgLpqSNG4UtY+QgZMZqiwrxr4vNxfIyAlrcJN+dxz1TtK
	Hbgrt2GexFpaGUrZ4ZRUsAmCHiC2/osR+csMZ8IEoN3/9G34DKAsp3R1tWueb11cI6/bwG2
	s4wZ0gzWyq4p1v9WwNuS+D+nN4uI5irxf0PjdEtpHZnZT8BRjgu6GgyQZbVj5Vmo4B/wvtH
	VMnz23eekAwoQLQ4Ut8qob5l2tQ97MdIKt9yvogaC7wMPf64Uz+pKB0m0WotruFTpqWMhfN
	sodkqKqkPtIoh3FamJNDCD7GXuutwqYdDJtUiptLNVb/pAP428OSo3l4Woa83uxCqW7MTNx
	MK6XXK3xhebfmHNo4mnELyq4/4YEiQHm9Q9YlXverg7qWTBFP1bckEYGmb5VxDeI5yNJkP9
	2XeD2oKZ2rsbUT/xWDzj1bq8IZsTlgHC+1zWfZNpxGoW5EIpnVxulRiRPZ0h8LrkPwc8eUq
	JzfLsoOv3XsguQw+To1y74h71KhIwgOb8DzWM2wurnmvL1ZOJ31b9U5GNfGqAiJgFtI1azw
	UgFyOrBkHjobEOknK9/HHHQbHcoUALaPh/D7kP2zB+lvon+Au+1RR4jnGW7VxqznaJpllx7
	rknqxQVALodlIRFtIGjLOfZ638gqbhYrE9GCCpoGYa0YSo6ow8Wov4X8G/nilp8mrIf9iVT
	GCjxc9Xd2ImKK3X1qd0Kus/4RTBiMB7cUkR7BdjbH7wO4dLYqvCvPTyxhOZxhgQBjZu/jpi
	6UZk/Thyewuu888hK6KCwLseQ/NRzPxwdC7FvHGY1rynZU5PYDONlxrmT1MgVMXjPtw5t93
	t1Po6ELxJ1asjK3qTwe8XfFsfauDAb8wGHRRfiNAZ9ak8Mfw1g8K9DsoJ72yHjPK5J8a1mG
	qZno2Z8a+cghVzRxj4tLaLbfQIKq2/+ndXB1uqwU8DQBHO37IZoZTbUirgnJ+nhMfpMowKr
	Tf2OzzqA==
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

Hi Jimmy,

On 11/6/25 03:27, Jimmy Hon wrote:
> On Tue, Nov 4, 2025 at 11:14 PM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>
>> The Radxa CM5 IO Board is an application board for the Radxa CM5.
>>
>> Specification:
> 
>> - 1x microSD card slot
> 
> [ snip ]
> 
>> +
>> +&sdmmc {
>> +       bus-width = <4>;
>> +       cap-mmc-highspeed;
>> +       cap-sd-highspeed;
>> +       cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>> +       disable-wp;
>> +       no-sdio;
>> +       pinctrl-names = "default";
>> +       pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
>> +       sd-uhs-sdr104;
>> +       vmmc-supply = <&vcc_3v3_s3>;
>> +       vqmmc-supply = <&vccio_sd_s0>;
>> +       status = "okay";
>> +};
> 
> When used as a TF slot, shouldn't there be a "no-mmc" also?

We have "eMMC to uSD."
  https://radxa.com/products/accessories/emmc-to-usd

[  202.176757] mmc_host mmc1: Bus speed (slot 0) = 49500000Hz (slot req 
52000000Hz, actual 49500000HZ div = 0)
[  202.178477] mmc1: new high speed MMC card at address 0001
[  202.179534] mmcblk1: mmc1:0001 SLD64G 57.6 GiB
[  202.207336] mmcblk1boot0: mmc1:0001 SLD64G 4.00 MiB
[  202.210374] mmcblk1boot1: mmc1:0001 SLD64G 4.00 MiB
[  202.212967] mmcblk1rpmb: mmc1:0001 SLD64G 4.00 MiB, chardev (511:1)

(I'm not sure why it says "Not work with the SD slot on the board." I 
will check.)

> That's how the Rock 5A, 5B, and 5C were defined.

I have submitted a patch without "no-mmc" before. I intend to send one 
again when I have the chance.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Jimmy
> 



