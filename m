Return-Path: <devicetree+bounces-22165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 08177806B53
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 11:09:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B83B828176F
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 10:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A6D428E0E;
	Wed,  6 Dec 2023 10:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="DwjNPhfZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6C31FA
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 02:09:02 -0800 (PST)
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E199A40DAF
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 10:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701857340;
	bh=AqWoFNYysK0tdV0YeJun1QToBYa0Z8FAZWlnxm20ym0=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=DwjNPhfZjZKQJ+pkntTst/oUdOJNFj/v5hkG3IaDEMxg5WZoxj4DPbpxnZUPIWnsR
	 05Yde7hc9lOlRToLx2H9nF+XXLJVlf8HD0G6bjmq3bSO6uh3L9Fu3woVSie3yCo7Fb
	 uiUYFLxyjFD/t9pLvVoUs9c1pQdyPwtMNWzFDWMXpNNyxuCKa80lw80ZnZlAk/2XlA
	 hbicQ5ZqcXB6AVFWc60TnWxH51pnlAl93YSAOn63JucRvbGjIZb12zRw632hOPRczx
	 ZWbnQVEUhsIXEA43mzHw+dRnmZ6OZthy3qeJEnXeRluPk0iqHrR05gzPGAmPaYCS/E
	 GQnEWYOgj4AhQ==
Received: by mail-lf1-f72.google.com with SMTP id 2adb3069b0e04-50bf273aa74so2863496e87.2
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 02:09:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701857340; x=1702462140;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AqWoFNYysK0tdV0YeJun1QToBYa0Z8FAZWlnxm20ym0=;
        b=ZvmkA4gCUh01fh2aRyrlO70W4aGf87K69X6mLTYd0KH+B4nZ7c6Rcl57QtjwCnVc2d
         Io4+T5UMv0m1ZceuT3Qleg3guVsyPGCDAGM7RnF7bWE0LLOQDInbvx/0a+ld9qIjlcKG
         AqOykl3fm4aNu/diHqRfIjsc+J+SUHZqRjlhxwzwEYnK31xBaL5fqTOhXdC0Krwy/1+n
         eFUbg8KHqvj+U9ZA2gPHgyvlraOv8IeoB7Q6SWXeq5gqkrmlZLc5SIlAlUbpH8YPwSw5
         vNBqo2cQ9UXP0cCGnTiSQwfe3u9d9Kt/32U2V+AXBp8zpAAg0BcXMxxHXepubfmaz5Lb
         KzlQ==
X-Gm-Message-State: AOJu0YxNKZgj6itcBE3b9d6EFXy7+FCEwBQclr9GddT4/yiDB4uwnvZh
	r7ZADprDDX/jyYtPyLGwrx1YFeYTHgaNC7TMIjece4EYXRz9VaUKxn49TBlIUX6Y3jMXTcS7oCf
	ObHeEIXQMx3JfE7RElzF6XpIV0LHtiohCkLhQgLw/jIFZn6trFqf+2CU=
X-Received: by 2002:a05:6512:5d7:b0:50b:f32c:4d with SMTP id o23-20020a05651205d700b0050bf32c004dmr387799lfo.136.1701857339924;
        Wed, 06 Dec 2023 02:08:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEdJQnx21lgo677Y/w22hAazVC3Yypb1Mi9jGIFZ5ofssNYc7Abs2AMBwvoktWnU2ZF6MV9GexmQoAcnQyWfbI=
X-Received: by 2002:a05:6512:5d7:b0:50b:f32c:4d with SMTP id
 o23-20020a05651205d700b0050bf32c004dmr387775lfo.136.1701857339589; Wed, 06
 Dec 2023 02:08:59 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 6 Dec 2023 04:08:57 -0600
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231206-th1520_mmc_dts-v8-1-69220e373e8f@baylibre.com>
References: <20231206-th1520_mmc_dts-v8-0-69220e373e8f@baylibre.com> <20231206-th1520_mmc_dts-v8-1-69220e373e8f@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 6 Dec 2023 04:08:57 -0600
Message-ID: <CAJM55Z_sG2CFZo_MmeTCVz43rRBi9cbjajprWM8MspMZuF9tEg@mail.gmail.com>
Subject: Re: [PATCH v8 1/4] riscv: defconfig: Enable mmc and dma drivers for
 T-Head TH1520
To: Drew Fustini <dfustini@baylibre.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Jason Kridner <jkridner@beagleboard.org>, Robert Nelson <robertcnelson@beagleboard.org>, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Drew Fustini wrote:
> Enable the mmc controller driver and dma controller driver needed for
> T-Head TH1520 based boards, like the LicheePi 4A and BeagleV-Ahead, to
> boot from eMMC storage.
>
> Reviewed-by: Guo Ren <guoren@kernel.org>
> Signed-off-by: Drew Fustini <dfustini@baylibre.com>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

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
>
> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

