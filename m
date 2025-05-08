Return-Path: <devicetree+bounces-175068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7119AAFB28
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 15:20:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 464331BC6BF0
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 13:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF15522B590;
	Thu,  8 May 2025 13:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uq8j7UTv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71712225414
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 13:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746710429; cv=none; b=NRgme7yS0S4Ozdv2Tu4W7OHtb5BXg4lDLZ5+lgtpKIRBEeworkZD0AYjrs1HsZGJ6roQZvvokDYemDU3DLXqCrRgtYkTsn/Mwsvr7OHJ6MO7kkSIVj1fMLihgKWt44oJsS8IxliJ8Q6ZavLDxm8/b5qRL3CaGTIKcFbWAQu4UcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746710429; c=relaxed/simple;
	bh=Ggq7sLTVtObPJWu9TR8xbrcUROsW0mIC4OEmuNAJ6Sk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=tulU50RD7CE+iE/f3b3ZOmnpkq44zInkKUqGHdeUo7W/uoNp3A4NeHo0XnBI/9wDWXBEVsEyP9MMNi+LjtKI6tcWoZgGhzMVKiklogi6hsg2burs1RHSPtI7aAOZcNak55Bgq4wH1sflNxRs+yMA8jKhCU8a42ItWZdbSSzgAUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uq8j7UTv; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-736c062b1f5so1041765b3a.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 06:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746710426; x=1747315226; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=jyuniMudFryF3hn/u/aLddug+sED3jw9d54qmOZEBFQ=;
        b=uq8j7UTvwrwVzSLVy0LbYG77QdyXvW2YloFBmRzvtahEdFy8HPMCjhqkTmQsCErfXM
         qxABsYvtURW4R/TEHJIgC/eCdwRe3XRgVvTMUameN8+XbSRtQxtosVohRzVuLeh6F7wQ
         2TGONHlJnSDK5J/MHF7KZ+upMREemjG9eMm31k7UdFRS5X+Xvl2uZtm6QPHLb6unHnZ+
         PgInSXQRJnpEfRFuNOiJeUaUJ0AfH7Uajgsi0FQM5ZHr8dnMv43OYL19XvevoV0+XB/o
         zRpeOn+Qc/tenfW9Vqx5iu5QTLdOIw9OoEUY+5I8QR5iKfyJXVwLwrw4bRI+JRxHEL0v
         hbuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746710426; x=1747315226;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jyuniMudFryF3hn/u/aLddug+sED3jw9d54qmOZEBFQ=;
        b=kDIdAGcxCWOl7zXMumlb/n/hTTxi66Ji0pmj/JlRIYVZ0loqpjCJy0sJiMMqQVErW3
         5vm9cXBGm8/2mM6oWN9O5TIJv31KyP7ki7Yosxcfmv9GV783GPQDv3Nn764hfurh0ht+
         ZPHeyhRIuXNKlKhYjqbVVaT1BxQJF3VF/q+8N2jVuROfNb3Ni7erKRI41KG+s8d/ZEmX
         iKolKPLQBOKl1Cj5rqJsmPRKFOmsAMrUdllMQTl0bZtvIDx7ZkSt8L9Hus7Fo27DliXq
         O3r7dBCZuf3I34NPLsq6i6CmHhfHqkjI9Awj5wzUrQPR770dyKaYm/Bx2w5XepB0Pw9/
         utDg==
X-Forwarded-Encrypted: i=1; AJvYcCWgSNf/cHzZ1N6soHE5k8HUUkJt7pilJ0oGU2gIH8gwaVPboKXpbqM+zFY0pwgEvYqwJj6YBE4al/AE@vger.kernel.org
X-Gm-Message-State: AOJu0YyzEjfjWJ1e4vVxLDYZJDjlg+1XERnznt//1sYUomuc2sZo7Jr3
	HTCQOmrfBe/wMMpUcaBWrvM7IWqdUhBGZDtSqOU+xqhTo15iK+Q2mA6RNjtc25E=
X-Gm-Gg: ASbGncspeSuwBifySGbEqF2V84uf5hU2Xs4MrXWhgShJiI4yYo9cv5+bIBbukNBdAt7
	18JLftEukA5VYTXwH7jbZdePvADWdlcoPPNhgbZ9GvKK1tqyBJ7dyA1HzJAx6/FMz6wq7TX5jES
	MzyhAuzWHYHmJEK4/O02WGAmDLhazpy+RKhV1L/ZsNj4lkp88JYgurhWqCtuRZNJxrUpidK4iCG
	MP9me6Fb3FYndmhZ96F1PilFTCc6f445bylBwLpvS9eGMClDaegEn9psohU4+B1929tZg/nIP/Q
	Q7fFs4IRbLIWSgBS3imuF8fo1Ur+OsZ9rhUUwi4=
