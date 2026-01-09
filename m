Return-Path: <devicetree+bounces-253087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43345D07305
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 06:22:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E40773015A86
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 05:21:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DC8F2206AC;
	Fri,  9 Jan 2026 05:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="CBIe9/sn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7668F48
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 05:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767936114; cv=none; b=NhLoeghfYgIyxaQRxm9+HLouyoP+YU/MhOqGRYbkmlfyVdKzhnmrQuV1iSfR5BYClg+jhFs0itkNarHH6thXqLQz7bpEr8hbzMjYGpvSVqr5M2njwOqxp6kZ2wsJ9Nvi/XvKcv5WH2g0JNOR7Lp7ac55HmBwNWXfUt+bQPQ3a7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767936114; c=relaxed/simple;
	bh=ADwpTdsppeYwljABSoUx9GoAFRvWMw51o2qqxcvypPk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rmWyNVL8r/joKojJHaszV7HkuD8PVpE5Pb1UrgnKx2D21clrJR5BY6BhwhMI9HtG6IqvdrOlE7/3SBZcBXvIk9rRKN6fzQpST06JoZCB+F3/N0gBuqm4zPRYbD58EuSQLMp/IYVckVNww0dM6WJz5DXNf9N0P5Xt7RrROZrBR0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=CBIe9/sn; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7c750b10e14so1698476a34.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 21:21:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1767936110; x=1768540910; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2a7yb61gjMTGmEOfZ9bR3veEdxmzKhIWW1FkPKIznT4=;
        b=CBIe9/snbTXT4dMHgu5fFh/J3KCdycFh+p6SS4B5Bk/2WBT7h3g+nxh9dMkQQXwq+6
         ar++1gPMDSeoWMo9OZH3M/1U5b3qDchWtZc3PAXrRPPLmefV1SwQz7fHRpWqmw5+qTOi
         US62CgfaG80uestzMRlqvdfwqYpJCqjJAAHxFvPMVhrK22aTbWFRSjDntKKNM8AZqlqt
         r8QS7n7BGnhyJid5Fo+78zeFNnX4mUt9JP39UnrwjVS0eAjYadSYkf0SOLlNqG6vaR6L
         TXCpz5DqeNHMfV6wRcekD5IzSh/Gt5JdXucorJFSeRxR6XTeRV1o1TuJf+rHOiXfFwkO
         f0Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767936110; x=1768540910;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2a7yb61gjMTGmEOfZ9bR3veEdxmzKhIWW1FkPKIznT4=;
        b=Dq4R8UiDBYtJe1buNmgsu7wK3V5wumryHwKne4s/01K4SHssvpObFm5usRdOhWxn8Z
         jenMTOpYfoGep5O0J1xnvSNpKi+EhY3imtW/GvWzTDzzKRr0Bdf8Yze6U9y20+2CJNx9
         GJwnoLzzE0RxCOBmwQg8KC8hIHRnwO5irKZxHgW1C1cO5kjoe4hGXD4IOdLwIPLKMq+C
         UzV7FSBT/HnISAtupGQ7lY9tjAR+TSQErTEC04HWO9scd1VcT8kH2ogMo9wB1ljT0LKg
         reVt1vntr95wM+vcZJQVDr2ypL5mX5hEOaEmqpy6+/VrfrbxcIKbucG+HvvMMom3tKBb
         qRMQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1hO4OAyk54pjbuSe1haEywcZAkRkWZI3O70ip4oKNn8nysFVtTILL+9jRfrukGH5mt9A09O3ZsSYg@vger.kernel.org
X-Gm-Message-State: AOJu0YwFLuSe1aQSTaXBa/4/O6p23g/VLiKLfRcjjMwlHJrlczGUf+rF
	ga/CVNSAZhMx5wmj54i57jpwdcPVl4Ro0pRHhSHVF0fKAXNv2Th5rmJMWwFiViLYcbg=
