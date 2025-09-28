Return-Path: <devicetree+bounces-222250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B56BA7624
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 20:30:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACD1F3B6B32
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 18:30:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12D9E222575;
	Sun, 28 Sep 2025 18:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="0ESNcj8j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BA11F9F70
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 18:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759084210; cv=none; b=MiMhM4t+xGiIPnGQjhK0theEdBKTCKKXgG+ig9rHxw1he1iYHfEx+UQhNsXxKVU+IwmIMnli55jJbSwJFmDshn2l+7ccrU45ujswyQpUBayvD7lcR2s4k5G65R+2PGu/dgvQK5NHjrYqhEkAPur/NrqhmYSHxgs8FQkVndiQCt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759084210; c=relaxed/simple;
	bh=3eo5q8uPvqSYZZQrCPEdKEjFUsm9Zse5NJZnpZyLVxo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gukh4C+Gys5Rix0xcmXcmM940Zsa1ofJCRqS7PGNqXxe18ScWyzabtDuIQz7MKRizAn5pmXc2PTp4M9Z4kIpHundh0i1rUopArt769WnSXilGay8p9ovSq3jvzMFQbxWo8qrtfyA/m0+4hJIMAvNgu4RgKUgrsIdzq+MnEhbJb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=0ESNcj8j; arc=none smtp.client-ip=209.85.166.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-4242bb22132so38976255ab.3
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 11:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1759084207; x=1759689007; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OpapXATxcXIHML9Ao38TzaKDugnEtxPRqg0bV0GVyLQ=;
        b=0ESNcj8jUPjpGQiKF8OSw/AdNCG19VzqGpMKd622jp7EPL6HaUe8KOVEGQraGzbSed
         ors+9OZIML3fVfIsR4ZbNfSPZZzsiMqfsnuuslhVQWvX7hF7C+luIogbfg8HJBZm/JiZ
         L15sTyjrXk2utJmBwB1acowqiwVWVED/VBI/IXGJSpAeN/DyyaSbdAPim+zOMH1Mn83q
         hocP4jw4DCHSlI3verz2o7oGkxi3w4alZs4BVIHDeJXzYfDVw293lg6AF1zv1oCOyePQ
         72XFn8hzgPv0VkWFJEvh430sr3xYSOgjwuTUHWjaGfrPlyPOAyUuhPenSjKnOENxlPhR
         cWrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759084207; x=1759689007;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OpapXATxcXIHML9Ao38TzaKDugnEtxPRqg0bV0GVyLQ=;
        b=L73fDgO+oiOY9Dtfc0DsRyy4VLAxhiQsTrIZYTQRWMGCSpp/ekJok3hcuB39o5ro5L
         3nLkDLww7F6ES9sjjUfcjIhIp5xVinuPPxui5qxCLqS++hkWdbE7Q9OsS1g9qSZIEdjF
         b5shdZ8l9AFVhrdtbeNW/F+SdWJYweXxHXRCiHK2f7fvgJ8B82ba5ZmM5kFdNe8llRDn
         oIy1tTUx/CLtztlv0vn8xUUkOv4baT3cEqiAOH5Hd7C/oc/XQyGWV+2m5xXhcqVyVqTX
         gvVr8ORI0lX2+FVR+3MI7idSh7K2u3zVeggse+2bmEbpFdunUKsWoOXGht2AnZ5DqXCs
         TLfw==
X-Forwarded-Encrypted: i=1; AJvYcCX0RMWnzvczabXMcI3f7ufR0aoyVlvHjNb4gceOousmAH1J6crvvZsCZmB+JtoeQgm1dFYHR9IHUrVR@vger.kernel.org
X-Gm-Message-State: AOJu0YzGtQI+6FcMk1ftDKOcJrql9WOoFEUq00bdA6cyTB/8vtojdrYB
	961eqrbpMr8W8SEJBVtscKreBjfwgcBkEy/XK5hUi6O9lvVpSQCDo6zn4jtzitpARFc=
X-Gm-Gg: ASbGncsxSFjdk2iVFMXHSw7ZG8ZLY8gZfEjvuEiblwSnt1/kkRivBemSPQnEcokICaL
	D+JlhYmo+Fs0l/PbflIplPv59pIfI6L3kHAsYHAVbk9MzkepSGyMUhkGPi5Pz/telaHrMvCyXas
	NTbeEnjJo8uuZLe2VYQFeiFhATVflHUxv8CCPSmJMJ+mcHVi4zaLvWFVpmMiJ/7lhqTDWZO7inL
	UbKQnk4Zf+AretWS+X/sI4tKDTFF/JpF5Cjw19SzcCbRPGiZFeLnxzhJ2MbvLFLdbShsVEdPtEj
	Vrx27XGxz006ONVxH3Cy9ToReKuaVMuhNw+Kn9H71wDDtwAyeHeP93R0URvzEqgu+nGGuGXWZbU
	uWkER5C5Hzi7dZK4aR+NPWxGidsvXPFbPRCuCF+iMABOfd7FJtZmWtr569Cbja9SdfR6WSGuJiO
	q9FMGeIPI=
