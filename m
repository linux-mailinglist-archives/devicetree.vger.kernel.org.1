Return-Path: <devicetree+bounces-116164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 084019B1FE1
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 20:41:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6E68281392
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 19:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D2F717BED6;
	Sun, 27 Oct 2024 19:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eoW56xCr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA5079C2
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 19:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730058089; cv=none; b=SQmtJxW6v2CyeyEQJYYGoMfFENN+L2/R0qG1llERvquueS+MxPHa6yH1w5aZs6z3u/JN2bXuIaH6GJEGo6NVBk8jBgxL7COVD0PXQgHXRYXU+GLBDZXTTKoBTK2xKaae3F1QhFwYxjLyGsKfoASV7CqhnmiRiwnWmSEej9yYsqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730058089; c=relaxed/simple;
	bh=v+vz7OIIFECPzMyfYUR86ehGfecvzTQY7cT6KQHCzi4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mpylZeVP+AzdicASao8HcnoJhbAn6KReFHoQza6lRaeyLW/6mFzbwFmxOQlPTwJ3AenK2PoDtqOZRtBg8WUri7k3R/zu5hz2k7dMQEGNZH/4xnMXkWw/kV0QEB5xR5Tqyc4ABkagjKB7rF8hKzlYRupOhJPmMR1qh4axNm9PXwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eoW56xCr; arc=none smtp.client-ip=209.85.161.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-5ebc0dbc65dso2142424eaf.1
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 12:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730058085; x=1730662885; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DS49mL6mh3qfyGHT1zyM0qeylEka6PaSbeWVh4VtAn4=;
        b=eoW56xCrKC0eCdUB+TOfPm+jOxMWzEvMD7IvLIrwfd6VgdYerfpY4lrubbzfk+XVH1
         NSjTetAcsP3kiHGH90h3tAvtyDzdVgRHiriQJzKiCBwFQJRvywvvSJvA5qDcCXj965Zd
         eEs9VVLLAKvb9GqAkL8wxvIhcTJAlIUvEwWWp70RZJudPDZJ41rFtj5hHdLXi+cbLSKX
         k+8tVWDCVtntFv/bGzSvL/4r9WFWsgDaFj1c0aBPMrmzz2nxKNdBHIvYAMeg8ZJ95vAV
         5J0OGAQZTjsyFg15m/dKpCp0yTkuFskuEyCrkpwpW3sSObXhm+AHEnAsndo9gbrkwbLz
         gM6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730058085; x=1730662885;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DS49mL6mh3qfyGHT1zyM0qeylEka6PaSbeWVh4VtAn4=;
        b=jEb1nHS4ZRsran1SMbo0uHUli3z0kUPFY0hDa8BGcB2I8nxnGPfY/j1tx4uwDOA5xs
         aQ/j3Qvrbq9e/1TmrBuh7YLZvFdAEuvtqHhJjN6qOnK6NyoIZw6HRZCpV2tcXBrZVrhL
         hyUR8i4dUlaXMhxEgxY/Ob9FN2I3/EO6VCjJnlqVgcxbRChs0SgulMAVSlJuS66ae1kk
         DWCMXgHXoLviCNHoNCQxtxhOFACC+GGABG6R3Di64/JViMG+XrcDo/Iuhnkw8L+HkKwk
         K0OJFosO78VbqIpqZduuPoVLgFr4NxPPWDhTmD4GIuz/7dw8WeKQQMcC+BHtcWLlzcpz
         33pQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXsfHvuVS1kVxBi3AYA+VcHUjK4B9/t0oT3K3bHSKBZY4vyXKvVW7ozRdHJgLAJ12XTiOIw1voU/rC@vger.kernel.org
X-Gm-Message-State: AOJu0YyCEHX87xIYJjJnNh2oqy4kXftkN5WHxfzq4BUnjVNc71mSJufE
	V9CurkcHaQhmlcMqgZMrm0ydAnb/pT11LU7dS8B3xd8HKIC3U7QLqmX0pxNNh9w=
X-Google-Smtp-Source: AGHT+IEN4f17W5Pxyu0a3Sg3sLpksasKzlX7/jnfpEUhNEtj1KFkavvwEUUQrUhY89AcYkgtdZMp9A==
X-Received: by 2002:a05:6870:170f:b0:288:18a0:e169 with SMTP id 586e51a60fabf-29051b4d49dmr4184676fac.19.1730058085605;
        Sun, 27 Oct 2024 12:41:25 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-29035da4b9bsm1589189fac.15.2024.10.27.12.41.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Oct 2024 12:41:24 -0700 (PDT)
Message-ID: <776b38c3-1bca-4416-a855-d45b759ec2c2@baylibre.com>
Date: Sun, 27 Oct 2024 14:41:22 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] docs: iio: ad7380: add adaq4370-4 and adaq4380-4
To: Julien Stephan <jstephan@baylibre.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
References: <20241024-ad7380-add-adaq4380-4-support-v3-0-6a29bd0f79da@baylibre.com>
 <20241024-ad7380-add-adaq4380-4-support-v3-4-6a29bd0f79da@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241024-ad7380-add-adaq4380-4-support-v3-4-6a29bd0f79da@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/24/24 3:16 AM, Julien Stephan wrote:
> Adding documentation for adaq4370-4 and adaq4380-4 supported devices. In
> particular, document the reference voltage mechanism and the gain
> parameter that are specific to adaq devices.
> 
> Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> ---
>  Documentation/iio/ad7380.rst | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/iio/ad7380.rst b/Documentation/iio/ad7380.rst
> index 6f70b49b9ef27c1ac32acaefecd1146e5c8bd6cc..ae408ff2fa9c97427a9fef57020fb54203d2d33e 100644
> --- a/Documentation/iio/ad7380.rst
> +++ b/Documentation/iio/ad7380.rst
> @@ -27,6 +27,8 @@ The following chips are supported by this driver:
>  * `AD7386-4 <https://www.analog.com/en/products/ad7386-4.html>`_
>  * `AD7387-4 <https://www.analog.com/en/products/ad7387-4.html>`_
>  * `AD7388-4 <https://www.analog.com/en/products/ad7388-4.html>`_
> +* `ADAQ4370-4 <https://www.analog.com/en/products/adaq4370-4.html>`_
> +* `ADAQ4380-4 <https://www.analog.com/en/products/adaq4380-4.html>`_
>  
>  
>  Supported features
> @@ -47,6 +49,12 @@ ad7380-4
>  ad7380-4 supports only an external reference voltage (2.5V to 3.3V). It must be
>  declared in the device tree as ``refin-supply``.
>  
> +adaq devices
> +~~~~~~~~~~~~
> +
> +adaq4370-4 and adaq4380-4 don't have an external reference, but use a 3V
> +internal reference derived from one of its supplies (``refin-supply``)
> +
>  All other devices from ad738x family
>  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>  
> @@ -121,6 +129,16 @@ Example for AD7386/7/8 (2 channels parts):
>  
>  When enabling sequencer mode, the effective sampling rate is divided by two.
>  
> +
> +Gain (adaq devices only)
> +~~~~~~~~~~~~~~~~~~~~~~~~
> +
> +adaq devices have a pin selectable gain in front of each adc. The appropriate

If we are doing a v4 anyway, it would be nice to use caps for acronyms
like ADAQ and ADC here and elsewhere.

> +gain is selectable from device tree using the ``adi,gain-milli`` property.
> +Refer to the typical connection diagrams section of the datasheet for pin
> +wiring.
> +
> +
>  Unimplemented features
>  ----------------------
>  
> 


