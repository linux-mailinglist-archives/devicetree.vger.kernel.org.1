Return-Path: <devicetree+bounces-222360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E2ABA849E
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 09:45:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7395317610F
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 07:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9D7A2C033C;
	Mon, 29 Sep 2025 07:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="cSLuAtth"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7B202C0F96
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 07:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759131868; cv=none; b=Yzjue86F4RVsVc6p1hWR4myDT105v/+RyiW6DPLykjJ2y+gwWYx7VivPyRzkxBSEx9fV3GYTgju5Q3J9GBlaJcbT44ZElhBRTTBIH1OFgJSM0hyXWRe1+d1vgVyMmYBOd7b92pEm6L+RCb+Rrz7P+qmo/73LPy4ZSoZkgB1df10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759131868; c=relaxed/simple;
	bh=aFzi4qxJ7rQHCA8ko/DkWYKE6oWKyST/QbF/RY7wiNo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uQp53GhRKgWeg1/ia11XhY5DpzYHYSVKyVXAKfnKhEEvPlqBFUyNSZ6vFBAdeREJvBpfv4VIQrSZfY09xqC06Y5PKuJs1jnBCoRN0scb75glEw6AUSxSfBGuP3ckduchxCi1BpH9FwNdKCwT2RRws4Ys9RoqPix7B+/5jd3vjHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=cSLuAtth; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-27eed7bdfeeso38057875ad.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 00:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1759131865; x=1759736665; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5y/BDQo5bgkRnqVMmNG7pEhS6NIpKO/OpfTCmrBefHs=;
        b=cSLuAtthEvqDOOjTxExFXLoMFd+t2j/INGJ+Ocqv/EfmYNwomVxtmVTvdcZEeE0wSi
         1N7ArRkvla3kGcf7FZ45qnWSOu0ZQmebCWFitSIdAGxETdjxRdnpDw7YMpeu7Xv5SZ9X
         7W0t27IgnCO+aXxCKOkcE8uyohHQmLzDY1hys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759131865; x=1759736665;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5y/BDQo5bgkRnqVMmNG7pEhS6NIpKO/OpfTCmrBefHs=;
        b=kWZK8tEQaRAJ3L7WdzFQwn+MsHWcculd2YLKcv+EgYhgBfDnq5pLTLCguH4s1MkAp9
         iHcL+tszee58S1pnKoPa9W2FBoPiUJAWWh/JUgSUs4C9Zuk8t3qe9w9wDsADSmr9jwxM
         ohXrtTk9YJS7P0V422pHxxYzfnkhEVhlOGRldWPhnczJ/W+sS4xD0RjMBGIreCLxti/T
         9EkTldUocQzlRdI0z3pSrlVsjenosAJtb/6lNW3zbqrS7B/TQ7vh3AwOA0xdiMGQYKpB
         RNqA0XkGbySz94CWXQTRKq/s+J9xg6LmASbfvKuQ2dg9CxJ28qGpPfaGNEQcf/8G7w5f
         Jqww==
X-Forwarded-Encrypted: i=1; AJvYcCWGMveWf4v2MhG/3gR50rbJhQyNt0xcqUXATUBcM9awP4lpp4mLW6acvqXz8EQps4RJK7m3zIXDOoG6@vger.kernel.org
X-Gm-Message-State: AOJu0YzfOtLhxZXuYCrIFqM6a8NsebhlEbaNFrGaQ3yvWBX6CRatq55J
	PtxVjYDcnss0Voup6qjoNhJVeUauHnRqPgM8pYO31ke1oiy+WX7VXh2HiHHG48gOrbs=
X-Gm-Gg: ASbGncuvTQSSRN5YC8zcC2miKaKTu8YsXu4lHckOWo2h/p7pHXkcybs55YGfw81tV5v
	fWx17UW8bNbwsfNHh4aOWCNSBjiwIsURZZ9OSaMF3iSoiTVEKP+qUXzaZVpF8SqlzQxmJGpzUpQ
	xxCrnj+4U+CqOybdZowpGZBKIP9FNFz3JVT9eqJTIUlg9uy0Ny1twwG+MfPwfxyiqHVjPO5MYwK
	HB1GIUjlj3lNa/46okIADGE4NA0PNIxI/AzK8c8uls4oF9araixjjj29zdHIgwDT02ADw4SJt61
	ZFK+XUPJcIYjR7G5tMOu16fJZrUgt4+DcnY2ReJlpcQ/Ggh99Om5L8Rq5dlyxurbZWxHwhmIHMB
	vJPlta2yFbSHtmryic9KRR4xD2Y5s+Lkmi/fZiyJM103sFEcFBKbB6l6B
X-Google-Smtp-Source: AGHT+IEDdXtz5qjT/GbVC2bSEbaweaSIC51I+exSyhQsqO8wXjylseRoO6Bbj4eZSqZG/Dc28Q2KUQ==
X-Received: by 2002:a17:902:ce01:b0:267:c1ae:8f04 with SMTP id d9443c01a7336-27ed700e02bmr142895605ad.20.1759131865012;
        Mon, 29 Sep 2025 00:44:25 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed69bc273sm121341105ad.124.2025.09.29.00.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 00:44:24 -0700 (PDT)
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
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH v6 4/4] Add SPAcc Kconfig and Makefile
Date: Mon, 29 Sep 2025 13:13:34 +0530
Message-Id: <20250929074334.118413-5-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250929074334.118413-1-pavitrakumarm@vayavyalabs.com>
References: <20250929074334.118413-1-pavitrakumarm@vayavyalabs.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Makefile and Kconfig for SPAcc driver.

Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202509271802.8KQP38Ht-lkp@intel.com/
Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
---
 drivers/crypto/Kconfig            |  1 +
 drivers/crypto/Makefile           |  1 +
 drivers/crypto/dwc-spacc/Kconfig  | 80 +++++++++++++++++++++++++++++++
 drivers/crypto/dwc-spacc/Makefile |  8 ++++
 4 files changed, 90 insertions(+)
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
index 000000000000..736b332c9c94
--- /dev/null
+++ b/drivers/crypto/dwc-spacc/Kconfig
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config CRYPTO_DEV_SPACC
+	tristate "Support for dwc_spacc Security Protocol Accelerator"
+	depends on HAS_DMA
+	default n
+
+	help
+	  This enables support for SPAcc Hardware Accelerator.
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
+	select CRYPTO_ENGINE
+
+	help
+	  Say y to enable Hash functionality of SPAcc.
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
index 000000000000..45d0166dfc8f
--- /dev/null
+++ b/drivers/crypto/dwc-spacc/Makefile
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_CRYPTO_DEV_SPACC) += snps-spacc.o
+snps-spacc-objs = spacc_hal.o spacc_core.o \
+spacc_manager.o spacc_interrupt.o spacc_device.o
+
+ifeq ($(CONFIG_CRYPTO_DEV_SPACC_HASH),y)
+snps-spacc-objs += spacc_ahash.o
+endif
-- 
2.25.1


