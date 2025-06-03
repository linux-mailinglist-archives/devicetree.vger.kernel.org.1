Return-Path: <devicetree+bounces-182529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DFDACCAA0
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 17:54:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25FE216A3FB
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 15:54:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4997623C50F;
	Tue,  3 Jun 2025 15:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rSAkDT1f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E19A23BCFA
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 15:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748966059; cv=none; b=DoYljK3VcgMFK0o/X3NOGScf522MPQs3A3zX9jnixAaMz+WyyhVP6W+LN5mW/WkeEqc5dZYxdx5T3Jp1cbzVDypS7ab8grm4oqKpnfBb1l/cW8TqlVtP6t5XYdPZGKS0cGOmgw1xcQn1Dl3zH6TIC1SRzN8WgdVqV+ujvyk4OfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748966059; c=relaxed/simple;
	bh=d8LbqEyst8cvUKr/LsyztWuaAYGUaquy+2asHx15vu4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=issNCctt7WPd6FLX79IxzIf4Y23Zny4MznDKlGQn9qN+1sxc4QG2Qq2zMa7NkkofK38qdJCY9cjDdBxFjSV8RVWFJkDMs7XgVsbi5ygmNZrahW+AZtcY303jx3mUVl6nf9B82Wnxc/wV3Dg8b/IdYoCZnYFnecS+Ee4nbrTj20Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rSAkDT1f; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-407a6c6a6d4so899648b6e.1
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 08:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748966056; x=1749570856; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fx5Rr5jbdiStY9Aqz3LJKXnxg+ihqi3Ek0WW5lhs2ok=;
        b=rSAkDT1fPtjbakyC3VyAsNXUrz1Sg0VmtO8LmfbLqs1KbCuxmFza0kR/RwcN68bO6j
         6JS0IcE+in2zvFxj0CM2hZLCbNrwSFNat/e0CqlBn8cddZam6fG5S78vx0ktM47kzWs2
         +GBGPIQv1mgGMRK7tP9whUDgMk58gy3mhjrIBz4MfR3dQK+P9PXbf73n6T5jejk6QkiI
         xQAk+1GZQdgV3CdiY/3Ou5z1lZIAOVHIbtu0A5flTnM4anqJbWosR60Ikq3rpaoqMKEo
         wYsrDhbOpFlzNMRhvT+oi4AewqPW2Y7gY3WTaSbrzMJ7Ib4eO2a6RH2agMA2QES7oS7d
         zXaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748966056; x=1749570856;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fx5Rr5jbdiStY9Aqz3LJKXnxg+ihqi3Ek0WW5lhs2ok=;
        b=W5D4GJicgl3ZfZZiCcLqduw0+qnBifKszVzecW0vA+2cJm3HwI/9l+b73qKnbzOQNE
         q+jQIA/SwRc4tLaWUcqO4GIyrGujSDlGlloj1S3pcwgLdN+ACkzqrYli4OTec2Xh5S14
         3nDHFAQb2ZjO81bPJEDxUuwZ8Qcs5n/GCxal99AshGI+ThkFpNZcyNHH7E8ZPiVzJwpR
         VGqZPdBjLbxnGVSLVq0C5JXoP94tLOWQ/9I1W5jOUNPPPdrrR8BZO+Q3nTj7GKZmSzGp
         w+Dg82i4TP01YOuOw0uV39s35KTMx3ddFRFtE9umEcWoHlKalOMHwuLR8BDWln4fsj+k
         zHhA==
X-Forwarded-Encrypted: i=1; AJvYcCUWm2/5zNNx2xWPa9kDxb4v48HE16X/rrvtcnw77OgfAXCS30I9Az+8rhjwghMjfKxhIZTQRjjhTVit@vger.kernel.org
X-Gm-Message-State: AOJu0YwYVZbyAAfou5qg5tH2dJGbI8hly9JKdAw5reuG0mi36YPYbkXY
	vdIp+QTGzle7RNLfufhKqP310jWkEuTBUHAXS1nK8/NCd/1fPzJ1K7bUdQsQDTkW9Q8=
