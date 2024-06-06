Return-Path: <devicetree+bounces-73076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BC98FDF49
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 09:05:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1CDD2B2190B
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 07:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811B27A13A;
	Thu,  6 Jun 2024 07:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WaADr7Bl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A39B913A896
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 07:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717657530; cv=none; b=ahpdBTIGuBXNoT7VG86nrheJ3GpOIXT4mnOHAahjZcNo92urThpvv+s1GsW6Q2X+xK299jIDh4PxfDLwAfwqljrgAei+iI5yuLOvA4dpHyja9+YMuHWLh13tgJOq6iDw+TO+x5DVDXeFWfFKg99nxJxMw68uppd2apGzSXUQHeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717657530; c=relaxed/simple;
	bh=U7rb/MpVbyczZ6JiLlkwd8YB374461VkCgtUtj9HrHA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iHgtP8Ew6cjVLNy+uZGxKWmJSOMF1WwmY2nwhgR/3NklmcnyHEmem642AgO1ydxJg86r3il/XNgHgPNkjfnv11FUAmlZvplFSzqbPoQ+nqVm/OoyiWLXCLrXnZqsKefOfPmttVkF4uUe5stFb61qdEKQjryEHqvPTHNCDjoyH3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WaADr7Bl; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-42155dfc484so3925165e9.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 00:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717657527; x=1718262327; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fHfni+7f7y7ooqAbT6ozdvMdeqxWBc6Hjku9BEcUIp0=;
        b=WaADr7BlI6dvYv8ZJD7YgLyK/2KChvc7s8Yf+LJYbIbcyab5KYFgNvxq18ZjVdzUAW
         6w55PDC/MXJ0nAyLs587EKDv+TuOaBlJuOnn32RhWBoQw7yCvxaD1TQB+hXIwRXlQR3m
         dxCwBzkJ+MheZ+1v7ImUh4asbH195h5PmrsgDBMAcilmLrZ1Pa0lCZUbwg80N6zRO5e1
         3KmMEXZMGjVDBVM1yTKOTZEZYawm6t6eJU4cKe00sV8LO0bqrotNgFzAaRPrzeKETjdg
         9VwoYZ47yljih+AZgZMwpNP518XbJLbSDoFzzfA5UCJWNzbJqBDwf+VfyumbMM5ZgKfW
         +Rbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717657527; x=1718262327;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fHfni+7f7y7ooqAbT6ozdvMdeqxWBc6Hjku9BEcUIp0=;
        b=n1xieD3DEnEOAJ04Kw1Lr/+cewoSa57u4aHFQnp+8rm4CsmM7Dvzk6S/lVyCllJaa3
         ChbsdGYo16aBwlcVd6OYv1+DUZUC3iRGvNeOLPmKtmLAEhTU05SAxtyW/NGafkVJ1BpG
         ieZ+GgwA5xd3aWbqL6LkibqxDe8hjpd5LlBAZD7nU/EMoxOIR6kAn7dpwhvNK12Z1C3y
         4NlJCxUeqQrLvQGHpZNauypa4rYQm3G5Q+mArkkcz1tH1BwBhS7wI4APRVOaa4BV658m
         IGhoSYA/FT/vtz6Y1wv5M+dd7ofgWNhGy6qKL8C3h4mgfKSpk1jhcneSG5NK5bUy8Jox
         gEmQ==
X-Gm-Message-State: AOJu0Yz5pJoW6jTsoD5wRilR63RemtXDUUCcYKrwApX16yaVhowCzO2R
	ZyncD9ND9CusKFh7xt6JLhQpSfUO3oEBP8AK/9VSlMzwfDv1ceJi
X-Google-Smtp-Source: AGHT+IGvuYittACLybbHRMqFRv+5SGrCd5mzJ4ilA0fT7kgVFcRdySNpdyd4YoPU53CMGxCD7Pey3g==
X-Received: by 2002:a05:600c:3513:b0:420:ffe3:8536 with SMTP id 5b1f17b1804b1-4215634e977mr39020195e9.37.1717657526660;
        Thu, 06 Jun 2024 00:05:26 -0700 (PDT)
Received: from [192.168.8.104] (195-141-234-48.static.adslpremium.ch. [195.141.234.48])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215c19e567sm11155705e9.1.2024.06.06.00.05.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 00:05:25 -0700 (PDT)
Message-ID: <a22400bc-4166-42fc-b1da-d0165969757a@gmail.com>
Date: Thu, 6 Jun 2024 09:05:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: dts: socfpga: Add support for Terasic DE1-SOC
 board
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20240605083321.1211198-1-florian.vaussard@gmail.com>
 <20240605083321.1211198-3-florian.vaussard@gmail.com>
 <bef8dd3d-a774-467d-b66f-4881f3845dd6@kernel.org>
From: Florian Vaussard <florian.vaussard@gmail.com>
Content-Language: en-US, fr-FR
In-Reply-To: <bef8dd3d-a774-467d-b66f-4881f3845dd6@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

