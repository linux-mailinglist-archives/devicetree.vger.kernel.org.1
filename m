Return-Path: <devicetree+bounces-242148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F599C87377
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 22:23:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E9DEA4E2A64
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 21:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E2F92FB99B;
	Tue, 25 Nov 2025 21:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jxomuv+L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF30F2FAC0A
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 21:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764105798; cv=none; b=thHmaYCYxkb5aQIb1O5STmIs2G3l0vZrnDetEEzabqxTEGP4mVZFjN3nobil7atxcO17UpFrnXEsgKh5PwjuKuMFTi4UcP2SxBpBhxTWbXxkXHCJushAktqcNaU2MUfYem6Fkpg59r5WZIpk7VxkPcqJR13K9XiuV1KXJyAUoJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764105798; c=relaxed/simple;
	bh=XW8A4SzGkXNACEumt8HO2D04lyJS8Mfw08PkaKSIHl4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LC5WtNR6Z/4me94+paeOv5/s2K2l6J4zToNX4dDdeWpnGqu0GO6zah98ZZjvueUJ+ueeoUF1uodvLe77t6FTnldwsUmnloHoEAoF31lK0Z0C37xTAeEwGTZmNVr9RdnxgYqt8J2fFhNsQov5uDpOBf1wt4YNrLghwxJWhU/bhvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jxomuv+L; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-bc0e89640b9so3835724a12.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 13:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764105796; x=1764710596; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U4IPiaiC8wPPJ43L5jRER+JtLVLAZIm9IvLWnVk5O64=;
        b=jxomuv+LDLuWrt8BHvoPK9PCJoKFokds+p7JXcTxp33BbfVa5yluoYVGSy1rqC9dvh
         MN/6dLjD3TAUVFYjmoK0pxBVvD4e6mxdxKDTBWbFR9IMVAKjXy405uZnaulSSm6tdcaP
         vSwI6B7yqF0wMnjQGaI8NCi95wYpAiZvUG/66X0kmuoqsdf3YfB5yPk5Q+neT/5/1lCC
         Yzf+D3FTpt+VGN0kVxbpAIFOsQ9r+nOx6inPnNvdOb/fcw8hJMGw9KvmMFr+/p8CNFib
         GHut+daAkxA3VtnHPHvLekZoOE3EOsvjR759RUCEzAw9tZjQJ73CIg/SJ8DsIhEA1cWI
         hTPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764105796; x=1764710596;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U4IPiaiC8wPPJ43L5jRER+JtLVLAZIm9IvLWnVk5O64=;
        b=GNqzS3myJb7iANlIKsxOAxEKDATPx33RpfegNO0FYAa52vGFcbbnWsE7Gn424AEbAV
         U+PgD4ZFcgTA5UESM4iccNjb/6KQL8niQiLYip/cXt3GGEB7YASz7dveNQcUeBROewEt
         edAzIpUFHYpEkus7NW8OAv9EildYdM56sKSybldv8uiw8P7GiJbGke01a6i13qfH4dam
         XeBrXIH2ttUAoXVRKIjTURjWSPSycHtZly6NQ5IynKGK46eqjGyBUBtVZKof6RY1PoK3
         c6h+oGfrC/hfNd7NDu5rc1J2cOPXxI54gZ2pwPFSGn1eQVjT5we/WZ0EGNcdS4qIKYRA
         Tb+w==
X-Forwarded-Encrypted: i=1; AJvYcCXguim4g3ZkZprhvH7A2ecu8zmAx5eQ1JG3EYA1u9LjHYdMekJLtQDVcP/QT9JzWQbZT7/t7mzqVCtO@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp2+RnMe3s6JNZn/yjvNnPwVUCuLa9WcZByBApZWr42pVXGsd+
	osyd1Y5Ypr+2LU6QNed+fncAWKZ2kVtjXXTpntEv1t6jcJ+xmIDow4T4
X-Gm-Gg: ASbGncuK/vyToeBPYqXwAuXiL23I+CKiEwEcShFqxVbllkZRVCZhRaeU40TU3KsQt94
	RAM/Cke2u6S1kwtY2ScriZedJ1NZCA1lUG66FL1uPu0e2ldEo1iJpsJv6xSrVJXGM7z4/xMfMuP
	D037sW2PQ75HrzO2QEp6CgMOi6A4ffygUsriqi7HTesEWj75CuzJlkShSz6L+xlIutc5C3bKoKA
	G60eYRTuLPptKykr3NwV4BgT1CQ3aOzqcSi1T+WxR4Hwbg6ykCZEHEWLrf1u1LejPy173PbCTAH
	OX98Ug+W8+tR2nfG2UBRVa/FrfdY3aH3E3TCvUCQh0NRaIMSEkGBjItjJVd3YsSQIU3li1Zsl11
	eZmLSfI0YTdxGoAz18pfsMP9x4i6b9qu9Gr+KqnCAnnGXibMyfF56/btP0l7pItfpIZ1DUfjIPR
	Cc8ouNP5zayfoSQuAV7YBdpAynBFpP9s8egubXFQcnBq64s/ILM/sxaYo50JQT3wCZ
