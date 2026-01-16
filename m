Return-Path: <devicetree+bounces-256063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 301B1D313D7
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:42:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A49BD3008981
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 12:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F045217705;
	Fri, 16 Jan 2026 12:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="kpevwV+w"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC13021576E
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 12:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.97.179.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768567339; cv=none; b=AdHgcn+TSQZcWH0LmkNRVVQOrFQQw2mmTe6MVVMVqMga14jAgELQ5wg+yawV2cItUF3GbSCCzrpzVHS5Mq5CO8RYVnVOMamGUHK9TgituiUBSWePj5vTzdAMsn1rLfrps289Q9A9nDGq5pXaa0zY8ccO2tTEJtVecYsdLqnRiBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768567339; c=relaxed/simple;
	bh=eufgpLzAUxfdeCtRkbdk8nLYn35BkjNRB/KlO857nCs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rwDFQgCPk2uGFLHWEqwuVU3CI8uOk58WFuDCccCvNL/fwbnDIJuHO5+ET6G6FadRTjf7t3kAD2B3qqwgdtUvKMdplsC9uQAOQ42hmQSiIonEQqqbrx3XMmUQX5y88RCzRkgZGTub8HNNYreWxAfGtNLG9oqOiXsdwY6HFxq5eR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=kpevwV+w; arc=none smtp.client-ip=213.97.179.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vH+PgOENTDXlzsxRREXIcCkNdXY313g9kTQGZXo/8ws=; b=kpevwV+wqObPrgd3tM98X8L2yC
	wMp2fOCeL4BSoevbskuu/MIdLXKwSmaccpQA1EkHWuv0w44WDEv7aR6jDV+2Yy7T6yTaTnqEoOK5s
	WKFDaBM9PyDiPc2eDTt0nSE8hvi5UY01nXY7Pna7NH2Vn6Au+ocGhnvNDNnaKp7hoaVoyqD2P8EOC
	Pj2Kr6iR5erFAANuSMdxELq9peHOM6fPxQaWjEIQYSR2KruYdxiv8MLEY5ZJbfRmrRKtwxykadKnh
	38dPKNcpPWUIzGmG/sXZsjl0Sh/ZJH+FnoumSQPWf8czruT2q+w0f8rKlQl9gfOKK30W2juabcIYJ
	XO+3TcZw==;
Received: from [187.36.210.68] (helo=[192.168.1.103])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1vgj9R-0069gt-66; Fri, 16 Jan 2026 13:42:05 +0100
Message-ID: <5188e604-7952-495b-98e1-a01b8afd87d7@igalia.com>
Date: Fri, 16 Jan 2026 09:41:59 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: Add V3D device node
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel-dev@igalia.com
References: <20260114120610.82531-1-mcanal@igalia.com>
 <121ede67-dbfc-4b79-8076-04693e9d3d53@gmail.com>
 <59cdede3-7757-4fe1-bb94-e7a93eea7611@igalia.com>
 <CALeDE9PGzTe4LXnDJcyhh_ietWkrf8Sp7xX=X6pZvdCWLx2huw@mail.gmail.com>
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Content-Language: en-US
In-Reply-To: <CALeDE9PGzTe4LXnDJcyhh_ietWkrf8Sp7xX=X6pZvdCWLx2huw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Peter,

On 16/01/26 07:56, Peter Robinson wrote:
> On Fri, 16 Jan 2026 at 10:15, Maíra Canal <mcanal@igalia.com> wrote:
>>
>> Hi Peter,
>>
>> On 16/01/26 00:53, Peter Robinson wrote:
>>> Hi Maira,
>>>
>>> On 14/01/2026 12:04, Maíra Canal wrote:
>>>> Commits 0ad5bc1ce463 ("drm/v3d: fix up register addresses for V3D 7.x")
>>>> and 6fd9487147c4 ("drm/v3d: add brcm,2712-v3d as a compatible V3D
>>>> device")
>>>> added driver support for V3D on BCM2712, but the corresponding device
>>>> tree node is still missing.
>>>>
>>>> Add the V3D device tree node to the BCM2712 DTS.
>>>>
>>>> Signed-off-by: Maíra Canal <mcanal@igalia.com>
>>>>
>>>> ---
>>>> v1 -> v2:
>>>>
>>>> - Rebased on top of linux-next (Stefan Wahren)
>>>> - Fixed node's address (2000000 -> 1002000000) (Stefan Wahren)
>>>> - Link to v1: https://lore.kernel.org/linux-
>>>> devicetree/20260113192902.48046-2-mcanal@igalia.com/
>>>> ---
>>>>    .../boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi    |  4 ++++
>>>>    arch/arm64/boot/dts/broadcom/bcm2712.dtsi          | 14 ++++++++++++++
>>>>    2 files changed, 18 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi b/
>>>> arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
>>>> index 7d4742ebe247..97522c6803c5 100644
>>>> --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
>>>> +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
>>>> @@ -247,3 +247,7 @@ &pcie1 {
>>>>    &pcie2 {
>>>>        status = "okay";
>>>>    };
>>>> +
>>>> +&v3d {
>>>> +    clocks = <&firmware_clocks 5>;
>>>
>>> Looking at the upstream DT [1] I think this also needs a clock-names entry.
>>
>> Differently from the `hvs` node [1] you sent (which specifies clock-
>> names), the `v3d` binding [2] doesn't have a clock-names property.
>> Therefore, it is not needed.
> 
> There's a name in the clk driver [1] so maybe the bindings should be updated?

Those are two separate concepts. In the DT, clock-names is used by vc4
to distinguish between multiple clock inputs [1]. In contrast, the v3d
driver has a single clock input [2], and does not rely on named clock
lookups.

Given that, I believe there is no need for a clock-names property in the
v3d binding, and updating the binding to mandate it would not provide
any functional benefit at this point.

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/vc4/vc4_hvs.c#n1679 

[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/v3d/v3d_drv.c#n363

Best regards,
- Maíra

> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/bcm/clk-raspberrypi.c#n26
> 
>> [1]
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
>> [2]
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>>
>> Best regards,
>> - Maíra
>>
>>>
>>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/
>>> tree/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi#n233
>>>
>>>> +};
>>>> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/
>>>> boot/dts/broadcom/bcm2712.dtsi
>>>> index 330a121ebfcb..661668ef7419 100644
>>>> --- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
>>>> +++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
>>>> @@ -1,5 +1,6 @@
>>>>    // SPDX-License-Identifier: (GPL-2.0 OR MIT)
>>>>    #include <dt-bindings/interrupt-controller/arm-gic.h>
>>>> +#include <dt-bindings/soc/bcm2835-pm.h>
>>>>    / {
>>>>        compatible = "brcm,bcm2712";
>>>> @@ -642,6 +643,19 @@ mip1: msi-controller@1000131000 {
>>>>                msi-ranges = <&gicv2 GIC_SPI 247 IRQ_TYPE_EDGE_RISING 8>;
>>>>                brcm,msi-offset = <8>;
>>>>            };
>>>> +
>>>> +        v3d: gpu@1002000000 {
>>>> +            compatible = "brcm,2712-v3d";
>>>> +            reg = <0x10 0x02000000 0x00 0x4000>,
>>>> +                  <0x10 0x02008000 0x00 0x6000>,
>>>> +                  <0x10 0x02030800 0x00 0x0700>;
>>>> +            reg-names = "hub", "core0", "sms";
>>>> +
>>>> +            power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
>>>> +            resets = <&pm BCM2835_RESET_V3D>;
>>>> +            interrupts = <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
>>>> +                     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>;
>>>> +        };
>>>>        };
>>>>        vc4: gpu {
>>


