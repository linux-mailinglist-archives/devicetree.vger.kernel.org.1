Return-Path: <devicetree+bounces-185398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 68833AD7825
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 18:26:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B49281888502
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 16:23:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02B41299A9C;
	Thu, 12 Jun 2025 16:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GkdNJFj9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0065B28B7FC
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 16:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749745385; cv=none; b=PWyWbe4Ilu4N2Sa2Sn52FlxMZgfDrhGqSeVpoPxE4fxhNkq8oVXLqRIKXMKcR3X7s5zKdJ+bvvZcJeV2YzOeXH47MjnElRJUsK4Fb4fitylbc0N9fmj39LBzNKmiVHHFesF6KQSLIyMAQfRtL0pXdQqPFphLoRgQibXowbTRG+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749745385; c=relaxed/simple;
	bh=y4WFL2SbvgeV88Dn3pvioaJZuCsarQOzHwGhQ3uefK8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G9Jvw8SBo24CVSC6WCTeJ8mG4f9ZyV/kZkLCv0jAta3bg7diEdZIXknA19Q3nNowwpTGrhUAdG5rL/g/Na8Z9xnOwvKWNkRrrNhyn0FfvL7E5vvwkHfsbZI14yoC5O8cTzqiUyYTUr7IgzHAr0wiTILQLWZaHIrvRANjznjW9DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GkdNJFj9; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-72c173211feso373383a34.1
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 09:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749745383; x=1750350183; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oYwm5KPWdXCHcqPHzjdSfYHQXy0MsNGLcDPBqq6h364=;
        b=GkdNJFj9bv6/o+n4GP+aLJ6HpkHTVWFSr0x00mj2+Tqn1ojLKNp/itqxkBxNtSB0TD
         znkS2SImxvPCG1H8/3xJ8MWDMkqrASWn6eTnRRDLoq3naJId4LGIzdNdettKI97BYdJo
         RK29eeUI6pgknaVjgi3JAX+htiQW5sXqMVDrIdo9JGBC1aXNY7owkyEXYVysCccRrP3O
         Q8Vkd7z0LHGvSmAjBl3Hg3+LkY2r5e9lZ2D/pKIP9T4rebW101B+YKMURFm2Y37mvgWX
         aFJo9b4wZYDp9+4dFia2rYLD3vzjrQTgwx5KaGIWqmP1/f2zgM0IaW1OVhMDG/zNPDvX
         +Ogg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749745383; x=1750350183;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oYwm5KPWdXCHcqPHzjdSfYHQXy0MsNGLcDPBqq6h364=;
        b=GMfSCIEnxN9dPRyHoh8wfgi0atNXc4wrMQmjeWl7vLEnrEeWrK3kNVU87Qr0RQ99Gy
         vaGPtNQ33VoPzlmBKunBdmuX77BSbrKm2xSrVAOaTLRAoj7QbBxKlFsB/KiKPpm5oKs2
         EIPhJVeItsZ94zWiU6HhlRLSsJsp6hLQ/kYWgVG7wK9UL3wk6rxyzhPGRPT7emVHRch0
         1vtl2FRJ2kM18pwJ49OApmsBO91hFiTW8omUD4IgfeX6HMV2UYFbzv827hWjNnb5YVkX
         to2PUsHl36PDE4sxJXsvnITpvPUx5KiEIxqN0kJttMGF7BRl8nA5Vsp8ZUtoeR3dwa4X
         WGjw==
X-Forwarded-Encrypted: i=1; AJvYcCUkxVaUSgWg6qVCq41BWX7uB0l23G0XNZQhZUpDg9HA2D1qOZgaphdHHN6LYg17qSdTJw3xZkVzqYPI@vger.kernel.org
X-Gm-Message-State: AOJu0YyEJXaGdKxUXKZ+CYwShRXKopvazAmQN0162LZgTEE1zncCX86o
	E/zHAs3+qqRlc0xzHNIwJ0SF17FS0+WIoWXCPE+p+kRpP35Gd2ZUycr4AZVUaf4VaXk=
