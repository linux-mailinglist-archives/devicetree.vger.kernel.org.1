Return-Path: <devicetree+bounces-266417-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKxpGr63lWmNUQIAu9opvQ
	(envelope-from <devicetree+bounces-266417-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:59:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C49E51567C8
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:59:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D033304B5BC
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 12:58:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DDEC31ED7D;
	Wed, 18 Feb 2026 12:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="dYnVcpzv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A25931ED63
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 12:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771419526; cv=none; b=IFWCFWbX4DrOz9+yKXYFrL7Iwjdvr6NoF3rDZdkkrktcTdbrRl3CbJmCrYDSVz6fHHv10Yy9FHdFSwkLGyJjMeHbXQBRNuMAilLz1VfwwdzyQI56+usT//eFz0WkB+IVBnmcCIVlqU9FkBgqAkH/LTnX5MJ0m3n3bWLoGXB4+6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771419526; c=relaxed/simple;
	bh=9+DQjUew8kkumdJA/hrPw0h+aDG9PSARamWRMqx9mNQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eFh/RTgp4BczOwF9ayLlsFnAJZrz5jn9ieevMr2x1+5NlmpbtnN+0UZiOetcbWD38iUE2gv6yK5sPsVB1RJR8NYaqi5IgHESIB3Ixs1cWPAquKKbuaOugmtZOreKHE0UNeLPIQJsvV3JM7JC2tva8IUoz3fNNs/+SMOMsGejCgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=dYnVcpzv; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-8230c33f477so2509174b3a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 04:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1771419524; x=1772024324; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KlFofjEDBgXa43lzOJCQ6xEpdr+n2zK1FZuaFtwkHQA=;
        b=dYnVcpzvbhqfKce5khUDrmSx/0VYWv8MHGkZjhMn4KeNkT1Po9KHUTmOXsb04o01Dj
         3yyZR6U2mFI7COpVaT33UEEbq2oJYa2G27zndBoxXngqQH7keWYVPnhUl1EX211O53Hg
         SUokxcg9Dj25aJYxD6DqbMOXYXIpNXljo2mwM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771419524; x=1772024324;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KlFofjEDBgXa43lzOJCQ6xEpdr+n2zK1FZuaFtwkHQA=;
        b=W/eJv5M86buoHWJ+XDLV5vxDsmzQO1H30PQfr/mPlVWfjin1Z3bvotUI/xH5IbPTL4
         OHsI6n3xJi6qZx5F0cwU5A2I2sUcWxr7tTwYf05cjc051ook5IebaATJKAhOPEhBEyQG
         RWIKkh4wsG6APd/ffsjpUDLL9fV5feebgpY+QXt+D9Q/CiZBKMcIURL/vjGuSkbM/dpG
         MZsxaxPiQ7xgJ3Qnh4b0E51zWHZb57azgXiUDd2uBEHPkXgd7qu9ozNznQqCq3CdmxRa
         xVgC0awSZ5kbuYXn907qNEqQ6YCHKt/HRucvmCrmMgPVr4AFsSfZv3WmT9/XXGzLUH/+
         /w5g==
X-Forwarded-Encrypted: i=1; AJvYcCXvrqwZYG0xA4BQY9ld0XamGjJRiv998XyZ6YIiDdFT8WeHaYEj4k2BrEPuM6ITHfYNGhAypae+YsfD@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd7WG4WMuF1gIHIRdBLNkcPCeH7YGaZxGjM0/tXZhh5QIp1Fow
	pd89NDbjAFAOshSrLiRYxoIyjnAJ6IANRPD4n0vynWoK8Znk31/AtprpLFpeYns4ErI=
X-Gm-Gg: AZuq6aJSxxsogaoXRjJV+naJMJk4tRiFc1LDkwrFYlXAOWe49xjNa10VsFDgDbkl+aJ
	2EVO1+gI/Se6szJ5VotUxm760B21VsTCttdY2C9KvKZAwLOvk9+8fy5FU6RDY8NCEc/+K/YGIp2
	rOyNXb6yHiijY03OHDvweQ/hcJwiNThAAibpYcuekIla2bVSEL0vKlsXzoS4CkhriV2cfoVVetC
	lMF2sFk0d4BCSHvQ+Zus6X1J9XCpUNmdYlYTJULU/+HVGD7j/A+PcPZmbiu0FY1SdgfiZ2hhHp5
	kCsR8MaunQ2ujLIp6Jh9QWuQ8xar1FQ+v+FJQkPdFInJYiotQnm4RvdxXl6NWL1LpU1NtRTEW9d
	44viRmhCSXfTNaN1X4Sm90Eav1W+van+4TiYF/dtcbVK5ilcMb9MxBQY9P41XMifhtB0lRGp89X
	NGtDfNxnZJXoHcUmw7w1jldViH6ZhunalND1C8V74P8jvBI3rsrOpgC2ykHrG11MNOEASTRfevf
	kSwF9bMnLbgPUo7usCnQQhaKzS1KfVc6NL1JIy5CxR6+G9ag7fU9lIO6hdUKn+HzktKpEXuOe1P
	3A==
X-Received: by 2002:a05:6a00:2354:b0:81f:8084:7ead with SMTP id d2e1a72fcca58-82527460776mr1819433b3a.5.1771419523896;
        Wed, 18 Feb 2026 04:58:43 -0800 (PST)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6a2afeesm19227464b3a.2.2026.02.18.04.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 04:58:43 -0800 (PST)
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
Date: Wed, 18 Feb 2026 18:28:05 +0530
Message-Id: <20260218125805.615525-5-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260218125805.615525-1-pavitrakumarm@vayavyalabs.com>
References: <20260218125805.615525-1-pavitrakumarm@vayavyalabs.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[vayavyalabs.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[vayavyalabs.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266417-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pavitrakumarm@vayavyalabs.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[vayavyalabs.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[synopsys.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vayavyalabs.com:mid,vayavyalabs.com:dkim,vayavyalabs.com:email]
X-Rspamd-Queue-Id: C49E51567C8
X-Rspamd-Action: no action

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
index 322ae8854e3ea..89f54b3faeb56 100644
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


