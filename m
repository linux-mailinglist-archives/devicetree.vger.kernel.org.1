Return-Path: <devicetree+bounces-203504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 77321B219DB
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 02:37:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5DF087AEEC6
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 00:36:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD3342D59E3;
	Tue, 12 Aug 2025 00:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="TsGzF7YV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8242586CE
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 00:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754959064; cv=none; b=Kkd81N/rOYF2atUzBRpVmUx8u6pGkzs7O7AAwo9r7b8GfZgxVhWMTma5ZoIeBHNKaNHLRSo7etNKhnEKRHoqO7C8EowdqVGQiDZmwxXim/FeJWVNpyRPBUwcv+T9BC5A5DT42djZpD+Y8UByDucWF4jZqfoFUlWzZDWv5toYMnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754959064; c=relaxed/simple;
	bh=MM7amlMlymZ6itBYJO4K7FlQlWOV9Hf4f/LDG05WvS8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=d6MoMEuJ2CF0BEaYViWVsAnVZWftSy2JOGeTKYCCsvj1Qufgya/TrAHBd9gk21sVhvpFmNPjhIVIRMvvwwRhcJIpycat4Pi8fcJ81Pe/UkHX7SOg34Xj1zG1wQ7672FJJV9mIu84bKLGK+zazqDGSqvUTtTaCCNebZ93HrDzKdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=TsGzF7YV; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-61b4b90fb87so2327618eaf.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 17:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754959060; x=1755563860; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qij29Dwz/tFkYWESkoLoLc09dn5e79Z0zwgkLbVcarc=;
        b=TsGzF7YVAuW8sL9l39Kzqdd13bM6XCMe+SxKb3aR8bFAOA/POAkBqapXVbU6bkuVti
         acOqEwq7XOeUR9DACuUxEWFLjV/O685/SaJIc6+7FpIC5iQscn1Xx24NkyuKnwpxtKsm
         3udz/8mtDu+90ncA4EWKvvU8rJxFn1og79lfKiX4fKnVqdgBhJVCbvxgLl8EOiDE3mrR
         ximygKtVkhdAv3qcpIML56h5ltkiqnqXYaESSbvE7tKjl0FIcIrLnn4j+PsBnrXfxJ9x
         x0Cl6NQy+BfUVet/yofiqHG8DJMtradg1Ad0tsQGEOl2uHxei31+/Glc7839xMRe8/ZJ
         PWWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754959060; x=1755563860;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qij29Dwz/tFkYWESkoLoLc09dn5e79Z0zwgkLbVcarc=;
        b=gHegJXL+u2w0vtKFEITM2EivOQKgq43PKcj3/edycSsN0TdDxrcUfrdYOTk51fOMLH
         VLnLmub+xasxQ9ZyqLF6waWxdpzRWdNZDy8N5VzMLSGAJbKN4cF7OOiNrdAmt7GLmly4
         aKRTvIz8x1UAEz/xqXcFL3dlB2sTw5CsSvm/xsqf1dQWRkTONaFgKqtJOWAtia0U5aRZ
         aXsoEXeA/hv2Vw0xl5EVxB0oq2mgbw4XDoFlcBzl9be0AyxIU9ycn+th0Ui63SYUuvf8
         9VXoEPeabgzifkFiuzyejJYht8u9jQ8WezqIqKm2KesWYXRUS0N7VMB96b9rJG4weq8A
         LcYw==
X-Forwarded-Encrypted: i=1; AJvYcCXmG7KzlvBJAIWcYzBVCTIJoAUxrSLNg4MOYQVgPKDfdHFaKQEzrnrcT0j/FIRdZxyzewAgiub1F+Fe@vger.kernel.org
X-Gm-Message-State: AOJu0YwGK79m9z/b7uceQ9WGfin/W9mn3AI5Ly6WbCHlqJ7IAcV3is1b
	jiEY74RDt7RDTxrZsE1XfDkUwkScq2P29dPNYtqH+9b+hZKvr+ZaucVn/a3MpwXHBsm3erOsr1j
	Drecw
X-Gm-Gg: ASbGncuKasRMheKYWrezraQ6/owr7jwX3Tv/7z/e1n6ZPci8U4SVBoIs/7rdn47Abjs
	Z3qhXvz7suDXqVg92cMTjXx5leofPQFukRG/ElhO7yW2Aqs4JolOGftqm18zewKA5NugDok1zzQ
	28ccuE5gvLPBYbGbOjCBrbqwztm8YuONaqR0XmgYSGJtdm4KfqGRrD88pAF3+uy8u6cScwrPTWK
	LMmShJwAN+tITxHsNQkh7Uw9eVUWJ/Kh81gSd5i5oUInObJIALQD4wkQv8czEHRcUAiarg4gFkF
	8tjFeEhFJ+lcxeukHkt1LOcWtsiuBnynzYGyTNu7MF2V99yg/MWFwiO0J5iIrBc68h8rwoB2cmR
	5bpwSTnfcjV8XLz+rrz17IHvL62D0ALfIv7F85Zgd1o4fOKNpiU8/Md/P+EyOAX+rvYa0swjlQw
	8=
