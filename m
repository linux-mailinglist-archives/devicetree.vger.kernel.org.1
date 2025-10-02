Return-Path: <devicetree+bounces-223277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CA8BB2974
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 08:09:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B19B27A797E
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 06:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98A0A296BBD;
	Thu,  2 Oct 2025 06:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="d5Yuli6B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C542C027B
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 06:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759385352; cv=none; b=MDh6fVF1TLfB168L6H6e7f5K7j4max1OWGmG91Boo9UiorphT9M+J/bp9SROc6hOb6VyvpE5JJm9xnicA3t60o5e27XKF6qFbSyJIm65TcOj9j45SV9s2f2DdZc2v2BTBg1bSMP9JT9UZQB+ft/6+NUDxHmJlP5i81aGHVfxsEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759385352; c=relaxed/simple;
	bh=XEFA8zyiDZVVbLjKoilUQi+l/dTbcVsvCwesMof/7ow=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t9sROcqIVJevQPPDXh1b0fEsn+tpqCJ9B5QWf/IB96LcE2K/Kl0d3DfVmXqM+FUagSwrQTb3dYbz89jJodqVboLj1uUUp+PwFDgptC1YuzKXgorfA63ca0ZVmIF/OrYwAm45PaCujZDeAS7SxpRoXuLEIq3KXqRQkkUD7Ar78UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=d5Yuli6B; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-32df5cae0b1so974279a91.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 23:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1759385350; x=1759990150; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ftqbP+UQqSEu2f4CDXI8ip1QBHLXUd+nnX5oELppTk=;
        b=d5Yuli6BxUk6olra3rf21GWsTEeVvxc8xVqhMpsV0lFhes+Fvi7zbG9TeHngG4zqG+
         X4PJOmZHbq5BxLaX/pl02NJb5XKjxDTAM6aIwt7BPKXiW8P/GY5qJDgYigTJOVbC+2dP
         Yr8/DNpRu7OQMohrYd0cNfnDVMo/9Epb4qXb3kVACtZ4hz6acJIZsJLoAATF4+GvF8KH
         vyd4iye1yy6lTUoJk44JlFO0YRbKVYCGvcCxxrqQLVusXsllUpe05yxpPSI2Z7hqYt8q
         tJx58panx1+ca9/5CiJMpO33BXpwk6a9KbJJs/JYRddaBiTaBYNpo2V7lPBdy/YZL+ol
         R48g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759385350; x=1759990150;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ftqbP+UQqSEu2f4CDXI8ip1QBHLXUd+nnX5oELppTk=;
        b=IsOWuVaWhi1b0gc8xRp3GRY0ebbJaOgJGzsTQGW0DvuCJh5rxDq7zm6Y1Vl8O8RGE6
         fz0ufdc2ngvlIeyg2pbWJ6xQjdMhu81wz/rq/jIn21Vw9D4XjxxuHY0714wW0CWEUJG5
         fkifRvL2PfhbQd8k3N5x4lDMcd7KeAAOruEkBEsqekcW7FUGOlgPSy8OsqylLENS/god
         XJ3HcPkqY+tJPiyiQbPQpnvIzBBHdefXYaSsZRORM31fUYPrIe0u1abrM416rkBFLbR5
         +GBnVhIED+u6WUJWrBZOX/gpqp4S2Jbvc/UPMPP8jYe2nILdmGRvxIyIAwitQXECLdfr
         s+Og==
X-Forwarded-Encrypted: i=1; AJvYcCXGcJIjIH1hH3+WIgDhYOkY/FOXMkwFGQyrad3h79HTPzla5SqtcxOGAbO5j7mA5hc58VkxA7y+5mya@vger.kernel.org
X-Gm-Message-State: AOJu0YzvmRK4q2Ov/fp4Hi027ZBylN3d/22Z7QaduUvRVTCpWQ6JKuNI
	JY0v97gZlvBDAWf+KLykZa4Alr3hwRCIbaNgHLWUvK0f98e9yzEYbpEqMM1BVeLzehY=
X-Gm-Gg: ASbGncupD/1eI0qM4AkF6WR+1UjvBZfRxMlRFBszSP5v4lvAHkvZxFmQt85Xc+QLeJT
	fPeT0hhzvXhMlMjUzK8DlAtyWvh+lgb8aqZjyDh7KUNBXbWQwtBR2P2HzrB4c+46y3CJ4fCf+nG
	+L2T6O5OgdvTrmZK12KMUU1RCLa6TclktbT1Lr3AhIkUUDK0UUhB5dVMwxuFEyyErhKL+IkcBOJ
	k+kbEE+AWOUUCrSJiY5q5Ts1wh5xRM/4EvgyssknS741l9wFF6mOrBFDPDboPsJOcCC9tYjD6ZW
	o3gY10nMwUD6JjMaHcdSxpqB7xTNJvEcelTX3k8gd4usAaQdMiNYSXi699x2nfvJYUjIzjS8ryN
	wYptrUKL3Ja4zn+mYOBGFXq54XG8/+o7LVv4wvoRBvFTxKsUdU/B5mLCYHGEMpuY7AxhkVZzZcS
	UacFs=
