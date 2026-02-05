Return-Path: <devicetree+bounces-262968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GL0wBEp0hGn12wMAu9opvQ
	(envelope-from <devicetree+bounces-262968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 11:43:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A6DF16F9
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 11:43:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7F495302F6B9
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 10:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9753A9014;
	Thu,  5 Feb 2026 10:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="V0HSA2L6"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B7D3A9628;
	Thu,  5 Feb 2026 10:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770288142; cv=none; b=qaZuDepqM4iwyWoTGNQPCAV7gUOOVvFmN1HE74wfSShJS7t5zhOqhMQdCKvcdLWZbRi+eQ6gIGEWxE6aE3frc3fiFHgcdcCp71xWS1KGbQ7au5yaKZdBG5Fb5rLEfYD+vUwcqr4yc1ed4FACk+U5fm9dJbSOBnXPo6heQoySWVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770288142; c=relaxed/simple;
	bh=EFkQJ/FeaTlYw4ksx0sha0nzYrP020ROsbcL34+2gDo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zby9lYY0QoAulNqCAVonySOG7fCw+z3MetxPEKlxkPCDHPP22+osWIJRI/YFv4SYSqfoAb/rDAIj9DpHsc/ii9S9Y528UyI0BSYfDh4ARUOp+c0XUnxjAVmHSJWOP3LIUDwZ7OWXTvHp+OpkVuc1ezlnFy3juOD3+ZqxquHqRZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=V0HSA2L6; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1770288112;
	bh=OObd72dBP8O/pM/sBVA944xFBWgM8aPfDdnd27BOlYs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=V0HSA2L6bWWwofDzB+Xk0gp8PvxfXIkqhTfF8slocfXIK3fT0iHZmrGFRKilD5VNW
	 4w9uFq5UPKYInaUpnPnOLkd3ht9lRUFzmjwWJfvyOMIg+PHXcenb0IFIaDRLjNaqVw
	 wSPhnk5DM0KFHq9zEAQVU9ntvuElRtmS7sUf1l055o9nteBLQXRtHld1L9AApf5ZIn
	 pks2DvvPro2NojkMKDyEkD1dAuQHpax+EUd0+qUEEkLZqOvjgCV4NaIXrUTpoq/umF
	 ZZIL50/Kj6ax3Wk+8RLx33dJcdXk20BbryAFqqmvKeR8xCOTwCPZ37jlgvTsfmv6EF
	 bBorVJoPKF0aA==
Received: from [IPV6:2605:59ca:364f:d400:1b91:6b30:22c2:fffc] (unknown [IPv6:2605:59ca:364f:d400:1b91:6b30:22c2:fffc])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 7DFD9B22014B;
	Thu,  5 Feb 2026 11:41:50 +0100 (CET)
Message-ID: <3225628d-2546-44c1-bc9d-1607aa3d6c90@freeshell.de>
Date: Thu, 5 Feb 2026 02:41:48 -0800
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
 <e2394c64-af36-428f-ad6e-4c7038c0301e@freeshell.de>
 <3166f7d5-b526-411d-b337-27981a7ed14d@canonical.com>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <3166f7d5-b526-411d-b337-27981a7ed14d@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[freeshell.de,reject];
	R_DKIM_ALLOW(-0.20)[freeshell.de:s=s2025];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262968-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[e@freeshell.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[freeshell.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,freeshell.de:mid,freeshell.de:dkim,waveshare.com:url,raspberrypi.com:url]
X-Rspamd-Queue-Id: 76A6DF16F9
X-Rspamd-Action: no action


On 2/4/26 23:50, Heinrich Schuchardt wrote:
> On 2/5/26 00:16, E Shattow wrote:
>> Hi,
>>
>> I think the correct fix will be device tree overlays per-carrier board
>> and not this one-size-fits-all workaround with the System-on-Module.
>> Review below:
>>
>> On 2/4/26 08:38, Heinrich Schuchardt wrote:
>>> On 2/4/26 11:16, Heinrich Schuchardt wrote:
>>>> The card detect GPIO depends on support by the base board.
>>>>
>>>> Detecting an SD-card did not work for me with a Milk-V Mars CM Lite
>>>> mounted on an Waveshare CM4-IO-BASE-A board.
>>>
>>> The schematic of the Waveshare CM4-IO-BASE-A board is available at
>>> https://files.waveshare.com/upload/a/aa/CM4-IO-BASE-A_V4_SchDoc.pdf
>>> showing pin 76 is not connected.
>>>
>>> In https://forums.raspberrypi.com/viewtopic.php?t=291041 the Raspberry
>>> Foundation explicitly wrote that pin 76 should not be connected when
>>> using a compute module socket.
>>>
>>> E. Shattow pointed me to a board
>>> https://github.com/NabuCasa/yellow/releases/download/v1.3c/
>>> Yellow_v1.3c_Schematic_git.8957b440adda.pdf
>>> that actually disregarded this advice and uses pin 76 actually as cd-
>>> gpio. This usage of GPIO 41 is a property of the specific base board and
>>> not of the Milk-V Mars CM and should be described in a device-tree
>>> overlay if needed.
>>>
>>> Best regards
>>>
>>> Heinrich
>>>
>>>>
>>>> According to [1] SD_SDIO0_CD_GPIO41 is connected to pin 76 reserved.
>>>> The Raspberry Pi Compute Module 4 IO Board documentation marks that
>>>> pin as
>>>> reserved. The Raspberry Pi Compute Module 5 IO Board documentation
>>>> marks the pin as VBAT.
>>>>
>>>> Remove the cd-gpios definition and add broken-cd.
>>>>
>>>> [1]  https://github.com/milkv-mars/mars-files/blob/main/Mars-
>>>> CM_Hardware_Schematices/Milk-V_Mars-CM_SCH_V1.0-2023-0905_Lite.pdf
>>>>
>>>> Signed-off-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
>>>> ---
>>>>    arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts | 2 +-
>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
>>>> b/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
>>>> index 63aa94d65ab55..566b0bdc2800d 100644
>>>> --- a/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
>>>> +++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
>>>> @@ -13,7 +13,7 @@ / {
>>>>      &mmc0 {
>>>>        bus-width = <4>;
>>
>> + /* Schematic signal SD_SDIO0_CD_GPIO41 to CM4 connector pin 76*/
>> + /* Raspberry Pi CM4 specification pin 76 reserved do not connect */
>>
>>>> -    cd-gpios = <&sysgpio 41 GPIO_ACTIVE_LOW>;
>>>> +    broken-cd;
>>
>> All schematic documents for Mars CM Lite list this signal name as
>> `SD_SDIO0_CD_GPIO41`.
>>
>>>>        disable-wp;
>>>>    };
>>>>    
>>
>> The carrier board I have a schematic document for - Home Assistant
>> Yellow PoE rev 1.3 - lists this as SD_DETECT, apparently ignoring the
>> Raspberry Pi Foundation document about CM4 Compute IO specification that
>> explicitly says do not connect this pin to anything.
>>
>> The carrier board I do not have a schematic document for - DFRobot
>> Compute Module 4 IoT Router Board Mini - only has SD Card and is
>> operational as-is.
>>
>> The compatibility issue for carrier boards that more strictly follow the
>> Raspberry Pi CM4 IO specification may be better handled by device tree
>> overlays. Though this is not convenient for users and requires more
>> developer effort, overlays would be best to adopt dtbo per-carrier board
>> to describe hardware accurately.
>>
>> What is needed to introduce overlays?
>>
>> - E
> 
> Device-tree overlays would have to be applied by the firmware, typically
> U-Boot.
> 
> The firmware has no way to determine if it is running on an IO-board
> with or without a card detect switch. So the selection of an overlay
> will be a manual process. In many cases users will not know about the
> issue of card detect switches and if their board has one or not.
> 
> The default value without any overlay should be one that allows to use
> the SD-card on all IO-boards, i.e. 'broken-cd'.

Where should such overlays be developed?

Does the overlay then get committed to Linux upstream for downstream use
by U-Boot via devicetree-rebasing tree? Why is this change necessary, here ?

> 
> This is also the value used be the board support package
> https://github.com/milkv-mars/mars-buildroot-sdk/
> blob/1fd6bac9f2efde47fbb8afd28d2903c49f893e3f/linux/arch/riscv/boot/dts/
> starfive/jh7110-milkv-mars-cm-sdcard.dts#L265
> 
> Best regards
> 
> Heinrich

I would like to see more of the Mars CM and Mars CM Lite devicetree
moved down to overlays if not described by the common JH7110 stanzas or
schematic documentation. In my view, ideally, such extras are not
functional for users without an overlay applied.

I dislike the idea of trying to chase every possible unknown carrier
board for broad compatibility by changing the definition of the
System-on-Module. Compatibility with Raspberry Pi carrier boards sounds
to me like the purpose of device tree overlay(s).

No objection to, for example, a more generic super-compatible overlay
that will be the default loaded by firmware, and trim down the dts here
to remove any carrier board peripheral assumptions.

-E

