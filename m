Return-Path: <devicetree+bounces-11080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B007D4163
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 23:07:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3735B1C2094A
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 21:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03791219EF;
	Mon, 23 Oct 2023 21:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jlXyELR9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA250219FB
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 21:07:15 +0000 (UTC)
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E34229D
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:07:14 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-6b1ef786b7fso3596710b3a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698095234; x=1698700034; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2BmxulcCPkSniZYdQWfk9xRMqLpea0NZ1oqzxL0OgN4=;
        b=jlXyELR9jgzRpXR7tr+rqL2BVT+B5feUwSeFj0JJDy8+wTu4hCncP4GEpM6mKdfe50
         oMnNeooHd+kNnhlLgGB2V10OBP4ejPhs7qYlD2z9cJ8p1h87knGxRRdEji5x/szNqM2+
         Om1WnJqArUkkziYfX6Qumky6IllxP64LaSmAgX/Exzdiu6Qhk4M79dJgblpUdWPSfXYO
         dv87FG7XtMd4bxLv1sEubWZDkvhg83+9UO0ndmBT8YSEBhnPX8wwCvVpc90Vkeo1PqwT
         ENV+6ycvyWn97xIT//nNy56OvMEwk4Z5vBJZLzncC+mCPR+UdVKAy7qZvSoq65Lw3KXT
         Z6tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698095234; x=1698700034;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2BmxulcCPkSniZYdQWfk9xRMqLpea0NZ1oqzxL0OgN4=;
        b=ZrREImV1x09iyfhLpJtnu+aqRPSwp1DnvullAz+tax6bcUk5iQYkQcRW4fVJ/5iS9m
         2MU6GMBuNZUoLcyj4PwzKY7n2FeekKwP/AI7osG5d6tTlSg3Xd2sZxsOO5lSCIyv5ONX
         HF2ZIMsvKa68oBWDrwAN/aS64mNubjahMByOFeMvQueuznYnal7pcRy0LM488I4/6ZVS
         /reuD1lLf+riupRkUPhrAZ+A7ukkE3Xl6eYlm+2+XRQQT2q/Pi6bmF/Okro4JincMiyq
         GaFAuNdg5pf4V5nhuEtDNhg99fr5Sb+hBCCqNIyCgP56QaI8qmRT8nnkumx94MmcuUDL
         IO5A==
X-Gm-Message-State: AOJu0YzLMQVo982+GFsw2+I/zrz3+Npjt+uEwTaAqOSsRj3NWBna4SiQ
	jC4rfm18EAVYaccLwpM423lwrQ==
X-Google-Smtp-Source: AGHT+IHVfWbZSHoSGCqE2+JO5fDD9h81EB2GrEP950fIqALNsZch0ZqvHM2SXLcTN8QPzMSrUNWfCQ==
X-Received: by 2002:a05:6a00:b8e:b0:6be:5e64:babb with SMTP id g14-20020a056a000b8e00b006be5e64babbmr12277394pfj.18.1698095234354;
        Mon, 23 Oct 2023 14:07:14 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:b9a0:8714:407c:4146])
        by smtp.gmail.com with ESMTPSA id k28-20020aa79d1c000000b006bde2480806sm6573066pfp.47.2023.10.23.14.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 14:07:14 -0700 (PDT)
From: Drew Fustini <dfustini@baylibre.com>
Date: Mon, 23 Oct 2023 14:07:05 -0700
Subject: [PATCH v3 4/7] riscv: defconfig: Enable mmc and dma drivers for
 T-Head TH1520
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-th1520-mmc-v3-4-abc5e7491166@baylibre.com>
References: <20231023-th1520-mmc-v3-0-abc5e7491166@baylibre.com>
In-Reply-To: <20231023-th1520-mmc-v3-0-abc5e7491166@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Conor Dooley <conor@kernel.org>
Cc: Robert Nelson <robertcnelson@beagleboard.org>, 
 Jason Kridner <jkridner@beagleboard.org>, Xi Ruoyao <xry111@xry111.site>, 
 Han Gao <gaohan@iscas.ac.cn>, Icenowy Zheng <uwu@icenowy.me>, 
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Drew Fustini <dfustini@baylibre.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698095224; l=873;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=1b6E7IcYPcGUX3CsWI9slySNkcpgVBWsbFODn/9h1s4=;
 b=yBinOOYM0Z6WV9s+1nnMazkJd6maQjOcaB27HcLTZpb2dPFv7Idu8SXkKrMs6/zTjogZrUJX2
 t1MO5v7c2qeBbcg/nGTT45Uw9LovoK5z/l9tIKfTy+r+8fe1zZmnrTv
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Enable the mmc controller driver and dma controller driver needed for
T-Head TH1520 based boards, like the LicheePi 4A and BeagleV-Ahead, to
boot from eMMC storage.

Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/riscv/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index ab86ec3b9eab..c5a8583236d0 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -168,12 +168,14 @@ CONFIG_MMC=y
 CONFIG_MMC_SDHCI=y
 CONFIG_MMC_SDHCI_PLTFM=y
 CONFIG_MMC_SDHCI_CADENCE=y
+CONFIG_MMC_SDHCI_OF_DWCMSHC=y
 CONFIG_MMC_SPI=y
 CONFIG_MMC_SUNXI=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_SUN6I=y
 CONFIG_DMADEVICES=y
 CONFIG_DMA_SUN6I=m
+CONFIG_DW_AXI_DMAC=y
 CONFIG_VIRTIO_PCI=y
 CONFIG_VIRTIO_BALLOON=y
 CONFIG_VIRTIO_INPUT=y

-- 
2.34.1


