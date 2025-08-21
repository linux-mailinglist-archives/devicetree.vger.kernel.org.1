Return-Path: <devicetree+bounces-207279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E76B2F013
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:50:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDB833A3193
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 07:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E26525A626;
	Thu, 21 Aug 2025 07:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gCFbQl1u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2458F19F135
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 07:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755762465; cv=none; b=hk33d7Z4Z4+4tXCehYgfqsmi2U96ry4jYXUi2jk8q5pm6QyQHrXSKdfTFjHaKokw3JXnnOnMCVgDl64aXDL5gfu36zYfahvpMnAFyu2xps4DzC0t850mdEZ//xPQYNCjuZAMZfWna2y2sf8orDGCYArCcfqXFEVUCImj9D9NPNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755762465; c=relaxed/simple;
	bh=AxJ2TDZtOitzG91I3RpJaL2KpradpMlq2bGRan6szCQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qxgXeqUHzXCRXO7zJoVDVSUIrUv4z0iKi6GKzHwZONd4g5sgcR6/WYR6ktvlIlm03iBrgGtefmp3S9NUXTfgaqGc8PQiJtnvW3+nBK5uFum8Aj/02AtRx9J6uoXE/hewLkaMWjcUYnXG8hKvTaJWapCNPefVGPBFdZaBG5umiGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gCFbQl1u; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-55ce522ffb7so20254e87.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 00:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755762461; x=1756367261; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qgH76P00G/bIkPFE7bS4eV8p4bXQP5M6n3WGp0XZrBQ=;
        b=gCFbQl1utgbeR4uCWE0iM+nE8Sxc9gGgriRDBd1zRLzb9GnR5Onqx4P3AnUN+e/JN7
         8mtdSTY0hFiAKjEY9HNfxr733EIrX0QSo7yUvAS3eLu1wC1+tyzP7UsKSo5yuJX2k90D
         oHaUWAk+0jmAT3DPLqFXlLF23H2hEit+Rn9N3Pv3IV2BCTUKnPixr8TcMqm0Vne1HKT0
         o/pdEpknWF+2h6ozBK1wC9oL/S4JVNN+PTrC2NyMljqSUVGJCwlXJzBdbTDzaEfTJ2dR
         In/QHmS4KjknZO2NiI48yQh7c7siSSBRwY4SFY8oqY1+W9M5wbbcKtn/4htyUi3NHJaW
         RyoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755762461; x=1756367261;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qgH76P00G/bIkPFE7bS4eV8p4bXQP5M6n3WGp0XZrBQ=;
        b=LVELwO1Rv9mpZ4gLvHxR8EXcbnYp3c/iyH4ESZRGy4KycATW0oczWlcYsoojqvVCxx
         5gyNjcqlsHP+CnOJ35QwEZjw31QUTRtxt0UADR48LS7erw+qHHcIDYtg0qcgns0DHAWM
         P231s3FadkG5aeysfWRXNplIcAqFLbeibtE4Bsrm39LtleGUkBaEMQOwPmq0oNBzeztg
         XtZO6hH6GGYmEkbg9pRPcN8t/tDeZe+ZxO8lkZecog3akyWnCEbVuOHdefTToosGXfJ3
         q1prKPKmRp7HVCcWMzFm0zgpxzqyZvJd0fivaQgoyKluNmQsuGOHGKhPc/clInEm0Am6
         cYEA==
X-Forwarded-Encrypted: i=1; AJvYcCU8uIsXVbY4qUkrRZw//8b5FEAd8OXWbjL2F47aWCQOBHI2vPmlcSB3GUFKeh0BEdVoP+L2ep3jqtmw@vger.kernel.org
X-Gm-Message-State: AOJu0YxXxZ9P/7uBmHip4cc6LsEVrkDbo/mj9NPu0i48VWhUO6ixJOQK
	9w5qeUELwOzzJmDESwPbapBBVC/IBIIjAnIl+NufcOwccCgO7di0DZ0kxCQUI0gqtFQ=
X-Gm-Gg: ASbGncut/7NZrRevNy1N4SCmPCsL40SlqXUbFVX8FbahzFuSJnLfDrFVtQ0u5ISxepj
	GF6xVOk8XexoaLJPf6HnlSQOWtFDdbs9Zqt0ue9xu9rfkvb8VXcxaTMJXopsBAOKy7BE/YNPa7M
	3KQwerInVhlr3dZfc3YzaxSOPX0D3rRYjfUIC/XnHqC18IDCE/uaQcfOHjDxC59gV9G0dSuJDLJ
	1Uvc7LV3LuOM2tV1qaZDQ2KlkIy1EaMuwCADEBNhGp/LJsg/BQRTWi/3xfpNwdMYl80VZ6hhnIF
	0hH0A3qVj+5C8cfaXlvE7WNm/X7H15OsODUhqxN7DP50faPm1FF3SP+qfJJaOaHYgRnj1kNUE+z
	32BxLCm9pWhQCfUq2PimuIzyyjsHbfgNFrI3lozhisjBnuDrgg7ppbxlydk/zz2Jc/lsTHvXl2g
	/t
