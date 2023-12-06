Return-Path: <devicetree+bounces-22111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF99A80691F
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 09:09:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B9C0282206
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 08:09:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F24A18C05;
	Wed,  6 Dec 2023 08:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Io9eTDwx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACE421B6
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 00:09:45 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1d048c171d6so46882725ad.1
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 00:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701850185; x=1702454985; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zUhuNFsiAvrHYnZLi2Em140Y4QPJessaIPRDZmEdsMw=;
        b=Io9eTDwxeQPqsLt96Rz6xCqdjG870CiP4zW502sefFMqFwzjoFSGXrGFUiV3w8jzoC
         bPiNPWwJGuJPV5rwblnY/6CiQour5bQGbZrXJ8eOFbRJucpb26xyUfpGqaPITFQ4OAh6
         i1BrpgP55mDz8OpsOlXyM+fKe4BXzukRC18FKWPPuRFsMyqcCMG67FWAi+CE8nY9xosg
         oAe49GChMVc9tt5H6xyjBgaMu4KSM1s7xmLtZRhTtK4s+QB8v0Bhdu/9gWvbNq7wMuWm
         7VEVenFSKDLZn2snvgdTmYA9co2UUXpP+tfINSm8oDJV0lErH/L5bcg2HIMZ9ha66VAs
         6eww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701850185; x=1702454985;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zUhuNFsiAvrHYnZLi2Em140Y4QPJessaIPRDZmEdsMw=;
        b=f86BLyg0ShLvYeI+jvNLkmnEdE6s45kD3KPErFe91xlLjW5EC1WCPYKqCU1CI5sg3+
         O+7Rsg6F1ZsH1zOL591vUlRjK+F3v7Qs5RaMJYNEFILZjaSi+FTg1dxzJPEvi+2rOawV
         GpNf+BE+jt+1Bq07ZC7zctUAVzO+GdqQZFFxXm0FdR/9TUF6bMfXrZt5+YaV1X72bq/s
         e6mA6oY2GOSV6+5T8N8ytc4qgaYeZ2RqzRS0HpdpR3C03xZCPyUflrSdxxAHe4fg+MII
         zErL/mzOPBcuVwx/JrjT40E7GfYG+wtXrUl4+M3jszczxqRbl26/bi6KkgAooOIf0Gk7
         RuRA==
X-Gm-Message-State: AOJu0YzoGxZn4f6y/crgqhn+BE3/pTbbhMlAOxjOACmdt8HckuBNWuPm
	enKCv3u5nUJfUtU9Joqj/yWi7A==
X-Google-Smtp-Source: AGHT+IH3gRYGjosEd0BiJj75NNhlV088XtZ8mMy8bZQeahdEBG8P85BdfI6y2nZrTFPSVoonaAxNwA==
X-Received: by 2002:a17:902:b08e:b0:1d0:cd9e:424b with SMTP id p14-20020a170902b08e00b001d0cd9e424bmr475933plr.43.1701850185075;
        Wed, 06 Dec 2023 00:09:45 -0800 (PST)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:92e9:8fb4:700:680])
        by smtp.gmail.com with ESMTPSA id bd11-20020a170902830b00b001d0d312bc2asm1208668plb.193.2023.12.06.00.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 00:09:44 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Wed, 06 Dec 2023 00:09:21 -0800
Subject: [PATCH v8 1/4] riscv: defconfig: Enable mmc and dma drivers for
 T-Head TH1520
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231206-th1520_mmc_dts-v8-1-69220e373e8f@baylibre.com>
References: <20231206-th1520_mmc_dts-v8-0-69220e373e8f@baylibre.com>
In-Reply-To: <20231206-th1520_mmc_dts-v8-0-69220e373e8f@baylibre.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Jason Kridner <jkridner@beagleboard.org>, 
 Robert Nelson <robertcnelson@beagleboard.org>, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Drew Fustini <dfustini@baylibre.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701850181; l=951;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=4RIHUzQaxou3jWGQo/iOBjqUj+fsmX35ctdJCieIZQA=;
 b=MY1Zn/vpteELgknAAqVIXREnspLxXc/K9fvkAmxIH0O5NBcwu6+SJNZDx/iNZIPHhcMKHzFZn
 HlK6cjYNyhFADzUsGzTvSSr8g8A+4qXhyxs+w65zE8Zyoc9DoL/xiiI
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Enable the mmc controller driver and dma controller driver needed for
T-Head TH1520 based boards, like the LicheePi 4A and BeagleV-Ahead, to
boot from eMMC storage.

Reviewed-by: Guo Ren <guoren@kernel.org>
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/riscv/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 905881282a7c..e635dc9d1997 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -214,6 +214,7 @@ CONFIG_MMC=y
 CONFIG_MMC_SDHCI=y
 CONFIG_MMC_SDHCI_PLTFM=y
 CONFIG_MMC_SDHCI_CADENCE=y
+CONFIG_MMC_SDHCI_OF_DWCMSHC=y
 CONFIG_MMC_SPI=y
 CONFIG_MMC_DW=y
 CONFIG_MMC_DW_STARFIVE=y
@@ -223,6 +224,7 @@ CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_SUN6I=y
 CONFIG_DMADEVICES=y
 CONFIG_DMA_SUN6I=m
+CONFIG_DW_AXI_DMAC=y
 CONFIG_RZ_DMAC=y
 CONFIG_VIRTIO_PCI=y
 CONFIG_VIRTIO_BALLOON=y

-- 
2.34.1


