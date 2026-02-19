Return-Path: <devicetree+bounces-266638-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qF+NLhj3lmkusgIAu9opvQ
	(envelope-from <devicetree+bounces-266638-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 12:42:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDCA15E5EE
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 12:42:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A2D14300D4E6
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:42:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2300337BAD;
	Thu, 19 Feb 2026 11:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="DyjCF5BE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B4E3358BA
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 11:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771501329; cv=none; b=NewFYpxNxjQnlMMWbRaBT11rnxd7LSKQIwIrK/3mlCjX/wvJCcy1e00Gsk1xoMBaQuUTrtK07iqwuFvKLN8HSQOu1Yvf620t7abJyObe/P+OLs364FY2evQwhZ6Psr/WB4Ln7Jpa3qU9It8yp4kHmkad4LPvyL6jenmYZywzDpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771501329; c=relaxed/simple;
	bh=9+DQjUew8kkumdJA/hrPw0h+aDG9PSARamWRMqx9mNQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mXSiDnhv2bKY01kVI4r7dldGXMxuuE7402zVTyRJYGgt40tRMtEhVrh7DfzNjZMzk5hdsQrnJeKbTNJxQBdkISOlwSlnBn10PmCUrSp0x/9bAZOEgqJo/zP6NTzSdfiNWBSZrpHHwKAJ8g+AcjDm/0s/kUBN6bp2zLBU4XlbnRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=DyjCF5BE; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-c6e77ace76aso439679a12.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 03:42:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1771501328; x=1772106128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KlFofjEDBgXa43lzOJCQ6xEpdr+n2zK1FZuaFtwkHQA=;
        b=DyjCF5BEvsNs02v48YKaE+4FyJ4tJfGlNqyw7QYX54ZQowOeXaOc8BJ9u4Qrjbfny8
         +hcx4ws95xkl4Vwtzuo1MXVJaWzrg+hQmI6ZNaiG/GLjSFyUnNg/OK9VeKkLlAg5fqI3
         yiuLaWv6GZrHKmPpp9RUvIZF+IKeQqAVHzcrI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771501328; x=1772106128;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KlFofjEDBgXa43lzOJCQ6xEpdr+n2zK1FZuaFtwkHQA=;
        b=UK3Wk3DhXV77vQ6IDwJkqC3cHt5LbjB2R6ooY0RhmRGAvaM7EGxh1FV9DgSgFCnoED
         /uTwwf4og+BS9RKQlBJqoW/r/F++kCEemBkTzs4uWpgoUKhl3VDp+0c4hipUIxLOEsTi
         mTPHahS2tC6V0v6T7KqA7eJdM5Q2KkFM1GBGb+eV53HqnMIiEsKTQkezNkpDuWgjLiCc
         z1YAuPtTzBN6n6DOY+UqW5SG4vaNEBrG2WZmkBWLnwxkMMvSJDzZwWK1hqNEMTi6krQg
         3Kr04/+XHanfSuopyeoyX1DDbaGKrVXsRmAV6NlY4tfGz6j4alSVSucd1NONX6gB28lN
         Niqw==
X-Forwarded-Encrypted: i=1; AJvYcCU2OMVBip5rxyJV5GByHvdQmlNgYiDEvePTYd6DJlX3lQi+1ELRVFwtSqWrFvtW+qfZWPT6vD9YTTsK@vger.kernel.org
X-Gm-Message-State: AOJu0YzM3XzFY4QkoSWtOm0UnBVDU65qKhyE5Q88b9CBLLGdpKr5xXzy
	lSb/025els51/zn2zFNawzl0roFvFuWffmOilK+LZFKpmDGPIiYEZzWx8nqj49lroHI=
X-Gm-Gg: AZuq6aIHTCVank/o/khnzUt5WvjMUoQGyHtfLZLPREnuik1FRuXTqfNxyt/6m9+7ssa
	rqvB2L5Ocw+sHNs9S8dWuupYhuBEaH5WpGV5t/0Qs4O/jqzd6X0vUjMt1u9ZRoWmdZAoRuZUQD7
	1LZ+IjrKTXqsOQAcBt0a22HE9b191KT/bbciTTcNH3rFqgMvxrfd0RiQwoEAY0R6ykJQ3VpIlY3
	CMWmO2EVuVdHjiQGHUgbveD4rJwFAiAIgHLKuosYSJ+jSQeqzFmo1ZEOZ0Y9yDYtOX29C2S+6rb
	2x3a9UKY9T/xMHWfc5NfbWKwTLek75dWkbzcmoifWbDHzlHOsXfaABdr7mHhR9yoc0zaV+MH1Lm
	7j0lhNn6bPM1TBG8c+SEynorOjrL1j8gXzAZuYHb5MNbJD8s34QTEY1hrg+8fJqZMPAZAPvAzpU
	Vj/X0T507QIyPTQefrtOIXz+r6ovgxI6OUWWgWpVFNafxfRGUfyC/cmaJ+J8ldY88pebeyKdQie
	fiOxQOTjTijPB6qcqrTxOT3oC+cWkYyShNH03gYwl6glp6jM2hFtEcj7mbUeAEUVlA=
X-Received: by 2002:a17:90b:17d1:b0:356:2bda:a857 with SMTP id 98e67ed59e1d1-358937a4e0emr2366141a91.18.1771501327905;
        Thu, 19 Feb 2026 03:42:07 -0800 (PST)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3567e7d95d8sm27442358a91.2.2026.02.19.03.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 03:42:07 -0800 (PST)
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
Subject: [PATCH v10 4/4] crypto: spacc - Add SPAcc Kconfig and Makefile
Date: Thu, 19 Feb 2026 17:11:30 +0530
Message-Id: <20260219114130.779720-5-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260219114130.779720-1-pavitrakumarm@vayavyalabs.com>
References: <20260219114130.779720-1-pavitrakumarm@vayavyalabs.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[vayavyalabs.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[vayavyalabs.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266638-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[vayavyalabs.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pavitrakumarm@vayavyalabs.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vayavyalabs.com:mid,vayavyalabs.com:dkim,vayavyalabs.com:email]
X-Rspamd-Queue-Id: 5FDCA15E5EE
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


