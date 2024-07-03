Return-Path: <devicetree+bounces-82863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3195092632D
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 16:17:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5500E1C22CAE
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 14:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37F6017965E;
	Wed,  3 Jul 2024 14:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="YX7yZ3yu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A420173348
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 14:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720016137; cv=none; b=OzprtR8o6VrirBaRXpItg7z+j5jkGYeoXcsYBiuxHtj4BjQaG1Y2OOnMPZhXuO8d8iFYsHaoFO1Rk9lOiHkG57ZErPYOUBSHcr6OLSfte2pR7i40ioeXWIq1NPoI+K3MpHGRbm2ByQY7gA/FCbOLCg8y/hXqW7XsWJymtlioJ4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720016137; c=relaxed/simple;
	bh=k7Uh6TiIwijhGvQ5X8qOkdHrkUfVv5I9WX7RRyk0FyU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eSiPpvJu76TA+5ldRxOa5KpxfcrMuxj88XDu6RCz33YWnqgw231tmO/Nx/myZYwqxp5ev3yBDMeTwSvlkyJjhTDY3U9U1M0YyMem0zM0zUxVrnUiIM2+vzx+kw2iHvawizU1IQ3eDlRi4QpVrUiQMoeHsbT6S3+uJaLhms/ApAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=YX7yZ3yu; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1fb2348d593so386115ad.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 07:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1720016135; x=1720620935; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CU2G2QPdVJo7NFVCvoDy5kVuUs8JHX+8IiCe10N61ds=;
        b=YX7yZ3yu79oG3rgaAUrCEOgalttL+WTXkz49/ZwWhdEm1Y9kjysM/G+3PZbwPoMIa5
         2vuSNeUfB2H9OFB/sNMLDU5K0Z69mXQOZSaN/vXXmRHQSgLy2eUBaWCjGT2482uOQilf
         /82miU/fR+6CQqGCxFa6r4u2Nq1mxYOJI57VhmX39b4POE9f37977zuPgmDkqTUB7oDb
         eyoqAiKbpiXtFwqOK2Qxku630S/86PaCcwsYvYTICVBP+a8YKB2VDqFQkJrjS86fqFx/
         0N7IA7n5poF0HTVXlyARr1/ns7qx9moD2snEaDmBfgGduhCf7WI1jYbOKxk9igQ8z6GG
         YJqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720016135; x=1720620935;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CU2G2QPdVJo7NFVCvoDy5kVuUs8JHX+8IiCe10N61ds=;
        b=k4NtEAGzuD/v4vBC8QVdiIVVI9m8UV2oZuawiU8dY9m4heaCtqM+FweW5Y9NBu8rXF
         1wdCyz5w1Z0vz6QCnlooQBdkUhnC+4PrBV0oR9Kk4I7U8nGQDcEfAvpSozQe4fNcDJxG
         M3G9p/SsuiLZrtSNWgS8yu1X1Sw0D1YMjPZT82rQGpEW6qMz9bE7BDrqGoRL+ePn3Tlh
         o5jEJMUa0hx+qYeyk08O/zSqdaMv8EenbCFbuDFbqnCNx09cf0GmJja08VBBFesX6VJH
         fJFe/axo2z1aOXaE6BtXGMkYXDDVTjzwfzYsBiUCy9lG5N80OigWqX+Py5vQ3qAZ65dr
         3f6w==
X-Forwarded-Encrypted: i=1; AJvYcCXQVueXPCUs6aTtF8mutwLv1F33PkbRyg1M3Wm0IGwxS8+Ex6pLsgX/FYbC8/auhj8P5c5dv8N9Y7ahP2bJ47/fAcq4oNWCMcTIRQ==
X-Gm-Message-State: AOJu0YxQ1cs6E0b4aF47tInENEP1yjc10aMU+Gs3Md9lq8Tnc76VAapY
	9fwBaaUMhWV+8hilI4PV5Y6JSv5mBaoMPvf8v1C9wWeNBj4wxOR/WwrOUKE1ZA==
