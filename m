Return-Path: <devicetree+bounces-229298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE07BF5BA2
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 12:16:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41D8F3B72E9
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 10:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3206A2ED84C;
	Tue, 21 Oct 2025 10:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MzDE80HF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A9826B2DA
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 10:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761041774; cv=none; b=unb2ExyUx38feX5JsJWU7n04w0vxkLCXqwU1uL3WW4Yz6C4O3QOH16vGxrV6srKbhQRROlR6xs41T5IARC/v+jhlBtdMdsFhMa8k3ZJc2N/tqwlb1qI3hr8USbtmLmuEGyuwBNTncWy709uSq1/M+GlTxGUAtMHtcbNsQ8zzVLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761041774; c=relaxed/simple;
	bh=u/CslD2SYCYgr7s6ZBAC5R5wt+b2li4CXOd52Z7V0DM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W4+MWAk3+JSvEANZU2en8DBzggpqV/WWzSQySY+Xjy5K0SiJg04k4i9WPf+YVH/Yp4eL146q3brrgdkx3ekwsSJ1dnO90QGNSZCXnc4YFBwkny2nXjd9JSgihaQccFrcoD4aa9xxOcU45yxA8Ju/SueBn6uOYH7sgKR+KfyvvuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MzDE80HF; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-57e7aae5af9so774364e87.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 03:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761041770; x=1761646570; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CE8ZJxdULgiVs2no8qL8wlR7lwU+rgbNowUWObie/F8=;
        b=MzDE80HFgju//52fdE0naOV0UTn/HQRhoghhhqtFSCaWZOWkZ0rZmKyH+I4wYFpBrF
         ZXtHxH4ZxTDWKX9XaHUa9V+51a+PeH2mbgspyme1K4+bv+Ep5RC8UaMNF0EPtorAk2Bx
         M9D/nBHYwFg8oQW4KW67ek7pSfcbLf5ZM6QLV0G3BnUw3f8GWWqJqBFOTugBJcPzevBA
         GCpRH81V3HqjjG5/zwtApSJUg9SUYu2lhvUx0PaCYEmh37SK59XAWWYBU5WqmZRMtXN/
         ORuTuRAmZaJjTJ9oxcxpa5EKOwKhzL4ScmkM1W9zkUemOkV+DFwCMwr944OxD8QalftD
         MoXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761041770; x=1761646570;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CE8ZJxdULgiVs2no8qL8wlR7lwU+rgbNowUWObie/F8=;
        b=SKENRH4oX4GM7Rrsf5erNQLBrY4J46p1Ilr/ejb3zg21e2EyzuUtMwVWTCJfZYS1Nm
         gOkHHYVubxCcyzTDrGK/PPN2lfTTqPby06V0q35eeRyEFeK/tK9DLRUJhxC4dARsXtWZ
         vvKm8cqH9RdxiWhp4tLl+DDSU4b7J2FCIhZNav0ZWfHCH7qM+WivFpgWAOUzoLcc0GnJ
         +fPoi4w+dsIV+Fy1p3c7GWA8ktoqInlzymFanbc6EqncaS0z5ZVBhFGVFOx+cRcUtlfg
         dUNcnZcLpyNgA2YJ0FweaA7/uTSr50eal9QznUMf1Zlg2+D6/6ORj16aDVUF1NyhdeN/
         milg==
X-Forwarded-Encrypted: i=1; AJvYcCWa7dZC0UMQgexjrAI2adjkVZR+wSwq4BjpZUTM28anhwiPE3CF1q0Ihn/Y+0QLFWR9TBNkI05BJD1X@vger.kernel.org
X-Gm-Message-State: AOJu0YxUp5yFlBXH5UsqtLeI9Bhlw+CZQIPoeR6MlIa0QpCi8DcqvAwP
	0YEDsKStGPZE1dITO+NtnU+LgbmL+tLDQU4vNO0Xful1lx9ylNHGSrtA6RorDNGVXV+sxlPq/Be
	qr/Xu
X-Gm-Gg: ASbGnctQ2H8oIjgTtt0iIRefQN++TUHInbwNCz0mLjBd6DT5ePDInRRIYp3xF364omk
	lypMUimhOtXAmcbJKY4SADB+fn83DBdH3zdi1Qzu43N9eTHl1N5ITI0MnYIIyf2s7LwubdZVViG
	4zJZ8M6OUtf7rY9ogGpHlnOnTuKutpCiUSqgpj4u3UWy/cv6MsU+DRiKNpFxzP7iQ2AQ1bBtqn9
	TUwCZdOMOBi0LPtQo68yp9oeZGMlsBtKMmx/X1wy5ZaROtGWqLbQre1tbm2kXy8R8HeWPjRyGy4
	sReFpGJxpS1kf2moqgCNXw7uVZkjBcgnVuv6MihVI+V7Qb8NfWteX2oEgZiSjApG7MJBm7tLQk9
	1tqy8bHCCjt2Hz7ga73fc3OiQN0fYijDOjkSqIORWK3bgOAX8BCLQBeqC/W9T7mLl8bKB4aT2cN
	yqPzEAvavdWcxoDwi5nxlQ+l1vZRkeAe5/+RlzBB2McefJqQ6LYhs+w6SVSGW7aZa5ZA==