X-Google-Smtp-Source: AGHT+IGakl/eXVN/0VvRKWuNy816VmFzFbnxikB++De4HoaGdaaXnZwngXs2yzJOw8EAkR7KH4BssA==
X-Received: by 2002:a05:6820:2209:b0:619:932b:3dc0 with SMTP id 006d021491bc7-61bb5b4aac2mr1230648eaf.3.1754959060262;
        Mon, 11 Aug 2025 17:37:40 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:4a4f:fe55:51b4:b5ba? ([2600:8803:e7e4:1d00:4a4f:fe55:51b4:b5ba])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-61b7cac4d37sm1229026eaf.30.2025.08.11.17.37.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 17:37:39 -0700 (PDT)
Message-ID: <64e64124-112d-4942-8ca4-290cabcfd9dd@baylibre.com>
Date: Mon, 11 Aug 2025 19:37:39 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] iio: add power and energy measurement modifiers
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250808141020.4384-1-antoniu.miclaus@analog.com>
 <20250808141020.4384-2-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250808141020.4384-2-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/8/25 9:10 AM, Antoniu Miclaus wrote:
> Add new IIO modifiers to support power and energy measurement devices:
> 
> Power modifiers:
> - IIO_MOD_ACTIVE: Real power consumed by the load
> - IIO_MOD_REACTIVE: Power that oscillates between source and load
> - IIO_MOD_APPARENT: Magnitude of complex power
> - IIO_MOD_FUND_REACTIVE: Reactive power at fundamental frequency
> - IIO_MOD_FACTOR: Power factor (ratio of active to apparent power)
> 
> Signal quality modifiers:
> - IIO_MOD_RMS: Root Mean Square value
> 
> These modifiers enable proper representation of power measurement
> devices like energy meters and power analyzers.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> changes in v3:
>  - remove accumulated energy modifiers
>  - rename power_factor to powerfactor for consistency
>  Documentation/ABI/testing/sysfs-bus-iio | 11 +++++++++++
>  drivers/iio/industrialio-core.c         |  5 +++++
>  include/linux/iio/types.h               |  1 +
>  include/uapi/linux/iio/types.h          |  4 ++++
>  4 files changed, 21 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
> index 2fb2cea4b192..28f51e4cc367 100644
> --- a/Documentation/ABI/testing/sysfs-bus-iio
> +++ b/Documentation/ABI/testing/sysfs-bus-iio
> @@ -167,7 +167,12 @@ Description:
>  		is required is a consistent labeling.  Units after application
>  		of scale and offset are millivolts.
>  
> +What:		/sys/bus/iio/devices/iio:deviceX/in_altvoltageY_rms_raw

This looks out of place. There is no existing in_altvoltage_raw, so we need
to start a new section.

> +
>  What:		/sys/bus/iio/devices/iio:deviceX/in_powerY_raw
> +What:		/sys/bus/iio/devices/iio:deviceX/in_powerY_active_raw
> +What:		/sys/bus/iio/devices/iio:deviceX/in_powerY_reactive_raw
> +What:		/sys/bus/iio/devices/iio:deviceX/in_powerY_apparent_raw
>  KernelVersion:	4.5
>  Contact:	linux-iio@vger.kernel.org
>  Description:
> @@ -176,6 +181,8 @@ Description:
>  		unique to allow association with event codes. Units after
>  		application of scale and offset are milliwatts.
>  
> +What:		/sys/bus/iio/devices/iio:deviceX/in_powerY_powerfactor

This one also needs a new section with Description: etc.

> +
>  What:		/sys/bus/iio/devices/iio:deviceX/in_capacitanceY_raw
>  KernelVersion:	3.2
>  Contact:	linux-iio@vger.kernel.org
> @@ -1569,6 +1576,9 @@ Description:
>  
>  What:		/sys/.../iio:deviceX/in_energy_input
>  What:		/sys/.../iio:deviceX/in_energy_raw
> +What:		/sys/.../iio:deviceX/in_energyY_active_raw
> +What:		/sys/.../iio:deviceX/in_energyY_reactive_raw
> +What:		/sys/.../iio:deviceX/in_energyY_apparent_raw
>  KernelVersion:	4.0
>  Contact:	linux-iio@vger.kernel.org
>  Description:
> @@ -1692,6 +1702,7 @@ Description:
>  
>  What:		/sys/bus/iio/devices/iio:deviceX/in_currentY_raw
>  What:		/sys/bus/iio/devices/iio:deviceX/in_currentY_supply_raw
> +What:		/sys/bus/iio/devices/iio:deviceX/in_currentY_rms_raw

Shouldn't this be in_altcurrentY_rms_raw? in_currentY_raw is DC current, not AC.
And we will likely need IIO_ALTCURRENT to go with it.

>  KernelVersion:	3.17
>  Contact:	linux-iio@vger.kernel.org
>  Description:

