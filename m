Return-Path: <devicetree+bounces-255717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF03CD26BA9
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:47:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2E0DF3030297
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 729163D3321;
	Thu, 15 Jan 2026 17:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="UK3xKy3Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D5713D331A
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 17:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768498049; cv=none; b=HT6TvVddDQOFwrEuQKtbN5OFSO8SNNFSu7fcpR8do/gQlpuLIk+BvFH9rtzGOCNJ5WkPQWRXQg9NPDAgwZHw9YNhwzA7fKe1KSekyrtlm1S6dosD+J8XCAyc2o9y3UIPcQaGkTYcaPSL08Q9tff9wb74+8iU0ota0BQtSZ0V12Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768498049; c=relaxed/simple;
	bh=eds14Z2/MZCL1+QgLM0PyXXkbXwDNewiolnCBTfarg4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gwao0Zv5uD29ZNAvxK6fPTrSRZVTqR7WPVIItAipYvT446Aqz3XQd5PgO5GAqD/6ZcVEEJsSACoA9QggXj0y43VD2uFR4zOZzhjT6g1tbzG9P5pfup4vdv+K5VdhEsxRFez1y4ws1sTVWoVHv/9NsXBuG8OKhipnYc44FUqm7cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=UK3xKy3Y; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-8c537b9fcbfso120023285a.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:27:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768498046; x=1769102846; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=42fAL/1UEBk2EFpKCupqsTCz/+HBIO5aB7bXsjRGPhg=;
        b=UK3xKy3YqIfYCzehga9XZQQETqu9wk2VyguIVWykxjM9Vb4M5vXFOc1JJIIY43JMM+
         uz14FGXFLeB3Te8pEq4A4C4LIIQkQ+E6xQAl4gn6etrV1ivUKk9aQMUHZ+hzNv8TWGGC
         YLJUYfas65midkXOnA9m16AGQgO/lxGZeoNIfdLZGStb6+S4Ir6SfrMYe2HvjwF9d0JI
         +dPuJWJOQaoL14RZ7fnFs94Izjx9i6ncR5WEnXw4WVa1wlH772aSVK6RRRLGUW34sf0q
         zPYO4ymUtwWexR5bOJ75ZTU4BJg4Tl/DZ0hc54Qu9j7yCtBsvaG41n/3kfF/hyZu1Afw
         ++sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768498046; x=1769102846;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=42fAL/1UEBk2EFpKCupqsTCz/+HBIO5aB7bXsjRGPhg=;
        b=UPxOBeKwDsr5OMPCNsXtmwdw02bwd4X9JFl+C7NxLbi+HMxeJc38bRIrxpnE9ZCX97
         XzvcqMu5kHJ+tFkEkqlCXz1VZQAiH0xx307PuGHJjYY7GHcNhyfoimcgUEMj3J1Yis2t
         rLHz01qMZw8lL+mYt8J5mbLT58SH9k+u7vI5to6Fu2JhaGH5q7TjI0UWNvDsCYwHxQct
         coF0spr9rvAMontBFHeYntihoAWEOH2lWxV9fMQtGci9n71nPYgjmZLo9PJ5gjHgCXeA
         YEB1aockAAcarwh2C4pt1vFvjD++SEMnFzZbvLKh8VeP+IVQDhPi6me9GzuwCpBAhd1U
         GiJA==
X-Forwarded-Encrypted: i=1; AJvYcCUxEJLtkeq2fSu9XWUS9J76YbVD9BrwD+aXuR5YkyGHPjZY2meHIBIUm9O8mHIdBJajf0Ej1s3qLBjp@vger.kernel.org
X-Gm-Message-State: AOJu0Yync5nC60J4cPnUglCHphACosDNcZOCkxztDaS8ucFzKfYG0XpH
	MwwwVSUM/Xu1q1Tn0Shbf7X0O1BMbjeGPk7kti7Utg0FZvSRASE+GIked5pfcXYwTH0=