X-Google-Smtp-Source: AGHT+IHIG4buxZs2osnY5RcnhjHgKrKobYPfx6MFnDE5w4Wfkd1mzQuOr+0vSK2TSHXuB5C/Vpvz/A==
X-Received: by 2002:a2e:a9a1:0:b0:373:a537:6a2d with SMTP id 38308e7fff4ca-37797698c2amr28696851fa.0.1761041770316;
        Tue, 21 Oct 2025 03:16:10 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-377a950635csm27817741fa.30.2025.10.21.03.16.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 03:16:09 -0700 (PDT)
Message-ID: <33d9eaad-1043-4816-9620-d7625556bc65@linaro.org>
Date: Tue, 21 Oct 2025 13:16:09 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] media: i2c: add Samsung S5KJN1 image sensor device
 driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@kernel.org>, Hans de Goede <hansg@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20251016020419.2137290-1-vladimir.zapolskiy@linaro.org>
 <20251016020419.2137290-3-vladimir.zapolskiy@linaro.org>
 <aPdRlygxV1TCCUU3@kekkonen.localdomain>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <aPdRlygxV1TCCUU3@kekkonen.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Sakari,

On 10/21/25 12:25, Sakari Ailus wrote:
> Hi Vladimir,
> 
> On Thu, Oct 16, 2025 at 05:04:19AM +0300, Vladimir Zapolskiy wrote:
>> +	{ S5KJN1_REG_X_ADDR_START,  0x0000 },
>> +	{ S5KJN1_REG_Y_ADDR_START,  0x0000 },
>> +	{ S5KJN1_REG_X_ADDR_END,    0x1fff },
>> +	{ S5KJN1_REG_Y_ADDR_END,    0x181f },
>> +	{ S5KJN1_REG_X_OUTPUT_SIZE, 0x0ff0 },
>> +	{ S5KJN1_REG_Y_OUTPUT_SIZE, 0x0c00 },
>> +	{ CCI_REG16(0x0350), 0x0008 },
>> +	{ CCI_REG16(0x0352), 0x0008 },
>> +	{ CCI_REG16(0x0900), 0x0122 },
>> +	{ CCI_REG16(0x0380), 0x0002 },
>> +	{ CCI_REG16(0x0382), 0x0002 },
>> +	{ CCI_REG16(0x0384), 0x0002 },
>> +	{ CCI_REG16(0x0386), 0x0002 },
>> +	{ CCI_REG16(0x0110), 0x1002 },
>> +	{ CCI_REG16(0x0114), 0x0301 },
>> +	{ CCI_REG16(0x0116), 0x3000 },
>> +
>> +	/* Clock settings */
>> +	{ CCI_REG16(0x0136), 0x1800 },
>> +	{ CCI_REG16(0x013e), 0x0000 },
>> +	{ CCI_REG16(0x0300), 0x0006 },
>> +	{ CCI_REG16(0x0302), 0x0001 },
>> +	{ CCI_REG16(0x0304), 0x0004 },
>> +	{ CCI_REG16(0x0306), 0x008c },
>> +	{ CCI_REG16(0x0308), 0x0008 },
>> +	{ CCI_REG16(0x030a), 0x0001 },
>> +	{ CCI_REG16(0x030c), 0x0000 },
>> +	{ CCI_REG16(0x030e), 0x0004 },
>> +	{ CCI_REG16(0x0310), 0x0092 },
>> +	{ CCI_REG16(0x0312), 0x0000 },
>> +
>> +	{ CCI_REG16(0x080e), 0x0000 },
>> +	{ S5KJN1_REG_VTS,    0x10c0 },
>> +	{ S5KJN1_REG_HTS,    0x1100 },
>> +	{ CCI_REG16(0x0702), 0x0000 },
>> +	{ S5KJN1_REG_EXPOSURE, 0x0100 },
>> +	{ CCI_REG16(0x0200), 0x0100 },
>> +	{ CCI_REG16(0x0d00), 0x0101 },
>> +	{ CCI_REG16(0x0d02), 0x0101 },
>> +	{ CCI_REG16(0x0d04), 0x0102 },
>> +	{ CCI_REG16(0x6226), 0x0000 },
>> +	{ CCI_REG16(0x0816), 0x1c00 },
> 
> This looks interestingly CCS compliant. It might be worth taking the MSRs
> and trying with the CCS driver.

The register map is similar to CCS (and it's explicitly mentioned in a comment
withing the driver), but it is not compatible due to a known number of
registers, for instance 0x0310 register is not a CCS_R_PLL_MODE, but a PLL
setting etc.

The same reasoning is applicable to the second sensor driver Samsung S5K3M5,
moreover even these two sensors have different interfaces to registers,
e.g. it's not possible to separately configure HLIP/VFLIP settings for the
latter one, while it's working nicely, and even a "stream on" control bit
in 0x100 (CCS_R_MODE_SELECT) register are different...

So, I believe it would be more tedious and unclean to add a number of
exceptions to the CSS driver rather than to add a sensor specific driver.

> Where is this sensor found?
> 

For a while I work on Qualcomm ISP support, and these Samsung sensors are
found on SM8x50-HDK and SM8x50-QRD boards:

https://lore.kernel.org/linux-arm-msm/20251013235500.1883847-1-vladimir.zapolskiy@linaro.org/

If you ask about the downstream code, there is a multitude of downstream
Android drivers of these Samsung sensors found on github.com, the init
sequence for modes is taken from these drivers and the driver is tested
on the boards in my access.

-- 
Best wishes,
Vladimir

