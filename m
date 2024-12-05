Return-Path: <devicetree+bounces-127726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D989E6173
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 00:40:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 796A816A2FE
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 23:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ED401CEEA0;
	Thu,  5 Dec 2024 23:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LLVXn/J2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5C31CD1FB
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 23:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733442002; cv=none; b=H+/91l+Q6llWyX2GMzq5/aD0mjH6/XBbTWMfZzurs3vU1w8bfzfbbhbMT8w2/vm7kVDrWgS1Jn4nrOaB6P9xwsqP0JbW92TBzsOdNBauMXWOKpw0UEDlVOl/vyNdPFSysqk7S9K+FALVfa7Ej+OMW7xMpxYMAxlYUSVTLxjXAq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733442002; c=relaxed/simple;
	bh=SS+CvjwgmBviiYkG3lhdmjo9XVPZiBnQEjZhknvEuWw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fFqLCsB+3B5pRq+g8S89pHSm+jnVT2fW1oHHu9cgd5V2kNWMEMAxjm4K7v9OJ6hdF/32HgjZm5xuF61KERe7T5oOzc5REMmbzck7er719apY0LAH1Z54kcQ0Qdxk4Qmi4ngLy/JyZs1QXQS0NHH8mazQfQ0dqTVssywi7tfTG7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LLVXn/J2; arc=none smtp.client-ip=209.85.222.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-85b8da19535so300570241.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 15:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733441999; x=1734046799; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oacZmWmcYUh3aS8DM+UCqcN8A1TL7Wl2Fm4tR+M814g=;
        b=LLVXn/J2c8n14jZgLLTWWQsoo9F1FjdaTzUNDYL93bth7i9Z2/T2pOnd+S8hX/F2/Q
         a0mmaCom1uX1y1gUjh39ljUrc0kxtlddzG6ClA51Lz82jpcxCYHeFygiMmV1fSvtgkki
         hTnBiU0MFhyv+zdFXyY+haM3zGZ4Rb8Wyt7VmJbaSRKELfQq/SeGFCgI5mkk3rlGIQN2
         f1ZXBJ5LisPW3KJzcSDuCIw1eC9n3ZG2QSXKejq9gQCSAFtkF6lGHWBkHp2e1ZHH7pty
         aO8jgj7C161UggVVSyEGWyMi6j8/MyNyDNDZs/lvDf1ydgeUa6Lr92BOqIb45CD4HJ51
         0IBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733441999; x=1734046799;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oacZmWmcYUh3aS8DM+UCqcN8A1TL7Wl2Fm4tR+M814g=;
        b=tYcoeZO/wMJlQ07/CRaZbIijMTBPxK+G/89T0lAJZDgb3L92n0tVXoxC8mfvuC8D6/
         wrHbq3TjkHAwE22dwQtIa2kvRUuJ4Zx5IeKHW8KckrVDNhliribjzuoP4+CtEr/KEDEu
         IapvV8gIIFb6Ad5s9eC0BP9uuUP88YUvgMp6j6Hsp6pKzIUufkgkIbN4XrXsbohk2kGu
         1jX1cxXDEns0HWzRGHts+vVoLyCLA4FcSR7zAQYPHblqRVAqe+yWo3a7PTVvSOltWmsE
         MjWJg9DazF6KBmNEjPL/3c9MIH2bUkUzSmArrhxY+7WqVOa0SI/bEWpM3KTj7SPZrNkF
         vgBg==
X-Forwarded-Encrypted: i=1; AJvYcCVjGvCSCw1nzUukLpTWDQ/r6kj78C8et/rDmf1WxW5ny7Y8QySlvIjo3K2T2IMsRVDVBXJjjf4z1q1W@vger.kernel.org
X-Gm-Message-State: AOJu0Yx62Zmf3XSF4A/baPeRObbIGe8ecu2LjWbcAzb5e71i7BUU9olE
	XacKqJpdn2ZW1iMArKn06kHevL3lc2QYzBKhXfI0y1O9yTqAnG4m9aZgcgJ5r/Q=
X-Gm-Gg: ASbGncvGKnosfjmAapaP4dWOwbqE9uNomPXqwagiNFIlto2ia3TeNi/gqj4zYJMiCMp
	mo3KO0s3j4isKIySoqehrYs3RTnby9NU26+nwqhkmbkMzD0oDdcpn5OzrWN90fz2YSfAfye8yVa
	ZwLi2RIsE1brJxCkCRP1gO+YZZ0bpplCbcK/QBR24tMIdSZ/cTlcMoTqaW5CnjOm+Kc5hgQgGN1
	adUApGXhfhKZ1OA/EA4F0zaU6sNA2TKqca3B+EAJG2wvAZCxcYbC8LHshF10UZcWaY+DfxY++Bf
	5GBEgfhF