X-Google-Smtp-Source: AGHT+IHI+KjtauowHD4Mkl39PSsrUmu2ZtoNYzP3z5aJ+BMT14naCxidriH/P9dmj7elKaDQ4sRm1g==
X-Received: by 2002:a05:6e02:1708:b0:429:a1b7:ee3d with SMTP id e9e14a558f8ab-429a1b7f05dmr57105705ab.2.1759084207162;
        Sun, 28 Sep 2025 11:30:07 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5742a4afbc3sm238767173.2.2025.09.28.11.30.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 11:30:06 -0700 (PDT)
Message-ID: <127352a1-adc2-4bce-a8ad-ee3eaa111280@riscstar.com>
Date: Sun, 28 Sep 2025 13:30:05 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] spi: spacemit: introduce SpacemiT K1 SPI
 controller driver
To: Yixun Lan <dlan@gentoo.org>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, ziyao@disroot.org, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, p.zabel@pengutronix.de,
 spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250922161717.1590690-1-elder@riscstar.com>
 <20250922161717.1590690-3-elder@riscstar.com>
 <20250922230639-GYA1303776@gentoo.org>
 <786f4a5e-f62e-4cd0-a017-7b61408f34aa@riscstar.com>
 <20250928123622-GYA1347020@gentoo.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250928123622-GYA1347020@gentoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/28/25 7:36 AM, Yixun Lan wrote:
> Hi Alex,
> 
> On 07:49 Tue 23 Sep     , Alex Elder wrote:
>> On 9/22/25 6:06 PM, Yixun Lan wrote:
>>> Hi Alex,
>>>
>>> On 11:17 Mon 22 Sep     , Alex Elder wrote:
>>>> This patch introduces the driver for the SPI controller found in the
>>>> SpacemiT K1 SoC.  Currently the driver supports master mode only.
>>>> The SPI hardware implements RX and TX FIFOs, 32 entries each, and
>>>> supports both PIO and DMA mode transfers.
>>>>
>>>> Signed-off-by: Alex Elder <elder@riscstar.com>
>>>> ---
> ..
>>
>>>> diff --git a/drivers/spi/spi-spacemit-k1.c b/drivers/spi/spi-spacemit-k1.c
>>>> new file mode 100644
>>>> index 0000000000000..2b932d80cc510
>>>> --- /dev/null
>>>> +++ b/drivers/spi/spi-spacemit-k1.c
>>>> @@ -0,0 +1,965 @@
>>>> +// SPDX-License-Identifier: GPL-2.0
>>>> +/*
>>>> + * Support for SpacemiT K1 SPI controller
>>>> + *
>>>> + * Copyright (C) 2025 by RISCstar Solutions Corporation.  All rights reserved.
>>>> + * Copyright (c) 2023, spacemit Corporation.
>>>> + */
>>
>> . . .
>>
>>>> +static irqreturn_t k1_spi_ssp_isr(int irq, void *dev_id)
>>>> +{
>>>> +	struct k1_spi_driver_data *drv_data = dev_id;
>>>> +	bool rx_done;
>>>> +	bool tx_done;
>>>> +	u32 val;
>>>> +
>>>> +	/* Get status and clear pending interrupts */
>>>> +	val = readl(drv_data->base + SSP_STATUS);
>>>> +	writel(val, drv_data->base + SSP_STATUS);
>>>> +
>>>> +	if (!drv_data->message)
>>>> +		return IRQ_NONE;
>>>> +
>>>> +	/* Check for a TX underrun or RX underrun first */
>>> s/RX underrun/RX overrun/
>>
>> OK.
>>
>>>> +	if (val & (SSP_STATUS_TUR | SSP_STATUS_ROR)) {
>>>> +		/* Disable all interrupts on error */
>>>> +		writel(0, drv_data->base + SSP_INT_EN);
>>> should clear status of SSP_STATUS instead of disabling ISR, see commet below
>>
>> The status is cleared immediately after reading, above.  We hold
>> the status value so we can act on the current state of the FIFOs.
>>
> I'm surprised by this, do you mean the status will be cleared by reading?
> can you double checck and prove it? by reading twice and compare?
> 
> while according to the docs - 18.2.4.6 SSSR REGISTERS, the status bits has
> two types:
>    R - Read only
>    R/W1C - Read only, write 1 to clear
> 
> if you're right, then the docs should be fixed.

The code is earlier in that function.  I'll repeat it here.

static irqreturn_t k1_spi_ssp_isr(int irq, void *dev_id)
{
         struct k1_spi_driver_data *drv_data = dev_id;
         bool rx_done;
         bool tx_done;
         u32 val;

         /* Get status and clear pending interrupts */
         val = readl(drv_data->base + SSP_STATUS);

=== Line above reads the status register
=== Next line clears all status bits, acknowledging interrupts

         writel(val, drv_data->base + SSP_STATUS);

         if (!drv_data->message)
                 return IRQ_NONE;

         /* Check for a TX underrun or RX underrun first */
         if (val & (SSP_STATUS_TUR | SSP_STATUS_ROR)) {
                 /* Disable all interrupts on error */
                 writel(0, drv_data->base + SSP_INT_EN);

=== And then the above line disables all interrupts if one of the
     error conditions was shown in the status.

I hope I'm not missing something.  I think you might have
misunderstood what I was referring to by "above" when I said
"The status is cleared immediately after reading, above."

					-Alex

