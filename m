Return-Path: <devicetree+bounces-209409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 460C2B37028
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 18:25:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D2D31889E0C
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 16:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A022D2D7DE5;
	Tue, 26 Aug 2025 16:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WTkNeWAu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE6F2C11FC
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 16:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756225471; cv=none; b=YKkOQxjrCgm/C807P9vZ7jJh9aYr8FcFIBJrCtaaUwDaoEB1am/JOyZ1bsOIKGckk+RMa5l05qnZSHcXTFSICl9GNkr458lX8VG4m2YEN0otB3ZNB2oloEOLNxHuz5Wmc5FHbj4elN/B6oxD7WHTF6lzcLuPQtpKbQTnBNGCzmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756225471; c=relaxed/simple;
	bh=i0oEbDi2g1jzL5Dyxh76ow3SjoJVdIVZt3jL05gI6cc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=BF4/3JRkxeqJRT8wxA1bDZQGgB3A9OHBB3eBmyQDqzR2njOmK51NLarRzIi+0u9MOYLqDqUgkSKIwxNNv6H850iK8Pde9iCIYeQKjybQPPzLlgPOeNKUBcmOXBvHLEIipvq9PUC4R5L70RuQ4IpJiz1a0v6+MNn0UbM39ZjQqeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WTkNeWAu; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-743749537caso50411a34.0
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 09:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756225468; x=1756830268; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OxCALq8DDHHpB2BZLfew8o4so3+GwVKkNdqD7LtBjyc=;
        b=WTkNeWAuvzOLTKhyKT4148aJ5nmrEyBYHIQgC5EsaaMevUjtapdP31mC33L3BQThAb
         lrKguPcH+XLcZUNdll2WB46wmqFnlttTHafg3CAx8lfyEnQYUZIi1HSmNW0CwKe2Ww0P
         pw6qp6VDhDUC87zBnEly0VM9y8lagZKUecpFlhcOSKpzhKojsblVI20R2GeDnjshlhjw
         aiHEzN4cU2x5KRpWf5xuzhVKCOWEEzderDtcrPgp2x6FgUYzYoQf/uCOOlkjG2tNaekv
         VtMh4qFbgnSlaKkoN2VLUf3Hp8igQOj6C4f4yTrJiGuZLOa1MNjOH3fmNukWdgEfQvGo
         jDFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756225468; x=1756830268;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OxCALq8DDHHpB2BZLfew8o4so3+GwVKkNdqD7LtBjyc=;
        b=sLIONBktye7hvODO+NZ/iSFUJ7qmUwzzLdchhv9HkpJrQYcJRsvwX5eJ4tGXIyhFRi
         ga2/veiFbelOuHjrAZtDY9bz/alg5Zwf/5a9hajzuKf1cqcJS6HDaXegCG1PH7g8fE1s
         NBqyBTwc4zTtIxqAL2KuooUP4ZzmKtuiCF9tN0T0Ta894M5nbN5RWRJozVpD8J93Gfhp
         4kmmeXjSUNBMyvDbueb/zL4UNoEzYoO7nP8sf1IAdibfwygjElE/ZXwBRmaElgcixVRw
         6vCo5cibnPQ1w4IuoEygCYL48ITYdTWY8tGb97cy+qxcUU8uVq1wuRaUZnKYIMQ1VIvL
         sHUg==
X-Forwarded-Encrypted: i=1; AJvYcCVYjvKqH+2YSpV9Tk/43ojdfkc1A6YClRWCOw2qwMPZEbNfNZj5DXGr88Gl4xEVDSjUOlnTUenFX0cZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz6HjiNB486m8TfmWGBXSc76Wv0RxaJflsOWlpYPgHZtbDsDOj
	omxhF1KgXxBz7c8b23Oe/l4f8eYcSPVEjtLkj7UKTsRBAf/w5uEoA2PboZDmU+rdCiY=
