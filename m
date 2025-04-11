Return-Path: <devicetree+bounces-166168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 297C0A86811
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 23:18:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 212E31BA2394
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 21:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A19CB293B72;
	Fri, 11 Apr 2025 21:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="C5CGA81+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C42258CF4
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 21:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744406324; cv=none; b=XyKqviO896HNYVtt+8gz2rrA7s0rCouXK93//lUVwAhoGZHdwye3qh3M3v8iP6OyyD20mXNAcYjn4wTsL1lzwG5vAAgI27tyFNG0wup7Deebjvx2BqIIc5rKOVy3sFaJImiXgVZqIKuLxUAz1LJ7AhzFdv5G5oPzMczE9FL7A+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744406324; c=relaxed/simple;
	bh=rag+QXq4vWakUy9sDsqwNJhEerW8S3rA/5RcjaDWrNA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cYP1IptKwHUfHf1j0tpuMvlK5BcBRHOlCO7pfTVth2Hp/jwOJc8ccEGpKerD8Zu02+ypOMb9/w4Ri1NvKbNTmHe5OrszjLaU1navq9s1JRdftlIvW6pDbmsHC+r3uPMdJRaouW0aa3kyFdS0Ey/J4v/Ukl4U1YibJv5XOZjUF5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=C5CGA81+; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-72c1419f73eso1776114a34.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 14:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744406320; x=1745011120; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sorNIy6LIPWEsa+dR7etTvE5w/Ir6yxO/CI3OrQDhzY=;
        b=C5CGA81+q7th0x0t1dHgFf6HR9f7cGqpZZGqgSPJyc3iuxoHHsHxemOLXPNIvBMRM6
         PvaHf9BVFZ/lzHwUtJzqfR23LfQZInmXbwXehW37JJOuRG8fykb9HAsuPAbwQHSQcUKK
         8Z1VvzTOuJIaT5d328xtRA9PzOqgp4665CZARAA3xLIORLDtT6JJwG2YGpOu5mKK4gFN
         UHzyq/p+1Pry9IiwvJvYP/RaKc9wyAVz+BRvHLGWMSoFLHrdJ0cVBzsVX9GskU+MWTDF
         lGRRZynNvGW/nncDWhFcDpEY/Vmp2hsEsL86re3WPEBiiw9s23jl5R+GkgQyioohaYDB
         doXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744406320; x=1745011120;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sorNIy6LIPWEsa+dR7etTvE5w/Ir6yxO/CI3OrQDhzY=;
        b=nRn5cbKuGnVoHp0t804o6FPPlBKGpgB/qbFlX+ByX2Q+kKjDtklaj8xmDcrNchSyJO
         yVx2xUw1OHMTV2HEqG0xTYXIoOvbP2vv9v6rfXtWQpczzkBP1IgW0/VaBgC+AwhxUIau
         8hd6NbbWRp0C8Rfu5ujKW743ZjV7GxWSPliVRXo4k+AZaYssWF9kYy28nFnI1Mrcfr90
         +FygCXCm8u8AK+AUXlNyCFmAOnptj4m6SAuBpERETKjQZy0qambJ1sPpSpVKRLB4pv6a
         vsdAItaEkDaP4WVr+6uSjVNAW5OidoRJlQLvXP2IJxcr6fgHcsGi53NZOAGzIEqXomws
         GRzg==
X-Forwarded-Encrypted: i=1; AJvYcCUcCw4L76uAKSsNCx3nPNRjOAnvSbE958Xb6XDywkpuL36FojwSJpNG+8JUqwwa/icgYizwSI7AwUiy@vger.kernel.org
X-Gm-Message-State: AOJu0YwJjBIpSgrIiwWpaEOPj++fQkWAaHNRoaizYT2nZICTM05TeURM
	+2Ug+Gi/qHs2yYAH+F9nc6bs8Wgs86TLHIdLRGC6ayayhWiLRMe4+zU3RRcTcqA=
X-Gm-Gg: ASbGncuaJ+eqnWmqB9g7UNijRtvFSP72/SJA6eE6DmGRwe3juugaEgJaOL/0n2EDf8J
	CWpO5Z5qAQrCR6j90pMnFHYKSfkF3rRQ2mNggOtZkMwoSKIAUWtlGnUvslDFO6epgboatnDlp7X
	4V00aODY1pWNxY/6Kde9MSuKubVAPu9+RjZAjNx/4SnyTIoslo0CuPd7KikoagROFiLs6OceYxI
	/3gxGxBVHjeCbn8tbDCYkiDUle293wu8Tgb0bCExCJbI5pOhdjz0+zNZaxZ5vvCMWllllV8PCWJ
	ZgFc6SYpg4mdkJF6opRHa6yPBX+v0N3AZRZEPfx5ekQ2xXAfSycZ2Ofc760QPFC6HoJlI8dTzWe
	RRA==
X-Google-Smtp-Source: AGHT+IEQ7gV6ZTG0Y504SCL7jpKeuLLtLbDwYjcmeg4BjGRNRDE++XVtQ96KcNIUD2IdTct72Q7wAQ==
X-Received: by 2002:a05:6830:6407:b0:72b:2513:ad54 with SMTP id 46e09a7af769-72e7c173715mr5591645a34.10.1744406320668;
        Fri, 11 Apr 2025 14:18:40 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72e73e67444sm1082695a34.63.2025.04.11.14.18.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 14:18:40 -0700 (PDT)
Message-ID: <4460df06-6da1-4b23-8789-82945e90a09c@baylibre.com>
Date: Fri, 11 Apr 2025 16:18:39 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] dt-bindings: iio: imu: Add inv_icm45600 documentation
To: remi.buisson@tdk.com, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250411-add_newport_driver-v1-0-15082160b019@tdk.com>
 <20250411-add_newport_driver-v1-7-15082160b019@tdk.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250411-add_newport_driver-v1-7-15082160b019@tdk.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/11/25 8:28 AM, Remi Buisson via B4 Relay wrote:
> From: Remi Buisson <remi.buisson@tdk.com>
> 
> Document the ICM-456xxx devices devicetree bindings.
> Describe custom sysfs API for controlling the power modes.
> 
> Signed-off-by: Remi Buisson <remi.buisson@tdk.com>
> ---

IMHO, it is more logical to have the dt-bindings patch first in the series
before the code that uses it.

>  .../ABI/testing/sysfs-bus-iio-inv_icm45600         |  37 ++++++
>  .../bindings/iio/imu/invensense,icm45600.yaml      | 136 +++++++++++++++++++++
>  2 files changed, 173 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-iio-inv_icm45600 b/Documentation/ABI/testing/sysfs-bus-iio-inv_icm45600
> new file mode 100644
> index 0000000000000000000000000000000000000000..8d2d9b68ad9e35fe0d6c157e984afc327eab92ec
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-bus-iio-inv_icm45600


ABI documentation is separate from dt-bindings and needs to go in a
different patch.

Also, it looks like /sys/.../iio:deviceX/in_accelY_power_mode is
already a standard attribute in Documentation/ABI/testing/sysfs-bus-iio
so we could add to that instead of creating a new file.

And there is Documentation/ABI/testing/sysfs-bus-iio-inv_icm42600
that has the same attribute essentially. So it would be good to
delete this file and consolidate everything in the main file.

> diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm45600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm45600.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..51455f0b5cb90abdd823f154e45891ad364296e6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm45600.yaml
> @@ -0,0 +1,136 @@

...

> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#

Since this can be connected to different buses, I don't think we want
to always ref this. It gets included implicitly for all child nodes on a
spi controller node anyway.


