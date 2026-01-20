Return-Path: <devicetree+bounces-257169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2043FD3BE44
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:18:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AE1554E9451
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:17:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4D4E33E35D;
	Tue, 20 Jan 2026 04:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5O6wA2S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273A433CEBC;
	Tue, 20 Jan 2026 04:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882526; cv=none; b=YQ9uKX5lZFLqoFzgq0AC93ladeYT/7YwYpKSlIds2TohvN5kaRlT8BGIvZsieL5EvyPsHQIPJQtuEDgm2VFw8Y1tPD8X4Y9sG6CGxzJCG1QEiUShC7N4vIZdbUep0pFUQDLFprjfge9KVxHF3tl+oawQzgS/YuVno3B08SXkR6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882526; c=relaxed/simple;
	bh=R1lDGdU7iIiekrd1oymtfCVNrLHfj85DdbG3x9sBksw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=OklOgfga1uWZFbhSnXfflRGn+dhmpr+TMIyaSa6AEQk8TnO9CQ/rlJYnqcGwqaefBWvKzwm04alegOOeRpN/aQ0Ck8q4jEo/9dB8hJX6bqKOmQUNE1msztuE3enYsbWAvPs324MldQwAo8Npy2JH1BEYgDu/EEK9d7d0rEArYKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5O6wA2S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2260C2BC87;
	Tue, 20 Jan 2026 04:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882525;
	bh=R1lDGdU7iIiekrd1oymtfCVNrLHfj85DdbG3x9sBksw=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=o5O6wA2Sa7mj9exOhlWMr60IUo9V+uZYDFgj/AhtuKNokK4T3QyFOibJGyRd/1tvh
	 OlI8fL+nnGEs9NWYESHV2Ln6pnEEjX1xeBGGxoAFo6Yjtgv4DJxBR67E1V19Ji1w0T
	 ru6gkzgY1nuC/RU8Nt7mQvtbTH1brAy6rmgME1DwHJBF7uTBQ/uheBfPdA85pqFZy0
	 TTpO4Ua/33Wtye91iWendEhluYKw7bEVDuNHZuECacmYeyVzJIQ8R7fPgk9c9Gsn5f
	 QQJVQkom/0DVWSGuPP29AUkhY8ygZTpcvbJCaOZQeOJbb4SBneVreDS6c0YgELxqKh
	 UtBt/nasszGpg==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:51 -0800
Subject: [PATCH NFU RFC 14/19] resctrl: riscv: add CBQRI cache controller
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ssqosid-cbqri-v1-14-aa2a75153832@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3582; i=fustini@kernel.org;
 h=from:subject:message-id; bh=R1lDGdU7iIiekrd1oymtfCVNrLHfj85DdbG3x9sBksw=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwbPd3m6brnUfHdzF68gA205o7A5f5Y/vX7961zf9
 V6HTss+6yhlYRDjYpAVU2TZ9CHvwhKv0K8L5r/YBjOHlQlkCAMXpwBM5KMZI0NvyR13W+maSyv5
 81fnPVsf/LTjXeQOW5t5nClJBgc62h4y/I/4cJxpakut2He/3U9mLlK4Eq8vvf2afgnHv7lGHCu
 mf2IDAA==
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

[NOT FOR UPSTREAM]

Add example driver for a cache controller that implements CBQRI capacity
allocation.

Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 drivers/resctrl/riscv/cbqri_cache.c | 106 ++++++++++++++++++++++++++++++++++++
 1 file changed, 106 insertions(+)

diff --git a/drivers/resctrl/riscv/cbqri_cache.c b/drivers/resctrl/riscv/cbqri_cache.c
new file mode 100644
index 000000000000..0bee65eefb2d
--- /dev/null
+++ b/drivers/resctrl/riscv/cbqri_cache.c
@@ -0,0 +1,106 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define pr_fmt(fmt) "cbqri-cache: " fmt
+
+#include <linux/device.h>
+#include <linux/of.h>
+#include <linux/riscv_qos.h>
+
+static const struct of_device_id cbqri_cache_ids[] = {
+	{ .compatible = "riscv,cbqri-cache" },
+	{ }
+};
+
+static int __init cbqri_cache_init(void)
+{
+	struct cbqri_controller_info *ctrl_info;
+	struct device_node *np;
+	u32 value;
+	int err;
+
+	for_each_matching_node(np, cbqri_cache_ids) {
+		if (!of_device_is_available(np)) {
+			of_node_put(np);
+			continue;
+		}
+
+		ctrl_info = kzalloc(sizeof(*ctrl_info), GFP_KERNEL);
+		if (!ctrl_info)
+			goto err_node_put;
+		ctrl_info->type = CBQRI_CONTROLLER_TYPE_CAPACITY;
+
+		err = of_property_read_u32_index(np, "reg", 1, &value);
+		if (err) {
+			pr_err("Failed to read reg base address (%d)", err);
+			goto err_kfree_ctrl_info;
+		}
+		ctrl_info->addr = value;
+
+		err = of_property_read_u32_index(np, "reg", 3, &value);
+		if (err) {
+			pr_err("Failed to read reg size (%d)", err);
+			goto err_kfree_ctrl_info;
+		}
+		ctrl_info->size = value;
+
+		err = of_property_read_u32(np, "cache-level", &value);
+		if (err) {
+			pr_err("Failed to read cache level (%d)", err);
+			goto err_kfree_ctrl_info;
+		}
+		ctrl_info->cache.cache_level = value;
+
+		err = of_property_read_u32(np, "cache-size", &value);
+		if (err) {
+			pr_err("Failed to read cache size (%d)", err);
+			goto err_kfree_ctrl_info;
+		}
+		ctrl_info->cache.cache_size = value;
+
+		err = of_property_read_u32(np, "riscv,cbqri-rcid", &value);
+		if (err) {
+			pr_err("Failed to read RCID count (%d)", err);
+			goto err_kfree_ctrl_info;
+		}
+		ctrl_info->rcid_count = value;
+
+		err = of_property_read_u32(np, "riscv,cbqri-mcid", &value);
+		if (err) {
+			pr_err("Failed to read MCID count (%d)", err);
+			goto err_kfree_ctrl_info;
+		}
+		ctrl_info->mcid_count = value;
+
+		/*
+		 * For CBQRI, any cpu (technically a hart in RISC-V terms)
+		 * can access the memory-mapped registers of any CBQRI
+		 * controller in the system. Therefore, set the CPU mask
+		 * to 'FF' to allow all 8 cores in the example Qemu SoC
+		 */
+		err = cpumask_parse("FF", &ctrl_info->cache.cpu_mask);
+		if (err) {
+			pr_err("Failed to convert cores mask string to cpumask (%d)", err);
+			goto err_kfree_ctrl_info;
+		}
+
+		of_node_put(np);
+
+		pr_debug("addr=0x%lx max-rcid=%u max-mcid=%u level=%d size=%u",
+			 ctrl_info->addr, ctrl_info->rcid_count, ctrl_info->mcid_count,
+			 ctrl_info->cache.cache_level, ctrl_info->cache.cache_size);
+
+		/* Fill the list shared with RISC-V QoS resctrl */
+		INIT_LIST_HEAD(&ctrl_info->list);
+		list_add_tail(&ctrl_info->list, &cbqri_controllers);
+	}
+
+	return 0;
+
+err_kfree_ctrl_info:
+	kfree(ctrl_info);
+
+err_node_put:
+	of_node_put(np);
+
+	return err;
+}
+device_initcall(cbqri_cache_init);

-- 
2.43.0


