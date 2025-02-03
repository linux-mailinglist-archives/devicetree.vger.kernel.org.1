Return-Path: <devicetree+bounces-142797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F81A26767
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 00:01:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1A8718835F0
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 23:01:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ACB621170B;
	Mon,  3 Feb 2025 23:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="TR1u7KMd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78EDE21147F
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 23:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738623686; cv=none; b=JSfrtNjQ5h+AtVN/4nam3BAqvxofOeedA9c9tEY1KLU1HcXGNzLXevOaJC8lFhYGmzcTU8Zc5CY2CMSYZs73rwhWQ7HipFdTze2unb5IZxsi0pJxijEXeWNHdiOJjYG9oYzOp0w1/g4UEs12MWTKzyC0TNPf7+NZLg2OkluBbeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738623686; c=relaxed/simple;
	bh=JX6YgyI3XB5KZmwCC3kBcbBo+cVpHlL6lsPqGTgoxeA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y4hjKeVT7+sSzUY9kjtFcNNTBupLdnbHxcpIUAMp1S6jxCCgumnLC4A36tnoj/a0CP3Rz5qq8h3Jit8eWYN2Wqag+jl9Im3JiyCyF26yfWLMe+epKiH+jdZv0+kurbJatau84pr9la3eSKpBuXDKd+WUjUG/SEcA960yChdXkwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=TR1u7KMd; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3eba559611aso1424870b6e.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 15:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738623681; x=1739228481; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q48N32/BZzAOoxhPyz3+9vdM39rBTv/9Tu2+c8AC5Nc=;
        b=TR1u7KMdbhzMYP9oF0mbItwasEVKnR3dcvon5gwbwTryxzXJxf/p6WhbNNPjyf2MA1
         cHEtllG4Z+HxCbHULwOmw3NXlrVOIAr83ucKd2YW9E8p1LnWCjwu7C9TMeZzmHZDQV4n
         qVmtqIOD8nSAdF52CtzDHMo8fQD8nh7RGVyH3VzqlMHToDtQzpATsiA3VWLF+6gEiL9j
         GyJRtYBLNLzFvw8n4re2GJwr2Zga+nv1JJDQoHan2UjMwEvhFLxWYx9DqrrQs4PO+8g+
         kMUg1dFTXHUzuhwn8dZHFXDSwlyjt8fMFcEWCVVQhPKhS1d4BDtzq3Jc+KNAxoNe32IF
         I6uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738623681; x=1739228481;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q48N32/BZzAOoxhPyz3+9vdM39rBTv/9Tu2+c8AC5Nc=;
        b=Y0felzM7gnz5WkeyAvzLsOYwSqEhwwYIelWCfaoMAK333Zx7NFWsQJuz26jsdIoikx
         m04Qo5KldEm9kHpRTcAef7L7+PAI5IN3VC2gPgg46Nv1Ojan0clPTSs+AD7rcanGDXix
         uFE4oAruhQcAtxSbWZ34qjPw2787yduEg6+J8MhnCoKmUbu+OTNX1FC63LAejZNs2PfF
         GmbTYke/kmt0Y7zSHeJO+ped7gIP6mLoqElNfOziY5VlHCC3byhBaezTyyljUJ1UlkOo
         Z6Yc0XHVE3CFcgMyYy4xy6nX7d1f6rIVHWmtVgAy/G2HTjCWL/lGXFsxT0Mv5sXYHk8c
         xK7w==
X-Forwarded-Encrypted: i=1; AJvYcCU2vZHaudMc3ghoC48RN8SywLQOZEZJD6BSla7gHKTbKR+j9IcZmHpwZ0/MmXsrVtS/Rv5Dlg7dVNU4@vger.kernel.org
X-Gm-Message-State: AOJu0YwUUl6/KjQ1Y+ECK7FuN1Kd40QrGII/UP/BD03g+w+kRCnQrSOp
	h0MlF7lPlFLbGc2oiLW84u9wtYTNi0G6hPZF6SnMtZq9/76S2x7m0TLikUl2Jvs=
X-Gm-Gg: ASbGncuSWu4A1WEBAcMUOvOJVzJsIlk21WfYR8SHE7Z2aEr8ZVRvs6J3GGUMwxlJozD
	SimzCR9Doo2A0qrlKdCcu1Uh6VOPFeCmSWadK4P4z2JE2A9mhljPmdn0YimdicOA7u66CxMNi4F
	FPaF8eRtGrFDgJplUj0/FTC8EWGBkeoNG4kTV8H7lvy/9oDbKaxemEif77855zSoAe9izMmTgSd
	osaqtisXC+8/UItDwJ7XbB044cKeF/w2pTbCtRaMwdgt9+UpB66lY/f6EM82dHNEiFx+mXhlrQB
	1i4MpQ4pDekOFWy2V1mseihfStopahOaTZnjRgHFN/ROt3YiViVu
