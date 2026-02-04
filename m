Return-Path: <devicetree+bounces-262819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFd5KTPWg2kHuwMAu9opvQ
	(envelope-from <devicetree+bounces-262819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 00:28:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1560EED44C
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 00:28:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A8ED300D474
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 23:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BD3C39E171;
	Wed,  4 Feb 2026 23:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="L5T+Srbk"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677BD38F230;
	Wed,  4 Feb 2026 23:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770247477; cv=none; b=VELBE/rSgBu8SU+IkoN4oxn0y+ECmyjqrWG/UhFuO8JV9YGdYlCyVGIyVBATbheFKNmj9B1D4HKdEQF2MS/KbBjy0G0f4NcI2zAWVnFRq6+UvhQEblqvTiac8xAzUn3pKF/PHymOzyy5UJa7rWLDItjsMSY6rOIRp8fGUMT+G44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770247477; c=relaxed/simple;
	bh=6WLYdt4/g0FGvYTlZl5obCHuGrBDyDWgQc4688C+Pp8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FYsIyCUHC0pxK/EWH//Hf1is9w9wvBKMNw8HcsKCfVThXiK5dS8HsLqh4t1bqRZE9Y1MtoRpPiO8hV6rsAZ3EM4m2TTCVyFiEXdHvCJVNFQxtr2qNQ8+VOtw0PUdBLwDNyBQHfWlP1qKf74xrkM7StNjghYSAQL1Qx0cNUX+QkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=L5T+Srbk; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1770247000;
	bh=Gr09QrK6YVeG5HFkhtTTBy0LuiyxgEZg1zUEjeKVLC8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=L5T+Srbkp+1431z+6OhSUcj2+Q/RWbaAD0QZ5u0LxXQUkMuWdu5bLtZhnX2pjnlgB
	 b62bMK7TuE85eX6ovj4+xFPnx6Nt9poO1K+3DdGbSR1VYPRq/C4cgxvjnCWnWe4C9F
	 YT4kSsiXtZIRRcedRCzHJl8YYN+0+4OQBL6fubB9quAWz0P9n4RczdTtHiR54Ul0Ll
	 1UTSFdAdI2KdoLgljnYfZ9KfG/eU8FIB3O7Z9U2ZtujKK5DNa+veZfJXVuHhcEztqE
	 r1IaoF3K0GGobpXvYPPDjKgxBUquOKpZTbY7r0QkXRLB7J7dzkM+WsnzMQaEiG7L7i
	 2WhmKhnw5BTMA==
Received: from [IPV6:2605:59ca:364f:d400:1b91:6b30:22c2:fffc] (unknown [IPv6:2605:59ca:364f:d400:1b91:6b30:22c2:fffc])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 7A695B220741;
	Thu,  5 Feb 2026 00:16:38 +0100 (CET)
Message-ID: <e2394c64-af36-428f-ad6e-4c7038c0301e@freeshell.de>
Date: Wed, 4 Feb 2026 15:16:36 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] riscv: dts: starfive: Milk-V Mars CM Lite broken-cd
To: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
 Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260204101602.30184-1-heinrich.schuchardt@canonical.com>
 <46d5d249-8cf2-46d1-a90c-1f2c5f146e15@canonical.com>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <46d5d249-8cf2-46d1-a90c-1f2c5f146e15@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[freeshell.de,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[freeshell.de:s=s2025];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262819-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[e@freeshell.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[freeshell.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,raspberrypi.com:url]
X-Rspamd-Queue-Id: 1560EED44C
X-Rspamd-Action: no action

Hi,

I think the correct fix will be device tree overlays per-carrier board
and not this one-size-fits-all workaround with the System-on-Module.
Review below:

On 2/4/26 08:38, Heinrich Schuchardt wrote:
> On 2/4/26 11:16, Heinrich Schuchardt wrote:
>> The card detect GPIO depends on support by the base board.
>>
>> Detecting an SD-card did not work for me with a Milk-V Mars CM Lite
>> mounted on an Waveshare CM4-IO-BASE-A board.
> 
> The schematic of the Waveshare CM4-IO-BASE-A board is available at
> https://files.waveshare.com/upload/a/aa/CM4-IO-BASE-A_V4_SchDoc.pdf
> showing pin 76 is not connected.
> 
> In https://forums.raspberrypi.com/viewtopic.php?t=291041 the Raspberry
> Foundation explicitly wrote that pin 76 should not be connected when
> using a compute module socket.
> 
> E. Shattow pointed me to a board
> https://github.com/NabuCasa/yellow/releases/download/v1.3c/
> Yellow_v1.3c_Schematic_git.8957b440adda.pdf
> that actually disregarded this advice and uses pin 76 actually as cd-
> gpio. This usage of GPIO 41 is a property of the specific base board and
> not of the Milk-V Mars CM and should be described in a device-tree
> overlay if needed.
> 
> Best regards
> 
> Heinrich
> 
>>
>> According to [1] SD_SDIO0_CD_GPIO41 is connected to pin 76 reserved.
>> The Raspberry Pi Compute Module 4 IO Board documentation marks that
>> pin as
>> reserved. The Raspberry Pi Compute Module 5 IO Board documentation
>> marks the pin as VBAT.
>>
>> Remove the cd-gpios definition and add broken-cd.
>>
>> [1]  https://github.com/milkv-mars/mars-files/blob/main/Mars-
>> CM_Hardware_Schematices/Milk-V_Mars-CM_SCH_V1.0-2023-0905_Lite.pdf
>>
>> Signed-off-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
>> ---
>>   arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
>> b/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
>> index 63aa94d65ab55..566b0bdc2800d 100644
>> --- a/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
>> +++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
>> @@ -13,7 +13,7 @@ / {
>>     &mmc0 {
>>       bus-width = <4>;

+ /* Schematic signal SD_SDIO0_CD_GPIO41 to CM4 connector pin 76*/
+ /* Raspberry Pi CM4 specification pin 76 reserved do not connect */

>> -    cd-gpios = <&sysgpio 41 GPIO_ACTIVE_LOW>;
>> +    broken-cd;

All schematic documents for Mars CM Lite list this signal name as
`SD_SDIO0_CD_GPIO41`.

>>       disable-wp;
>>   };
>>   

The carrier board I have a schematic document for - Home Assistant
Yellow PoE rev 1.3 - lists this as SD_DETECT, apparently ignoring the
Raspberry Pi Foundation document about CM4 Compute IO specification that
explicitly says do not connect this pin to anything.

The carrier board I do not have a schematic document for - DFRobot
Compute Module 4 IoT Router Board Mini - only has SD Card and is
operational as-is.

The compatibility issue for carrier boards that more strictly follow the
Raspberry Pi CM4 IO specification may be better handled by device tree
overlays. Though this is not convenient for users and requires more
developer effort, overlays would be best to adopt dtbo per-carrier board
to describe hardware accurately.

What is needed to introduce overlays?

- E

