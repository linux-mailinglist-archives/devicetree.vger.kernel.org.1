Return-Path: <devicetree+bounces-149092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6878A3E3D3
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 19:28:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BA7D87A7793
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 18:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1228721481A;
	Thu, 20 Feb 2025 18:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1SSIrEjH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F53A212D83
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 18:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740076060; cv=none; b=Iqx1I9G+aaA0dZpUmtnqwzOeFmreKmMJvwukdeFoSgFHV1/VScfPJ3Os/G8K4srY/1lLKEfRtTNkZYDFztKCIEtlsKabGJ5anN218gRK6hi0JNO7PStOVzN82vq9Vi27PdbXDxHwz2TnAYchsixL4EWcGmO4Qx057nQRuZ+aJPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740076060; c=relaxed/simple;
	bh=VHgizFaYz1ce+SVHS71EReLg+1ZGhqjTgNtrNddwkIc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=QJApQ3WPySXnxTXPn0FRXSYwyDA7mvJcb1pLyzcWZ4TUTwUGRNRpqRu0QI8C8x701vdjmk9VPwVZg7hT689V0qDrlZ3dOmzep2zhOFlGWZCcMX2AcNiM2yyzNNfBH2tZHigDGC5xcTnJMGewMYc6hlnEwBH6iAOtp7D4ffoJSNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1SSIrEjH; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-2b1a9cbfc8dso301605fac.2
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 10:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740076055; x=1740680855; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W7qk0FcOBmefqQ8ES313TjuenUiSsXs8dKbnSBmPA7Y=;
        b=1SSIrEjH90mSrpXDTaWr1//pNXAGMg37AmfHRR3j0KpGQehZOSENaI1jI0C9oZWCJd
         w68ay8tCsRevFlbC4QYrloGmYGh14zD7xu3uG63lBLDeXGYcJ3E/Hy7wnSVhvWRMzXFt
         dIWiixbtiyiFc8nz0ZAmfx2aVDXzuHbRYAqM+aUAHpH9RBOpJvi2RqZ+I5CHEP6b8w68
         Kea+ce4o841ANlA/gvEKM/s6anhc7r3v7zTWRb8HXioFhzfuZNuSC7ASItHj5y4As+hG
         L0zmo0sZWsW2w1UpVY1fPVp3odAYHD7ESPQ8pamkUA3+Rtkd54Tm0/WBuXO7KZ79CcFh
         0qng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740076055; x=1740680855;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W7qk0FcOBmefqQ8ES313TjuenUiSsXs8dKbnSBmPA7Y=;
        b=MC+A/PUm0IQPAVzM7DQ0bL2accpYBCjfs6SlNWLoCpaREXGzyDNUJRaMCBhG2ldSIc
         2NgTpe19x1/nKqsVF67uUIpxF0Jj+tddvG4KRT0SYENkMEGaXoLpvJ5tbfjxggs9RQub
         ysDAJNkUlHhliwJ96SZ5oOdZCavvGks5PTAvWYu5CBDu3qKgunoBu+n2EZbcVKPC44pt
         9yECxWCfZ5uVdfbRkedRvYkvYCUsCvcSRVkCMho2YR5pX46+VXFOFsEQ1oRLaVoASM6m
         CMOAditIPe+w42i9Iq2azZeCndgwORqj6AVSeKEqtxonxpUR2jRMkZhXXFmZJPj4HnX3
         NvKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdaUDZhSANWQB7RBFjf6HxkiCTeRr54enPDxeLtlLP97X9lkTDOjAF4AF3G9W/bYu0y7bfYfYjjhXZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxPc4Uc3zTQFtTxxBZNUSgQX7TgVr8TQBd0muyufpmFpwNDvAgr
	nrUKfcrPuvDDqrjaXt/zZcSW/Wb70naRlkhQzq/Gb0Z+ch4Cy4UwhPJ3Wwfo86U=
X-Gm-Gg: ASbGnctQUgdE94QdQmOAryLUB7wpmwcmaDKsM+4GgvZ3sjs2EPGy7d6ANdLkYlNUnHb
	NIvcfKHM/TwN0OHE3/ohvema6RYb2pTP2PCARulXRgqEZMtae9aodcFnWOG3sBGQY2kmM3KVZEh
	vQ1O0hc8DorbBB3dTPHBIbaYyzwr/pNCtlb/w4EfRoN5fzle5jrnDP+Xw9yjhaUHJzukoswvF76
	0ltT8oKtNL3D5VRDOiTzsD7fvdgqmV0FtfFPALTWjXhnnik4gwQVRuyVJiuc144zCrllzWJykOM
	cbCrC+viKCSpgFUZCoVj3kQLI8K//VdUjzZ5jq2Pdfa1y5PrZYqQ