Le 05.06.24 à 16:33, Krzysztof Kozlowski a écrit :
> On 05/06/2024 10:33, Florian Vaussard wrote:
>> Compared to Terasic SoCKit, here are some of the notable differences
>> on the HPS side:
>> - Only 1 user LED and 1 user KEY
>> - The QSPI Flash is not populated
>> - The ADXL345 accelerometer is on I2C0 instead of I2C1
>>
>> Tested to be working:
>> - LED / KEY
>> - Ethernet
>> - Both USB Host ports
>> - SD card
>> - ADXL345 accelerometer
>>
>> Signed-off-by: Florian Vaussard <florian.vaussard@gmail.com>
>> ---
>>   arch/arm/boot/dts/intel/socfpga/Makefile      |   1 +
>>   .../socfpga/socfpga_cyclone5_de1_soc.dts      | 106 ++++++++++++++++++
>>   2 files changed, 107 insertions(+)
>>   create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts
>>
>> diff --git a/arch/arm/boot/dts/intel/socfpga/Makefile b/arch/arm/boot/dts/intel/socfpga/Makefile
>> index c467828aeb4b..1d5140b238da 100644
>> --- a/arch/arm/boot/dts/intel/socfpga/Makefile
>> +++ b/arch/arm/boot/dts/intel/socfpga/Makefile
>> @@ -10,6 +10,7 @@ dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += \
>>   	socfpga_cyclone5_mcvevk.dtb \
>>   	socfpga_cyclone5_socdk.dtb \
>>   	socfpga_cyclone5_de0_nano_soc.dtb \
>> +	socfpga_cyclone5_de1_soc.dtb \
>>   	socfpga_cyclone5_sockit.dtb \
>>   	socfpga_cyclone5_socrates.dtb \
>>   	socfpga_cyclone5_sodia.dtb \
>> diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts
>> new file mode 100644
>> index 000000000000..7d811be5f5a7
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts
>> @@ -0,0 +1,106 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Copyright (C) 2024 Florian Vaussard <florian.vaussard@gmail.com>
>> + */
>> +
>> +#include "socfpga_cyclone5.dtsi"
>> +
>> +#include <dt-bindings/input/input.h>
>> +
>> +/ {
>> +	model = "Terasic DE1-SOC";
>> +	compatible = "terasic,de1-soc", "altr,socfpga-cyclone5", "altr,socfpga";
>> +
>> +	chosen {
>> +		bootargs = "earlyprintk";
> 
> That's debugging, not mainline. Drop bootargs.
> 

OK

This was copy/pasted from socfpga_cyclone5_sockit.dts, like most of this file.
I found 9 other occurrences in socfpga DTS. It looks like a follow-up clean-up
would be needed.

>> +		stdout-path = "serial0:115200n8";
>> +	};
>> +
>> +	memory@0 {
>> +		name = "memory";
> 
> Which binding defines this property?
> 
>> +		device_type = "memory";
>> +		reg = <0x0 0x40000000>; /* 1GB */
>> +	};
>> +
>> +	aliases {
>> +		/* this allow the ethaddr uboot environmnet variable contents
> 
> Please use Linux coding style comments /* in separate line. Also, typos.
> 
>> +		 * to be added to the gmac1 device tree blob.
>> +		 */
>> +		ethernet0 = &gmac1;
>> +	};
>> +
>> +	leds {
>> +		compatible = "gpio-leds";
>> +
>> +		hps_led {
> 
> No underscores in node names.
> 
>> +			label = "hps:green:led";
> 
> Drop. Use function and color instead.
> 
>> +			gpios = <&portb 24 0>;	/* HPS_GPIO53 */
>> +			linux,default-trigger = "heartbeat";
>> +		};
>> +	};
>> +
>> +	gpio-keys {
>> +		compatible = "gpio-keys";
>> +
>> +		hps_key {
> 
> No underscores...
> 

Sorry, copy/pasted from socfpga_cyclone5_sockit.dts without double-checking.

>> +			label = "hps_key";
>> +			gpios = <&portb 25 0>;	/* HPS_GPIO54 */
>> +			linux,code = <BTN_0>;
>> +		};
>> +	};
>> +
>> +	regulator_3_3v: regulator {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "VCC3P3";
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +	};
>> +};
>> +
>> +&gmac1 {
>> +	status = "okay";
>> +	phy-mode = "rgmii";
>> +
>> +	rxd0-skew-ps = <0>;
>> +	rxd1-skew-ps = <0>;
>> +	rxd2-skew-ps = <0>;
>> +	rxd3-skew-ps = <0>;
>> +	txen-skew-ps = <0>;
>> +	txc-skew-ps = <2600>;
>> +	rxdv-skew-ps = <0>;
>> +	rxc-skew-ps = <2000>;
>> +};
>> +
>> +&gpio0 {	/* GPIO 0..29 */
>> +	status = "okay";
>> +};
>> +
>> +&gpio1 {	/* GPIO 30..57 */
>> +	status = "okay";
>> +};
>> +
>> +&gpio2 {	/* GPIO 58..66 (HLGPI 0..13 at offset 13) */
>> +	status = "okay";
>> +};
>> +
>> +&i2c0 {
>> +	status = "okay";
>> +
>> +	accel1: accelerometer@53 {
>> +		compatible = "adi,adxl345";
>> +		reg = <0x53>;
>> +
>> +		interrupt-parent = <&portc>;
>> +		interrupts = <3 2>;
>> +	};
>> +};
>> +
>> +&mmc0 {
>> +	vmmc-supply = <&regulator_3_3v>;
>> +	vqmmc-supply = <&regulator_3_3v>;
> 
> That's a noop... Isn't this coming from a PMIC?
> 

No PMIC. VCC3P3_SD is derived from VCC3P3 using a passive circuit, so the
voltage is fixed and always on. I am fine to drop this regulator if you prefer.

Thanks for your review.

Best regards,
Florian