X-Gm-Gg: ASbGncvftzvXeiCLoLJcV61L19MepJDoQSGiEQ0UfmJohirz36A95PTfsGCtkHYlLlP
	kCm1YonVF3EIlMReEfZeoO1O+YvAuyDzlpkYoUtO7BmyT6BXa0zi6qhQ2q1BRnc5voRYX02nzHV
	bcawCPfD97V8DoT5nXOhKNKFyqsOFRTs18tnPGaSpofhHl96LYMx+qo72ntnU9pGep2NYR1Yp8v
	hFsw4nZ5d/b2DdHOyB/yOwnBpIKAiNz3bsos6eRvbeHzQFZpbZnenE3HozMNXBSemFutgBq0oKx
	5F+H2xjkxQ2Jv5r854Ck/ll9GIEZDhAUOUrYuU3kEf4MAVaJqqoUKp6A0odyGm7/yHNk/8lApvw
	cSKtIoX5L96fKQCz5KXfOtIDwRG4i0boNXqIPSjZbvlCTMb0TFhcmK9fQT0+ZrrbIhhuY4knDP7
	po/3+v24J1Fw==
X-Google-Smtp-Source: AGHT+IFfYRdanH4lMvOeslIkzUAsoFW9mKtvAJqYjbyEdJMFQ5DbdT6baaJfteOsGNPMe3IVB9CJtw==
X-Received: by 2002:a05:6830:258c:b0:741:bf2f:ee87 with SMTP id 46e09a7af769-74535b1935fmr900221a34.0.1756225468382;
        Tue, 26 Aug 2025 09:24:28 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:aa9f:f4cd:76b1:fecb? ([2600:8803:e7e4:1d00:aa9f:f4cd:76b1:fecb])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7450e2690f3sm2409801a34.8.2025.08.26.09.24.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Aug 2025 09:24:27 -0700 (PDT)
Message-ID: <82a21a66-409f-4ec8-9351-365031b8646b@baylibre.com>
Date: Tue, 26 Aug 2025 11:24:26 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/4] Add IIO backend support for AD7779
To: Ioana Risteiu <Ioana.Risteiu@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Ramona Nechita <ramona.nechita@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250825221355.6214-1-Ioana.Risteiu@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250825221355.6214-1-Ioana.Risteiu@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/25/25 5:13 PM, Ioana Risteiu wrote:
>   - Add axi_adc_num_lanes_set in the adi_axi_adc_ops structure to support
>   setting number of lanes used by AXI ADC.
>   - Add the generic io-backends property to the AD7779 binding to enable
>   support for the IIO backend framework.
>   - Add the adi,num-lanes property to set the number of lanes used by
>   AD7779.
>   - Move the initialization specific to communication without iio-backend
>   into a separate setup function.
>   - Add a new functionality to ad7779 driver that streams data through data
>   output interface using IIO backend interface.

It is more helpful for the cover letter to contain a high-level
overview of why you want this series included in the kernel. We
can look at the individual patches to see what they are about, so
repeating that here isn't especially helpful.

For example, I would write the cover letter for this series like this:

The AD7779 ADC chip has a secondary data bus for high-speed data
transfers. To make use of this bus, it is connected to an FPGA IP
core [1] which is handled using the IIO backend framework. This IP
core connects to the data bus lines as well as the data ready signal
on the ADC. This interface can use 1, 2 or 4 lanes at a time.

This series extends the devicetree bindings to describe these wiring
configuration, extends the IIO backend framework to allow setting the
number of lanes that are being used, and extends the ad7779 driver to
allow using such a backend for reading data in buffered reads.

[1]: https://analogdevicesinc.github.io/hdl/projects/ad777x_fmcz/index.html

> 
> Ioana Risteiu (4):
>   iio: adc: adi-axi-adc: add axi_adc_num_lanes_set
>   dt-bindings: iio: adc: add IIO backend support
>   iio: adc: extract setup function without backend
>   iio: adc: update ad7779 to use IIO backend
> 
>  .../bindings/iio/adc/adi,ad7779.yaml          |  44 +++-
>  drivers/iio/adc/ad7779.c                      | 192 ++++++++++++++----
>  drivers/iio/adc/adi-axi-adc.c                 |   1 +
>  3 files changed, 196 insertions(+), 41 deletions(-)
> 

Please include a changelog of what was changed in each revision of
the series along with links to the previous revisions. Tools like
b4 can help automate this.

https://docs.kernel.org/6.16/process/submitting-patches.html

