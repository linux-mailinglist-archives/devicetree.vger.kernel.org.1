Return-Path: <devicetree+bounces-296734-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONA8FatDBGp0GQIAu9opvQ
	(envelope-from <devicetree+bounces-296734-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 11:26:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0F9530976
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 11:26:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C5A032B0CE7
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 09:19:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B57A03E51F8;
	Wed, 13 May 2026 09:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b="Dp0lKEjq"
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2191F3D649C
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 09:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778663949; cv=none; b=vF054TOLeiBiIISFggDIVSaEK7r/zV35nTuNrRh5cHFYu3bEICFtyBLoDNv/zLWrZieyEcgWAbzGvJG6UKYb1xvx6MgscVwKicZGvAwdTkHGWzcCdXN15bJUbg2BThYvTrGAvoD7mtQwZPRJfZGTj1J68yyWeHQHZMj3xSNLBBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778663949; c=relaxed/simple;
	bh=saPWjah0HLHCM+YaxUtnkBSyrUnoxwuOOdQv3RhfwtY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fvm50FBEPsiutP74dqePSKgoikp3Tf/qSSmDHgtvfx6NeQTFnN82clEj07889NPrx7I4Sz4ewikZfEgJOA5msla4Hiy/Eg0s8VSsK6CK+f52iXvJHgnTXj0vtqXS5kF4Qizjkaqt7MhvkF+ZaqVm5laXvffYZ4wJzpt/YiUHE+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=Dp0lKEjq; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88EC6165C;
	Wed, 13 May 2026 02:18:59 -0700 (PDT)
Received: from [192.168.178.24] (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 15E203F85F;
	Wed, 13 May 2026 02:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1778663944; bh=saPWjah0HLHCM+YaxUtnkBSyrUnoxwuOOdQv3RhfwtY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Dp0lKEjqTCnzO3qTka4I2ucQ8tggXkfL5dRAw+ZXV19eZPL5lw5mqRgu0Vjwc4/Od
	 +xwK1qZuG2j4G/5JPv0tilYc81JyCSIp//iuf0VifXoYYfpeoLRDFqHkDpppmUvalw
	 Ahw3GnbTX+4+YFViQC2gh+Uh7NVn1tKI01vfPrZc=
Message-ID: <ee9fca66-d079-4ad7-9cb3-5077e8a4f6d6@arm.com>
Date: Wed, 13 May 2026 11:19:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: allwinner: Cubie A5E: enable SPI flash
To: wens@kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20260511221741.25888-1-andre.przywara@arm.com>
 <CAGb2v64u4sqwiiQcEBg-XvmJ2DLEpSj-_AWNbp14RAp-GXP7OA@mail.gmail.com>
Content-Language: en-US
From: Andre Przywara <andre.przywara@arm.com>
In-Reply-To: <CAGb2v64u4sqwiiQcEBg-XvmJ2DLEpSj-_AWNbp14RAp-GXP7OA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: BB0F9530976
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_DKIM_ALLOW(-0.20)[arm.com:s=foss];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[arm.com:+];
	TAGGED_FROM(0.00)[bounces-296734-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,arm.com:email,arm.com:mid,arm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hi Chen-Yu,

thanks for chipping in!

On 5/13/26 07:21, Chen-Yu Tsai wrote:
> Hi,
> 
> On Tue, May 12, 2026 at 6:18 AM Andre Przywara <andre.przywara@arm.com> wrote:
>>
>> The Cubie A5E board comes with 16MiB of SPI NOR flash.
>>
>> Enable the SPI0 DT node and describe the configuration.
>>
>> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
>> ---
>>   .../boot/dts/allwinner/sun55i-a527-cubie-a5e.dts  | 15 +++++++++++++++
>>   1 file changed, 15 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts b/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
>> index bfdf1728cd14b..7ad22fc85d1fd 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
>> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
>> @@ -344,6 +344,21 @@ &r_pio {
>>          vcc-pm-supply = <&reg_aldo3>;
>>   };
>>
>> +&spi0  {
>> +       pinctrl-names = "default";
>> +       pinctrl-0 = <&spi0_pc_pins>, <&spi0_cs0_pc_pin>,
>> +                   <&spi0_hold_pc_pin>, <&spi0_wp_pc_pin>;
> 
> This whole thing needs to be an overlay. The HOLD and WP pins
> conflict with eMMC usage, so it seems that Radxa only populates
> one or the other.
> 
> If you look at the pictures on their official website, you'll see the
> SPI NOR chip populated, but not the eMMC chip. On the linux-sunxi wiki
> page, you'll see the opposite.

Well, I have a hard time spotting any actual eMMC SKUs in the shops anyway.
But you are right, the hold and WP pins conflict with eMMC, whereas the 
other pins are not.

> And you probably want to enable QSPI, like Sashiko mentioned.

Well, in the interest of keeping this simple and enabling the usage of 
SPI flash for all the users out there, I'd rather drop the extra pins.
This is mostly really useful for booting the firmware, maybe loading a 
tiny kernel or other data once, so performance is not a big concern in 
this use case. The BootROM surely does not use QSPI.

And as you say, if people are really interested in the last bit of 
performance, they can use an overlay.

Cheers,
Andre

> 
> 
> ChenYu
> 
> 
>> +       status = "okay";
>> +
>> +       flash@0 {
>> +               compatible = "winbond,w25q128", "jedec,spi-nor";
>> +               reg = <0>;
>> +               spi-max-frequency = <40000000>;
>> +               #address-cells = <1>;
>> +               #size-cells = <1>;
>> +       };
>> +};
>> +
>>   &uart0 {
>>          pinctrl-names = "default";
>>          pinctrl-0 = <&uart0_pb_pins>;
>> --
>> 2.46.4
>>
> 