X-Gm-Gg: ASbGncvCHuB3tmdMZq6ho/+cfeofm96eBHRYWoy6ukwnL/OrvxJ3FGJ4U4LFHtAp5PH
	a6nb5mmFDBlnTEwgVceqx9l6A28lt4lgqICO2tghfIhNlc5P4DFMTiB4DkjH1KlR4SOLL8Whog+
	3QlQLznYoneea0rnmSjWaKq06blz1WXmK9g0/FaXS4i3mHnsZ2/SgP0wZ0IaXvub0lvEZXCjpRj
	YmKHuXM18wLuNVbjjCKNc4jqcLDv8eLRFSbeX3V6TPy1TIRZDMjCT5AV+pK2okYqUgk+7xLmzoZ
	Oqa45p2IFsE9e60Zvn2/j4mklaMnhXBZgc+cxwmzoKnHQIdGeAo0YaThKHKqn5tM5HdYMm/vCqk
	AyHjVK7S4KexLZZ1WmlM63TQGyBZxgqKZ4VObbhY=
X-Google-Smtp-Source: AGHT+IFTwehji9nh5NvvDQuKE+AZnMrQrDaqD349Jh5toAGXoSpDzkbqFYAG6hYvMWXToSQmqhzzoA==
X-Received: by 2002:a05:6830:8088:b0:727:3957:8522 with SMTP id 46e09a7af769-73a13ab0ce3mr2638607a34.20.1749745382919;
        Thu, 12 Jun 2025 09:23:02 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:4753:719f:673f:547c? ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73a16a2673dsm320209a34.5.2025.06.12.09.23.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 09:23:02 -0700 (PDT)
Message-ID: <9a3731cc-ea6f-45fa-a3e7-c2a33d44ecef@baylibre.com>
Date: Thu, 12 Jun 2025 11:23:01 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] iio: Add IIO_DENSITY channel type
To: surajsonawane0215@gmail.com, Jonathan Cameron <jic23@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250612100758.13241-1-surajsonawane0215@gmail.com>
 <20250612100758.13241-2-surajsonawane0215@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250612100758.13241-2-surajsonawane0215@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 6/12/25 5:07 AM, surajsonawane0215@gmail.com wrote:
> From: Suraj Sonawane <surajsonawane0215@gmail.com>
> 
> Add IIO_DENSITY channel type for particulate matter sensors,
> with base units of grams per cubic meter (g/m³). This is needed
> for optical dust sensors like the Sharp GP2Y1010AU0F that measure
> airborne particle concentration rather than raw voltage.
> 
> Signed-off-by: Suraj Sonawane <surajsonawane0215@gmail.com>
> ---
> V2: Initial version introducing IIO_DENSITY channel type
> 
>  Documentation/ABI/testing/sysfs-bus-iio | 8 ++++++++
>  include/uapi/linux/iio/types.h          | 1 +
>  2 files changed, 9 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
> index 190bfcc1e..9b1b538ce 100644
> --- a/Documentation/ABI/testing/sysfs-bus-iio
> +++ b/Documentation/ABI/testing/sysfs-bus-iio
> @@ -2383,3 +2383,11 @@ Description:
>  		Value representing the user's attention to the system expressed
>  		in units as percentage. This usually means if the user is
>  		looking at the screen or not.
> +
> +What:		/sys/bus/iio/devices/iio:deviceX/in_density_raw
> +KernelVersion:	6.15
> +Contact:	linux-iio@vger.kernel.org
> +Description:
> +		Raw reading from an optical dust sensor.
> +		This value is proportional to dust density in air,

I don't see why density would be specific to dust. We could make
this description more generic.

> +		with base units of g/m^3.
> +
> diff --git a/include/uapi/linux/iio/types.h b/include/uapi/linux/iio/types.h
> index 3eb0821af..e7d09ec0b 100644
> --- a/include/uapi/linux/iio/types.h
> +++ b/include/uapi/linux/iio/types.h
> @@ -37,6 +37,7 @@ enum iio_chan_type {
>  	IIO_DISTANCE,
>  	IIO_VELOCITY,
>  	IIO_CONCENTRATION,
> +	IIO_DENSITY,

This is part of the userspace ABI, new items have to be added
to the end. We can't change the meaning of the numeric values.

>  	IIO_RESISTANCE,
>  	IIO_PH,
>  	IIO_UVINDEX,

There are also a couple more places where this new channel needs
be added as well. See [1] for an example (although density probably
doesn't need to be added to known events).

[1]: https://lore.kernel.org/all/20241101-hpd-v3-3-e9c80b7c7164@chromium.org/

