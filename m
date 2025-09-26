Return-Path: <devicetree+bounces-221930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DC8BA428F
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 16:26:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ACA977B9FE7
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 14:23:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47A061E9B19;
	Fri, 26 Sep 2025 14:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="CzTGnpU4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB541A3A80
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 14:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758896404; cv=none; b=TuuoyvugDkEAyN+A/YSP0eiek5JABIum/uKAJ40UupITnKXrnR2gpzMJfdv3awBkasBIeN/nNTc6EiwEQNf5a/T6Gl4it7ap5ATX4okOKMZvmbCBsUXq3ZcG1E9UZJpWNeLSq2iN4xAPmWVWf52mltsRRXTvGHELNV2Dxnz533c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758896404; c=relaxed/simple;
	bh=ARuS5KH/F933Wnax/FjqCl4fc22eqJ2I+ltqgwS3sKo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HF+w3GIwrgaECxJlqPmhNi3v6WKthfeYsDPBzaycfCKkMmQjuXHTfbMmL04ZjWkuUskIsnkkLhTi/+qBL1zmOME+2DdH6B2EYC67ORHVPw+IiGG5mA3zitckyy973uAC8lOQmpZSfJtMKqIEpu54e1hUpvnUlceUOOG1DwcyCDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=CzTGnpU4; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-77f1f29a551so2949432b3a.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1758896402; x=1759501202; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ps8JtDckkfcNbW7faGkRx3OkbwRbBWeAhm9VgsFGC0=;
        b=CzTGnpU4yKMwqBem8PTrSH5CxAdzV65WNmcbkYmengqpD0q0uespcUIEAvB8vaHRif
         3kOmCkBAF8Vg1sUi5NIwRBGu7r317NTPLvvJCjRgpiYk8yKdVJcv4GJgt6W9dq4S8zWL
         7P7lJzHGyv8mnP3XtJ86WT2/OKLB4VL0j8f+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758896402; x=1759501202;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3ps8JtDckkfcNbW7faGkRx3OkbwRbBWeAhm9VgsFGC0=;
        b=JNZNCW6giPBof65gp2fWrnEdXis9c0xYbhlRCBLESgyJ1KdcQ8GqWCVDma12Y619p4
         9FobL7+S0kXf/nM+DOudJR+pp44ml9aC1AgrQm6AKoGFuw2axoZD7ZklS9iIyaiECfeD
         EkRbPacyGRZbzQSg5X2NnAwolyGCGq5eRCt2Cz6I+mSWYnF/Gt//SondzXKA0o5XLmH6
         Ue9LBQyGCTWPX11rOBhZUQ9nG48Cb2N3fkRLzXrvds2OKqj/6StNenc/5BAxUZ37cYIZ
         fikHt2NmTjTEuuwCeV27MaAwOc3to94TksHArvToSfFNEvsnlRaYKj2x1L5wVd6gxHQc
         ibIQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/7lXV0GBvPfyVVzjKZuEoOqk58sA/A/nul2MmSufA09ER2VNq/loOXQOW0e3Ktk+Ihs6/ggwu8hrd@vger.kernel.org
X-Gm-Message-State: AOJu0YzrBt5at5H+02lyYamhSxYdVBlVv8vrWON+TB/vqQIPjryJmpHu
	C5czwJWKudws115w9UxfDeay6/Hdhpg9PbvuZ+O5svQgLsJXV8LE4U4FF9AOyrtn6+w=
X-Gm-Gg: ASbGncs85aTLnJFm7pB4t8UWUx4KsFGzs8Y2fOjmED3IfHLnzb2wgNx6KfDWtwI/Rsn
	ucp1FNJ2LONHknR+HwpPJAvYRCL4c3hZAJz0ZGKdrP5gWnLNKWu1/61+E5yNhe/RU1h0xc6gZrH
	uHwdmaoi/+RCzhatZJfWhzg9NsyeYgq9aaT8rFcFki4lN/y9m8CKYrwrqUl1RN881T8dhuAU7sz
	MiHf1w6cavIeRzgJNu2Xnum5ZJcHz7xdcTDTVVPamQkoRMQDZni+jVL85qNQe7QHpobr1NzlA1B
	nCxscTaQc9HMYiyeP3iapvrBeXX8iNXU2KHy9TXjBkhXobvxHveK8x5eG5NaXkh9ASvfQvVZiTt
	N6wb5NNW6bexsothG4ejWirQkAbvD96R4qamDjToDKxcdfzleTXQZ1jAx
