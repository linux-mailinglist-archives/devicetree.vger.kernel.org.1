Return-Path: <devicetree+bounces-277451-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIwfMNf+ummAeAIAu9opvQ
	(envelope-from <devicetree+bounces-277451-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:36:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0644E2C211C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:36:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 122023020EB2
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C76D83F23B1;
	Wed, 18 Mar 2026 19:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AyRt0A0d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B0BE3F211B
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 19:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773862609; cv=none; b=oInQcxCDvzcV5DWhsYYZFjKJwaJmplKf8FxqxAsK5INnJ0LEboydiLJYTFWrgaUA5toYGsrmPD0UF8bjl974oW+juGH070pZR1J+YSowAvlPZJVowKVOUzHgRjor3D+sBm61d0f27l9tn4CSM9+VDWW0kfbm5JRAyZxL+RvljOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773862609; c=relaxed/simple;
	bh=NMHtYKysW+TqQN55GibvMc9/e7iQHP4Z0ItDqPkBPWc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tH60bYLto1UkC/6ClkXSrX/eu/cswLkQ2+lce6e/h83GHtk7JE5c8W15fdasyJiMF8FA7aw5K2UvbyrjwzoSebg1mIm4+/6FhBPPLqozwyE0ZrSxcbnEHgQR4CsLfn643MORDR9BBN2Hu+XAuoPVdlBKrF/HYYJ2KiD5UeZyE8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AyRt0A0d; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-35bb7afdc38so258511a91.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773862608; x=1774467408; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2iY4og2qGh/roH7GFoTs23bu6QUHnKE8+1qN6pUKQh8=;
        b=AyRt0A0dW4wTVwhhekhMpj+mvf8CbSMCP/EVubljt/J7jiT88ljSuhXlCoFYWORCnG
         x0+Xgm6RqxZNVwi5GRA7hd1VY2//6S/vCOI1QCfXzmA6AKeMtZ4yjjjlTxGCC3bP9D+V
         jR6YjTbul5qZ/PIBwsH0G80mrVEhmC6uAOHbieNdcvWjOBp5n0vVLGX8orTZ85lw9xpQ
         TH0oiam/baBkn/oLEhtOy22sFqEZhZbGRuBJvXzMqgGDV1ID/onzdTzt/6jqAFe7N1xw
         zs1K44QlQqd21zDEB/uSzIkedtoxOtawBsLbPWw7y/NYt+KRNprXKN3xyb0ORS/9+6Us
         hDZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773862608; x=1774467408;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2iY4og2qGh/roH7GFoTs23bu6QUHnKE8+1qN6pUKQh8=;
        b=fFYj16zJ7dSmgjY5JpXBVngWn9s/+PXsDIj7bpJp5zH44y9mHIYi8V4zJIlxM0Xpa0
         kkBqzPV29+95fKe1Q8dlGrbc0XHMZqOURPIUtrr+Vi/Crj7axUVGYwlM1gCFa+I9ZW2Q
         3fe4SCVNncMwqWit1u172W0C/eN50mePSEZ3q5hZP5rXSsH9mMgMEakJ+WkGiBbEDbVN
         vQRcjTLpQNqftQRMU4jTHROOfQYLSm2u5OrsEQSMTUBNk24wq6gIHIL/AK4DYcoAjNG3
         I62QH4jGlXb/1o9B0F2aW+xs8vLqkiu1RGT8ScA1UiifeErv346NwOj2ipiY1aj/aujL
         ob4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVS9XKkSsvnBswW0STFcAjyqe8Z+H+6gSAt95PtSsT4N8LfaQz5gjM4r5pt2qXE0w3klIM0at8RDT94@vger.kernel.org
X-Gm-Message-State: AOJu0Yw18LditlDjzTUMgJAVNsCjRJHcZwOcXyRUqmCUP3ETgV1b8ob1
	cFg01mEQdPsaDLgvlr1xrCaCGLZWx/c94EUGj3Zmb/sIcJxVqiVJttl4
X-Gm-Gg: ATEYQzwzeROSQ69Wk9YvQx/0lANBO3Jq9aMyRm6zIKMvFxlM0T6kKABkLHI7y4bZ15h
	NV6/R+vxVKaKeYDt6Ay0VoQKrEAi5bm1vDIr6Fu3Vi5wKDJWkHkfUmHQtig13ssx0Z/NkW+YqoU
	/DpmqR23X2X2e0vYqLa06GqeqG74RDkXotYm/9k2h3k+h8mPSCvPJi+tRDLzF3OIy8/7jWMzwjN
	OadW6M+XmzHq2tgTCLoNof3Bjid/rz3KWue3iBYkdfIEsWc4V9zJAZl59r8BJ5h2UizvThk4Qb1
	GSQ4VYhsTiv6Qcp4x+VXe60WWhQSrIsapoDx+bcclIf+PZU/JYaBOAfE+d6U7PJbixBDxqK8afi
	Ema+gP7B9VSe5oukYwb+o1coGQmo94TApWk/aBANSzbLYcggq/pDKWfFSPIzxE4t1WMZCOHqwvx
	OuIR2IVl/QhA3RPktBV54v5NYcSjJJeejWqCYfoQX1AW+WIMiVJfX6ZDcoL15oEPOF8ptyN0Oz3
	Wh9685vBGO/WpmfHQ17PZCBll7NCiUB9dGkBmY=
X-Received: by 2002:a17:90b:2e04:b0:35b:982a:28d9 with SMTP id 98e67ed59e1d1-35bb9e3b705mr4266431a91.4.1773862607823;
        Wed, 18 Mar 2026 12:36:47 -0700 (PDT)
Received: from visitorckw-work01.c.googlers.com.com (100.130.194.35.bc.googleusercontent.com. [35.194.130.100])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bb9ff59a4sm1521664a91.2.2026.03.18.12.36.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 12:36:47 -0700 (PDT)
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: andrew@codeconstruct.com.au,
	avifishman70@gmail.com,
	tmaimon77@gmail.com,
	tali.perry1@gmail.com,
	srini@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com,
	jserv@ccns.ncku.edu.tw,
	eleanor15x@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kuan-Wei Chiu <visitorckw@gmail.com>
Subject: [PATCH 2/3] nvmem: npcm-otp: Add Nuvoton NPCM OTP driver
Date: Wed, 18 Mar 2026 19:35:37 +0000
Message-ID: <20260318193538.246853-3-visitorckw@gmail.com>
X-Mailer: git-send-email 2.53.0.851.ga537e3e6e9-goog
In-Reply-To: <20260318193538.246853-1-visitorckw@gmail.com>
References: <20260318193538.246853-1-visitorckw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[google.com,ccns.ncku.edu.tw,gmail.com,lists.infradead.org,lists.ozlabs.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-277451-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[codeconstruct.com.au,gmail.com,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[visitorckw@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.522];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0644E2C211C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a new NVMEM driver for the OTP memory controllers found on Nuvoton
NPCM SoCs.

This OTP is read-only and manages two independent arrays: Key Storage
and Fuse Array, which contain cryptographic keys, hardware strapping,
and calibration data.

Each array provides 1024 bytes of storage.

It can be accessed by writing the target address and a read command
to the control registers, and then polling a status register until
the data is ready. Concurrent accesses are protected by a mutex.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
 MAINTAINERS              |   7 +++
 drivers/nvmem/Kconfig    |  10 +++
 drivers/nvmem/Makefile   |   2 +
 drivers/nvmem/npcm-otp.c | 129 +++++++++++++++++++++++++++++++++++++++
 4 files changed, 148 insertions(+)
 create mode 100644 drivers/nvmem/npcm-otp.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 61bf550fd37c..e391e2bcb5f6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18894,6 +18894,13 @@ F:	drivers/nubus/
 F:	include/linux/nubus.h
 F:	include/uapi/linux/nubus.h
 
+NUVOTON NPCM OTP NVMEM DRIVER
+M:	Kuan-Wei Chiu <visitorckw@gmail.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/nvmem/nuvoton,npcm750-otp.yaml
+F:	drivers/nvmem/npcm-otp.c
+
 NUVOTON NCT6694 MFD DRIVER
 M:	Ming Yu <tmyu0@nuvoton.com>
 S:	Supported
diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 74ddbd0f79b0..5d065b7448ff 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -483,4 +483,14 @@ config NVMEM_QORIQ_EFUSE
 	  This driver can also be built as a module. If so, the module
 	  will be called nvmem_qoriq_efuse.
 
+config NVMEM_NPCM_OTP
+	tristate "Nuvoton NPCM7xx OTP Controller"
+	depends on ARCH_NPCM || COMPILE_TEST
+	help
+	  This option enables support for the OTP (One-Time Programmable)
+	  controller found on Nuvoton NPCM7xx BMCs.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called npcm-otp.
+
 endif
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 7252b8ec88d4..63c23b304d64 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -95,3 +95,5 @@ obj-$(CONFIG_NVMEM_ZYNQMP)		+= nvmem_zynqmp_nvmem.o
 nvmem_zynqmp_nvmem-y			:= zynqmp_nvmem.o
 obj-$(CONFIG_NVMEM_QORIQ_EFUSE)		+= nvmem-qoriq-efuse.o
 nvmem-qoriq-efuse-y			:= qoriq-efuse.o
+obj-$(CONFIG_NVMEM_NPCM_OTP)		+= nvmem-npcm-otp.o
+nvmem-npcm-otp-y			:= npcm-otp.o
diff --git a/drivers/nvmem/npcm-otp.c b/drivers/nvmem/npcm-otp.c
new file mode 100644
index 000000000000..abe4bab66c06
--- /dev/null
+++ b/drivers/nvmem/npcm-otp.c
@@ -0,0 +1,129 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Nuvoton NPCM7xx OTP (One-Time Programmable) NVMEM driver
+ *
+ * Copyright (C) 2026 Kuan-Wei Chiu <visitorckw@gmail.com>
+ */
+
+#include <linux/delay.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/nvmem-provider.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+
+/* Register offsets and bitmasks */
+#define NPCM_OTP_FST		0x00
+#define NPCM_OTP_FADDR		0x04
+#define NPCM_OTP_FDATA		0x08
+#define NPCM_OTP_FCTL		0x14
+
+#define FST_RDY			BIT(0)
+#define FST_RDST		BIT(1)
+#define FCTL_READ_CMD		0x02
+
+/* OTP total capacity is 8192 bits (1024 Bytes) */
+#define NPCM_OTP_SIZE		1024
+
+struct npcm_otp {
+	void __iomem *base;
+	struct mutex lock; /* protects concurrent OTP accesses */
+};
+
+static int npcm_otp_read_byte(struct npcm_otp *otp, unsigned int offset, u8 *val)
+{
+	u32 fst;
+	int ret;
+
+	writel(offset, otp->base + NPCM_OTP_FADDR);
+	writel(FCTL_READ_CMD, otp->base + NPCM_OTP_FCTL);
+
+	ret = readl_poll_timeout(otp->base + NPCM_OTP_FST, fst,
+				 (fst & FST_RDY), 10, 10000);
+	if (ret)
+		return ret;
+
+	*val = (u8)(readl(otp->base + NPCM_OTP_FDATA) & 0xFF);
+
+	/* Clear the status bit to prepare for the next read */
+	writel(FST_RDST, otp->base + NPCM_OTP_FST);
+
+	return 0;
+}
+
+static int npcm_otp_read(void *context, unsigned int offset,
+			 void *val, size_t bytes)
+{
+	struct npcm_otp *otp = context;
+	u8 *buf = val;
+	int ret = 0;
+	size_t i;
+
+	mutex_lock(&otp->lock);
+
+	for (i = 0; i < bytes; i++) {
+		ret = npcm_otp_read_byte(otp, offset + i, &buf[i]);
+		if (ret)
+			break;
+	}
+
+	mutex_unlock(&otp->lock);
+
+	return ret;
+}
+
+static int npcm_otp_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct npcm_otp *otp;
+	struct nvmem_config config = { 0 };
+	struct nvmem_device *nvmem;
+
+	otp = devm_kzalloc(dev, sizeof(*otp), GFP_KERNEL);
+	if (!otp)
+		return -ENOMEM;
+
+	otp->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(otp->base))
+		return PTR_ERR(otp->base);
+
+	mutex_init(&otp->lock);
+
+	config.dev = dev;
+	config.name = dev_name(dev);
+	config.read_only = true;
+	config.word_size = 1;
+	config.stride = 1;
+	config.reg_read = npcm_otp_read;
+	config.priv = otp;
+	config.size = NPCM_OTP_SIZE;
+
+	nvmem = devm_nvmem_register(dev, &config);
+	if (IS_ERR(nvmem))
+		return dev_err_probe(dev, PTR_ERR(nvmem), "Failed to register nvmem\n");
+
+	return 0;
+}
+
+static const struct of_device_id npcm_otp_dt_ids[] = {
+	{ .compatible = "nuvoton,npcm750-key-storage" },
+	{ .compatible = "nuvoton,npcm750-fuse-array" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, npcm_otp_dt_ids);
+
+static struct platform_driver npcm_otp_driver = {
+	.probe		= npcm_otp_probe,
+	.driver		= {
+		.name	= "npcm-otp",
+		.of_match_table = npcm_otp_dt_ids,
+	},
+};
+module_platform_driver(npcm_otp_driver);
+
+MODULE_AUTHOR("Kuan-Wei Chiu <visitorckw@gmail.com>");
+MODULE_DESCRIPTION("Nuvoton NPCM7xx OTP NVMEM driver");
+MODULE_LICENSE("GPL");
-- 
2.53.0.851.ga537e3e6e9-goog


