Return-Path: <devicetree+bounces-136339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1A0A04DAB
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 00:39:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B6C6A7A24E9
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 23:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C37671F0E51;
	Tue,  7 Jan 2025 23:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Ji2tzGm2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8DE1E5729
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 23:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736293144; cv=none; b=EfNjFfnUag7kUytn4z1BPCm2/ElJ2tA/J022m40Dc5WVVE92AWvYXY3+3wdAEGQCvygI+skdxryP3qXkaX4QCcyxEylcaYKeAEyxLZctrvPP/3LowdxGP1pVDKtOMPD4TaVtpofm/UZDc4KcLQH/Z2d7UmdIzpmadQrJh0UdhVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736293144; c=relaxed/simple;
	bh=DFmn8VSyAUHQzVS5msOVeVe/Mf9jzF9AWH47Vr1havA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Uh2V/9oyI8lPRefBl31LhRZiHOKEBBUygwqySm3CHugqCxn3cD35uuVlVfgS1GN+tEj0WU7MtMDwKDmLDlZkG9R4+Ad4lJQ2Ct/y0lY5qmWiD3nv9xkRv9QuZPa0XXyOMzyouPm4m/2tdBnFYcI5LOyKiY5dJKA0KY4cYWZ5Crc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Ji2tzGm2; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-71e1e051e50so4020838a34.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 15:39:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736293142; x=1736897942; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dBAD6yeWOQzt7479x35xKD5+k6y1LOWMDjtiTVM5/j0=;
        b=Ji2tzGm20AE4bSvh9mLE4EvhLm6jykS/oNtq8ZJoMVxZ/7u/L4UOyjJQvffkxfO5Bh
         WPW9+P8gIUwg8yJQDRT7L/AssEZrdYdtWVQviRhHbZ6ipPBQXfk2U+WY8XyfiAFFbpBW
         VXGuR+latkuxfddnx8ptX4OG1LpR1xwYLdtM6J+iMC+ENxYKHxyslnB35Q8Rz5c4nFFt
         JGrR2PtPBISxPM19Dvn05KdTk50dXRXfv0tN+LmOMsNWBwKrN5i7NOLTe0rjOb93yU0d
         3Hpbou1RZvwRv3P2PQjgUeT2duFqwEhXE8ZXHc0CdNJwi7H8IqAvH47s+mLQLvf7hlzT
         61Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736293142; x=1736897942;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dBAD6yeWOQzt7479x35xKD5+k6y1LOWMDjtiTVM5/j0=;
        b=bVIeoP07JCmM48uSVUAlLEqsgOhfYBDEF86jmRk3+h+cMJSW+Wh5Z+OAw6ESxYNPhK
         ECt7bsI7eGBkKvbM7Tr9b94X+z6DvaP/pTuRFVcAgjUiIo3LSkNIW/ZlIdQYcuhHRg/A
         Xx9WUi8GqHShW2UGh4l2fqF+Xn/52CR3ba4FXNPULpwiyfvySfiKR6bYH2+o0KJAKbxb
         szRdGB4HcX3FNn9umEOO7K5rFRyy6jqY+GEGBxP+gfo36ngJmJr5ZV3jaSZQ9YiZjA0a
         BSyplivroXooenZHM7SdeFz+CEe+ZrGvDqtFi14KRRNF3brGga5nhKzqUTMeuwRFGlyy
         6szQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnLiVtp0mIB0LV/BWgCwcbYUjEFoinrpxGWetKXJjJUtA7C881kqvGBS7SERb2q1iHZBm2anzLkD8W@vger.kernel.org
X-Gm-Message-State: AOJu0YxtHXf2vUguTlcptQjyPTP03rJKeVSzB07TS+DIiYSFmJtRgkdy
	30F14rqGWo57LvNuapsAz6/j3EPDgHfQLTAXREbdw5GCt8EFe700d//29K0JQPQ=
X-Gm-Gg: ASbGncseEJjyrwXoQsth4K9WPeBZyBIErOgRlTqkH5rZpHVHffnaP5AWUy7addSs/rJ
	T9RsRiW50jyJQPpQqJjx2nl4L5oX8ttSNbH8+/en2ehcTTXXu3G6TuDk5/6ZIOSMrwlKYd60Akd
	aDdmLlpO/t821aFgVj34hUHbSzdvEz17qYROIUkjk/dQK3SodMF7qFZBD8J1z+BoIJ/TONZalJ5
	hi8QWYrxDJSY+tI15ivtGrJTk3NAH3Kj2zDZ7yopKoBGl3DOTH7kOLylCQs9ycKAU+HpKvI7EpB
	v5cFVsyxNAINPDCdEw==
X-Google-Smtp-Source: AGHT+IGaz3KfG3mjB1yfjWpHZMsowJ++X1Kyc9cU0l4p7loNNycdbgi6bR57p7hkV2D7F8W3gevfWQ==
X-Received: by 2002:a05:6830:92a:b0:71e:5667:30ce with SMTP id 46e09a7af769-721e2ee4602mr481975a34.28.1736293141856;
        Tue, 07 Jan 2025 15:39:01 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc976438fsm10631899a34.10.2025.01.07.15.39.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 15:39:00 -0800 (PST)
Message-ID: <58ea1899-05be-4743-911b-77a56f08c347@baylibre.com>
Date: Tue, 7 Jan 2025 17:38:59 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 03/15] Documentation: ABI: testing: ad7768-1: Add
 device specific ABI documentation.
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 marcelo.schmitt1@gmail.com
References: <cover.1736201898.git.Jonathan.Santos@analog.com>
 <f78c3dee381b23c17787f1e2bc9c5667741d407b.1736201898.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <f78c3dee381b23c17787f1e2bc9c5667741d407b.1736201898.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/7/25 9:24 AM, Jonathan Santos wrote:
> Add ABI documentation specific to the ad7768-1 device, detailing
> the decimation_rate attribute for better clarity and usability.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
>  .../ABI/testing/sysfs-bus-iio-adc-ad7768-1          | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>  create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-adc-ad7768-1
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-iio-adc-ad7768-1 b/Documentation/ABI/testing/sysfs-bus-iio-adc-ad7768-1
> new file mode 100644
> index 000000000000..065247f07cfb
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-bus-iio-adc-ad7768-1
> @@ -0,0 +1,13 @@
> +What:		/sys/bus/iio/devices/iio:deviceX/decimation_rate_available
> +KernelVersion:
> +Contact:	linux-iio@vger.kernel.org
> +Description:
> +		Reading returns a range of possible decimation rate values.
> +
> +What:		/sys/bus/iio/devices/iio:deviceX/decimation_rate
> +KernelVersion:
> +Contact:	linux-iio@vger.kernel.org
> +Description:
> +		Sets up the decimation rate for the digital filter. This can
> +		directly impact in the final sampling frequency. Reading returns
> +		the decimation rate. Writing sets the decimation rate.

If this only affects the filter, I would suggest to add `filter_` to the
beginning of the attribute names.

Also, an explanation of how to interpret the numbers would be helpful. It looks
like a unitless number that acts a sort of a multiplier or divider, but that
part isn't so clear to me. 

Or...

Since the decimation rate affects the -3dB point of the filters we could use
the standard IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY instead of introducing
a new attribute.

