Return-Path: <devicetree+bounces-234062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C39B4C28197
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 16:44:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B92A1A21B8B
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 15:44:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A77252F9980;
	Sat,  1 Nov 2025 15:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="WeZpp3N0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195192F6182
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 15:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762011825; cv=none; b=r4uTmQPuiQIdZRM45nft0YTnRDqVr9rV4Rc5SAa8SjW7DgtbtM7hZlTHCBdPfgCfaCB8rdwWauPv0GrbzjD9eIzhC79d4qnnhR1X9aEknGMXN4qViMMEEjW8bbU5g6zFF1oqfWX9zX+uGR2OQiKsI8iYUASkUOYRbrZiA4ih2jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762011825; c=relaxed/simple;
	bh=MebY2Kn6y2LU2xMPrHuRiqWl4Ev7U4wWsZxdN5aqQsE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jMre8IC/6oLyqL4NsRT2jD+UI8BEvdAveXcDENXUsM0BE3nCDrob1+8Qj3j+n81tcuWo/nwbpQFZ91kl6tG2GCz6Zo5Yaak0M7IYhUglSMZ/qsPCiTgoaFTErR1HZlItzrHxQmMcqIbEIGGd17k79XkqXlyPMJCyMJ1LSqEJBv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=WeZpp3N0; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-27d3540a43fso32331605ad.3
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 08:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1762011823; x=1762616623; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VKOoQPMUVsEmi6hMo7Uy8Fdi9yV1PxzBRenc/eHTo9c=;
        b=WeZpp3N0Hr110Jpi0AkhuiWRuKAhsXfOsEY2eAHyo3fit9fo4TDKmQ9T3L58XzXuyZ
         NQwWHPy0tRB9lbQR0ZHGeLmB9843eKBKpYgenlQSvMf7Y+O5YVWPpfKgKrQK2I8LCoGX
         lRKqHXQRVt+UxVvWeFOvhKmn27l+Yxe6OQIlx1XZB3g9P8M1j+baqdBXCS6JaUtq+3M8
         xB4EYI/NtamEnG4KcB2SJbzCDD+HAieUMSn97g6xo+zbKJq5tXrbpLH+jToeDId4r84z
         uDuOM0zarZ3VbYCzbYgwzbr6LmzsaSJsDk0gz+s8gZJgGpnnJzswhtGhasoR5hDO36S/
         xyqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762011823; x=1762616623;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VKOoQPMUVsEmi6hMo7Uy8Fdi9yV1PxzBRenc/eHTo9c=;
        b=RQ5UpgIsv1N8wnteauV79hf1b3vSyMsJ+aajwOZKDhdBB6YKHIvw1bmTXcBKJhEZyU
         KOtKLnr3WcUDRJZzWudv8PmiH4t+CzvTuxwk2viKaY924ubFxnZq2DzsVLe48Ry7piu7
         MohevftQq7XBrTruglJ8LTVEh/P8AekXy5nHdw2y9QoXBXOaKqVA8F2wt1CRSsksDY63
         dXojCg315oSIsN0FGJMxAwFscWzDv707t/jkshF6mgn1dqRdVDbTTeHgHvKXN2fW5as6
         0Zef2iO0NS3WRXBrAIz/BEVRHxROm8UKtXYKRf0kZXLUpW7ISEkj1FlBy97ljt8QXt1M
         /CMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZZy9W6y6qZ1VkQ4Nzbb/VcwqpBhk32/CjD7cOvfS/Y0wgdfhd8Rl1A1f0VJg/6hQisdtuc8h4E2TO@vger.kernel.org
X-Gm-Message-State: AOJu0YxaapqN/aH6zWn+E4IwwH24oW59ivMQXAs0gzP9dOW9GY8GgHvX
	mFnZyxrDHpb54y6wd0AcYYF48b5AUpc3Q6KBVmz7wt4c7YlpYmi/4L85tB0loSaAXRU=
