Return-Path: <devicetree+bounces-276957-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECBhMiZIumkFTwIAu9opvQ
	(envelope-from <devicetree+bounces-276957-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 07:37:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB262B67BD
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 07:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F393E30E1620
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87E84366DA6;
	Wed, 18 Mar 2026 06:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="SqH7uYKp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DE013635E
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773815559; cv=none; b=o2f6FJIihBM5w6CPXG7DuoU/NnMsCYT5j2xviwKgDCnFUvO+qWfJm9a2jTHHN7LZMvQT7+8tfLLFF9G2w9Ff4S49qpmebvsErU+uAtR6n6bW6dQ8UWZR3wqcyMZn80N4+cWTv6KlBo5ACwOOGnLHJP8o4rRlbHkHm6qogzV9ZZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773815559; c=relaxed/simple;
	bh=zD+neBIaLn25buSkXOiOMDlEitHsQGHr2PhaQ1S9Jo4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=p9Mq7tZGkquAvVTJhEuaWzUe5Q/iRrpNqSC7Zz4x8CaAVKvr1HqByTuHZztMu+5DkMou6EVFjxgT0Gg4E1scDA4aV8pbtIG2x2+Skrs3TvW+QtO94xg+By7Oh9JTIT79CmLJUl8qeSHT9L49jwHvl2gAgTiTB6N3M6ylOCsUCCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=SqH7uYKp; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2b06c43e6a7so4627155ad.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 23:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1773815557; x=1774420357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gFX7q4zLow3FVt1OZdVBMtLthNdfCp6eUiWqYB1YR1E=;
        b=SqH7uYKpau+AwGbH876wP0SZLfCedGpCJqVhBhhpENygPefve06WhL54aMZFD6iGih
         jhtKhNirJkFAx2JiTU7N7LHyfmZ9ewDN/IkP/TDDe5zy6lXtpRT1Hzi9g067WZ9qjm6U
         hDYhItanLxDdXXkWc1wiBqXymQfEEWM2dn40c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773815557; x=1774420357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gFX7q4zLow3FVt1OZdVBMtLthNdfCp6eUiWqYB1YR1E=;
        b=YsxMaHYGrJ2m+/WoDyQKt+VfIppBqeFQkVEQGAoXdShuJ3GjNP0Zltw23zsHhq6nkh
         Kx5nzFUrWUqjv1c8XN7DMhhj4GgbZMT9/NsHKfYVR802TklWyKVKqLSGBaw5SaFcgaYq
         pBpEKXyLx96rh+nnuvUdbOF1yg9dbDx8qK/EuzdvdpJC9vrJv3RYB0WevA+zXjvwj6cu
         hF5XuRNitgPn94SraJjIxBB67PknoOooID6atM8dQwocCsw1T0ePFrR0LB1j1WpJgTQQ
         QxzADEazTPg3D9M7VZjjQRfYJZjcDIjY5nHSCNXJRW54XJVZwkQ8PlqH/T2HjZauGTtr
         40+w==
X-Forwarded-Encrypted: i=1; AJvYcCUt34BB3QgG+creuynADpJvwd9VuN51OtylZJcrjaxSDw5dLbG//fSbR9CATzFDtlf3cOfxHrEQaiAC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3E3ii3Cj/8vvIWfQhgNwc8fzGWocVENgzzMpz+CWbNMlcgD7x
	x1MtcgUut9pW6g7f2QZcuyWOXftl+D7ffb9rMBKQHMV23DOKJoaggJawVPg7f6guoB8=
X-Gm-Gg: ATEYQzzFOigPICPg0oF0282yezLLm88Qjt46whz6vy1MDHZPWFzIr0mU1LRk7zp1pE0
	wvt4asyTCuV1UpJOsRGzxGG9zWU1O30LQR7bc+Swu0wyH6AUDSv0vWM+1CMB1cKpbMscYDoFRjO
	7zte5CsMikxvIo0KTjBQk9uv+WqHh+hC+fjWpvnZfZOlfREQzsZGFw4aDAQ4VXD5dtfi8wLrt+9
	8e92oLSLBXqA/KqQFJGdkjSqz3xXEDN1cT0F/VS1QS0Rgu8sdys1yZ4HppG/Guyo3fZsf3wLVmV
	bCVwVtsd2rj14bUalWimbkwnsa+FyZlzH7znuJczxaMAG9G6vZTUUGRBYEsc0WihpUq6SzXCuiS
	BXPn+krem3mQINgOPNMk9cIXJ2Dk9UUz2jST8wEOlTdAliQJt2FSqRM5xnGJAZJG24+8u90X+sc
	ywdVmH42XAvn8fo6LUtyUQxLSZJtpJmiWyWTV+M8sibmRTz4nl8o7bmeY5UQ05K9LC2o+zK9LFJ
	fkCpr1P9YpLBmbHr0L7qyYb7cMl1zHxgRNQUEVh3mWdU/W2MFm5qaopnsyRR94A1gk=
X-Received: by 2002:a17:903:2f0c:b0:2b0:6a3d:36e9 with SMTP id d9443c01a7336-2b06e3d2d33mr22406115ad.33.1773815557547;
        Tue, 17 Mar 2026 23:32:37 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e5ef3d1sm13620235ad.38.2026.03.17.23.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 23:32:37 -0700 (PDT)
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
	navami.telsang@vayavyalabs.com,
	bhoomikak@vayavyalabs.com,
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Subject: [PATCH v9 4/4] crypto: spacc - Add SPAcc Kconfig and Makefile
Date: Wed, 18 Mar 2026 12:00:12 +0530
Message-Id: <20260318063012.816060-5-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260318063012.816060-1-pavitrakumarm@vayavyalabs.com>
References: <20260318063012.816060-1-pavitrakumarm@vayavyalabs.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[vayavyalabs.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276957-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[vayavyalabs.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pavitrakumarm@vayavyalabs.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vayavyalabs.com:dkim,vayavyalabs.com:email,vayavyalabs.com:mid,synopsys.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2AB262B67BD
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


