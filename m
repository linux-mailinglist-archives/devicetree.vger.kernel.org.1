Return-Path: <devicetree+bounces-257159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 85334D3BE2F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:15:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AAFA334DBDB
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E27DA33B94B;
	Tue, 20 Jan 2026 04:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiKv/zLS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C94933B6F6;
	Tue, 20 Jan 2026 04:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882519; cv=none; b=MT349yNoEoJSTiHPgaXgnDGjNKwC8uj8CCNIrjot/kP+rVqYPCV+QLPnoX5e2PQcmr+wlRlTEjWA6AnbEcwmAXx7vVyRFnEyLix6YdB18LKkGPTxt/CYU1kn3gZ7u/CVwu7of/vUAsIAN0FT3OTzt1aEtGChZV4BRzBru8n2hpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882519; c=relaxed/simple;
	bh=e1gD37k8W4Pzp7U55pR9/mebQe/hwn2pjhUSiquHa+s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=r5FHoYrFvukBwTBDJaBnDENFpklwnaN6d+dMYhQfIQ76ysmzgKtIV49zFZVWI8UvekwtW9xPa7g/1rPPKhONPtNR8gI2UH6wM4HUxkOUsW6gLyUm0D0PifzlzqoJ9kCQavD3JtikfHpF68N8vHrhQeFQHqEun8PgYzAQH1LJtBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiKv/zLS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3B24C19421;
	Tue, 20 Jan 2026 04:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882519;
	bh=e1gD37k8W4Pzp7U55pR9/mebQe/hwn2pjhUSiquHa+s=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=KiKv/zLSLl24ROOPMupclmjRMeAtAOud503ezve+J0sps06z8lg9xDGgs/gxUV5Gf
	 TpioUc53xeE9Kywr78ChG8mllTEAzfw4cPwXBcsukdRnu6tGYISiJYIR/eQz+mBq+E
	 48Yy4fg1W4RIGbHi/R5PwdSaCafnCVt8CMlR9AyiKmvl5Gipz9pwJmS64NNP7bCrC+
	 +GNPzmTx5XwlxjoVT53PQziE9KwEaUWjSrArbNDI9cHwe9f0B9w2CRfVVO9DZRxWSO
	 wuVQdAzZyecEG2h8cvBfO8DI3GxW+YYYKfA4Muk10qsrmRxOJZjJ/pJvfearNKTPbo
	 ECUOH69/YBVvw==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:41 -0800
Subject: [PATCH RFC 04/19] RISC-V: QoS: define properties of CBQRI
 controllers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ssqosid-cbqri-v1-4-aa2a75153832@kernel.org>
References: <20260119-ssqosid-cbqri-v1-0-aa2a75153832@kernel.org>
In-Reply-To: <20260119-ssqosid-cbqri-v1-0-aa2a75153832@kernel.org>
To: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 =?utf-8?q?Radim_Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@ventanamicro.com>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Adrien Ricciardi <aricciardi@baylibre.com>, 
 Nicolas Pitre <npitre@baylibre.com>, 
 =?utf-8?q?Kornel_Dul=C4=99ba?= <mindal@semihalf.com>, 
 Atish Patra <atish.patra@linux.dev>, 
 Atish Kumar Patra <atishp@rivosinc.com>, 
 Vasudevan Srinivasan <vasu@rivosinc.com>, Ved Shanbhogue <ved@rivosinc.com>, 
 yunhui cui <cuiyunhui@bytedance.com>, Chen Pei <cp0613@linux.alibaba.com>, 
 Liu Zhiwei <zhiwei_liu@linux.alibaba.com>, Weiwei Li <liwei1518@gmail.com>, 
 guo.wenjia23@zte.com.cn, liu.qingtao2@zte.com.cn, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Reinette Chatre <reinette.chatre@intel.com>, 
 Tony Luck <tony.luck@intel.com>, Babu Moger <babu.moger@amd.com>, 
 Peter Newman <peternewman@google.com>, Fenghua Yu <fenghua.yu@intel.com>, 
 James Morse <james.morse@arm.com>, Ben Horgan <ben.horgan@arm.com>, 
 Dave Martin <Dave.Martin@arm.com>, Drew Fustini <fustini@kernel.org>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, x86@kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1881; i=fustini@kernel.org;
 h=from:subject:message-id; bh=e1gD37k8W4Pzp7U55pR9/mebQe/hwn2pjhUSiquHa+s=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwZN5rP20bO/dDmHP7S/7cIfjRLnCTPvKu/bpdMrd
 k1Rtkyho5SFQYyLQVZMkWXTh7wLS7xCvy6Y/2IbzBxWJpAhDFycAjCR/+WMDCdWXmdxLXSdYd+X
 7Jqy/MAknU83Y5fYaG5kF2bp/ftC7gUjwxP9amW2zDSJeYve7TkxOcxI59RiGR8vtguPhbXezL2
 6kwEA
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

Define data structure to represent the CBQRI properties that a driver
for an CBQRI-capable controller would discover during probe.

Each instance of a CBQRI-capable controller is added to a list that the
RISC-V CBQRI resctrl implementation will consume.

Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 MAINTAINERS               |  1 +
 include/linux/riscv_qos.h | 34 ++++++++++++++++++++++++++++++++++
 2 files changed, 35 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e98d553bd0ca..31e536304972 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22511,6 +22511,7 @@ L:	linux-riscv@lists.infradead.org
 S:	Supported
 F:	arch/riscv/include/asm/qos.h
 F:	arch/riscv/kernel/qos/
+F:	include/linux/riscv_qos.h
 
 RISC-V RPMI AND MPXY DRIVERS
 M:	Rahul Pathak <rahul@summations.net>
diff --git a/include/linux/riscv_qos.h b/include/linux/riscv_qos.h
new file mode 100644
index 000000000000..51c3a96bbcd0
--- /dev/null
+++ b/include/linux/riscv_qos.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __LINUX_RISCV_QOS_H
+#define __LINUX_RISCV_QOS_H
+
+#include <linux/iommu.h>
+#include <linux/types.h>
+
+#include <asm/qos.h>
+
+enum cbqri_controller_type {
+	CBQRI_CONTROLLER_TYPE_CAPACITY,
+	CBQRI_CONTROLLER_TYPE_BANDWIDTH,
+	CBQRI_CONTROLLER_TYPE_UNKNOWN
+};
+
+struct cbqri_controller_info {
+	unsigned long addr;
+	unsigned long size;
+	enum cbqri_controller_type type;
+	u32 rcid_count;
+	u32 mcid_count;
+	struct list_head list;
+
+	struct cache_controller {
+		u32 cache_level;
+		u32 cache_size; /* in bytes */
+		struct cpumask cpu_mask;
+	} cache;
+};
+
+extern struct list_head cbqri_controllers;
+
+#endif /* __LINUX_RISCV_QOS_H */

-- 
2.43.0


