Return-Path: <devicetree+bounces-223275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57638BB2968
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 08:09:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D07916B055
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 06:09:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 275692877DE;
	Thu,  2 Oct 2025 06:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="hgKFpkiG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABAF28751E
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 06:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759385339; cv=none; b=EbPrUKNJlXS5fsNx/fNS65u14w4+hwgdvEC1rqGE8kx4/ERJMqGdgzNE44A/DrFMAu8ho79BORHD/lrYHS6+M6zISN9j0GEXNgNb/WfudsQuOToqNveTPuBoa0kKaELRNMQBQy5N6KBLhtpXH4gD/azDlTZgDXiZna1ioF8SPtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759385339; c=relaxed/simple;
	bh=lOHsyvTJOJiG0tf9/Mmf+m467IOd18DoT/rpd92xBfA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e3V+10vhT+Rz0e1TFmUOk/8dlkPm9SnFfTdugmt4CSNcM3FeP0C/OKJCHoGi4GgAJ+8G4deq7MGFDKuN+X+i2P1UYVpJmP5HfWVIyFeZOuG7VMQqdKLnB2+Vwy20ARSP7rOvdx42hJFISuf1Rs/OJDcCXfYTgxAS5LlwLJt98CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=hgKFpkiG; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-76e2ea933b7so488326b3a.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 23:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1759385336; x=1759990136; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UpifXrkDvDh1xYGpNX5UKxh32Xx9f0TyTyPM+srBPqY=;
        b=hgKFpkiGxO6yLWiNZjBKobzgsMUAHbQJt6HKIau7q/DEY1GNtfoHHyWGcbwtR3dSAF
         qeW56NmbyMYToy7EY/KWZzjNBaS0X/yw3cX+UFO7BMYTr45+qh4ygiXIpogSJKSHMZP0
         WDaXYHuvwup77gVDsmOyT7my+MMiiLpY+0hkDkhz7Bs9iv94BlV7lEPyFxgp/Yfx6YrU
         lyi6aMK3M4x56Q1cgONiaP2BUsPwZOc18ogiR4ymekjlq44iOjmOkWSry4RfKl/shN6G
         AmL/VNGXWope/c/H4+TkVuhB/RESvB31az9L/dJCEqRHSW8MfXGyIFrterPRQvZDUif3
         zO/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759385336; x=1759990136;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UpifXrkDvDh1xYGpNX5UKxh32Xx9f0TyTyPM+srBPqY=;
        b=w3eXBG0jFrwvfCtuzod2NzRnpJtUJLUVNoYMIkzDgDrR4kTmX1BillWx1oKvmLxyHK
         YMgydLR/F7/PXC+KMTv6bTd1oKdacdD4Yx+IJXFYlpKUNU3BRc9n7XMbN+6TV8AzllgH
         2SoVojr25/HON3VDnDgBU51SJnkmZSOMOP1UDf+E2KuknZsiFX3kH4+p9OmBZCc1njQR
         9OnKpPLOO8f/6rdW09Caa5PaPzktn13BVt796f1g1egFvduCUM3GuBXEKzlU5w6ss6ZX
         kHroHnP2tuCEh8hHXwNccbaoVexW/1rkdoN82O22N1dxlPUtqFKZH0FZWB8DyD9Qv8pI
         7k3g==
X-Forwarded-Encrypted: i=1; AJvYcCU3KflejsmQ9mRm8DewjvYMFvBpDEfgkRxqUwqBwpuCnETVIK6xLECHB3OX0OPG958/F/X6iGYYJt01@vger.kernel.org
X-Gm-Message-State: AOJu0YyANxZrEuRTImOsdyNrqR+pYf7WI+hzpemVXQrcCmn56GiITtba
	9YspvlBvneCvGlSgCQUfWylXPOP+tmzCowvdfi50f2RoupatCaFs8F2XTL2XEbRIBu4=
X-Gm-Gg: ASbGnctZbOxzdPYS5v2zENvHVtcgLUmgEEeoxdir5oUOCV+UmZx5/6JM3Vp/Y2oqhbL
	jIM35RA3kETvLM7BbExNzdxiqy+cqk6NvJ1ShCbflvCH8/Dzqp27AEFC6iPeNsZponHqGO6mw7b
	IxOoFvSLDJ5QIdNfz4Di7KqfBA/SpyflHq5LUMOIC39HHmoNaV0BuPZcIryTizfGd4MMg0HGQRf
	A6AX9Mvvh6JaSpjhNwneaQHqy7kHNS6WTFH1kb+ahAMVZXT+5cGgZj60jKAtMGyVVdjIsrSHZaZ
	CFWxMQJJOWmrOqXwEgv47h3nFUxr3L/923Bic3zktQwhuyQYGWpiW4m6BeKd23oWty9dKObDT4s
	jurWTCpZLxyHh9Su9nrSifXrvMcn3mF5diSi7PbUtTGYcY20JxT0KY0vV/HgtYhXIu5wLEWbzcq
	jkooC1QwF7WPxkjQ==
X-Google-Smtp-Source: AGHT+IGsK5zmN/1TMI8l5ShAU1WG5heF+BcYOUnln5ovyw9K+EhBee4z4X9UbHLvM+t1E8NyUqH7Qw==
X-Received: by 2002:a05:6a21:6da8:b0:2be:8ead:1bec with SMTP id adf61e73a8af0-32a261f1677mr2900159637.24.1759385336405;
        Wed, 01 Oct 2025 23:08:56 -0700 (PDT)
Received: from localhost.localdomain ([122.171.19.158])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f594afsm1205029a12.37.2025.10.01.23.08.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 23:08:55 -0700 (PDT)
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
Subject: [PATCH 05/11] rvtrace: Add trace encoder driver
Date: Thu,  2 Oct 2025 11:37:26 +0530
Message-ID: <20251002060732.100213-6-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251002060732.100213-1-apatel@ventanamicro.com>
References: <20251002060732.100213-1-apatel@ventanamicro.com>
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
index 000000000000..45d1c5b12c51
--- /dev/null
+++ b/drivers/hwtracing/rvtrace/rvtrace-encoder.c
@@ -0,0 +1,107 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2025 Ventana Micro Systems Inc.
+ */
+
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/of_graph.h>
+#include <linux/platform_device.h>
+#include <linux/property.h>
+#include <linux/rvtrace.h>
+#include <linux/types.h>
+
+#define RVTRACE_COMPONENT_CTRL_ITRACE_MASK	0x1
+#define RVTRACE_COMPONENT_CTRL_ITRACE_SHIFT	2
+#define RVTRACE_COMPONENT_CTRL_INSTMODE_MASK	0x7
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
+	u32 val;
+
+	val = rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
+	val &= ~BIT(RVTRACE_COMPONENT_CTRL_ITRACE_SHIFT);
+	rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
+	return rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
+				RVTRACE_COMPONENT_CTRL_ITRACE_SHIFT, 0,
+				comp->pdata->control_poll_timeout_usecs);
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