X-Google-Smtp-Source: AGHT+IFvQHZNew9RMVh3oMkAV8tgG3NqgZ2zFveyRCk4EzbOqbrzrj7jrDhOfm9blPA9OWsKbsUncQ==
X-Received: by 2002:a05:6870:3127:b0:29e:55ae:6170 with SMTP id 586e51a60fabf-2b32f26ff66mr16402322fac.29.1738623681468;
        Mon, 03 Feb 2025 15:01:21 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b356196935sm3599125fac.17.2025.02.03.15.01.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 15:01:20 -0800 (PST)
Message-ID: <9f209ff0-e56c-47a1-8df0-603d30d36ccb@baylibre.com>
Date: Mon, 3 Feb 2025 17:01:18 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] docs: iio: add AD7191
To: Alisa-Dariana Roman <alisadariana@gmail.com>,
 "Rob Herring (Arm)" <robh@kernel.org>,
 Alisa-Dariana Roman <alisa.roman@analog.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Ramona Gradinariu <ramona.bolboaca13@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>
References: <20250203133254.313106-1-alisa.roman@analog.com>
 <20250203133254.313106-4-alisa.roman@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250203133254.313106-4-alisa.roman@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2/3/25 7:31 AM, Alisa-Dariana Roman wrote:
> Add documentation for AD7191 driver.
> 
> Signed-off-by: Alisa-Dariana Roman <alisa.roman@analog.com>
> ---
>  Documentation/iio/ad7191.rst | 250 +++++++++++++++++++++++++++++++++++
>  Documentation/iio/index.rst  |   1 +
>  2 files changed, 251 insertions(+)
>  create mode 100644 Documentation/iio/ad7191.rst
> 
> diff --git a/Documentation/iio/ad7191.rst b/Documentation/iio/ad7191.rst
> new file mode 100644
> index 000000000000..b55f3c13e45a
> --- /dev/null
> +++ b/Documentation/iio/ad7191.rst
> @@ -0,0 +1,250 @@
> +.. SPDX-License-Identifier: GPL-2.0-only
> +
> +==============
> +AD7191 driver
> +==============
> +
> +Device driver for Analog Devices AD7191 ADC.
> +
> +==================
> +Supported devices
> +==================
> +
> +* `AD7191 <https://www.analog.com/AD7191>`_
> +
> +The AD7191 is a high precision, low noise, 24-bit Σ-Δ ADC with integrated PGA.
> +It features two differential input channels, an internal temperature sensor, and
> +configurable sampling rates.
> +
> +=====================
> +Device Configuration
> +=====================
> +

I would call this section the `Devicetree/wiring` section since devicetree has
to do with how the chip is wired up.

The existing `Device Tree Bindings` section at the end pretty much just repeats
the DT bindings .yml doc, so we could drop that section from this doc.

What you have written in this section already covers it very well.

> +--------------------
> +Pin Configuration
> +--------------------

I think it looks the nicest when the --- exactly line up with the text and I
think that is the usual kernel style as well.

Example:

-----------------
Pin Configuration
-----------------

Same applies to the rest of the doc.


> +===================
> +Device Attributes
> +===================

There isn't really anything unusual about attributes on this chip compared to
typical ADCs, so I would be OK if we left out this section. If we do keep it
though, I think we should write out the full attribute name since some are
separate, some shared_by_type and some shared_by_all, so they have different
prefixes.

> +
> +The AD7191 provides several attributes through the IIO sysfs interface:
> +
> +-----------------------------------
> +Voltage Input Differential Channels
> +-----------------------------------
> +
> ++-------------------+----------------------------------------------------------+
> +| Attribute         | Description                                              |
> ++===================+==========================================================+
> +| raw               | Raw ADC output value                                     |
> ++-------------------+----------------------------------------------------------+
> +| scale             | Scale factor to convert raw value to voltage             |
> ++-------------------+----------------------------------------------------------+
> +| offset            | Voltage offset                                           |
> ++-------------------+----------------------------------------------------------+
> +| sampling_frequency| Current sampling frequency setting                       |
> ++-------------------+----------------------------------------------------------+
> +
> +--------------------
> +Temperature Sensor
> +--------------------
> +
> ++-------------------+----------------------------------------------------------+
> +| Attribute         | Description                                              |
> ++===================+==========================================================+
> +| raw               | Raw temperature sensor output value                      |
> ++-------------------+----------------------------------------------------------+
> +| scale             | Scale factor to convert raw value to temperature         |
> ++-------------------+----------------------------------------------------------+
> +| offset            | Temperature calibration offset                           |
> ++-------------------+----------------------------------------------------------+
> +
> +--------------------
> +Available Attributes
> +--------------------
> +
> +The following attributes show available configuration options:
> +
> +- sampling_frequency_available: List of supported sampling frequencies
> +- scale_available: List of supported scale factors (based on PGA settings)
> +

One of these days, we should probably write a generic page on the common
attributes raw/scale/offset and somewhat common sampling_frequency/
oversampling_ratio (probably a few more that I'm forgetting). :-)