X-Gm-Gg: AY/fxX429JJ1iJzkPqJIcaMx0DbS5m8R66Y6WMhev4UPj4dNBqvodB0Bhm5z6CdHvUk
	ShHhEOt6IifyE6p22pGu2BmMGF7cYxNqTh6Wu2XwohJBoIZOmU0HcI9OcXbE7IQHb0kQGEqxnIM
	5JyffvOBRbBKarVhuTvTG7gWfGRJPV/F0Z2Zfqw7BR2vpJBRBfmLb/Tqo5m0yE0tdt/VwFuFCty
	+rI6O5HkAGOLK3SBC/7pj7vPlwcP9L+PpE1eNpV8+lKu5FsDcst3Khap6FM6ERPe13kYIzYMup3
	6meBkH1epYHDCn7nDNFeYp8fYccttRWcFRkWmca/TjsV0Ne+4rzhGbeKuG11MUkt0dOmEmF3ErG
	Z+Qzt7l80X6zxKtO2Q/Ts3lsjywEy7UcJpYnO0cjUWRB/mJ7DqQquMcMUkmRyX3/vV+jLJCXB7h
	/7ucUj00yudk2E7fLzRKlrB2ZK710=
X-Google-Smtp-Source: AGHT+IGR9G9QsQo8PdDgYo3rev7ih0hABMziC59pD3OHlqcWicc9e+z0NWSuSaiPEPFAI2FDHSqogA==
X-Received: by 2002:a05:6830:230c:b0:7c7:1c77:f107 with SMTP id 46e09a7af769-7ce50c0b0d5mr5519693a34.34.1767936110408;
        Thu, 08 Jan 2026 21:21:50 -0800 (PST)
Received: from [100.64.0.1] ([170.85.11.86])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ce478d9f54sm7079938a34.23.2026.01.08.21.21.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 21:21:49 -0800 (PST)
Message-ID: <5c54077c-f9fd-40c9-84eb-54139db8aaa6@sifive.com>
Date: Thu, 8 Jan 2026 23:21:48 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] riscv: dts: spacemit: Enable USB3.0 on BananaPi-F3
To: Ze Huang <huang.ze@linux.dev>, Yixun Lan <dlan@gentoo.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org, Aurelien Jarno <aurelien@aurel32.net>
References: <20260107-k1-usb3dts-v2-v2-0-e659b0f8fe1a@linux.dev>
 <20260107-k1-usb3dts-v2-v2-3-e659b0f8fe1a@linux.dev>
 <20260108012157-GYA2355@gentoo.org> <20260108113605-GYA4052@gentoo.org>
 <aWB-6UkudFit3ZBX@monica.localdomain>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <aWB-6UkudFit3ZBX@monica.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Ze,