X-Google-Smtp-Source: AGHT+IGo869GVlsk/l4JHWjfBYDiVEDQKhSinOIfUneVdHSCReXfSXBs/FkDvw5QRRJ4R9m6Yk4XaQ==
X-Received: by 2002:a17:902:e54e:b0:1f7:2b3:3331 with SMTP id d9443c01a7336-1fadbd2b877mr134228095ad.4.1720016133284;
        Wed, 03 Jul 2024 07:15:33 -0700 (PDT)
Received: from ?IPV6:2401:4900:1f3e:250a:7d55:4ad6:87a3:5c5c? ([2401:4900:1f3e:250a:7d55:4ad6:87a3:5c5c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fac1569046sm103869395ad.210.2024.07.03.07.15.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jul 2024 07:15:33 -0700 (PDT)
Message-ID: <df0f9705-b1e9-4dce-b110-09be540d5e25@beagleboard.org>
Date: Wed, 3 Jul 2024 19:45:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/3] arm64: dts: ti: grove: Add Grove Sunlight Sensor
 overlay
To: Andrew Davis <afd@ti.com>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Vaishnav M A <vaishnav@beagleboard.org>,
 Derek Kiernan <derek.kiernan@amd.com>, Dragan Cvetic
 <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
 Michael Walle <mwalle@kernel.org>, Jason Kridner <jkridner@beagleboard.org>,
 Robert Nelson <robertcnelson@beagleboard.org>,
 Robert Nelson <robertcnelson@gmail.com>,
 Ayush Singh <ayushdevel1325@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240702164403.29067-1-afd@ti.com>
 <20240702164403.29067-4-afd@ti.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <20240702164403.29067-4-afd@ti.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/2/24 22:14, Andrew Davis wrote:

> Add DT overlay for the Grove Sunlight Sensor[0].
>
> [0] https://wiki.seeedstudio.com/Grove-Sunlight_Sensor/
>
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---
>   arch/arm64/boot/dts/ti/Makefile               |  3 ++
>   .../boot/dts/ti/grove-sunlight-sensor.dtso    | 31 +++++++++++++++++++
>   2 files changed, 34 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/ti/grove-sunlight-sensor.dtso
>
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index a859629a6072c..7d1ce7a5d97bc 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -8,6 +8,9 @@
>   # Entries are grouped as per SoC present on the board. Groups are sorted
>   # alphabetically.
>   
> +# This needs a better directory location
> +dtb-$(CONFIG_OF_OVERLAY) += grove-sunlight-sensor.dtbo
> +
>   # Boards with AM62x SoC
>   dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay.dtb
>   dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay-csi2-ov5640.dtbo
> diff --git a/arch/arm64/boot/dts/ti/grove-sunlight-sensor.dtso b/arch/arm64/boot/dts/ti/grove-sunlight-sensor.dtso
> new file mode 100644
> index 0000000000000..ab2f102e1f8ab
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/grove-sunlight-sensor.dtso
> @@ -0,0 +1,31 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/**
> + * Grove - Sunlight Sensor v1.0
> + *
> + * https://wiki.seeedstudio.com/Grove-Sunlight_Sensor/
> + *
> + * Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +&GROVE_CONNECTOR {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&GROVE_PIN1_MUX_I2C_SCL>,
> +	            <&GROVE_PIN2_MUX_I2C_SDA>;
> +};

On setting pinctrl in the mikrobus connector, I seem to encounter 
problem with the SPI driver trying to use the device before the pins are 
ready. So I think, the pinctrl should probably be defined in the 
respective i2c, spi, etc nodes instead of connector.

> +
> +&GROVE_PIN1_I2C {
> +	status = "okay";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	clock-frequency = <100000>;
> +
> +	si1145@60 {
> +		compatible = "si,si1145";
> +		reg = <0x60>;
> +	};
> +};


I also have question regarding how to define reg property in SPI 
(chipselect). Ideally, we want to define it relative to the connector 
pins, but since the SPI device(s) is a child of SPI controller, I am not 
sure how I can do remapping.


Ayush Singh


