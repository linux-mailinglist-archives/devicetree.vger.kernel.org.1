Return-Path: <devicetree+bounces-176363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C40AB3A3D
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 16:15:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55D2817C80E
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 14:15:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 177351EC01B;
	Mon, 12 May 2025 14:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bw8UddU/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4B01EB5CB
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 14:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747059333; cv=none; b=jyD3BTT4TXc6X9F4nP1s7rFyIQDOJZTgaHIxTwgRsGkKrXwFegnK7Hm7qo/d5HBFVFzC3MvO2Lwp0AmpYd/TLG5iYyX/yZDbYY+aXcpszlcA+JLUx75ru346sHAxp4KemrU2G4sV0hZo9pRcrW7LUiXkuwcjnpA0kmkChl2XPso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747059333; c=relaxed/simple;
	bh=nNU/RFz2rUbNl7nLf7Z8+rvRbBvzu5h/opPgTl9yzxA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=u8isVe+W+yMU45uP6iVgEiGKmt9MENWdDTpScSoPUJBRzXHtaT4gDKD6JFx3UK4Hd8olIBycGKFfp39uCE+AwjKjRrbYhqctpr7atY4YpoefT8ZOplyfQyfQIqeCDKHQTAVuUv0u6n4fPwSwspCnCu4+rL2CZBkPOhA5l1HL1aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bw8UddU/; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7301c227512so3705786a34.2
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 07:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747059329; x=1747664129; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5ZkQGRREx70HQmMXnJ2JUFahkKh8y7M/M223iiroUNg=;
        b=bw8UddU/wc/Hi3X8dltpVwdE0zslMaZ6BZxCPfOevQSpYb4Joy0N1owoi+5k/um9aI
         U4oWu6+cdt2i+gWJInEiRFZQHMiv9lL2QCKq/BwsHTuIMvVCDjDSVXmSGrXqWRQJphH3
         tBIScIESt4qK1aHJ6u3JgeXJ4xUcgBGgCZ7I22+TJ5/zxoVaVWJ95IMlZgfjnHLlJttP
         3SMtexBUt77PkAPGk7oQibFHcWetavzBbH3xhfl1Jl3h2XM66Jl+6RUjsjb6ew4NPgHP
         7af8EBC/c/OGFx/1MMIIKBGfI46jQ+71XfXw1Ljy+dPrQLeTTSzt7u01BAhT3yTVQ6Ff
         ipkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747059329; x=1747664129;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5ZkQGRREx70HQmMXnJ2JUFahkKh8y7M/M223iiroUNg=;
        b=EcfhzhzhEtlsOHcW3+UJ7fW92NJnqZ9jUd7BBKH/GuGSU9nNHeuMDuU66hfnpJHIMc
         ndNJyCTbuPn0NjMdM3WEB766n3bKHH5NL8vcubXVyaU+2dqiX1Ykymyfc9o0mKfdai6C
         0FbwUtT2PJml85zx9C7RQkgXuJl6gPQvS/KL/KKkpFWDHP7G5h3WBsk8Ov+8xTrE3XXr
         fj+BrKm3hzkMwXc444oyTx5R9v78yq2XifWnWEQT1Qa/f1S7nf2p+UgqwWnBbScYQ9mo
         DTVS/hWUHxuZSFnz2tulhNJm5XQGSCkTp3I+wC88Cb42tawu07CWN1BShpfeb2A9UAgM
         achA==
X-Forwarded-Encrypted: i=1; AJvYcCXowvyJg9OG17HE26QtBrXYRUjbLd3VOslihWceiTDXsfJ0ArU4TLZUyG1iBOwwZTsvAB7ObMQLfwyv@vger.kernel.org
X-Gm-Message-State: AOJu0YwhOdp5W3DZkFl+3MVTa/vFJ22ovFx6ExP8e+xV5BcddE28QX+Y
	V39selKHJadElC1H//QulhzzuW/DgKyGSNAuD3LWuQZHsT6mU+HLfWj5dC1BQ1Y=
X-Gm-Gg: ASbGncu/+LhiI8eKcnUf7Fv3ofjBg9pXsUMeJSywL/gjqE78v7VAEGgoE2PwWqL3CAq
	RdCPk3o8MU+4QNsFel2LvkYalop5goIN2h57xeceHD/hAkHhPw7MvZBCW6dsxTbkbHJrvWcRro1
	aHepArKD6gh15yRNSA0LAsorKYLoHVCVTs2vJQJnCmXiGMjhavUM2Um+v1LuTYtWnTM0V9ysXEp
	1tWM9egHZndnLF3Sjew531At+iD4KGlBGNKjO1nI4OUDMjKLn0D9ST0z/775uda3e9Gtuhf/bZE
	6MKZ+Q2bAgJq9s1QqtwjFn3vubIKe3gmZ4UY/s3sJdYNWdD9ScpIbigxE7BwTiiuBny2V/uxI7O
	9r8EBYpmmA0Fme4RcNlFGmVJSPgQy
X-Google-Smtp-Source: AGHT+IHCEnMxUGxiLvsEuMQ4xMc51y5Br4FOqLhzjMrNBPxOpyphbh4RrGySc1szYHqvL/h+260LuA==
X-Received: by 2002:a05:6830:6611:b0:72b:a465:d93c with SMTP id 46e09a7af769-73226b09920mr8559233a34.20.1747059328997;
        Mon, 12 May 2025 07:15:28 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:fd2e:ffda:4c42:b314? ([2600:8803:e7e4:1d00:fd2e:ffda:4c42:b314])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732264d78fbsm1563212a34.32.2025.05.12.07.15.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 May 2025 07:15:27 -0700 (PDT)
Message-ID: <5f373faf-2ca4-405d-8709-2ec91a05f86d@baylibre.com>
Date: Mon, 12 May 2025 09:15:25 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 10/10] Documetation: ABI: add sinc1 and sinc5+pf1
 filter
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250509105019.8887-1-antoniu.miclaus@analog.com>
 <20250509105019.8887-11-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250509105019.8887-11-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/9/25 5:50 AM, Antoniu Miclaus wrote:
> Add sinc1 and sinc5+pf1 filter types used for ad4080 device.
> 
> Add these two options into the filter_type available attribute.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
>  Documentation/ABI/testing/sysfs-bus-iio | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
> index b8838cb92d38..2dfb74b5a990 100644
> --- a/Documentation/ABI/testing/sysfs-bus-iio
> +++ b/Documentation/ABI/testing/sysfs-bus-iio
> @@ -2275,6 +2275,8 @@ Description:
>  		Reading returns a list with the possible filter modes. Options
>  		for the attribute:
>  

Should also add:

		* "none" - Filter is disabled/bypassed.

> +		* "sinc1" - The digital sinc1 filter. Fast 1st
> +		  conversion time. Poor noise performance.
>  		* "sinc3" - The digital sinc3 filter. Moderate 1st
>  		  conversion time. Good noise performance.
>  		* "sinc4" - Sinc 4. Excellent noise performance. Long
> @@ -2290,6 +2292,7 @@ Description:
>  		* "sinc3+pf2" - Sinc3 + device specific Post Filter 2.
>  		* "sinc3+pf3" - Sinc3 + device specific Post Filter 3.
>  		* "sinc3+pf4" - Sinc3 + device specific Post Filter 4.
> +		* "sinc5+pf1" - Sinc5 + device specific Post Filter 1.
>  
>  What:		/sys/bus/iio/devices/iio:deviceX/filter_type
>  What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY-voltageZ_filter_type


