Return-Path: <devicetree+bounces-215947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 00211B533BB
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:29:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 462A1B6302A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E98232ED28;
	Thu, 11 Sep 2025 13:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hGfBaghF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35F032CF80
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757597171; cv=none; b=f3FaTaa4yQozbYwWQ6c8QARF1yqBGcM0k8eAjeh7R2zD7IY+wpaAjaj4Muv/2FBLBTmyaKEPSzU6Leq2J/bIyTLaDdyHVh8J7G/WcEDsOOjmS4igcVn+Kw5TTaN+zPZyIXppzU34q3NDgv4auoTvc5SE/aoh86N8eUfLSdegeyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757597171; c=relaxed/simple;
	bh=M1LYunffuVeDHmWNDQ+oMBlOG3SDCCt4WC6SDVLqx2U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fp84jTeFb39AW7nXzjkr8D0wAO/3VNnTCrdySojFGlq/lyfFP32sOquA1b+ITG15I7EA1eU7U7tfRC0yjCPxwyfWo0jg8mgPOFpnEORY9XVZNoIa6p7dK4F3U6Ig5E0NRLtcH1MYBea6pynqPqEpsQkVZPdZD8IVhKQIIlB2ZdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hGfBaghF; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-61da7b78978so392786eaf.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757597168; x=1758201968; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=doXLtB9djik8VUwa0G7u1GLCJ7g4vB7KCBCvKf56es4=;
        b=hGfBaghFgoo+BzaulqTETY1/N3Djlk4XatjZpzRlZXIvKjFAIhF2db2Ni5iMnyPSuN
         Znb/sKWwuCl9nDGMLwnznlsMU5d+sb9FrZxSTzMt58DbIbAovP2ELqrKunyJLLl/tMrY
         A+jKvNPEDZ2dGhnCNXUF1ohF1OuaJnrNAo9XPh3y97znXlqnf0Zf4KmEsS35hMUAmjTx
         a2oz4lMe3FzkJe1sO6kHR8T3CY44VYPhFOpGcMLCg6bejWanKppXBtbLkKRV048UPZb6
         F8/AOvyQ+FP2d+/DOd3JbLLTmVexWLJeLlwt8U/VsuZozb3rQTwS2ooXm6BP4spSIIRS
         Cuyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757597168; x=1758201968;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=doXLtB9djik8VUwa0G7u1GLCJ7g4vB7KCBCvKf56es4=;
        b=m4HeyohnEiBp92W25LP4LlTWFO4AP5Z0n4egm+GVWThkGeAhMiW3uOrDWh7Kyhe+Mx
         EG9iiSdwtNj/WyzBm/4gG8HfzIWpLtj0iWT5OK0hhURhRr9R+rtR2uDmiAqt+/OgruR0
         q8XIoSQXPmWvlW0CC9Od6Wxw8c+Qp8pgd9Co7kHRlS2ScxhNnS3mAxYCmf8PiHD9nZ90
         c/xizHGlS/s9CQAQP79SsO4uPTW0yCej9l698rC4Q4y0948eDZ439VQSXxtFAe2skTyW
         nh/yP4UYLo8mXsL2w0kvvF/YzChpeQLC1SU9GzUAFJ5UZOqCVTJeVPPbmA9feX//ZSvT
         K5Uw==
X-Forwarded-Encrypted: i=1; AJvYcCWW2h2WYYAYHCRmTJi8pmcUjm5PmdzCd4Wcf4PwfbD83F8BD2JW7r/h6jiLgGmxmTGw4B5wTAYw78Ft@vger.kernel.org
X-Gm-Message-State: AOJu0YxiTWvshDInc6tE7nFolcejBSgm+P/fTxRhNebdRfVhPmOlLyk2
	2gbjFKWddF0MHVYyzxubzjfMUOZcUZqEmc00pGY+QmJUxpONsub94zV9cM8tAYFbMOI=