X-Google-Smtp-Source: AGHT+IHWGorcKfFgmNv40cfOGQ6cE5tvRV4xJh8wItLftbLmZ0tLF0ee1ykpyKG1zlkZ8Lcob1S43A==
X-Received: by 2002:a05:6a00:4b44:b0:77c:6621:6168 with SMTP id d2e1a72fcca58-780fcf080bcmr6965285b3a.30.1758896401633;
        Fri, 26 Sep 2025 07:20:01 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238ca1esm4624845b3a.11.2025.09.26.07.19.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 07:20:01 -0700 (PDT)
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
To: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	adityak@vayavyalabs.com,
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Subject: [PATCH v5 4/4] Add SPAcc Kconfig and Makefile
Date: Fri, 26 Sep 2025 19:49:04 +0530
Message-Id: <20250926141904.38919-5-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250926141904.38919-1-pavitrakumarm@vayavyalabs.com>
References: <20250926141904.38919-1-pavitrakumarm@vayavyalabs.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Makefile and Kconfig for SPAcc driver.

Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
---
 drivers/crypto/Kconfig            |   1 +
 drivers/crypto/Makefile           |   1 +
 drivers/crypto/dwc-spacc/Kconfig  | 114 ++++++++++++++++++++++++++++++
 drivers/crypto/dwc-spacc/Makefile |  16 +++++
 4 files changed, 132 insertions(+)
 create mode 100644 drivers/crypto/dwc-spacc/Kconfig
 create mode 100644 drivers/crypto/dwc-spacc/Makefile

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 657035cfe940..ada04311c370 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -780,6 +780,7 @@ config CRYPTO_DEV_BCM_SPU
 	  ahash, and aead algorithms with the kernel cryptographic API.
 
 source "drivers/crypto/stm32/Kconfig"
+source "drivers/crypto/dwc-spacc/Kconfig"
 
 config CRYPTO_DEV_SAFEXCEL
 	tristate "Inside Secure's SafeXcel cryptographic engine driver"
diff --git a/drivers/crypto/Makefile b/drivers/crypto/Makefile
index 170e10b18f9b..e0d5e1301232 100644
--- a/drivers/crypto/Makefile
+++ b/drivers/crypto/Makefile
@@ -43,6 +43,7 @@ obj-$(CONFIG_CRYPTO_DEV_BCM_SPU) += bcm/
 obj-y += inside-secure/
 obj-$(CONFIG_CRYPTO_DEV_ARTPEC6) += axis/
 obj-y += xilinx/
+obj-y += dwc-spacc/
 obj-y += hisilicon/
 obj-$(CONFIG_CRYPTO_DEV_AMLOGIC_GXL) += amlogic/
 obj-y += intel/