X-Gm-Gg: AY/fxX6LNU1vgW4/dgKCbu3zPt7e1qlM4DWQSP0FzAqaOXt/DIs6FYIgmKOxKcTrrwl
	+ZsLniG9hPxp8smT2t8wGZuglhoyP6122qCWTdaPN0M1Hra9C5+i9h6LUcfyn9dNmGKHcXrNM/g
	Lo5vWoINWvlcINnmrqHM4seO0L+SW7p5umSIMAQnumJsg84nAyC59w3U14a7//GlM2cg1p+/d12
	f7PGW6kILiJaeA/H7GK1dew1AqfYZuf1sXP65cdQEQpJWOmTIrmwJIIn4UDQiabyFyiyMkaJg+h
	Ga+TN5fO4RAZJm5sjIqY6vbW+PCldZLbr1tb3k7AEqdlFKqS/Lb6OuEc1f/h/Cfqm5Zbfx562M+
	/tq4+Y3UcSxLnMFNYUV7gXn9ij2rl2dL7ExzgDxBcuIv2aF9iRg6famoMvJW+LUIkj68hu5Gjq5
	4hvQS0Rhrs16WZ/c2Y+Ef1onEUYVyn6UJa+6Rd0Xk1OQLRMxSxFRfT
X-Received: by 2002:a05:620a:489a:b0:8c5:32a0:3421 with SMTP id af79cd13be357-8c589b97a57mr523819285a.16.1768498046417;
        Thu, 15 Jan 2026 09:27:26 -0800 (PST)
Received: from [172.22.22.234] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c530a9e5d1sm452354985a.18.2026.01.15.09.27.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 09:27:26 -0800 (PST)
Message-ID: <f5a35fdc-9245-4be6-83a3-c1bfe86d30c9@riscstar.com>
Date: Thu, 15 Jan 2026 11:27:25 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] reset: Create subdirectory for SpacemiT drivers
To: Guodong Xu <guodong@riscstar.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>,
 Haylen Chu <heylenay@4d2.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
References: <20260108-k3-reset-v2-0-457df235efe9@riscstar.com>
 <20260108-k3-reset-v2-2-457df235efe9@riscstar.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20260108-k3-reset-v2-2-457df235efe9@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/8/26 8:22 AM, Guodong Xu wrote:
> Create a dedicated subdirectory for SpacemiT reset drivers to allow
> for better organization as support for more SoCs is added.
> 
> Move the existing K1 reset driver into this new directory and rename
> it to reset-spacemit-k1.c.
> 
> Rename the Kconfig symbol to RESET_SPACEMIT_K1 and update its default
> from ARCH_SPACEMIT to SPACEMIT_K1_CCU. The reset driver depends on the
> clock driver to register reset devices as an auxiliary device, so the
> default should reflect this dependency.
> 
> Also sort the drivers/reset/Kconfig entries alphabetically.
> 
> Signed-off-by: Guodong Xu <guodong@riscstar.com>

At first I thought this was too many things for one patch, but
they're all pretty simple so I guess it's OK.

This looks good.

Reviewed-by: Alex Elder <elder@riscstar.com>

