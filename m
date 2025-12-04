Return-Path: <devicetree+bounces-244357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04470CA40CC
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 15:38:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C1E743045F55
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 14:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F5E63446B7;
	Thu,  4 Dec 2025 14:33:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FA91329377;
	Thu,  4 Dec 2025 14:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764858822; cv=none; b=HyJ0Up2cxAn84gBOqqDKvRO7cWPo+PsYnN+tCsoYVEkkdDDHbwRZVkXKBA0SkzdFa/i1HMpWJ8V7tvQL9z9fbXKQxCih566AY6Sro7Xf4Fo/alIQIoFTibgvyPVeHidA8xwZNLdv3U1LI1dglil6NvN9wmUn8yKFF7tzA76JfqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764858822; c=relaxed/simple;
	bh=HFjqmrBsZWqpT07SPvdzAXMwMI8aOxaW+Stzf0rdERA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZkLg8v3jtSXqBWSRavos3+OoZfErwww7dBJakHFcqz6m0QlhJ/3S3wjOLokf7DH5FpfuicwcI+P9vWSehTuYfXayu/5F3ClpJrI+gYe5vxIY1LeCESsw4zd2kR1HFt7MuTRZTobYWrG97fC6yKK6jpPcEhTehlfq8sioKtQaXTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5303A339;
	Thu,  4 Dec 2025 06:33:32 -0800 (PST)
Received: from [10.1.28.112] (010265703453.cambridge.arm.com [10.1.28.112])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B9F93F66E;
	Thu,  4 Dec 2025 06:33:38 -0800 (PST)
Message-ID: <43f9753d-2e63-4b52-a4af-ca8d22f0b351@arm.com>
Date: Thu, 4 Dec 2025 14:33:36 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: add SPDIF audio to Beelink A1
To: Christian Hewitt <christianshewitt@gmail.com>,
 Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250828164300.3829488-1-christianshewitt@gmail.com>
 <66ae20b3-3316-4ec2-9c51-8414c053dc32@arm.com>
 <f0df035f-3c3d-4649-9f48-3e8e2e69d17b@gmail.com>
 <5557C31E-3B1D-426C-BF9F-C417FF29E97C@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <5557C31E-3B1D-426C-BF9F-C417FF29E97C@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2025-12-04 2:13 pm, Christian Hewitt wrote:
>> On 4 Dec 2025, at 12:23 am, Alex Bee <knaerzche@gmail.com> wrote:
>>
>> Hi Robin,
>>
>> Am 03.12.25 um 17:21 schrieb Robin Murphy:
>>> [ Just noticed this... ]
>>>
>>> On 2025-08-28 5:43 pm, Christian Hewitt wrote:
>>>> From: Alex Bee <knaerzche@gmail.com>
>>>>
>>>> Add the required nodes to enable SPDIF audio output on
>>>> the Beelink A1 set-top-box.
>>>
>>> But the A1 doesn't have S/PDIF? Only HDMI plus a 3.5mm jack connected to the analog audio codec (and possibly the composite TV out) :/
>>>
>> Yeah, sorry - this patch wasn't supposed to be submitted upstream.
> 
> Apologies, this is my enthusiasm for trying to clear out the patch
> collection LibreELEC has been hoarding by sending things upstream
> on behalf of the original authors (and hoarders).

No worries :)

> Would you like me to send a revert patch?

Since I'm the only one complaining, and I'm liable to have a couple more 
Rockchip DT patches to send soon anyway, feel free to leave it with me 
unless you're particularly keen.

Cheers,
Robin.

> 
> Christian
> 
>> Regards,
>>
>> Alex
>>
>>> Thanks,
>>> Robin.
>>>
>>>> Signed-off-by: Alex Bee <knaerzche@gmail.com>
>>>> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
>>>> ---
>>>>    arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 23 ++++++++++++++++++++++
>>>>    1 file changed, 23 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
>>>> index f7c4578865c5..b276a29bdd85 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
>>>> @@ -58,6 +58,24 @@ ir-receiver {
>>>>            gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_LOW>;
>>>>            linux,rc-map-name = "rc-beelink-gs1";
>>>>        };
>>>> +
>>>> +    spdif_sound: spdif-sound {
>>>> +        compatible = "simple-audio-card";
>>>> +        simple-audio-card,name = "SPDIF";
>>>> +
>>>> +        simple-audio-card,cpu {
>>>> +            sound-dai = <&spdif>;
>>>> +        };
>>>> +
>>>> +        simple-audio-card,codec {
>>>> +            sound-dai = <&spdif_dit>;
>>>> +        };
>>>> +    };
>>>> +
>>>> +    spdif_dit: spdif-dit {
>>>> +        compatible = "linux,spdif-dit";
>>>> +        #sound-dai-cells = <0>;
>>>> +    };
>>>>    };
>>>>      &analog_sound {
>>>> @@ -325,6 +343,11 @@ &sdmmc {
>>>>        status = "okay";
>>>>    };
>>>>    +&spdif {
>>>> +    pinctrl-0 = <&spdifm0_tx>;
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>>    &tsadc {
>>>>        rockchip,hw-tshut-mode = <0>;
>>>>        rockchip,hw-tshut-polarity = <0>;
> 