X-Google-Smtp-Source: AGHT+IET79Nq5FMlY1YATt34uIy9W6bQc0RASasVjOkYJxKwtGwvC9A4L+o3Stc03w0qdqPEQha4oQ==
X-Received: by 2002:a05:6a20:3d92:b0:1f5:8072:d7f3 with SMTP id adf61e73a8af0-2159b04ebd7mr5425027637.30.1746710425718;
        Thu, 08 May 2025 06:20:25 -0700 (PDT)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-740b0d154b5sm1350253b3a.56.2025.05.08.06.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 06:20:24 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Sukrut Bellary <sbellary@baylibre.com>, Russell King
 <linux@armlinux.org.uk>, Rob Herring <robh@kernel.org>, Tony Lindgren
 <tony@atomide.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nishanth
 Menon <nm@ti.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 soc@lists.linux.dev
Cc: Sukrut Bellary <sbellary@baylibre.com>, Aaro Koskinen
 <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, Roger
 Quadros <rogerq@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Santosh
 Shilimkar <ssantosh@kernel.org>, Bajjuri Praneeth <praneeth@ti.com>,
 Raghavendra Vignesh <vigneshr@ti.com>, Bin Liu <b-liu@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: Re: [PATCH 4/4] ARM: multi_v7_defconfig: Enable am335x PM configs
In-Reply-To: <20250318230042.3138542-5-sbellary@baylibre.com>
References: <20250318230042.3138542-1-sbellary@baylibre.com>
 <20250318230042.3138542-5-sbellary@baylibre.com>
Date: Thu, 08 May 2025 06:20:24 -0700
Message-ID: <7hbjs3tf1j.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Sukrut Bellary <sbellary@baylibre.com> writes:

> Enable Power management related defconfigs for TI AM335x[1].
>
> [1] AM335x TRM - https://www.ti.com/lit/ug/spruh73q/spruh73q.pdf
>
> Signed-off-by: Sukrut Bellary <sbellary@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

Arnd, can you take this via the SoC tree please?

Kevin


> ---
>  arch/arm/configs/multi_v7_defconfig | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index 37e3baa33b67..1d2600b5f975 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -985,6 +985,7 @@ CONFIG_EDAC=y
>  CONFIG_EDAC_LAYERSCAPE=y
>  CONFIG_EDAC_HIGHBANK_MC=y
>  CONFIG_EDAC_HIGHBANK_L2=y
> +CONFIG_RTC_DRV_OMAP=y
>  CONFIG_RTC_CLASS=y
>  CONFIG_RTC_DRV_AC100=y
>  CONFIG_RTC_DRV_AS3722=y
> @@ -1095,6 +1096,7 @@ CONFIG_TEGRA_IOMMU_SMMU=y
>  CONFIG_EXYNOS_IOMMU=y
>  CONFIG_QCOM_IOMMU=y
>  CONFIG_REMOTEPROC=y
> +CONFIG_WKUP_M3_RPROC=m
>  CONFIG_OMAP_REMOTEPROC=m
>  CONFIG_OMAP_REMOTEPROC_WATCHDOG=y
>  CONFIG_KEYSTONE_REMOTEPROC=m
> @@ -1146,6 +1148,8 @@ CONFIG_ARCH_TEGRA_3x_SOC=y
>  CONFIG_ARCH_TEGRA_114_SOC=y
>  CONFIG_ARCH_TEGRA_124_SOC=y
>  CONFIG_SOC_TI=y
> +CONFIG_AMX3_PM=m
> +CONFIG_WKUP_M3_IPC=m
>  CONFIG_KEYSTONE_NAVIGATOR_QMSS=y
>  CONFIG_KEYSTONE_NAVIGATOR_DMA=y
>  CONFIG_RASPBERRYPI_POWER=y
> @@ -1162,6 +1166,7 @@ CONFIG_EXTCON_MAX77693=m
>  CONFIG_EXTCON_MAX8997=m
>  CONFIG_EXTCON_USB_GPIO=y
>  CONFIG_TI_AEMIF=y
> +CONFIG_TI_EMIF_SRAM=m
>  CONFIG_STM32_FMC2_EBI=y
>  CONFIG_EXYNOS5422_DMC=m
>  CONFIG_IIO=y
> -- 
> 2.34.1