X-Gm-Gg: ASbGncuRcMWDQ0F+UY2WF9YhR0ayobjA06zXpiikNLCWD6BfwZ4LU0/VTBwirkrVlce
	4lA6QYzKxnBW63YujXV43vaeSzxfLgzeZvnI7ntAPy4EK5CgzHW7sJSdKW0LSttDcsELOYOeBuv
	244ZydI3xe/TDQdCXvu16p1ksNb6E+rCmLvvLieJ74Ra+dfm1aRxafHWy/71YXEmsdDyYhPX4nR
	gyVsXILSZFwfO9/TBl9iEq7yBUiax1Pnb4ENfuopl7xWiK5ADViMC1iMUp0lFLWtURCA0vWv69J
	2RWbO+G11hWYdjmKN2cMUttJWw/ghKZ6MdgMNk9/fkEdnL80WnpV2StPKz/cm1CRYOpPV/OQ5XA
	kuW3k2eJREugWD8Yg4fsvjVwMX/3CCWzmLuhmPwEL1FiSzxEWfLLjsMM978NI/VPSkv1v8JwUwB
	fjI7Z5SqPCvFHgXR/1b2pLf2z6KZksyRIecFMv3hKX0PqM19qbOKGl
X-Google-Smtp-Source: AGHT+IFJbHT4F5pXbCNLO8qvOGYbikUZ+tUCbxIpYKWdYciUFwFGUUJMQoZvXRQKkQTGN7eTPXehmg==
X-Received: by 2002:a17:903:2441:b0:295:20c5:5453 with SMTP id d9443c01a7336-29520c5565dmr98352145ad.29.1762011823274;
        Sat, 01 Nov 2025 08:43:43 -0700 (PDT)
Received: from localhost.localdomain ([122.171.20.36])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295269bd2fesm59990105ad.105.2025.11.01.08.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Nov 2025 08:43:42 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Ian Rogers <irogers@google.com>
Cc: Alexandre Ghiti <alex@ghiti.fr>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Liang Kan <kan.liang@linux.intel.com>,
	Mayuresh Chitale <mchitale@gmail.com>,
	Anup Patel <anup@brainfault.org>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Mayuresh Chitale <mchitale@ventanamicro.com>,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v2 05/12] rvtrace: Add trace encoder driver
Date: Sat,  1 Nov 2025 21:12:38 +0530
Message-ID: <20251101154245.162492-6-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251101154245.162492-1-apatel@ventanamicro.com>
References: <20251101154245.162492-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Mayuresh Chitale <mchitale@ventanamicro.com>

Add initial implementation of RISC-V trace encoder driver. The encoder
is defined in the RISC-V Trace Control Interface specification.

Co-developed-by: Anup Patel <apatel@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
---
 drivers/hwtracing/rvtrace/Kconfig           |   7 ++
 drivers/hwtracing/rvtrace/Makefile          |   1 +
 drivers/hwtracing/rvtrace/rvtrace-encoder.c | 107 ++++++++++++++++++++
 3 files changed, 115 insertions(+)
 create mode 100644 drivers/hwtracing/rvtrace/rvtrace-encoder.c

diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rvtrace/Kconfig
index f8f6feea1953..ba35c05f3f54 100644
--- a/drivers/hwtracing/rvtrace/Kconfig
+++ b/drivers/hwtracing/rvtrace/Kconfig
@@ -14,3 +14,10 @@ menuconfig RVTRACE
 
 	  To compile this driver as a module, choose M here: the module
 	  will be called rvtrace.
+
+config RVTRACE_ENCODER
+	tristate "RISC-V Trace Encoder driver"
+	depends on RVTRACE
+	default y
+	help
+	  This driver provides support for RISC-V Trace Encoder component.
diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracing/rvtrace/Makefile
index 988525a379cf..f320693a1fc5 100644
--- a/drivers/hwtracing/rvtrace/Makefile
+++ b/drivers/hwtracing/rvtrace/Makefile
@@ -2,3 +2,4 @@
 
 obj-$(CONFIG_RVTRACE) += rvtrace.o
 rvtrace-y := rvtrace-core.o rvtrace-platform.o