X-Gm-Gg: ASbGncvFmW8Bxo8Tiuk1sqyXPuALwPNIh7trGXzjgviN8eHTI0/7Xu6EVrdJKhRmTns
	11ueVgdGGDuWMFakC1GKvbIk9Ao6JTitimTlt8WkcNtYuF3uXK37oJyq5H5maHVMJ5RIw+c2Uo4
	n5004Y58mRlVs5vbBIlI2ahaCmQlGgdk8qNGEpbCKj+5OBprV8rPvL/h1Z+MPuRlBeIGNTTLjvG
	S6glnC8GF7l8ie2EjWiUXCdash62T/paS/STWNI39Bw1AqPRIm3nrEe/HC0ZvHv9JQypL0ERvVJ
	3AGEAXLy0HPnul2lyO201KK8QtSfSEG2AnwhUEUjRM7O2G4bbNNINKiCOSGdI4uaRne6HPdqihc
	H+M6c80b0oK50roGv1kFnawDZzsr6XbQAAZl6UZLVMD/7p0bDiPGrMFuNnSiXY2uuOOSfzqlPDu
	UM2dAl7z2frg==
X-Google-Smtp-Source: AGHT+IGewbzhtIZHb9eUyQRJcGNAmv7FjLag6+AtUsiw9MhsNcbjBVwyMYuFzvaZWeOFJGfwdTLRbw==
X-Received: by 2002:a05:6820:1ca6:b0:621:b76e:66b9 with SMTP id 006d021491bc7-621b76e6989mr660188eaf.3.1757597167898;
        Thu, 11 Sep 2025 06:26:07 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:d684:59db:8b2a:5451? ([2600:8803:e7e4:1d00:d684:59db:8b2a:5451])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7524b8a3a8csm347330a34.21.2025.09.11.06.26.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 06:26:07 -0700 (PDT)
Message-ID: <c746e72c-dbd9-4afb-9da4-5d13733fd561@baylibre.com>
Date: Thu, 11 Sep 2025 08:26:06 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] iio: adc: Add the NXP SAR ADC support for the
 s32g2/3 platforms
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jonathan Cameron <jic23@kernel.org>
Cc: nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, linux-iio@vger.kernel.org,
 s32@nxp.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 chester62515@gmail.com, mbrugger@suse.com, ghennadi.procopciuc@oss.nxp.com
References: <20250910155759.75380-1-daniel.lezcano@linaro.org>
 <20250910155759.75380-3-daniel.lezcano@linaro.org>
 <20250910183212.6640e662@jic23-huawei>
 <b4d2ad54-54d5-4c26-be49-b6ac671683d2@linaro.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <b4d2ad54-54d5-4c26-be49-b6ac671683d2@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 9/11/25 7:55 AM, Daniel Lezcano wrote:
> 
> Hi Jonathan,
> 
> thanks for the review
> 
> On 10/09/2025 19:32, Jonathan Cameron wrote:
>> On Wed, 10 Sep 2025 17:57:56 +0200
>> Daniel Lezcano <daniel.lezcano@linaro.org> wrote:
> 
> [ ... ]
> 

...

> 
>>> +    indio_dev->name = dev_name(dev);
>>
>> This should be the 'part number'.  That is a little ill defined
>> for a SoC integrated ADC, but generally not what we get from dev_name()
>> on the platform_device.
> 
> Sorry, I don't get the comment. If I refer to the different drivers there is not consistency with the iio_dev->name.

dev_name() will be something like adc@12345678 from the devicetree,
so not the "part number".

> 
> rtq6056.c:      indio_dev->name = "rtq6056";

This style is preferred if there is only one supported part.

> rzg2l_adc.c:    indio_dev->name = DRIVER_NAME;

We try to avoid using a macro for the driver name like this.

> sc27xx_adc.c:   indio_dev->name = dev_name(dev);

Looks like we missed catching this one in review.

> mt6359-auxadc.c:  indio_dev->name = adc_dev->chip_info->model_name;

This is preferred if there is more than one part supported in the driver.

> mcp3911.c:      indio_dev->name = spi_get_device_id(spi)->name;

This is fine too in cases where there isn't chip_info.

> 
> Are you suggesting to use the compatible part number ?
> 
>     indio->name = "s32g2-sar-adc";
> 

That works.