X-Google-Smtp-Source: AGHT+IHGLFK0NpREIiG2QUT311n7NIrWXQMbIVONL3n7iGYRppYRkj7evZc5Sutsvv1h+Rf5qB58KQ==
X-Received: by 2002:a05:6102:370f:b0:4af:4d2:488a with SMTP id ada2fe7eead31-4afcab63efemr1980371137.24.1733441999270;
        Thu, 05 Dec 2024 15:39:59 -0800 (PST)
Received: from [192.168.1.124] (49.93.157.89.rev.sfr.net. [89.157.93.49])
        by smtp.googlemail.com with ESMTPSA id a1e0cc1a2514c-85c2b9fd799sm316484241.11.2024.12.05.15.39.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 15:39:58 -0800 (PST)
Message-ID: <ce757b8e-4e6c-4ba9-9483-b57e6e230fdf@linaro.org>
Date: Fri, 6 Dec 2024 00:39:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] firmware: add exynos ACPM protocol driver
To: Tudor Ambarus <tudor.ambarus@linaro.org>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com,
 peter.griffin@linaro.org, javierm@redhat.com, tzimmermann@suse.de,
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de
References: <20241205175345.201595-1-tudor.ambarus@linaro.org>
 <20241205175345.201595-3-tudor.ambarus@linaro.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20241205175345.201595-3-tudor.ambarus@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/5/24 18:53, Tudor Ambarus wrote:
> Alive Clock and Power Manager (ACPM) Message Protocol is defined for
> the purpose of communication between the ACPM firmware and masters
> (AP, AOC, ...). ACPM firmware operates on the Active Power Management
> (APM) module that handles overall power activities.
> 
> ACPM and masters regard each other as independent hardware component and
> communicate with each other using mailbox messages and shared memory.
> 
> This protocol library provides the interface for all the client drivers
> making use of the features offered by the APM. Add ACPM protocol support.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
>   drivers/firmware/Kconfig                      |   1 +
>   drivers/firmware/Makefile                     |   1 +
>   drivers/firmware/samsung/Kconfig              |  14 +
>   drivers/firmware/samsung/Makefile             |   4 +
>   drivers/firmware/samsung/exynos-acpm-pmic.c   | 226 +++++
>   drivers/firmware/samsung/exynos-acpm-pmic.h   |  24 +
>   drivers/firmware/samsung/exynos-acpm.c        | 772 ++++++++++++++++++
>   drivers/firmware/samsung/exynos-acpm.h        |  15 +
>   .../linux/soc/samsung/exynos-acpm-protocol.h  |  57 ++
>   9 files changed, 1114 insertions(+)
>   create mode 100644 drivers/firmware/samsung/Kconfig
>   create mode 100644 drivers/firmware/samsung/Makefile
>   create mode 100644 drivers/firmware/samsung/exynos-acpm-pmic.c
>   create mode 100644 drivers/firmware/samsung/exynos-acpm-pmic.h
>   create mode 100644 drivers/firmware/samsung/exynos-acpm.c
>   create mode 100644 drivers/firmware/samsung/exynos-acpm.h
>   create mode 100644 include/linux/soc/samsung/exynos-acpm-protocol.h
> 
> diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
> index 71d8b26c4103..24edb956831b 100644
> --- a/drivers/firmware/Kconfig
> +++ b/drivers/firmware/Kconfig
> @@ -267,6 +267,7 @@ source "drivers/firmware/meson/Kconfig"
>   source "drivers/firmware/microchip/Kconfig"
>   source "drivers/firmware/psci/Kconfig"
>   source "drivers/firmware/qcom/Kconfig"
> +source "drivers/firmware/samsung/Kconfig"
>   source "drivers/firmware/smccc/Kconfig"
>   source "drivers/firmware/tegra/Kconfig"
>   source "drivers/firmware/xilinx/Kconfig"
> diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
> index 7a8d486e718f..91efcc868a05 100644
> --- a/drivers/firmware/Makefile
> +++ b/drivers/firmware/Makefile
> @@ -33,6 +33,7 @@ obj-y				+= efi/
>   obj-y				+= imx/
>   obj-y				+= psci/
>   obj-y				+= qcom/
> +obj-y				+= samsung/
>   obj-y				+= smccc/
>   obj-y				+= tegra/
>   obj-y				+= xilinx/
> diff --git a/drivers/firmware/samsung/Kconfig b/drivers/firmware/samsung/Kconfig
> new file mode 100644
> index 000000000000..eed8cd8a677b
> --- /dev/null
> +++ b/drivers/firmware/samsung/Kconfig
> @@ -0,0 +1,14 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +config EXYNOS_ACPM_PROTOCOL
> +	tristate "Exynos Alive Clock and Power Manager (ACPM) Message Protocol"

Given the importance of this driver where a lot of PM services rely on, 
does it really make sense to allow it as a module ?

Some PM services may be needed very early in the boot process

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