+obj-$(CONFIG_RVTRACE_ENCODER) += rvtrace-encoder.o
diff --git a/drivers/hwtracing/rvtrace/rvtrace-encoder.c b/drivers/hwtracing/rvtrace/rvtrace-encoder.c
new file mode 100644
index 000000000000..69ceb5821709
--- /dev/null
+++ b/drivers/hwtracing/rvtrace/rvtrace-encoder.c
@@ -0,0 +1,107 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2025 Ventana Micro Systems Inc.
+ */
+
+#include <linux/device.h>
+#include <linux/rvtrace.h>
+#include <linux/types.h>
+
+#define RVTRACE_COMPONENT_CTRL_ITRACE_SHIFT	2
+#define RVTRACE_COMPONENT_CTRL_INSTMODE_SHIFT	4
+
+static int rvtrace_encoder_start(struct rvtrace_component *comp)
+{
+	u32 val;
+
+	val = rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
+	val |= BIT(RVTRACE_COMPONENT_CTRL_ITRACE_SHIFT);
+	rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
+	return rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
+				RVTRACE_COMPONENT_CTRL_ITRACE_SHIFT, 1,
+				comp->pdata->control_poll_timeout_usecs);
+}
+
+static int rvtrace_encoder_stop(struct rvtrace_component *comp)
+{
+	int ret;
+	u32 val;
+
+	val = rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
+	val &= ~BIT(RVTRACE_COMPONENT_CTRL_ITRACE_SHIFT);
+	rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
+	ret = rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
+			       RVTRACE_COMPONENT_CTRL_ITRACE_SHIFT, 0,
+			       comp->pdata->control_poll_timeout_usecs);
+	if (ret) {
+		dev_err(&comp->dev, "failed to stop tracing.\n");
+		return ret;
+	}
+
+	return rvtrace_comp_is_empty(comp);
+}
+
+static void rvtrace_encoder_setmode(struct rvtrace_component *comp, u32 mode)
+{
+	u32 val;
+
+	val = rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
+	val |= (mode << RVTRACE_COMPONENT_CTRL_INSTMODE_SHIFT);
+	rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
+}
+
+static int rvtrace_encoder_probe(struct rvtrace_component *comp)
+{
+	int ret;
+
+	rvtrace_encoder_setmode(comp, 0x6);
+	ret = rvtrace_enable_component(comp);
+	if (ret)
+		return dev_err_probe(&comp->dev, ret, "failed to enable encoder.\n");
+
+	return 0;
+}
+
+static void rvtrace_encoder_remove(struct rvtrace_component *comp)
+{
+	int ret;
+
+	ret = rvtrace_disable_component(comp);
+	if (ret)
+		dev_err(&comp->dev, "failed to disable encoder.\n");
+}
+
+static struct rvtrace_component_id rvtrace_encoder_ids[] = {
+	{ .type = RVTRACE_COMPONENT_TYPE_ENCODER,
+	  .version = rvtrace_component_mkversion(1, 0), },
+	{},
+};
+
+static struct rvtrace_driver rvtrace_encoder_driver = {
+	.id_table = rvtrace_encoder_ids,
+	.start = rvtrace_encoder_start,
+	.stop = rvtrace_encoder_stop,
+	.probe = rvtrace_encoder_probe,
+	.remove = rvtrace_encoder_remove,
+	.driver = {
+		.name = "rvtrace-encoder",
+	},
+};
+
+static int __init rvtrace_encoder_init(void)
+{
+	return rvtrace_register_driver(&rvtrace_encoder_driver);
+}
+
+static void __exit rvtrace_encoder_exit(void)
+{
+	rvtrace_unregister_driver(&rvtrace_encoder_driver);
+}
+
+module_init(rvtrace_encoder_init);
+module_exit(rvtrace_encoder_exit);
+
+/* Module information */
+MODULE_AUTHOR("Mayuresh Chitale <mchitale@ventanamicro.com>");
+MODULE_DESCRIPTION("RISC-V Trace Encoder Driver");
+MODULE_LICENSE("GPL");
-- 
2.43.0


