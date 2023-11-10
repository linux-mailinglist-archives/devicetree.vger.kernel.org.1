Return-Path: <devicetree+bounces-14939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDE97E799A
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 07:51:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0D79B20C67
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 06:51:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27E736AB1;
	Fri, 10 Nov 2023 06:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oGgbBHTx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA356AB2
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 06:51:51 +0000 (UTC)
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com [IPv6:2607:f8b0:4864:20::e34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D48837EC3
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 22:51:47 -0800 (PST)
Received: by mail-vs1-xe34.google.com with SMTP id ada2fe7eead31-45db0df090eso811172137.3
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 22:51:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699599107; x=1700203907; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xY9e61NSBd34WKgwLiextVdIl1pEHWCBao7kYEHaYbc=;
        b=oGgbBHTxpxw49pk3hJUteAY9iTMQo47UdihcbQkDRwqMXvgzV7qj1EnI1A+ssu8Lfy
         LGIPS5BDlpH0GiK6RF1+CHx5Nhx81VkVsvu6rthsPERSATqV9sndS086YaHOuCTjD+uz
         p61AA9Z6p0E7fYghHKc9WQE3GYp0qLDKM9YQiSQ9TyM00mZ40mQFJUtO347Xzy3Zb991
         w4+mIio9tGLEDobdLp8dVDLguTOdh3Skjp49j4Zycc/URqdH3o6iFF8iHowceRMR0pXH
         u0oGtano+mauQSI8bn+X6kAC8YJoMsKYM3PEgIjpXd3eFJP1F92BpzXQCB3hwxLv8SQY
         1sRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699599107; x=1700203907;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xY9e61NSBd34WKgwLiextVdIl1pEHWCBao7kYEHaYbc=;
        b=a1KgTCGZXHt6PF33e0RxdAH3wu4iobhJeLYsLULzNdK9aT0dveQBuYcQ7afsM5MAjI
         9yrDI+dIl0p6d4b2fAZFLnXver1WrRJ04b/VLcEF9Mbu8zrLErCuxsmb7DhmUdCYsFHo
         vUlm3N859K+9+8+rz+kIpNfFJ+8Cm1s3PhwXxOPXO7K772XIjd2UdECT2IEs5PgKel9T
         OhGTlIp2/uPnnb7XaIo2VqvuU1CWF/J2Q8jHlXNBT1eRmFCbCL1zZXfza0o614/3Ivwb
         rFGtsLwsQS/kPPHkftcYOp9LRd248qM+LKVPvZapl1MJlh00kUdqBIJxkI/uWKnVKu6j
         LyQg==
X-Gm-Message-State: AOJu0Yzz6J15b+FmDHMAcXuzTvWZ+sJhCv3kf50bVaHYz0ZhTe7ukN1v
	PdDZ0YkdG8wOP6Pmc+l2qnletQEaOIqRo6/oz7BH3A==
X-Google-Smtp-Source: AGHT+IGXmrfa4qbmD8PufQBo8ECvg8/RA13eLrik89guDJz1lWQRgT5GoM06ddfpEcVwZ1Qo931DgQ==
X-Received: by 2002:a17:902:8c92:b0:1ca:8b90:1cbd with SMTP id t18-20020a1709028c9200b001ca8b901cbdmr6854012plo.0.1699594952706;
        Thu, 09 Nov 2023 21:42:32 -0800 (PST)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:2071:4479:98b8:cc69])
        by smtp.gmail.com with ESMTPSA id ix22-20020a170902f81600b001b8a00d4f7asm4498845plb.9.2023.11.09.21.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 21:42:32 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Thu, 09 Nov 2023 21:41:14 -0800
Subject: [PATCH v5 4/7] riscv: defconfig: Enable mmc and dma drivers for
 T-Head TH1520
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231109-th1520-mmc-v5-4-018bd039cf17@baylibre.com>
References: <20231109-th1520-mmc-v5-0-018bd039cf17@baylibre.com>
In-Reply-To: <20231109-th1520-mmc-v5-0-018bd039cf17@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
 Conor Dooley <conor@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Drew Fustini <dfustini@baylibre.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699594943; l=915;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=ht5Rt9iMCRM1t5yThjxoCTbuOVz3OXmRTAYLzzfd3/s=;
 b=81YrMX/6Pup0Mk4t9Mpny542tULxqVs1k+13xNQqBbmGqkaQgZCsQjsJdqcuxcUGHQdm9Sdy0
 DormnbG2KwrClt9J1tjQHZ3FwqQMqAeqmWYK1a5r2HceKW/UQkdU9DC
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