X-Google-Smtp-Source: AGHT+IGsm/MqvD+9VZNwdbbtbnUbjtDWYbJQ7F2+IksnXJpGnAqy8TY/Rb9MOR38Jj96OQB0zkHZQg==
X-Received: by 2002:a05:6870:1705:b0:297:2763:18d4 with SMTP id 586e51a60fabf-2bd50cef076mr52222fac.15.1740076055473;
        Thu, 20 Feb 2025 10:27:35 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b963a16847sm6402045fac.49.2025.02.20.10.27.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 10:27:34 -0800 (PST)
Message-ID: <fd3ba169-c5e0-4405-961f-d7c11c68dffb@baylibre.com>
Date: Thu, 20 Feb 2025 12:27:32 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/14] Documentation: ABI: testing: ad4080 docs
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250220135429.8615-1-antoniu.miclaus@analog.com>
 <20250220135429.8615-15-antoniu.miclaus@analog.com>
 <8f588f4b88d122815df694660d19672e8ccd3d70.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <8f588f4b88d122815df694660d19672e8ccd3d70.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2/20/25 8:53 AM, Nuno Sá wrote:
> On Thu, 2025-02-20 at 15:54 +0200, Antoniu Miclaus wrote:
>> Add documentation for the ad4080 attributes.
>>
>> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
>> ---
>>  .../ABI/testing/sysfs-bus-iio-adc-ad4080      | 55 +++++++++++++++++++
>>  1 file changed, 55 insertions(+)
>>  create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-adc-ad4080
>>
>> diff --git a/Documentation/ABI/testing/sysfs-bus-iio-adc-ad4080
>> b/Documentation/ABI/testing/sysfs-bus-iio-adc-ad4080
>> new file mode 100644
>> index 000000000000..e37bfba0e989
>> --- /dev/null
>> +++ b/Documentation/ABI/testing/sysfs-bus-iio-adc-ad4080
>> @@ -0,0 +1,55 @@
>> +What:		/sys/bus/iio/devices/iio:deviceX/lvds_sync
>> +Date:		February 2025
>> +KernelVersion:
>> +Contact:	linux-iio@vger.kernel.org
>> +Description:
>> +		This attribute handles the data synchronization
>> process.Because the CNV
>> +		signal is not taken into account by the FPGA when capturing
>> the data, we
>> +		need a process that configures the ADC to output pattern
>> data, writes the
>> +		SYNC bit in the axi_adc register map, waits until the custom
>> HDL syncs the
>> +		data correctly, and then changes the output mode to analog
>> data instead of
>> +		the fixed pattern.
> 
> I'll comment this one in the driver. I have some questions on how this works...
> 
>> +
>> +What:		/sys/bus/iio/devices/iio:deviceX/lvds_lvds
>> +Date:		February 2025
>> +KernelVersion:
>> +Contact:	linux-iio@vger.kernel.org
>> +Description:
>> +		Configures the signal type of the CNV signal. The value can
>> be either CMOS
>> +		(lvds_cnv=0) or LVDS (lvds_cnv=1).
> 
> The name seems to be wrong with what you have implemented. From this
> description, I would think of this as a DT property? Can the signal type really
> change at runtime?
> 
>> +
>> +What:		/sys/bus/iio/devices/iio:deviceX/filter_sel
>> +Date:		February 2025
>> +KernelVersion:
>> +Contact:	linux-iio@vger.kernel.org
>> +Description:
>> +		This attribute enables the digital filter functionality of
>> the AD4080.In
>> +		order to capture data correctly, the function must configure
>> the ADC
>> +		through SPI to select the filter type and enable data capture
>> in filter
>> +		mode through axi_adc(In this mode, data is gated by a signal
>> generated by
>> +		the AD4080 (GPIO1 and is not continuous as it is when the
>> filter is
>> +		disabled).
>> +
>> +What:		/sys/bus/iio/devices/iio:deviceX/filter_sel_available
>> +Date:		February 2025
>> +KernelVersion:
>> +Contact:	linux-iio@vger.kernel.org
>> +Description:
>> +		Return the available filter modes that can be set.
> 
> There's a standard attr for this. I think we settled 

Yup. filter_type and filter_type_available. 

>> +
>> +What:		/sys/bus/iio/devices/iio:deviceX/sinc_dec_rate
>> +Date:		February 2025
>> +KernelVersion:
>> +Contact:	linux-iio@vger.kernel.org
>> +Description:
>> +		Set the filter’s decimation rate.
>> +
>> +What:		/sys/bus/iio/devices/iio:deviceX/sinc_dec_rate_available
>> +Date:		February 2025
>> +KernelVersion:
>> +Contact:	linux-iio@vger.kernel.org
>> +Description:
>> +		Return the available filter's decimation rates.
>> +
>> +
> 
> I'm not yet convinced we need the dec_rate custom attr. I'll add more comments
> in the driver.

If we do need it, in another driver recently we concluded that
decimation rate is the same as oversampling ratio and there is
already a standard attribute for oversampling ratio, so we used
that.

> 
> - Nuno Sá
> 
> 


