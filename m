Return-Path: <devicetree+bounces-235928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 001BDC3E89A
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 06:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE6283AD221
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 05:45:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D669124DCED;
	Fri,  7 Nov 2025 05:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AsYRI480"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F0921D59C
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 05:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762494317; cv=none; b=D0Nkzll7tHsds6oIM276c0I+6OMemF4f204BXcYu2uxKhk6hyFnpIsJWwYCy/vo5ep/Ef1R8wAYvHjSmcd+raH/94x5/gleZisr4SrJ2oa3ygDmCCqFnSZtuq5MqQuulel+ADxubg1rnuMEjTsjQhuQP4tA0q9/LJrdcen/QdmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762494317; c=relaxed/simple;
	bh=Hc3oXF2kQgVitnzgBsI+50qFCEPEPLgmpp2OFNRANnk=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=mJPMc781x6QFQQsEh7tsVXXC4G1Bz7nYqR9TLkXZFqpjz23hPA+oaALdaqC6rUWEsRYuQhkxIR9RE1u+d0/e66jz/LEuxvqkpIGLdIFepZrenKcLSd/jpqAiiJCp9E0ytZemAnEBdpz3nfO+hvzmSwLk0IUgNapPS5hjv4gV0xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AsYRI480; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-7af603c06easo414143b3a.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 21:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762494315; x=1763099115; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6wg2nGX6aFqXgThy+oqw3JxZb/E9R0bH2FID+9HWFig=;
        b=AsYRI480n4kHvxnusO8b5mcBexBXL5x9B32bRuEN+aLk+DaFLzep70jRm6ey5yfsHc
         DALlB8ZY+XkrRVekww6tZcJbjYRPw95OXbhHskVEhlUoNPr2WKcy0rNqmnE9MZv0PtnP
         1L2gIedkdslmJRcduCiRCcCDpGjJ12+PHmle0iTd8b4nkNy9+KPsbbrymMC03LDkDtHY
         L5/YCGE1bRnKvmVS52wCCFfuRsgVF1GCAiDH1GJeZ83iAsHgRHQRb72BSluAhddPXZ6s
         hWg5LzuJ6omN1FiqT6s1FhhP40qgI9c6EF+coLsoISoW9IJGCntDoQRuTqnq1ansOYVj
         v5HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762494315; x=1763099115;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6wg2nGX6aFqXgThy+oqw3JxZb/E9R0bH2FID+9HWFig=;
        b=r3ExQqth2n870U7A1c8NaeVUC0iSCIjlzGeMjigXcxawmCCqiGFGJ8+pAt+akCFDjk
         X+uWRG48KBreLHpEBOYSnvCsK55OufW8TyESIPNipNNgbWgKcQCLtfM0nfwGJdEL82v1
         OLgk/nfqF394URTZ4dykSWyZhIcNseRcnP1fuUHMhGY9AFyHuPET8ciS9H8/GNVm4MQZ
         7jc2lASFIoijop/MqMBBKfCBQubh91+vTQ+KmxwsqP4p7JoFvOdNKZ5Er3tL6f/8aVB9
         VjfcOH/j7kMbKYIFjI18ibq2ZxQ7l/6IVZiPimqig83+J5ZLYmihxOi4KQUMPbjt24+g
         67Rw==
X-Gm-Message-State: AOJu0YyLuPX3C4EPkmH34ItwEmlqr2qTSW6aqhF1DawOoVElIlMitQIF
	+gA909MFjEdXm53K1WLqInQjGZisrKPwRIOLwuxQAhy/YMHaoN+d+bqa
X-Gm-Gg: ASbGncuwSjFD+8hzn0yyqgyTB8AmLOv2Mjpctdf5jWiP0hs5esxlbOfpp0l9xqwyWrC
	pwedVUne7B2nEcdFhmjSOSmueag3zEY+xDh0lkmDkp6o3kvUsQNT1sXnrHJzbZa0yMQ4X6JKUBU
	NS0rSRYznzxn/LQFL07I5jqan238ih6qN1CqL/Uen8OjqWE9JFlCaqbWHXoBwxgRZdJ1SeRsr3W
	FHzgdpj+QCxz7VxxV5MncwoiZi/T6l+w1qM+enyqX6bDIVxEu8Tb2FncxGdBUycR3rKJnwe6bhK
	f2pb1B7C6yb2bp++rTSOTVRowNhxWlHuuOdHO3gYd/EHoG3C6WE9YXNrd/Vb/DQ9dtHCBRSp7fi
	KsUfAgYmvLs/vLqIEPv0Te4qa0V4+jpDITAzyrE7lxCpmMLggKI2l0FUealcGv5GKPsJVIkb9e+
	2tlBv/266SRB4=
X-Google-Smtp-Source: AGHT+IFs4xmBPjKhQDx8H/zt+uSYsPDyhSy02Xe4cpEdlQuCbIIghOhw7URdzsSVFXk9IRU9NXmnRQ==
X-Received: by 2002:a05:6a00:b85:b0:77d:c625:f5d3 with SMTP id d2e1a72fcca58-7b1482acf23mr748935b3a.1.1762494315321;
        Thu, 06 Nov 2025 21:45:15 -0800 (PST)
Received: from ehlo.thunderbird.net ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0c9635007sm1579193b3a.2.2025.11.06.21.45.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 21:45:14 -0800 (PST)
Date: Fri, 07 Nov 2025 13:45:10 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>
CC: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v5_3/3=5D_arm64=3A_dts=3A_rockchip=3A?=
 =?US-ASCII?Q?_Add_devicetree_for_the_9Tripod_X3568_v4?=
