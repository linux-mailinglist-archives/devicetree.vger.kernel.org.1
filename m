Return-Path: <devicetree+bounces-276981-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMA6DFBTumm8UQIAu9opvQ
	(envelope-from <devicetree+bounces-276981-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:25:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3B82B6E43
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:25:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1086E30F9317
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 07:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5A7336A01B;
	Wed, 18 Mar 2026 07:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="VYZ8K1zD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D41936997D
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773818375; cv=none; b=S3/8uYgHpMsuDTotYFJlWOQa5Y4Xl2YB13sSrSujVtWuBbquCOftjLt2S7hPLm6nRnS693GZogsxLnpqX2yXD6tCIDGmEUewnAZkO/p8LNYfB1/XCVONTx9dkVpyY8NSs9NM4Mtk+pqPyx8DbrXXdNerXl15kFUhT0GHD0FpsO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773818375; c=relaxed/simple;
	bh=zD+neBIaLn25buSkXOiOMDlEitHsQGHr2PhaQ1S9Jo4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iu96kFefXFpUxXtligleRKUoIQEvencV5uuja074xNQi/e0TSM0ykDO5xGMmNBEi29O3cxwyJccZr73rIytIYTlHNtGaXwF+3/hmoBchEbS0sBp7Fbbggy0dylIdU6tPsmKUE9VcaH84q28yeAxKbY0NAA738FaIeQ6rbA/khsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=VYZ8K1zD; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-829a27414a3so4061592b3a.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 00:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1773818374; x=1774423174; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gFX7q4zLow3FVt1OZdVBMtLthNdfCp6eUiWqYB1YR1E=;
        b=VYZ8K1zDPWtRKaMWlaQyy8QW+G3itbRBKpESXAmLppCnBLvgbUqogBMXsBQtYnanZ4
         cor+84sC/WDJgY5SyGv2woKNNQPRgYNv+bDIP92sWvxRV32fkeCVpA/Wec+ZuM4hINcG
         0lDsjeTETmNAKsKTJRjwcIx1t5myzisvhB/8U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773818374; x=1774423174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gFX7q4zLow3FVt1OZdVBMtLthNdfCp6eUiWqYB1YR1E=;
        b=rPhBBG56o/0roVn97gjbRlXY5/PhHivGSPbbHWxrnS+adw/oWmyD803Y2B9hkAEP4Z
         1TiOFwtr9CjehWEt6slgWf0wbpAzb2+WHlfC7SPbUdkfo1yjxKBSejofZUTYBP/67X4c
         yzm7FS45DHFRNrv+Boy9R7L6XS+bqKSy7jTHa3Sgf/L/uCbzoQBj0+p4FtDeaVMAMCrZ
         QMhYFlktM4aaCETwTn0fup2/ZU2UuPD4QnWffEItwrB4i0tPMi6lQzG8uXcYzhaEcYRa
         LgyyFmUdog+1h23UvmApiGexb6MxR/wLmppHAI48PGQw/q7fdQeVQS12k6AgGa9FXR++
         j0DA==
X-Forwarded-Encrypted: i=1; AJvYcCVh8+rK9T7u7T68Mxya6Ko+nLs9HxQ3kRMASwCeHumbNK/C1PbiitD/MwIgH5sq/CfBPOTDWELKeXbR@vger.kernel.org
X-Gm-Message-State: AOJu0YzLQWwfyeYp5IXUWj3YTNwPlVDRrWDAIkhWVs02SU1yneh3ZLuF
	bIoRKv9975waE4Bsav2jvUCjdZ2ITeyLU8a0H2WaY1siEb65tXkRbe+aXojj+Z6oShA=
X-Gm-Gg: ATEYQzznHVK7W3vAzdCF+kB4ZaOBfRwl1Jey8J5eT+bewmKw4NhqBan4NbY4GD8byto
	FR8HloL92MF1YNjP/e/mha6wF0xGyxIWpbeisYRPGynOBMZ6mKi8aPquUWXt03vERCaoqGR6i4L
	aVNuOsbBAtQR6amhPTmQ9f9+YMkA+YndWZcRxVhNSipcpQMSdV110glNGgfi2qO//J2oZk3ceQE
	C39FOEC0mBLcFdYXfXGRmY8usSEOx22NvjcUAGHfFdMof8geDmULsnQF0Kjk/TcdeGXYYPv+Gal
	jJ4Vfa0jtSqaSZ1mvVRyMBkMi9iUPxRczSmPw8NgI2+rYNCKHpf0ExC1Oo+U7S53+Un0pqHSnmr
	odVY52AQ85EMmKE1vnxpb6PeLC+M52X/8UNzSr69/Q8Bm5t2DlIJ6PFLAPYQL9Rl1FHovn5fxXV
	v1F5ybzhb2FtZwLEsz8KqFbFul2/ieGvD31nau46buzuoaEwgi/flouk4Y3Xq0xAyUyEF4ooAky
	mee2nhjUpCrtjwOEOl7qVBxKtsODJKBXNdx+XxBymuDimVYI8f8BqMc+uWV32p9PtY=
X-Received: by 2002:a05:6a00:2da1:b0:821:7d7e:41d5 with SMTP id d2e1a72fcca58-82a6ae85509mr2286973b3a.52.1773818373896;
        Wed, 18 Mar 2026 00:19:33 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a6bee89d5sm1613669b3a.51.2026.03.18.00.19.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 00:19:33 -0700 (PDT)
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
To: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	robh@kernel.org
Cc: conor+dt@kernel.org,
	Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	adityak@vayavyalabs.com,
	navami.telsang@vayavyalabs.com,
	bhoomikak@vayavyalabs.com,
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Subject: [PATCH v11 4/4] crypto: spacc - Add SPAcc Kconfig and Makefile
Date: Wed, 18 Mar 2026 12:48:08 +0530
Message-Id: <20260318071808.817074-5-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260318071808.817074-1-pavitrakumarm@vayavyalabs.com>
References: <20260318071808.817074-1-pavitrakumarm@vayavyalabs.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[vayavyalabs.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[vayavyalabs.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276981-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[vayavyalabs.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pavitrakumarm@vayavyalabs.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vayavyalabs.com:dkim,vayavyalabs.com:email,vayavyalabs.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,synopsys.com:email]
X-Rspamd-Queue-Id: AB3B82B6E43
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 8d3b5d2890f8b..b644f80ed40d4 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -781,6 +781,7 @@ config CRYPTO_DEV_BCM_SPU
 	  ahash, and aead algorithms with the kernel cryptographic API.

 source "drivers/crypto/stm32/Kconfig"
+source "drivers/crypto/dwc-spacc/Kconfig"

 config CRYPTO_DEV_SAFEXCEL
 	tristate "Inside Secure's SafeXcel cryptographic engine driver"
diff --git a/drivers/crypto/Makefile b/drivers/crypto/Makefile
index 283bbc650b5b2..d106c1c729060 100644
--- a/drivers/crypto/Makefile
+++ b/drivers/crypto/Makefile
@@ -42,6 +42,7 @@ obj-$(CONFIG_CRYPTO_DEV_BCM_SPU) += bcm/
 obj-y += inside-secure/
 obj-$(CONFIG_CRYPTO_DEV_ARTPEC6) += axis/
 obj-y += xilinx/
+obj-y += dwc-spacc/
 obj-y += hisilicon/
 obj-y += loongson/
 obj-$(CONFIG_CRYPTO_DEV_AMLOGIC_GXL) += amlogic/
diff --git a/drivers/crypto/dwc-spacc/Kconfig b/drivers/crypto/dwc-spacc/Kconfig
new file mode 100644
index 0000000000000..f9752e6f664b8
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
index 0000000000000..45d0166dfc8f7
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