X-Google-Smtp-Source: AGHT+IGe+7uS7RYKae7BOVmFeb7wHfZZDf3EoEj50AZSKt5dmwgo5Ldl24C8ieywq3QH/jx5hd6lzA==
X-Received: by 2002:a2e:bc10:0:b0:334:1db:486d with SMTP id 38308e7fff4ca-33549e15764mr2045001fa.2.1755762461144;
        Thu, 21 Aug 2025 00:47:41 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a43a37bsm30318741fa.21.2025.08.21.00.47.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 00:47:40 -0700 (PDT)
Message-ID: <cace08f6-0bc3-4e24-a6dc-02b145ad1051@linaro.org>
Date: Thu, 21 Aug 2025 10:47:24 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] media: i2c: Add OmniVision OG0VE1B camera sensor
To: Tarang Raval <tarang.raval@siliconsignals.io>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Hans Verkuil <hverkuil@kernel.org>
References: <20250820224646.130270-1-vladimir.zapolskiy@linaro.org>
 <20250820224646.130270-3-vladimir.zapolskiy@linaro.org>
 <PN3P287MB1829A6077AC67BBBDD30327E8B32A@PN3P287MB1829.INDP287.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <PN3P287MB1829A6077AC67BBBDD30327E8B32A@PN3P287MB1829.INDP287.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Tarang.

On 8/21/25 09:52, Tarang Raval wrote:
> Hi Vladimir,
> 
>> OmniVision OG0VE1B is a monochrome image sensor, which produces frames in
>> 8/10-bit raw output format and supports 640x480, 400x400, 200x200 and
>> 100x100 output image resolution modes.
>>   
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>>   MAINTAINERS                 |   8 +
>>   drivers/media/i2c/Kconfig   |  10 +
>>   drivers/media/i2c/Makefile  |   1 +
>>   drivers/media/i2c/og0ve1b.c | 858 ++++++++++++++++++++++++++++++++++++
>>   4 files changed, 877 insertions(+)
>>   create mode 100644 drivers/media/i2c/og0ve1b.c
>>   
> 
> ...
> 
>> +static const struct cci_reg_sequence og0ve1b_640x480_120fps_mode[] = {
>> +       { CCI_REG8(0x30a0), 0x02 },
>> +       { CCI_REG8(0x30a1), 0x00 },
>> +       { CCI_REG8(0x30a2), 0x48 },
>> +       { CCI_REG8(0x30a3), 0x34 },
>> +       { CCI_REG8(0x30a4), 0xf7 },
>> +       { CCI_REG8(0x30a5), 0x00 },
>> +       { CCI_REG8(0x3082), 0x32 },
>> +       { CCI_REG8(0x3083), 0x01 },
>> +       { CCI_REG8(0x301c), 0xf0 },
>> +       { CCI_REG8(0x301e), 0x0b },
>> +       { CCI_REG8(0x3106), 0x10 },
>> +       { CCI_REG8(0x3708), 0x77 },
>> +       { CCI_REG8(0x3709), 0xf8 },
>> +       { CCI_REG8(0x3717), 0x00 },
>> +       { CCI_REG8(0x3782), 0x00 },
>> +       { CCI_REG8(0x3783), 0x47 },
>> +       { CCI_REG8(0x37a2), 0x00 },
>> +       { CCI_REG8(0x3503), 0x07 },
>> +       { CCI_REG8(0x3509), 0x10 },
>> +       { CCI_REG8(0x3600), 0x83 },
>> +       { CCI_REG8(0x3601), 0x21 },
>> +       { CCI_REG8(0x3602), 0xf1 },
>> +       { CCI_REG8(0x360a), 0x18 },
>> +       { CCI_REG8(0x360e), 0xb3 },
>> +       { CCI_REG8(0x3613), 0x20 },
>> +       { CCI_REG8(0x366a), 0x78 },
>> +       { CCI_REG8(0x3706), 0x63 },
>> +       { CCI_REG8(0x3713), 0x00 },
>> +       { CCI_REG8(0x3716), 0xb0 },
>> +       { CCI_REG8(0x37a1), 0x38 },
>> +       { CCI_REG8(0x3800), 0x00 },
>> +       { CCI_REG8(0x3801), 0x04 },
>> +       { CCI_REG8(0x3802), 0x00 },
>> +       { CCI_REG8(0x3803), 0x04 },
>> +       { CCI_REG8(0x3804), 0x02 },
>> +       { CCI_REG8(0x3805), 0x8b },
>> +       { CCI_REG8(0x3806), 0x01 },
>> +       { CCI_REG8(0x3807), 0xeb },
>> +       { CCI_REG8(0x3808), 0x02 },     /* output width */
>> +       { CCI_REG8(0x3809), 0x80 },
>> +       { CCI_REG8(0x380a), 0x01 },     /* output height */
>> +       { CCI_REG8(0x380b), 0xe0 },
>> +       { CCI_REG8(0x380c), 0x03 },     /* horizontal timing size */
>> +       { CCI_REG8(0x380d), 0x18 },
>> +       { CCI_REG8(0x380e), 0x02 },     /* vertical timing size */
> 
> Do you have the datasheet for this sensor?
> 

I don't have the datasheet for this sensor, unfortunately.

> If so, it would be better to divide this array into two parts.
> Currently, all of these registers are not related to the mode.
> One part should be for common registers, and the other for
> mode-related registers.
> 

I agree, unfortunatey I have no option even to trace another mode
configuration sequence, of course some of the register values could
be guessed, but on practice it tends to be too tiresome.

Thank yo for review!

-- 
Best wishes,
Vladimir