diff --git a/drivers/crypto/dwc-spacc/Kconfig b/drivers/crypto/dwc-spacc/Kconfig
new file mode 100644
index 000000000000..4eb2eef56053
--- /dev/null
+++ b/drivers/crypto/dwc-spacc/Kconfig
@@ -0,0 +1,114 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config CRYPTO_DEV_SPACC
+	tristate "Support for dw_spacc Security Protocol Accelerator"
+	depends on HAS_DMA
+	default n
+
+	help
+	  This enables support for SPAcc Hardware Accelerator.
+
+config CRYPTO_DEV_SPACC_CIPHER
+	bool "Enable CIPHER functionality"
+	depends on CRYPTO_DEV_SPACC
+	default y
+	select CRYPTO_SKCIPHER
+	select CRYPTO_LIB_DES
+	select CRYPTO_AES
+	select CRYPTO_CBC
+	select CRYPTO_ECB
+	select CRYPTO_CTR
+	select CRYPTO_XTS
+	select CRYPTO_CTS
+	select CRYPTO_OFB
+	select CRYPTO_CFB
+	select CRYPTO_SM4_GENERIC
+	select CRYPTO_CHACHA20
+
+	help
+	  Say y to enable Cipher functionality of SPAcc.
+
+config CRYPTO_DEV_SPACC_HASH
+	bool "Enable HASH functionality"
+	depends on CRYPTO_DEV_SPACC
+	default y
+	select CRYPTO_HASH
+	select CRYPTO_SHA1
+	select CRYPTO_MD5
+	select CRYPTO_SHA256
+	select CRYPTO_SHA512
+	select CRYPTO_HMAC
+	select CRYPTO_SM3
+	select CRYPTO_CMAC
+	select CRYPTO_MICHAEL_MIC
+	select CRYPTO_XCBC
+	select CRYPTO_AES
+	select CRYPTO_SM4_GENERIC
+
+	help
+	  Say y to enable Hash functionality of SPAcc.
+
+config CRYPTO_DEV_SPACC_AEAD
+	bool "Enable AEAD functionality"
+	depends on CRYPTO_DEV_SPACC
+	default y
+	select CRYPTO_AEAD
+	select CRYPTO_AUTHENC
+	select CRYPTO_AES
+	select CRYPTO_SM4_GENERIC
+	select CRYPTO_CHACHAPOLY1305
+	select CRYPTO_GCM
+	select CRYPTO_CCM
+
+	help
+	  Say y to enable AEAD functionality of SPAcc.
+
+config CRYPTO_DEV_SPACC_AUTODETECT
+	bool "Enable Autodetect functionality"
+	depends on CRYPTO_DEV_SPACC
+	default y
+	help
+	  Say y to enable Autodetect functionality of SPAcc.
+
+config CRYPTO_DEV_SPACC_DEBUG_TRACE_IO
+	bool "Enable Trace MMIO reads/writes stats"
+	depends on CRYPTO_DEV_SPACC
+	default n
+	help
+	  Say y to enable Trace MMIO reads/writes stats.
+	  To Debug and trace IO register read/write oprations.
+
+config CRYPTO_DEV_SPACC_DEBUG_TRACE_DDT
+	bool "Enable Trace DDT entries stats"
+	default n
+	depends on CRYPTO_DEV_SPACC
+	help
+	  Say y to enable Enable DDT entry stats.
+	  To Debug and trace DDT opration
+
+config CRYPTO_DEV_SPACC_SECURE_MODE
+	bool "Enable Spacc secure mode stats"
+	default n
+	depends on CRYPTO_DEV_SPACC
+	help
+	  Say y to enable SPAcc secure modes stats.
+
+config CRYPTO_DEV_SPACC_PRIORITY
+	int "VSPACC priority value"
+	depends on CRYPTO_DEV_SPACC
+	range 0 15
+	default 1
+	help
+	  Default arbitration priority weight for this Virtual SPAcc instance.
+	  Hardware resets this to 1. Higher values means higher priority.
+
+config CRYPTO_DEV_SPACC_INTERNAL_COUNTER
+	int "SPAcc internal counter value"
+	depends on CRYPTO_DEV_SPACC
+	range 100000 1048575
+	default 100000
+	help
+	  This value configures a hardware watchdog counter in the SPAcc engine.
+	  The counter starts ticking when a completed cryptographic job is
+	  sitting in the STATUS FIFO. If the job remains unprocessed for the
+	  configured duration, an interrupt is triggered to ensure it is serviced.
diff --git a/drivers/crypto/dwc-spacc/Makefile b/drivers/crypto/dwc-spacc/Makefile
new file mode 100644
index 000000000000..bf46c8e13a31
--- /dev/null
+++ b/drivers/crypto/dwc-spacc/Makefile
@@ -0,0 +1,16 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_CRYPTO_DEV_SPACC) += snps-spacc.o
+snps-spacc-objs = spacc_hal.o spacc_core.o \
+spacc_manager.o spacc_interrupt.o spacc_device.o
+
+ifeq ($(CONFIG_CRYPTO_DEV_SPACC_HASH),y)
+snps-spacc-objs += spacc_ahash.o
+endif
+
+ifeq ($(CONFIG_CRYPTO_DEV_SPACC_CIPHER),y)
+snps-spacc-objs += spacc_skcipher.o
+endif
+
+ifeq ($(CONFIG_CRYPTO_DEV_SPACC_AEAD),y)
+snps-spacc-objs += spacc_aead.o
+endif
-- 
2.25.1