X-Google-Smtp-Source: AGHT+IF6D8g2wIy+N6TKTf0dz5XOxIIs00ONhYLTRePucR1HQFiuvK+uZSIsc+LE+bc5dfe4y+fV4g==
X-Received: by 2002:a05:7301:100a:b0:2a4:3594:72ed with SMTP id 5a478bee46e88-2a7192a78d9mr9719248eec.28.1764105795955;
        Tue, 25 Nov 2025 13:23:15 -0800 (PST)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a6fc53169csm63700374eec.4.2025.11.25.13.23.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 13:23:15 -0800 (PST)
Message-ID: <61e860e7-fc3b-49ad-bf6a-9745f205d52b@gmail.com>
Date: Tue, 25 Nov 2025 13:23:14 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] iio: accel: Prevent NULL pointer dereference in
 interrupt setup
To: Andy Shevchenko <andriy.shevchenko@intel.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 David Lechner <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
References: <20251124-expressatt_nfc_accel_magn_light-v4-0-9c5686ad67e2@gmail.com>
 <20251124-expressatt_nfc_accel_magn_light-v4-5-9c5686ad67e2@gmail.com>
 <d3318386-2646-4f1c-ab4b-6ae3bc71e9bb@oss.qualcomm.com>
 <aSWPnRBRdPS8vnir@smile.fi.intel.com>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <aSWPnRBRdPS8vnir@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 11/25/25 03:14, Andy Shevchenko wrote:
> On Tue, Nov 25, 2025 at 11:45:22AM +0100, Konrad Dybcio wrote:
>> On 11/25/25 12:35 AM, Rudraksha Gupta via B4 Relay wrote:
>>> The bmc150_accel_set_interrupt() function assumes that the interrupt
>>> info is provided. However, when no IRQ is provided, the info pointer
>>> remains NULL, leading to a kernel oops:
>> Hm, are you sure your device really doesn't have a pin connected to
>> the IC's interrupt line?
> I don't know the actual case here, but in general such a design occurred
> in real life. So, shouldn't be a surprise to see another polling only mode
> connection like this.
>
I unfortunately don't have the schematics, so I can only reference the 
downstream kernel:

https://codeberg.org/LogicalErzor/Android_Kernel_Samsung_D2/commits/branch/downstream


The above is my kernel tree. This is based on:

https://github.com/LineageOS/android_kernel_samsung_d2/tree/cm-14.1


but with a few added commits on top to help me navigate the codebase. 
Notably, I've removed all .c files that wasn't needed by the downstream 
kernel, and verified that it works by flashing the kernel with 
Cyanogenmod running.


Based on the device's config:

https://codeberg.org/LogicalErzor/Android_Kernel_Samsung_D2/src/branch/downstream/arch/arm/configs/cyanogen_expressatt_defconfig


There is no .irq defined for the accelerator:

https://codeberg.org/LogicalErzor/Android_Kernel_Samsung_D2/src/branch/downstream/arch/arm/mach-msm/board-express.c#L2100


I also couldn't find a hardcoded irq in the driver code as well:

https://codeberg.org/LogicalErzor/Android_Kernel_Samsung_D2/src/branch/downstream/drivers/sensors/accelerometer/yas_acc_driver-bma25x.c

https://codeberg.org/LogicalErzor/Android_Kernel_Samsung_D2/src/branch/downstream/drivers/sensors/accelerometer/yas_acc_kernel_driver.c


This seems to be confirmed upstream too, where one has an irq:

https://github.com/torvalds/linux/blob/master/arch/arm/boot/dts/st/ste-ux500-samsung-skomer.dts#L420


and others don't:

https://github.com/torvalds/linux/blob/master/arch/arm/boot/dts/st/ste-ux500-samsung-kyle.dts#L439

https://github.com/torvalds/linux/blob/master/arch/arm/boot/dts/st/ste-ux500-samsung-codina-tmo.dts#L506


Happy to split this patch series into two, just let me know! :)