X-Gm-Gg: ASbGnct2QwSzgxWTbZIDpYA07BiEOcBY28IzTSh9J6xTi+tKkuCHSqeiA4kmKFaizK4
	r3Rx1GzRvu+TWdFxmC8Q2SeHKiyRFukMf06+I7Uutr1AXYdgYigzPG5P0tAn3eJ+8As/r8jzIE+
	R6oKIKiQnBRyHcB63t5vwKD/g5PcqzVZVBHc6bCOtp3ttUzq5AgeWgzWNr4QGTM4wgzGfOBpWT7
	wM0JHr/fyd909y6KhfE7JaX5wIEk1Ft15CjiXkrzgrJ84VKWEz3/HPHUkE1lhiFBuDH46vKtd48
	NIc6uxuW1tgkYkV3vgOSFKRNoju96djadY854oKqN6HLVs2tlgGqMOorghTp2f/PfXzf6ySqPTp
	sz5zLx0yjFmLvcF+ndWHq9GMCiw==
X-Google-Smtp-Source: AGHT+IFh+M9lz1wYyJZlEaVy+QsNEEdyv6Adf/+TFZtl9p6GJcw+6tYXszpK6tavI0ANelqx6tZv4g==
X-Received: by 2002:a05:6808:1b8d:b0:403:3c95:34d6 with SMTP id 5614622812f47-4067949ec7amr10871846b6e.0.1748966056531;
        Tue, 03 Jun 2025 08:54:16 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:e835:af77:41c:3a1f? ([2600:8803:e7e4:1d00:e835:af77:41c:3a1f])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40678bf36f3sm1866546b6e.7.2025.06.03.08.54.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jun 2025 08:54:15 -0700 (PDT)
Message-ID: <2a94cbb1-a80c-4895-aecf-ddf310bedb53@baylibre.com>
Date: Tue, 3 Jun 2025 10:54:13 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/6] Documentation: ABI: IIO: add new convdelay
 documentation
To: Angelo Dureghello <adureghello@baylibre.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250603-wip-bl-ad7606-calibration-v8-0-2371e7108f32@baylibre.com>
 <20250603-wip-bl-ad7606-calibration-v8-1-2371e7108f32@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250603-wip-bl-ad7606-calibration-v8-1-2371e7108f32@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/3/25 9:36 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Add new IIO "convdelay" documentation.
> 
> The ad7606 implements a phase calibation feature, in nanoseconds.
> Being this a time delay, using the convdelay suffix.
> 
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---
>  Documentation/ABI/testing/sysfs-bus-iio | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
> index ef52c427a015cf47bb9847782e13afbee01e9f31..7e59cbd5acb85fd0909c1d56f9d76a84933d418a 100644
> --- a/Documentation/ABI/testing/sysfs-bus-iio
> +++ b/Documentation/ABI/testing/sysfs-bus-iio
> @@ -559,6 +559,30 @@ Description:
>  		- a small discrete set of values like "0 2 4 6 8"
>  		- a range specified as "[min step max]"
>  
> +What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_convdelay
> +KernelVersion:	6.16
> +Contact:	linux-iio@vger.kernel.org
> +Description:
> +		Delay of start of conversion from common reference point shared
> +		by all channels. Can be writable when used to compensate for
> +		delay variation introduced by external filters feeding a
> +		simultaneous sampling ADC.
> +
> +		E.g., for the ad7606 ADC series, this value is intended as a
> +		configurable time delay in seconds, to correct delay introduced
> +		by an optional external filtering circuit.
> +
> +What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_convdelay_available
> +KernelVersion:	6.16

Forgot to change these to 6.17?

> +Contact:	linux-iio@vger.kernel.org
> +Description:
> +		Available values of convdelay. Maybe expressed as:
> +
> +		- a range specified as "[min step max]"
> +
> +		If shared across all channels, <type>_convdelay_available
> +		is used.
> +
>  What:		/sys/bus/iio/devices/iio:deviceX/in_accel_x_calibscale
>  What:		/sys/bus/iio/devices/iio:deviceX/in_accel_y_calibscale
>  What:		/sys/bus/iio/devices/iio:deviceX/in_accel_z_calibscale
> 