On 2026-01-08 10:07 PM, Ze Huang wrote:
> On Thu, Jan 08, 2026 at 07:36:05PM +0800, Yixun Lan wrote:
>> Hi Ze,
>>
>> I've done a quick check of the "regulator-always-on" issue, 
>> it's ok to drop the one from hub, but not the vbus one..
>>
> 
> Thanks for your double check
> 
>> On 09:21 Thu 08 Jan     , Yixun Lan wrote:
>>> Hi Ze,
>>>
>>>   thanks for your patch, I have few comments, see below..
>>>
>>> On 20:05 Wed 07 Jan     , Ze Huang wrote:
>>>> Enable the DWC3 USB 3.0 controller and its associated usbphy2 on the
>>>> Banana Pi F3 board.
>>>>
>>>> The board utilizes a VLI VL817 hub, which requires two separate power
>>>> supplies: one VBUS and one for hub itself. Add two GPIO-controlled
>>>> fixed-regulators to manage this.
>>>>
>>>> Tested-by: Aurelien Jarno <aurelien@aurel32.net>
>>>> Signed-off-by: Ze Huang <huang.ze@linux.dev>
>>>> ---
>>>>  arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 48 +++++++++++++++++++++++++
>>>>  1 file changed, 48 insertions(+)
>>>>
>>>> diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
>>>> index 3f10efd925dc..013df91c6a4c 100644
>>>> --- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
>>>> +++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
>>>> @@ -59,6 +59,26 @@ reg_vcc_4v: vcc-4v {
>>>>  		regulator-always-on;
>>>>  		vin-supply = <&reg_dc_in>;
>>>>  	};
>>>> +
>>>> +	usb3_vbus: regulator-vbus-5v {
>>> I've checked the schematics, the name is 5V_VBUS there, so for the consistency
>>> with previous naming convention, let's change to:
>>> 	usb3_vbus_5v: usb3-vbus-5v 
>>>
>>>> +		compatible = "regulator-fixed";
>>>> +		regulator-name = "USB30_VBUS";
>>>> +		regulator-min-microvolt = <5000000>;
>>>> +		regulator-max-microvolt = <5000000>;
>>> ..
>>>> +		regulator-always-on;
>>> do you think the "always-on" property really necessary? it indicate the
>>> power regulator is critical, and should never been disabled even during
>>> suspend/resume state, for the case of USB, I think it should be totally
>>> fine to poweroff once the device is not used(suspended) or even disabled
>>>
>>> besides, the regulator is designed with a gpio enabling/disabling control
>>> which means it can be powered to on/off state?
>>>
> 
> 
>> not ok to drop, see comment below at &usb_dwc3 
> 
>>
>>>> +		gpio = <&gpio K1_GPIO(97) GPIO_ACTIVE_HIGH>;
>>>> +		enable-active-high;
>>>> +	};
>>>> +
>>>> +	usb3_vhub: regulator-vhub-5v {
>>> why use vhub, but not hub? where does this name come from?
>>>
>>> and for same reason, the name in schematics is VCC5V0_HUB, so how about
>>> change it to:
>>> 	usb3_hub_5v: usb3-hub-5v 
>>>
>>>> +		compatible = "regulator-fixed";
>>>> +		regulator-name = "USB30_VHUB";
>>>                                     ~~~need to fix too, if above is valid
>>>> +		regulator-min-microvolt = <5000000>;
>>>> +		regulator-max-microvolt = <5000000>;
>>> ..
>>>> +		regulator-always-on;
>>> ditto
> 
>> ok to drop, as it's already handled at drivers/usb/misc/onboard_usb_dev.c
>> which will explicitly request the regulator and enable it
> 
>>
>>>> +		gpio = <&gpio K1_GPIO(123) GPIO_ACTIVE_HIGH>;
>>>> +		enable-active-high;
>>>> +	};
>>>>  };
>>>>  
>>>>  &combo_phy {
>>>> @@ -67,6 +87,34 @@ &combo_phy {
>>>>  	status = "okay";
>>>>  };
>>>>  
>>> ..
>>>> +&usbphy2 {
>>>> +	status = "okay";
>>>> +};
>>>> +
>>>> +&usb_dwc3 {
>>>> +	dr_mode = "host";
>>>> +	vbus-supply = <&usb3_vbus>;
>> due to drivers/usb/dwc3/dwc3-generic-plat.c has no handler to request regulator
>> there will be problem if "regulator-always-on" property is removed..
> 
> On the BananaPi-F3 and to Jupiter, the VL817 hub setup uses two distinct controls:
> 
> GPIO97  controls the physical VBUS supply.
> GPIO123 controls the VCC5V0_HUB supply for the hub logic.
> 
> (Note: This differs from the Orange Pi RV2, where only GPIO123 is used to
> control the VBUS supply).
> 
> dwc3-generic-plat can not currently handle the regulator request explicitly,
> keeping "regulator-always-on" forces the VBUS to remain active even when
> suspended, which consumes unnecessary power.
> 
> I prefer to drop regulator-always-on in the DTS to accurately describe the
> hardware capability, and let the driver manage the VBUS state. This ensures
> better power management.
> 
> If anyone have other ideas, please let me know.

If a USB device requires board-level resources to function, then the USB device
itself (not the controller) needs a DT node that references these resources.
This is the purpose of the usb-device.yaml binding. For the VL817 hub, there is
a specific binding that links the highspeed and superspeed hubs together. See
Documentation/devicetree/bindings/usb/vialab,vl817.yaml. These nodes are matched
with the Linux usb-onboard-hub driver.

Regards,
Samuel


