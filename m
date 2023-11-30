Return-Path: <devicetree+bounces-20235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A03717FE664
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 02:49:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 57BF51F20D4B
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 01:49:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B727979EC;
	Thu, 30 Nov 2023 01:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UUT8xRU1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D1B11A5
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 17:49:13 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1cf8c462766so4739415ad.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 17:49:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701308953; x=1701913753; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zUhuNFsiAvrHYnZLi2Em140Y4QPJessaIPRDZmEdsMw=;
        b=UUT8xRU1/h3OfozHgDK9/fLnnLIan24y38vlqRqgN5hGBT2MJLnX1EGZi/A5AE58aM
         Jj7IDF+jqXt3yEQh6MexLL74COkFUTGq//78TqAE1nhNzKBULwdC7EZUwC1EAaZVlKHy
         lBBBrRmjaDuQihlFU/RYuAklCrYqNK3zw/jqZEKSLYpN6tvzTypLiu6/V9qMFM52DnYI
         d3gpWM60Jde1i3vx6wTykSAprMDlClGrv12IoVMta2VpTuZC+DXvBDIUMceL/2tylSac
         Xx2TMBS67OkknBZSX/SMTvdW/dXDn+uN50r4itdNnPMEHHaJdYF37bk1vEgz8mqKT+54
         lcpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701308953; x=1701913753;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zUhuNFsiAvrHYnZLi2Em140Y4QPJessaIPRDZmEdsMw=;
        b=B2aogJ+P5BzhA+or+KeM7ttGyBfXyZ7vfbIsuPpPLG9TYnwZMU+nYm2PdG7a1++Dts
         94JvIyVJcsPlVUKrCCn4eHGK6uRoIAJ6SN+iUhxX48I69VlHlXertJLAl9f7E07pr+W3
         8vF8BGAYsnjbWv8vso1YMYYpKEKYeE7N2Wo410pTvV4CLYLjNxwJltou/Wb4CNyzrIKv
         MsEOaoiJWQWAwWPAC+0jjQFQWxnEe0JGez+MEvt5uu2pNHosWg+ijEVVSbOHNg7aycYO
         E+gpmpJUJcZhfrHdNDXMxThjug1tgt/I4vkTDr6g4E6QBOYUGkqzFGgY5JHVZSZx9azB
         O3rA==
X-Gm-Message-State: AOJu0Ywxvd6bFhxIQ5SKzCjy8CkbAcFeXSj994qKEuHiRs1HdvSMgOaU
	wlISaMgAHMG3KaIC1hZ3Qx/enQ==
X-Google-Smtp-Source: AGHT+IFrYiRFrGzs3Y1CBEPL2phpj1QNKQPDTXXYUtfO5eBxcLlNdgmRNSs2XIEy08Ji+Bq43Zrniw==
X-Received: by 2002:a17:903:246:b0:1cf:b29d:3e8e with SMTP id j6-20020a170903024600b001cfb29d3e8emr16912003plh.58.1701308952800;
        Wed, 29 Nov 2023 17:49:12 -0800 (PST)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:9707:1e8c:3166:6a23])
        by smtp.gmail.com with ESMTPSA id bc3-20020a170902930300b001d00b0bd306sm24455plb.251.2023.11.29.17.49.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 17:49:12 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Wed, 29 Nov 2023 17:48:47 -0800
Subject: [PATCH v7 1/4] riscv: defconfig: Enable mmc and dma drivers for
 T-Head TH1520
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231129-th1520_mmc_dts-v7-1-c77fc19caa6f@baylibre.com>
References: <20231129-th1520_mmc_dts-v7-0-c77fc19caa6f@baylibre.com>
In-Reply-To: <20231129-th1520_mmc_dts-v7-0-c77fc19caa6f@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701308949; l=951;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=4RIHUzQaxou3jWGQo/iOBjqUj+fsmX35ctdJCieIZQA=;
 b=lABD+i37ZsVjKTem2rwlrtlpGSvWvZfxV4ATEPFLVk0KhDOrnCghqvXJAuoDLcgASHkByc7EJ
 piiI2bt8FWGCRfYuwkatOQAxcEt9VJHtEoGTUvCKvmAswq+uFD2jxKc
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