X-Google-Smtp-Source: AGHT+IEFL89FRAz70PFiXxdbB3Wjgy9mSV6Pk0dwPsKpmwVWnajTDyjSSOaPk9cpQlVIA3PETGEPeQ==
X-Received: by 2002:a17:90b:4a87:b0:32b:623d:ee91 with SMTP id 98e67ed59e1d1-339a6f36e19mr6863672a91.27.1759385349850;
        Wed, 01 Oct 2025 23:09:09 -0700 (PDT)
Received: from localhost.localdomain ([122.171.19.158])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f594afsm1205029a12.37.2025.10.01.23.09.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 23:09:09 -0700 (PDT)
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
Subject: [PATCH 07/11] rvtrace: Add trace ramsink driver
Date: Thu,  2 Oct 2025 11:37:28 +0530
Message-ID: <20251002060732.100213-8-apatel@ventanamicro.com>
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

Add initial implementation of RISC-V trace ramsink driver. The ramsink
is defined in the RISC-V Trace Control Interface specification.

Co-developed-by: Anup Patel <apatel@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
---
 drivers/hwtracing/rvtrace/Kconfig           |   8 +
 drivers/hwtracing/rvtrace/Makefile          |   1 +
 drivers/hwtracing/rvtrace/rvtrace-ramsink.c | 198 ++++++++++++++++++++
 3 files changed, 207 insertions(+)
 create mode 100644 drivers/hwtracing/rvtrace/rvtrace-ramsink.c

diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rvtrace/Kconfig
index ba35c05f3f54..aef7e9989165 100644
--- a/drivers/hwtracing/rvtrace/Kconfig
+++ b/drivers/hwtracing/rvtrace/Kconfig
@@ -21,3 +21,11 @@ config RVTRACE_ENCODER
 	default y
 	help
 	  This driver provides support for RISC-V Trace Encoder component.
+
+config RVTRACE_RAMSINK
+	tristate "RISC-V Trace Ramsink driver"
+	depends on RVTRACE
+	default y
+	help
+	  This driver provides support for Risc-V E-Trace Ramsink
+	  component.
diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracing/rvtrace/Makefile
index f320693a1fc5..122e575da9fb 100644
--- a/drivers/hwtracing/rvtrace/Makefile
+++ b/drivers/hwtracing/rvtrace/Makefile
@@ -3,3 +3,4 @@
 obj-$(CONFIG_RVTRACE) += rvtrace.o
 rvtrace-y := rvtrace-core.o rvtrace-platform.o
 obj-$(CONFIG_RVTRACE_ENCODER) += rvtrace-encoder.o
