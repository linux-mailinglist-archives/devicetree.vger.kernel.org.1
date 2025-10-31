Return-Path: <devicetree+bounces-233531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCF2C23449
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 05:49:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EC4784EB88A
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 04:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72D572D661E;
	Fri, 31 Oct 2025 04:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="hk6cyJM4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9BA52D0C9C
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 04:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761886127; cv=none; b=W0VGSG1XEA6P+TPFPV0wZ6yaMSrBoz+3TXVVWU/JrG3C+8P4EFQbD6T6TAU1B54IPiuToiHGD6ASmKh1YzBXipMQB3Kn9ERFcU95l2QIy6JndHnLKxc/gc4dsulgUk9SPNNF80prCMF4HheQeSJsM2Hk4NnbAVvgfuV+C0OJ8Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761886127; c=relaxed/simple;
	bh=fnfgAHpm/oOK5jjhw0HXag3cq3lb1Krfoz2NFFT7Hac=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=W5TFsdWzgEEwdDvaSHQrOL0fT6nxcFNg72ZAX+n23Q79+n6+5Lv7luEXE/AVC3tX/WjJNJKCh8rMEbRZDgytkJjZHMjlrp9LqDKfRLyPVCEMytNtG5j/dyE2LV8gL9cqXAtNG+6o5dqBioHLcWYkF9e9hE5XhXHPQj7wObbbUh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=hk6cyJM4; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-793021f348fso1743764b3a.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 21:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1761886125; x=1762490925; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wxq8aZYN3BEmAZfNqUF8Scnyl6sv0hnpCWP+cCenBpc=;
        b=hk6cyJM4hA/HZArBAToiJ4Fviid/XNj0oIDrWua3b1nO52yCXip4I9XoODnJ/Iysg5
         OHG0iQCkxXu1yrYQU87GOhoKS05YU3NzWiEQQHKwVI9JE37rpx/SyHsX5Jx98uER2SZJ
         KW4lAZAMb7p+Q7+4gwBWYiG2Pa99c4ee/29S4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761886125; x=1762490925;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wxq8aZYN3BEmAZfNqUF8Scnyl6sv0hnpCWP+cCenBpc=;
        b=dTpooQl+JCAvqIuM/esYKBWFAz7CxX2K4h1vwhCP9yMp2vR0uDM1eftkAz7eWx6ihn
         cj1F4wFUTDGO/eoPDBTZNKIozT9K7BmviL6WhSph+3sECSTjzIdw9i6AucPT8LaKqMI+
         YcgO0opDYGUDV0TYEPQhIHvajv2+xDjnVTEkqVrec+MYqiVjJo07Y2gQ4sGJCXKtrGzX
         Q/Kxx9fWDOsi+BG0rkUbn+CWGPKUoDHoJEz3ZZtEVrXOnSmTr6CTRuPQo8gbvbNZruq/
         LmCfFhnJGhiqm1xmSZSNiHNipK6BsozurWVJnsWJvE5utMq3T4TvYpem/OFdEGk9M5Hc
         aSDA==
X-Forwarded-Encrypted: i=1; AJvYcCU0OoDV/xqPqIodE/+KAEqQelcnU5XtEM8XjsX57KR2IOwUZZ2Nv0tIaDQ5mPuaRUkRdUjCGlJBwYfR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2aaiIwU9SKiPCj4PouTvTzdO0yF10Yo40nyvlXhJHsNnsm38n
	/z958T/747uqThySPribxcxmww4xmnPM83qlHDQ8jlZMXHgtOzD5mWsBz52JaQueVfw=
