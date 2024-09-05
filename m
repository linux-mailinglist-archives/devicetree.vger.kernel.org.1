Return-Path: <devicetree+bounces-100588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B7596E2E7
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 21:14:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 864C52888DC
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 19:14:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF05618BC31;
	Thu,  5 Sep 2024 19:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="z51uigw0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC1E18BC04
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 19:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725563681; cv=none; b=SlZngxc/ZePGE1fXiENq+V7brmVLoaEXBfuan6zcOrJb8VWiaJTs8iQXKRHYcUsQNoFkrhoNkC92KGXyY5jky62s6NcbzsSq2PQ3Sm+BtBN8uwFqXd/pb3A3QutuRPhdRMy3SaPdep8gwJTgDvN2H/s7Qofc7PGApcOENcAkdi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725563681; c=relaxed/simple;
	bh=6UXCMrVmZNSbpGeVyKWnT29MRHVMts77X0nivhm7MT0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZgAfgSOW9FLFWek+BQSHJeGLxDxilfrqGVeEu+QRq0pgJN65N28fyNHW8ModprMVZ2ZsvQagwk2zq0RDpViLBSLVGsHTLZbh+POwzFK3o0vhA1tWVMJN/mJO1w4d4DHroQxxCsHz+Dsk39GUtUHDsvFrFIZZwOPFMTDo7d4dTOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=z51uigw0; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5e19b1656ddso613707eaf.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 12:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725563679; x=1726168479; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LkPKmV9GWSwhXE4yCA0T+DtSYxNC6pC4AoG3CAMJwrg=;
        b=z51uigw0DuWLG9oPgJ6X0TeHViaPYBvI9n6NKrGwIbRrDRybVPcw/m03mk6SP8b9k0
         FJHZMfBmc0agPNawAAAkt+g4/gyXCTZdnK+EKRIBvpm4EwOmapOlfCULO7hI8Y55p7Oe
         0Brg3ZOH7Ws62TuQWTygc89Aq4OyqzL3pCsQ7LCRDgG/k/aoZQsIRK2Ha3Seo0A08s7t
         UYexBbTbco3dy7Do6Ln1t90diwISoLRlEf5q+sWZCEgT65i5s6RgYwwhtMqfoTQxwwAb
         S0iqD8qZU9xWSbLRb4uwHq+Tg4TxxmMJyPvFj5vQ4jPMKzI1U3MJNzbDSAMRcxM90ia1
         YOFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725563679; x=1726168479;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LkPKmV9GWSwhXE4yCA0T+DtSYxNC6pC4AoG3CAMJwrg=;
        b=kLdf9bBD+CnyrDR8oOpiMxdtommAqHqsHEmvW3TfQZatD9QiyYgWXazuoReytRLzmk
         zxFUE0r/yWPux0nehhOV985Cq6mqPOr3SK9oQGr5GjFoJjmiLDrKl02DLxghFJlHPCYY
         e/QWVIEd/WyzT/sR1PMChmq6AU6dnlXBo1ImTMGFQJfZomsqxoeV0vfOaBKArSJNCcGI
         g0h40z2yLTY2/k4THMTDs9MG3+K0EvdfsarL1giwJ2qNQmMhDp/OEd7DeH0uEhQqiVJ9
         1DwfaRjGUWzCZH7lYNlPiE6bfCS0U0dr+x07rJ2vTo0HfYxESjaXTfh3PCulc8BHT91D
         tPjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlScubawkVGaSKN9X3CjNsLC9gn9iWpzldwWWuKlHSX3HunAvWvMohZYVfjB9VjHlriiD+wSyfQYrV@vger.kernel.org
X-Gm-Message-State: AOJu0YzniMHZDdODlI55Eob2rFfJxPUu7tALTfHaYh7KxLAnVjH0vXg+
	N67HLTsmDK3B37J0FV0dcJoqyRKLW2ObpNFK/EH31FBNwrc2/4FSMVPr4TrG2YU=
X-Google-Smtp-Source: AGHT+IGslQXMgujEyUkZAQLIGMlp0qbu63S5tJREUO7YqA63S/B92HI5uvFPA5zJNDJsVomUJHI3mQ==
X-Received: by 2002:a05:6808:e85:b0:3dd:43a0:88a9 with SMTP id 5614622812f47-3e02a03a9d8mr345427b6e.41.1725563678796;
        Thu, 05 Sep 2024 12:14:38 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3df11866831sm3384597b6e.37.2024.09.05.12.14.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 12:14:38 -0700 (PDT)
Message-ID: <b70612bd-e61f-4286-9337-bca48768fbdd@baylibre.com>
Date: Thu, 5 Sep 2024 14:14:37 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 9/9] iio: ABI: add DAC sysfs synchronous_mode parameter
To: Angelo Dureghello <adureghello@baylibre.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
 <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-9-87d669674c00@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-9-87d669674c00@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/5/24 10:17 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Some DACs as ad3552r need a synchronous mode setting, adding
> this parameter for ad3552r and for future use on other DACs,
> if needed.
> 
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---
>  Documentation/ABI/testing/sysfs-bus-iio-dac | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-iio-dac b/Documentation/ABI/testing/sysfs-bus-iio-dac
> index 810eaac5533c..2f4960c79385 100644
> --- a/Documentation/ABI/testing/sysfs-bus-iio-dac
> +++ b/Documentation/ABI/testing/sysfs-bus-iio-dac
> @@ -59,3 +59,19 @@ Description:
>  		multiple predefined symbols. Each symbol corresponds to a different
>  		output, denoted as out_voltageY_rawN, where N is the integer value
>  		of the symbol. Writing an integer value N will select out_voltageY_rawN.
> +
> +What:		/sys/bus/iio/devices/iio:deviceX/out_voltage_synchronous_mode
> +KernelVersion:	6.13
> +Contact:	linux-iio@vger.kernel.org
> +Description:
> +		Arm or disarm a wait-for-synchronization flag. Arming this flag
> +		means the DAC will wait for a synchronizatiopn signal on a
> +		specific internal or external wired connection. I.e., there are
> +		cases where multiple DACs IP are built in the same chip or fpga
> +		design, and they need to start the data stream synchronized.
> +
> +What:		/sys/bus/iio/devices/iio:deviceX/out_voltage_synchronous_mode_available
> +KernelVersion:	6.13
> +Contact:	linux-iio@vger.kernel.org
> +Description:
> +		List of available values for synchronous_mode.
> 

Since this depends on how things are wired, it seems like this should be
something specified in the devicetree, not through sysfs attributes.