> ---
> v2: No change.
> ---
>   drivers/reset/Kconfig                                      | 12 ++----------
>   drivers/reset/Makefile                                     |  2 +-
>   drivers/reset/spacemit/Kconfig                             | 14 ++++++++++++++
>   drivers/reset/spacemit/Makefile                            |  3 +++
>   .../{reset-spacemit.c => spacemit/reset-spacemit-k1.c}     |  0
>   5 files changed, 20 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index 6e5d6deffa7d367040b0b380b78ce02d775a3a63..b110f0fa7bb13eff63e1939e50a926cd0106db3f 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -299,15 +299,6 @@ config RESET_SOCFPGA
>   	  This enables the reset driver for the SoCFPGA ARMv7 platforms. This
>   	  driver gets initialized early during platform init calls.
>   
> -config RESET_SPACEMIT
> -	tristate "SpacemiT reset driver"
> -	depends on ARCH_SPACEMIT || COMPILE_TEST
> -	select AUXILIARY_BUS
> -	default ARCH_SPACEMIT
> -	help
> -	  This enables the reset controller driver for SpacemiT SoCs,
> -	  including the K1.
> -
>   config RESET_SUNPLUS
>   	bool "Sunplus SoCs Reset Driver" if COMPILE_TEST
>   	default ARCH_SUNPLUS
> @@ -406,9 +397,10 @@ config RESET_ZYNQMP
>   	  This enables the reset controller driver for Xilinx ZynqMP SoCs.
>   
>   source "drivers/reset/amlogic/Kconfig"
> +source "drivers/reset/hisilicon/Kconfig"
> +source "drivers/reset/spacemit/Kconfig"
>   source "drivers/reset/starfive/Kconfig"
>   source "drivers/reset/sti/Kconfig"
> -source "drivers/reset/hisilicon/Kconfig"
>   source "drivers/reset/tegra/Kconfig"
>   
>   endif
> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> index 9c3e484dfd81a4f7b2f156a6226d5fa233600f9f..fc0cc99f8514cac161af59389ba1cbd5490209c8 100644
> --- a/drivers/reset/Makefile
> +++ b/drivers/reset/Makefile
> @@ -2,6 +2,7 @@
>   obj-y += core.o
>   obj-y += amlogic/
>   obj-y += hisilicon/
> +obj-y += spacemit/
>   obj-y += starfive/
>   obj-y += sti/
>   obj-y += tegra/
> @@ -38,7 +39,6 @@ obj-$(CONFIG_RESET_RZV2H_USB2PHY) += reset-rzv2h-usb2phy.o
>   obj-$(CONFIG_RESET_SCMI) += reset-scmi.o
>   obj-$(CONFIG_RESET_SIMPLE) += reset-simple.o
>   obj-$(CONFIG_RESET_SOCFPGA) += reset-socfpga.o
> -obj-$(CONFIG_RESET_SPACEMIT) += reset-spacemit.o
>   obj-$(CONFIG_RESET_SUNPLUS) += reset-sunplus.o
>   obj-$(CONFIG_RESET_SUNXI) += reset-sunxi.o
>   obj-$(CONFIG_RESET_TH1520) += reset-th1520.o
> diff --git a/drivers/reset/spacemit/Kconfig b/drivers/reset/spacemit/Kconfig
> new file mode 100644
> index 0000000000000000000000000000000000000000..552884e8b72afeb05cdb9b6565ad8e7fd32f990b
> --- /dev/null
> +++ b/drivers/reset/spacemit/Kconfig
> @@ -0,0 +1,14 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +config RESET_SPACEMIT_K1
> +	tristate "SpacemiT K1 reset driver"
> +	depends on ARCH_SPACEMIT || COMPILE_TEST
> +	depends on SPACEMIT_K1_CCU
> +	select AUXILIARY_BUS
> +	default SPACEMIT_K1_CCU
> +	help
> +	  Support for reset controller in SpacemiT K1 SoC.
> +	  This driver works with the SpacemiT K1 clock controller
> +	  unit (CCU) driver to provide reset control functionality
> +	  for various peripherals and subsystems in the SoC.
> +
> diff --git a/drivers/reset/spacemit/Makefile b/drivers/reset/spacemit/Makefile
> new file mode 100644
> index 0000000000000000000000000000000000000000..de7e358c74fd7b0fac3ec2c18d985331af64fcbb
> --- /dev/null
> +++ b/drivers/reset/spacemit/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +obj-$(CONFIG_RESET_SPACEMIT_K1)		+= reset-spacemit-k1.o
> +

Didn't git shout at you for having a blank line at the end of this file?

> diff --git a/drivers/reset/reset-spacemit.c b/drivers/reset/spacemit/reset-spacemit-k1.c
> similarity index 100%
> rename from drivers/reset/reset-spacemit.c
> rename to drivers/reset/spacemit/reset-spacemit-k1.c
> 