X-Gm-Gg: ASbGncujEmWHYKd/Bbhy3iD1YktlgybyvFkAfFwgoNKHE2wypsgMOJ1Vgs79ruik2V5
	l98JoYSk3Z94taKm0NbY3qFHgExFK5VnH42n/iGKndPTCN/Sh6BEe1H9ftCksj6JuSXiK3rr/HK
	K4qRDgi2de6/5ENIQfmXBsNFL4LXoWLDvLKpAmnv6F/9qgM/RqlvEtmfBWeNN3pO2IiJvUg/sog
	glBRKHQxgCL+JOvHK/XsN217W/SieOgFjF6Hapac0fh03+B5WINY5KRGgQUylCUCbP0g7B4bmgg
	YaiYeyMfmB4WcLlliXJqFT2mGLPwVWWEyrKJ/VdSNIV7SQX0c+ahxkWRnvvWJC5dnRR+Ul0SLzv
	YifsrzIwwC9RRegAcs0yxlnj1MfrMFrlkj9B1/ittMwVHNc+8cpqykKsGPwFYhMRvl3X1ujHKaj
	DZR6Y5TtqG4S8HUFMlchaxll5YYyF6NOkDdnMmt5hem+6cQiPiblAqWqA=
X-Google-Smtp-Source: AGHT+IF5HX/zwMINsUWyvYSK1AffYKFH7nYt9+81LbvhC56oHrPOR6rPmURMsi6raSMj2RpOBtlqKQ==
X-Received: by 2002:a17:902:eccc:b0:295:2276:66f8 with SMTP id d9443c01a7336-29522766ea7mr22629205ad.54.1761886124983;
        Thu, 30 Oct 2025 21:48:44 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295269bd2fesm7238875ad.105.2025.10.30.21.48.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 21:48:44 -0700 (PDT)
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
Subject: [PATCH v8 4/4] crypto: spacc - Add SPAcc Kconfig and Makefile
Date: Fri, 31 Oct 2025 10:18:03 +0530
Message-Id: <20251031044803.400524-5-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251031044803.400524-1-pavitrakumarm@vayavyalabs.com>
References: <20251031044803.400524-1-pavitrakumarm@vayavyalabs.com>
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
 drivers/crypto/Kconfig            |  1 +
 drivers/crypto/Makefile           |  1 +
 drivers/crypto/dwc-spacc/Kconfig  | 88 +++++++++++++++++++++++++++++++
 drivers/crypto/dwc-spacc/Makefile |  8 +++
 4 files changed, 98 insertions(+)
 create mode 100644 drivers/crypto/dwc-spacc/Kconfig
 create mode 100644 drivers/crypto/dwc-spacc/Makefile

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 8d3b5d2890f8..b644f80ed40d 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -781,6 +781,7 @@ config CRYPTO_DEV_BCM_SPU
 	  ahash, and aead algorithms with the kernel cryptographic API.
 
 source "drivers/crypto/stm32/Kconfig"
+source "drivers/crypto/dwc-spacc/Kconfig"
 
 config CRYPTO_DEV_SAFEXCEL
 	tristate "Inside Secure's SafeXcel cryptographic engine driver"
diff --git a/drivers/crypto/Makefile b/drivers/crypto/Makefile
index 322ae8854e3e..89f54b3faeb5 100644
--- a/drivers/crypto/Makefile
+++ b/drivers/crypto/Makefile
@@ -43,6 +43,7 @@ obj-$(CONFIG_CRYPTO_DEV_BCM_SPU) += bcm/
 obj-y += inside-secure/
 obj-$(CONFIG_CRYPTO_DEV_ARTPEC6) += axis/
 obj-y += xilinx/
+obj-y += dwc-spacc/
 obj-y += hisilicon/
 obj-y += loongson/
 obj-$(CONFIG_CRYPTO_DEV_AMLOGIC_GXL) += amlogic/
diff --git a/drivers/crypto/dwc-spacc/Kconfig b/drivers/crypto/dwc-spacc/Kconfig
new file mode 100644
index 000000000000..f9752e6f664b
--- /dev/null
+++ b/drivers/crypto/dwc-spacc/Kconfig
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config CRYPTO_DEV_SPACC
+	tristate "Support for dwc_spacc Security Protocol Accelerator"
+	depends on HAS_DMA
+	select CRYPTO_ENGINE
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
+
+config CRYPTO_DEV_SPACC_CONFIG_DEBUG
+	bool "Enable SPAcc debug logs"
+	default n
+	depends on CRYPTO_DEV_SPACC
+	help
+          Say y to enable additional debug prints and diagnostics in the
+	  SPAcc driver. Disable this for production builds.
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