+obj-$(CONFIG_RVTRACE_RAMSINK) += rvtrace-ramsink.o
diff --git a/drivers/hwtracing/rvtrace/rvtrace-ramsink.c b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
new file mode 100644
index 000000000000..7bd0cf1e4dfd
--- /dev/null
+++ b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
@@ -0,0 +1,198 @@
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
+#include <linux/dma-mapping.h>
+#include <linux/rvtrace.h>
+#include <linux/types.h>
+#include <linux/sizes.h>
+
+#define RVTRACE_RAMSINK_STARTLOW_OFF		0x010
+#define RVTRACE_RAMSINK_STARTHIGH_OFF		0x014
+#define RVTRACE_RAMSINK_LIMITLOW_OFF		0x018
+#define RVTRACE_RAMSINK_LIMITHIGH_OFF		0x01c
+#define RVTRACE_RAMSINK_WPLOW_OFF		0x020
+#define RVTRACE_RAMSINK_WPHIGH_OFF		0x024
+#define RVTRACE_RAMSINK_RPLOW_OFF		0x028
+#define RVTRACE_RAMSINK_RPHIGH_OFF		0x02c
+
+struct rvtrace_ramsink_priv {
+	size_t size;
+	void *va;
+	dma_addr_t start;
+	dma_addr_t end;
+	/* WP from prev iteration */
+	dma_addr_t prev_head;
+};
+
+struct trace_buf {
+	void *base;
+	size_t size;
+	int cur, len;
+};
+
+static void tbuf_to_pbuf_copy(struct trace_buf *src, struct trace_buf *dst)
+{
+	int bytes_dst, bytes_src, bytes;
+	void *dst_addr, *src_addr;
+
+	while (src->size) {
+		src_addr = src->base + src->cur;
+		dst_addr = dst->base + dst->cur;
+
+		if (dst->len - dst->cur < src->size)
+			bytes_dst = dst->len - dst->cur;
+		else
+			bytes_dst = src->size;
+		if (src->len - src->cur < src->size)
+			bytes_src = src->len - src->cur;
+		else
+			bytes_src = src->size;
+		bytes = bytes_dst < bytes_src ? bytes_dst : bytes_src;
+		memcpy(dst_addr, src_addr, bytes);
+		dst->cur = (dst->cur + bytes) % dst->len;
+		src->cur = (src->cur + bytes) % src->len;
+		src->size -= bytes;
+	}
+}
+
+static size_t rvtrace_ramsink_copyto_auxbuf(struct rvtrace_component *comp,
+					    struct rvtrace_perf_auxbuf *buf)
+{
+	struct rvtrace_ramsink_priv *priv = dev_get_drvdata(&comp->dev);
+	struct trace_buf src, dst;
+	u32 wp_low, wp_high;
+	u64 buf_cur_head;
+	size_t size;
+
+	wp_low = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPLOW_OFF);
+	wp_high = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPHIGH_OFF);
+	buf_cur_head = (u64)(wp_high) << 32 | wp_low;
+
+	if (buf_cur_head == priv->prev_head)
+		return 0;
+
+	dst.base = buf->base;
+	dst.len = buf->length;
+	dst.cur = buf->pos;
+	dst.size = 0;
+
+	src.base = priv->va;
+	src.len = priv->end - priv->start;
+	if (buf_cur_head > priv->prev_head) {
+		src.size = buf_cur_head - priv->prev_head;
+	} else {
+		src.size = priv->end - priv->prev_head;
+		src.size += buf_cur_head - priv->start;
+	}
+
+	src.cur = buf_cur_head - priv->start;
+	size = src.size;
+	tbuf_to_pbuf_copy(&src, &dst);
+	buf->pos = dst.cur;
+	priv->prev_head = buf_cur_head;
+
+	return size;
+}
+
+static int rvtrace_ramsink_setup(struct rvtrace_component *comp)
+{
+	struct rvtrace_ramsink_priv *priv;
+
+	priv = devm_kzalloc(&comp->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+	dev_set_drvdata(&comp->dev, priv);
+
+	priv->size = SZ_4M;
+	priv->va = dma_alloc_coherent(&comp->dev, priv->size, &priv->start, GFP_KERNEL);
+	if (!priv->va)
+		return -ENOMEM;
+	priv->end = priv->start + priv->size;
+	priv->prev_head = priv->start;
+
+	/* Setup ram sink addresses */
+	rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVTRACE_RAMSINK_STARTLOW_OFF);
+	rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVTRACE_RAMSINK_STARTHIGH_OFF);
+	rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVTRACE_RAMSINK_WPLOW_OFF);
+	rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVTRACE_RAMSINK_WPHIGH_OFF);
+	/* Limit address needs to be set to end - 4 so that HW doesn't cause an overflow. */
+	rvtrace_write32(comp->pdata, lower_32_bits(priv->end - 0x4), RVTRACE_RAMSINK_LIMITLOW_OFF);
+	rvtrace_write32(comp->pdata, upper_32_bits(priv->end), RVTRACE_RAMSINK_LIMITHIGH_OFF);
+
+	return 0;
+}
+
+static void rvtrace_ramsink_cleanup(struct rvtrace_component *comp)
+{
+	struct rvtrace_ramsink_priv *priv = dev_get_drvdata(&comp->dev);
+
+	dma_free_coherent(&comp->dev, priv->size, priv->va, priv->start);
+}
+
+static int rvtrace_ramsink_probe(struct rvtrace_component *comp)
+{
+	int ret;
+
+	ret = rvtrace_ramsink_setup(comp);
+	if (ret)
+		return dev_err_probe(&comp->dev, ret, "failed to setup ramsink.\n");
+
+	ret = rvtrace_enable_component(comp);
+	if (ret)
+		return dev_err_probe(&comp->dev, ret, "failed to enable ramsink.\n");
+
+	return ret;
+}
+
+static void rvtrace_ramsink_remove(struct rvtrace_component *comp)
+{
+	int ret;
+
+	ret = rvtrace_disable_component(comp);
+	if (ret)
+		dev_err(&comp->dev, "failed to disable ramsink.\n");
+
+	rvtrace_ramsink_cleanup(comp);
+}
+
+static struct rvtrace_component_id rvtrace_ramsink_ids[] = {
+	{ .type = RVTRACE_COMPONENT_TYPE_RAMSINK,
+	  .version = rvtrace_component_mkversion(1, 0), },
+	{},
+};
+
+static struct rvtrace_driver rvtrace_ramsink_driver = {
+	.id_table = rvtrace_ramsink_ids,
+	.copyto_auxbuf = rvtrace_ramsink_copyto_auxbuf,
+	.probe = rvtrace_ramsink_probe,
+	.remove = rvtrace_ramsink_remove,
+	.driver = {
+		.name = "rvtrace-ramsink",
+	},
+};
+
+static int __init rvtrace_ramsink_init(void)
+{
+	return rvtrace_register_driver(&rvtrace_ramsink_driver);
+}
+
+static void __exit rvtrace_ramsink_exit(void)
+{
+	rvtrace_unregister_driver(&rvtrace_ramsink_driver);
+}
+
+module_init(rvtrace_ramsink_init);
+module_exit(rvtrace_ramsink_exit);
+
+/* Module information */
+MODULE_AUTHOR("Mayuresh Chitale <mchitale@ventanamicro.com>");
+MODULE_DESCRIPTION("RISC-V Trace Ramsink Driver");
+MODULE_LICENSE("GPL");
-- 
2.43.0