User-Agent: K-9 Mail for Android
In-Reply-To: <3719039.iIbC2pHGDl@phil>
References: <20251103171702.1518730-1-coiaprant@gmail.com> <20251103171702.1518730-4-coiaprant@gmail.com> <3719039.iIbC2pHGDl@phil>
Message-ID: <8AD7010C-A0E9-4CF5-B66D-1E1A01CF0B43@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On November 7, 2025 6:54:45 AM GMT+08:00, Heiko Stuebner <heiko@sntech=2Ede=
> wrote:
>Am Montag, 3=2E November 2025, 18:17:02 Mitteleurop=C3=A4ische Normalzeit=
 schrieb Coia Prant:
>> The 9Tripod X3568 v4 is an RK3568-based SBC, just like the RK3568-EVB=
=2E
>> It always uses soldered connections between the X3568CV2/X3568CV3/X3568=
CV4 core board
>> and the X3568bv4 I/O board=2E
>>=20
>> The differences between the core boards
>> - PCB size, layout
>> - CPU (RKK3568B2/RK3568J)
>> - Memory type (DDR4/LPDDR4/LPDDR4X) and size
>> - eMMC size
>> - DSI/EDP resistor values
>> Although the components vary, they maintain full compatibility=2E
>>=20
>> The X3568 board has multiple hardware revisions, and we currently suppo=
rt v4 (I/O board)=2E
>>=20
>> Specification:
>> - SoC: RockChip RK3568 ARM64 (4 cores)
>> - eMMC: 16-128 GB
>> - RAM: 2-16 GB
>> - Power: DC 12V 2A
>> - Ethernet: 2x YT8521SC RGMII (10/100/1000 Mbps)
>> - Wireless radio: 802=2E11b/g/n/ac/ax dual-band
>> - LED:
>>   Power: AlwaysOn
>>   User: GPIO
>> - Button:
>>   VOL+: SARADC/0 <35k =C2=B5V>
>>   VOL-: SARADC/0 <450k =C2=B5V>
>>   Power/Reset: PMIC RK809
>> - CAN
>>   CAN/1: 4-pin (PH 2=2E0)
>> - PWM
>>   PWM/4: Backlight DSI/0 DSI/1
>>   PWM/7: IR Receiver [may not install]
>> - UART:
>>   UART/2: Debug TTL - 1500000 8N1 (1=2E25mm)
>>   UART/3: TTL (PH 2=2E0)
>>   UART/4: TTL (PH 2=2E0)
>>   UART/8: AP6275S Bluetooth
>>   UART/9: TTL (PH 2=2E0)
>> - I2C:
>>   I2C/0: PMIC RK809
>>   I2C/1: Touchscreen DSI/0 DSI/1
>>   I2C/4: Camera
>>   I2C/5: RTC@51 PCF8563
>> - I2S:
>>   I2S/0: miniHDMI Sound
>>   I2S/1: RK809 Audio Codec
>>   I2S/3: AP6275S Bluetooth Sound
>> - SDMMC:
>>   SDMMC/0: microSD (TF) slot
>>   SDMMC/2: AP6275S SDIO WiFi card
>> - Camera: 1x CSI
>> - Video: miniHDMI / DSI0 (MIPI/LVDS) / DSI1 (MIPI/EDP)
>> - Audio: miniHDMI / MIC on-board / Speaker / SPDIF / 3=2E5mm Headphones=
 / AP6275S Bluetooth
>> - USB:
>>   USB 2=2E0 HOST x2
>>   USB 2=2E0 HOST x3 (4-pin)
>>   USB 2=2E0 OTG x1 (shared with USB 3=2E0 OTG/HOST) [slot may not insta=
ll]
>>   USB 3=2E0 HOST x1
>>   USB 3=2E0 OTG/HOST x1
>> - SATA: 1x SATA 3=2E0 with Power/4-pin [slot may not install]
>> - PCIe: 1x PCIe 3=2E0 x2 (x4 connecter) [power/clock/slot may not insta=
ll]
>>=20
>> Link:
>> - https://appletsapi=2E52solution=2Ecom/media/X3568V4%E5%BC%80%E5%8F%91=
%E6%9D%BF%E7%A1%AC%E4%BB%B6%E6%89%8B%E5%86%8C=2Epdf
>> - https://blog=2Egov=2Ecooking/archives/research-ninetripod-x3568-v4-an=
d-flash=2Ehtml
>>=20
>> Signed-off-by: Coia Prant <coiaprant@gmail=2Ecom>
>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4-video=
-demo=2Edtso b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4-video-d=
emo=2Edtso
>> new file mode 100644
>> index 000000000=2E=2Ee7fa1ca48
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4-video-demo=
=2Edtso
>> @@ -0,0 +1,154 @@
>> +// SPDX-License-Identifier: (GPL-2=2E0-or-later OR MIT)
>> +
>> +// This is a sample reference, due to lack of hardware can not be test=
ed, at your own risk
>
>and I've also dropped the 2nd overlay now=2E
>Please only ever submit patches for stuff you have actually tested=2E
>
>We don't really add stuff with "use at your own risk" caveats ;-)
>
>
>Heiko
>
>

Okay=2E

I'll ask if anyone has a camera and a screen=2E
This part is extracted from the original equipment tree, and has been corr=
ected by reference to other board=2E

If I can find a test, I will submit a new patch=2E

Thanks!
Wish have a good day=2E

