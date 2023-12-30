Return-Path: <devicetree+bounces-28979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C39C82035E
	for <lists+devicetree@lfdr.de>; Sat, 30 Dec 2023 03:42:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FCB728312A
	for <lists+devicetree@lfdr.de>; Sat, 30 Dec 2023 02:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62AF8441A;
	Sat, 30 Dec 2023 02:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="jpTpyxnJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0423D67
	for <devicetree@vger.kernel.org>; Sat, 30 Dec 2023 02:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dabbelt.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3bbd38715f2so1498456b6e.2
        for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 18:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1703904122; x=1704508922; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PkMRDEc3q7i96HgJAw1IRoh+BsMy8VlyiKEtAyjrTsc=;
        b=jpTpyxnJgYDTpq3zuDegrAALR41PYKjF7NHKRtQd8wykqphJE0IU0RMC6U2iXRHCxx
         yuodqZtJKtQXW7SwMLzzbrgAmPQNbffsCI8nWRJt9ZFk8ipV5OrJzRjzyy4D+GDTjVUL
         dKWpJ/of/6ajij9/fKK1oJxKdC3tn6eCgPvLcuUsL+hw7LoRkQIWjZNbLpkpGAQZC+MW
         m+0dUMe1C2WdN9AUb0P3unz2t2DoAS0NLPyvL2S5fOph/XPpx7MOkk4jyvymQrMBGxjc
         2Iub098FfO7PQGh310W3vOAfFlZXaHRRUV5lY77LUXHcG6G60yGMG/9l7kXkW3+WYKrL
         vmRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703904122; x=1704508922;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PkMRDEc3q7i96HgJAw1IRoh+BsMy8VlyiKEtAyjrTsc=;
        b=qrO7ApQiXJFrORecHwjQR1562a0NYsM0p37kljKtm3Rxy7XvXXaCMSqzqZHwtwk3Gu
         /9WHPYrUqHxKgeHS/xl40z+WqWb7x6X962/UfqJdJZKFeyLw8F57BKUnMAu8OjkZ7qb3
         s4PiOE2XZWoW4Q5SOY3QPcRcVlV7GfngWK3xQzRHqdpe/EkgRluI+9BUcPMGEfisLH1T
         FGXDPGDHYKQ/XLKj5cxr2xqphAMkHuIrnaSWKPu+Pl4nQEScEOURsgQr88GR96TPq4wL
         IAzyqiUxmdp6pn5dmT8fGgw7Y0qjRbt1JPk96gvqKlD+VmaWA/Mafu+7tIKdmAojn4rh
         EEaA==
X-Gm-Message-State: AOJu0Yzjl7Bev0ijznAoZO0hG1Q+reX/R0vPYpHyh0ADd5hYXNXzFv0s
	TW/rGg6qIAmQdxMftynr7QgxrisMOQB9bQ==
X-Google-Smtp-Source: AGHT+IE2LtcyOE7VGF7LqxlgOpp/gooJgjcVuO2l8WC7IBsT5j/W/mrEzafOXAobKw1fwRCfOs5KKQ==
X-Received: by 2002:a05:6808:e8c:b0:3bb:edf8:c497 with SMTP id k12-20020a0568080e8c00b003bbedf8c497mr1147353oil.71.1703904121807;
        Fri, 29 Dec 2023 18:42:01 -0800 (PST)
Received: from localhost ([192.184.165.199])
        by smtp.gmail.com with ESMTPSA id c18-20020aca1c12000000b003b3ec15d8ebsm2648397oic.5.2023.12.29.18.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 18:42:01 -0800 (PST)
Date: Fri, 29 Dec 2023 18:42:01 -0800 (PST)
X-Google-Original-Date: Fri, 29 Dec 2023 18:41:57 PST (-0800)
Subject:     Re: [PATCH v7 1/4] riscv: defconfig: Enable mmc and dma drivers for T-Head TH1520
In-Reply-To: <20231129-th1520_mmc_dts-v7-1-c77fc19caa6f@baylibre.com>
CC: Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
  jszhang@kernel.org, guoren@kernel.org, wefu@redhat.com, Conor Dooley <conor@kernel.org>,
  robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, jkridner@beagleboard.org,
  robertcnelson@beagleboard.org, linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
  devicetree@vger.kernel.org, dfustini@baylibre.com
From: Palmer Dabbelt <palmer@dabbelt.com>
To: dfustini@baylibre.com
Message-ID: <mhng-577f4913-06ac-4f80-8793-6336132d503e@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Wed, 29 Nov 2023 17:48:47 PST (-0800), dfustini@baylibre.com wrote:
> Enable the mmc controller driver and dma controller driver needed for
> T-Head TH1520 based boards, like the LicheePi 4A and BeagleV-Ahead, to
> boot from eMMC storage.
>
> Reviewed-by: Guo Ren <guoren@kernel.org>
> Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> ---
>  arch/riscv/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 905881282a7c..e635dc9d1997 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -214,6 +214,7 @@ CONFIG_MMC=y
>  CONFIG_MMC_SDHCI=y
>  CONFIG_MMC_SDHCI_PLTFM=y
>  CONFIG_MMC_SDHCI_CADENCE=y
> +CONFIG_MMC_SDHCI_OF_DWCMSHC=y
>  CONFIG_MMC_SPI=y
>  CONFIG_MMC_DW=y
>  CONFIG_MMC_DW_STARFIVE=y
> @@ -223,6 +224,7 @@ CONFIG_RTC_CLASS=y
>  CONFIG_RTC_DRV_SUN6I=y
>  CONFIG_DMADEVICES=y
>  CONFIG_DMA_SUN6I=m
> +CONFIG_DW_AXI_DMAC=y
>  CONFIG_RZ_DMAC=y
>  CONFIG_VIRTIO_PCI=y
>  CONFIG_VIRTIO_BALLOON=y

Acked-by: Palmer Dabbelt <palmer@rivosinc.com>

in case folks want to keep this with the DTS updates.  Thanks!

