Return-Path: <devicetree+bounces-253909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA759D128D2
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:30:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 916113051AE7
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BB93356A0D;
	Mon, 12 Jan 2026 12:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="VMJnJOxi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49248.qiye.163.com (mail-m49248.qiye.163.com [45.254.49.248])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82F9E28D83F;
	Mon, 12 Jan 2026 12:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.248
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768220963; cv=none; b=sAmhQuabicplQMbRV8e2UtBgPQMvTos3YjtB1aGWxNgcsCwJAeqiNC+JZnJG75eYerCDHBTixW4bxuG34tqOmuJlK9ILNnfVB3lhHB1AjWhSS8VrRXYaSH80mLPQE6CUzXQfERLGQphEZLKyJANh1JMkzjYq9HFRYaij6MBd05o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768220963; c=relaxed/simple;
	bh=6Z+PIEIU8Cury5ZwbtZwAZv8RzO3KdDugLP4B9t3VkU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BIszAGOUayPL/fT/Tvvq8qL6q9DJvo/EMAkPeAn/U39mIiblhiBFr9VVENctU8m4v+AIzcUMvToGEcPxBZGq6YTjseEc2PQY4R+P5lkP5LRgkFZuNK8+Szwpl7XhcFCODM3P5JYnM8LPj9snC1YPQkMf3Vp2Yfnu/kMdn2mmazE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=VMJnJOxi; arc=none smtp.client-ip=45.254.49.248
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.163] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3056e6249;
	Mon, 12 Jan 2026 20:29:08 +0800 (GMT+08:00)
Message-ID: <1242f7d2-e68c-42ca-a6cc-c56c9e6a496f@rock-chips.com>
Date: Mon, 12 Jan 2026 20:29:04 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] mfd: rk8xx: Add RK801 support
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20260112102849.1479-1-chenjh@rock-chips.com>
 <20260112102849.1479-3-chenjh@rock-chips.com> <1980810.GKX7oQKdZx@diego>
From: Joseph Chen <chenjh@rock-chips.com>
In-Reply-To: <1980810.GKX7oQKdZx@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9bb22e76c809d2kunm32fd54ab8197
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh5LTlYeTklNSx0eS00YH0xWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=VMJnJOxi5ZK4YIQf0Wessd6Nw6/dgGbl5DWcy01gmN7UhPbFw3DOb9Jl5ySJQb+cgIicXAIIzNQKyxC3sawz8pXBuqvYmkkgJbxBq4yvimsNj+L16B03Mg+R76CvOxeSQeJvuFnxmEBd2qTz4VAFXX7w8rTO7lAkL9/D5xwGMYY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=g6uH84HDnFSrdVdJ26m+FtXVNrVdhC0apU6MQYr/8k0=;
	h=date:mime-version:subject:message-id:from;


在 2026/1/12 19:02, Heiko Stübner 写道:
> Hi Joseph,
>
> Am Montag, 12. Januar 2026, 11:28:48 Mitteleuropäische Normalzeit schrieb Joseph Chen:
>> The RK801 is a Power Management IC (PMIC) for multimedia
>> and handheld devices. It contains the following components:
>>
>> - 4 BUCK
>> - 2 LDO
>> - 1 SWITCH
>>
>> Signed-off-by: Joseph Chen <chenjh@rock-chips.com>
>> ---
>>   drivers/mfd/Kconfig                 |    6 +-
>>   drivers/mfd/rk8xx-core.c            |   81 ++
>>   drivers/mfd/rk8xx-i2c.c             |   33 +-
>>   drivers/regulator/rk808-regulator.c | 1963 ---------------------------
>>   include/linux/mfd/rk808.h           |  118 ++
>>   5 files changed, 234 insertions(+), 1967 deletions(-)
>>   delete mode 100644 drivers/regulator/rk808-regulator.c
>>
>> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
>> index 6cec1858947..5405e8633aa 100644
>> --- a/drivers/mfd/Kconfig
>> +++ b/drivers/mfd/Kconfig
>> @@ -1355,15 +1355,15 @@ config MFD_RK8XX
>>   	select MFD_CORE
>>   
>>   config MFD_RK8XX_I2C
>> -	tristate "Rockchip RK805/RK808/RK809/RK816/RK817/RK818 Power Management Chip"
>> +	tristate "Rockchip RK801/RK805/RK808/RK809/RK816/RK817/RK818 Power Management Chip"
> nit: I think at some point it'd be time to make that
> 	"Rockchip RX8xx Power Management Chips"
> The config entry is already named that way, and that list of individual
> supported chips gets way too long.
>
> Also the individual supported chips _are_ listed below, so the unwieldy
> entry headline can be shortened.

Thanks, agreed. Will fix in v3.

>>   	depends on I2C && OF
>>   	select MFD_CORE
>>   	select REGMAP_I2C
>>   	select REGMAP_IRQ
>>   	select MFD_RK8XX
>>   	help
>> -	  If you say yes here you get support for the RK805, RK808, RK809,
>> -	  RK816, RK817 and RK818 Power Management chips.
>> +	  If you say yes here you get support for the RK801, RK805, RK808,
>> +	  RK809, RK816, RK817 and RK818 Power Management chips.
>>   	  This driver provides common support for accessing the device
>>   	  through I2C interface. The device supports multiple sub-devices
>>   	  including interrupts, RTC, LDO & DCDC regulators, and onkey.
> [...]
>
>> diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
>> deleted file mode 100644
>> index 1e814247965..00000000000
>> --- a/drivers/regulator/rk808-regulator.c
>> +++ /dev/null
> Looks like something did go wrong here, as you're removing the whole
> drivers/regulator/rk808-regulator.c file from the MFD patch.
>
>
> Thanks
> Heiko
>
>
>
Thanks for catching this. It was a silly mistake on my end during local
patch preparation.
I'll send a v3 shortly to fix this issue to avoid wasting reviewers' time.

-- 
Best regards,
Joseph Chen


