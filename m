Return-Path: <devicetree+bounces-125243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F399DB48C
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 10:04:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46CA1281123
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 09:04:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C68511547C5;
	Thu, 28 Nov 2024 09:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="KCct7+al"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B191E143C5D
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 09:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732784697; cv=none; b=OSPHjNIf4jQdUYkmlRpGWbWjniWozJom89rgUpX9w36VE+jJijg5i6BIbbrw28/JIg10Z463MdKXlATgb8WgYD7ALXMSkcv/DtUwD8l8unjOr3H89hPqK6MCtWhlPCnUmJe9b2u89vChDxHcZsvbhASZiPvPdbWkqhaa0zkCKSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732784697; c=relaxed/simple;
	bh=Kq8xhiIwwM6vl9uZc/IOuL6NeTSpQB4hzTj2U8Kr7nY=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=YaQZeMmpnB0cHuiFRw++aY3H5gvWMEsb7t1ILFZfca/HYAqGvERjO9Dh9o8cUiF4TD7uh0aLIHXzXeNo+LJsm5ySHlsQi2taMZxBmQvcLvztK8W8nNdj6aZ3zqpGB7wqEP6LmcXm9Q/mg7WgxTs4Wl/Vnzl6Xi7elh4PP2HyvEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=KCct7+al; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1732784693;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ldR/uHYWReTVbi7ij2TG+qwpyW4jFa6oh0arwlI8e1Y=;
	b=KCct7+alPLJOKOYK86z7p0Z6ppoEnE709quiqHgNpAkw7bAQ47Z+SoGGRqc/7kNxxvu8SI
	6fW740CYDnlN6B/isO5hjWWcBEftMIaxl4g0G5I7tQtdV0Ape8xkMxpNyEJOuBnic3WDRK
	XWg4+53KEOm9saeeWpXiqIfmygKceovZvXFbt6o96IKZYsgqAQleYJbcdAxk6sO6gqUUbD
	OvkfIoTkAZZi0TYUneLRdlWywJ1PrLj9YKYJ9spv240f7BLsXJ/Ewjh+wHHVSL8rxyFZys
	1Ka48k8eaDIG76Xirs2av/02vv1CJYjB+jNDC6yfjnqiqugch+/vjrFW6630EQ==
Date: Thu, 28 Nov 2024 10:04:52 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, cfsworks@gmail.com, kever.yang@rock-chips.com,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 krzk+dt@kernel.org
Subject: Re: [PATCH v2 1/3] arm64: dts: rockchip: add "dcin" regulator for
 Radxa ROCK 5C
In-Reply-To: <F596759069124768+5da60c49-3b1f-423c-b96e-8435e0cef88a@radxa.com>
References: <20241119100813.78820-1-naoki@radxa.com>
 <f1255d6a5c18fb43c47fab756f622891@manjaro.org>
 <F596759069124768+5da60c49-3b1f-423c-b96e-8435e0cef88a@radxa.com>
Message-ID: <86803e3c7797d9d661826fb56a0622b2@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukaumi,

On 2024-11-28 02:03, FUKAUMI Naoki wrote:
> On 11/28/24 09:39, Dragan Simic wrote:
>> On 2024-11-19 11:08, FUKAUMI Naoki wrote:
>>> add "dcin" label to vcc5v_dcin regulator and use it in vcc_sysin
>>> regulator.
>>> 
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>> ---
>>> Changes in v2:
>>> - none
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>> 
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>> index 6da13b6b9a7b..b5460c179ef7 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>> @@ -88,7 +88,7 @@ vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
>>>          vin-supply = <&vcc_sysin>;
>>>      };
>>> 
>>> -    vcc5v_dcin: regulator-vcc5v-dcin {
>>> +    vcc5v_dcin: dcin: regulator-vcc5v-dcin {
>> 
>> I just went through the associated part of the ROCK 5C schematic,
>> and I was unable to see any reasons why should we introduce "dcin"
>> as another alias here?
>> 
>> The root of the ROCK 5C's power tree is labeled "5v_dcin" in the
>> schematic, so renaming "vcc5v_dcin" to "5v_dcin" would make sense,
>> but I don't see why should we add another alias.
> 
> ROCK 5A has vcc12_dcin which supply power to vcc_sysin. both
> vcc5v_dcin on ROCK5C and vcc12v_dcin on ROCK 5C have additional "dcin"
> label for sharing .dtsi. (please check PATCH 3/3)

Hmm, I don't think that's the best way to achieve the shared nature
of the .dtsi file.  I think that an acceptable way to achieve that
would be to just rename "vcc5v_dcin" to "vbus_typec" (and rename
"regulator-vcc5v-dcin" to "regulator-vbus-typec" as well), because
"vbus_typec" is actually used in the ROCK 5A schematic.  Though, it
isn't used in the ROCK 5C schematic, but should still be obvious to
anyone wanting to correlate the DT and the schematic.

It should also be described better in the patch description, which
is simply too terse in its current form.  Also, this patch series
should have a cover letter that describes its purpose.

>>>          compatible = "regulator-fixed";
>>>          regulator-name = "vcc5v_dcin";

Here, "vcc5v_dcin" should also be renamed to "vbus_typec" in the
shared .dtsi file, which is rather obvious.

Also, the associated regulator-min-microvolt and regulator-max-
microvolt properties should be dropped in the shared .dtsi file
and moved to the ROCK 5A and 5C board .dts files, because the
ROCK 5A and 5C schematics indicate that different VBUS voltages
(12 V and 5 V, respectively) are used.

Finally, all these DT changes should belong to the patch in this
series that actually creates the shared .dtsi file.  I see no point
or value in having it performed in a separate patch.

>>>          regulator-always-on;
>>> @@ -170,7 +170,7 @@ vcc_sysin: regulator-vcc-sysin {
>>>          regulator-boot-on;
>>>          regulator-min-microvolt = <5000000>;
>>>          regulator-max-microvolt = <5000000>;
>>> -        vin-supply = <&vcc5v_dcin>;
>>> +        vin-supply = <&dcin>;
>>>      };
>>> 
>>>      vcca: regulator-vcca {

