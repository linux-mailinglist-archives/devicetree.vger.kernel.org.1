Return-Path: <devicetree+bounces-257170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BA434D3BE3F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:17:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9BE92351E95
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26A1A33D513;
	Tue, 20 Jan 2026 04:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCOBNF3y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A845D33E361;
	Tue, 20 Jan 2026 04:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882526; cv=none; b=uYaZUUcgapSm71nmKdav02El5568Ok4XuIxEbVnXtqcHqNMkUBxVGl6WBxvQnRcDu8Fbtiksvs00/YTHi0n7bs22sKzDTSIOkhxap3IwPVGZaS8csPEjZtHmYn4vX7O7DaNt4lBMeALQejQx7vpoiXQM9bNQ9nE7VcivSgLAKmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882526; c=relaxed/simple;
	bh=3hAMXnvjLCvZuLkN0WdyCAoEU5EJcEF/iWW3PasfPck=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=V3xnBaIalh1zYm7cJKMACe08SMHd7r6HNaxY/8RamAr/KGN3PVlR8CkYO3KOTnFdzDs5Ijwp3ZqOksgwwxHM1s2hYMW3YSKQIylja+rq3EI2lwPmp1P0FsdMAlcBVpYKbNHYPn8ZAAAYv4Suz8oa/xI6cUBQjf6g5UnX23jbBmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCOBNF3y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EBC7C2BCAF;
	Tue, 20 Jan 2026 04:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882526;
	bh=3hAMXnvjLCvZuLkN0WdyCAoEU5EJcEF/iWW3PasfPck=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=NCOBNF3y+UrdmyS49PT7n0srA8e8n9hSaC3seECAgp50Q29iJX+lJJju7IyABKaNj
	 0ZqtZ9RlOStNPHWd4U0F/H/+3qBxj1MEvFnwpC83RzNZyI78xb/vIWCC6hcAdw0VGD
	 A9LpOmmSnUs8xiyo/SvLZXdalZM8F8a3wW7ipqqxUt5s6jBi/pW6cO4QlBWOyw4eJj
	 6nCT8Mrn7aTLKaDrmdjiI3xlLDYupPhtUXTNFcL1Htmjxhl1brpJKYaxjcyr/wB4uY
	 o02xbB6cimgvS9YRjgUjSge82H2YfjV8Q/Tg4V5ETAKE2uLy99yyfoYy41NYyVx3d4
	 PR1IBl0ZWTMQw==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:52 -0800
Subject: [PATCH NFU RFC 15/19] resctrl: riscv: add CBQRI bandwidth
 controller driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ssqosid-cbqri-v1-15-aa2a75153832@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2638; i=fustini@kernel.org;
 h=from:subject:message-id; bh=3hAMXnvjLCvZuLkN0WdyCAoEU5EJcEF/iWW3PasfPck=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwbn/8v13chTdUpN9lEOU8TzUPZ6q5NPfpVN+XD97
 YUp//+YdpSyMIhxMciKKbJs+pB3YYlX6NcF819sg5nDygQyhIGLUwAmcteKkeHIlWjJa+pxD7ce
 /vPsxKZFU05HrNv17dgzo74fFj9EzyhZMvzhbTQpOxrXseyb0cPUHecEewqvcl0Qmbft0sG+/uy
 2viNMAA==
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

[NOT FOR UPSTREAM]

Add example driver for a CBQRI bandwidth controller.

Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 drivers/resctrl/riscv/cbqri_bandwidth.c | 79 +++++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/drivers/resctrl/riscv/cbqri_bandwidth.c b/drivers/resctrl/riscv/cbqri_bandwidth.c
new file mode 100644
index 000000000000..13649d56b7dc
--- /dev/null
+++ b/drivers/resctrl/riscv/cbqri_bandwidth.c
@@ -0,0 +1,79 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define pr_fmt(fmt) "cbqri-bandwidth: " fmt
+
+#include <linux/device.h>
+#include <linux/of.h>
+#include <linux/riscv_qos.h>
+
+static const struct of_device_id cbqri_mem_ctrl_ids[] = {
+	{ .compatible = "riscv,cbqri-bandwidth" },
+	{ }
+};
+
+static int __init cbqri_mem_ctrl_init(void)
+{
+	struct cbqri_controller_info *ctrl_info;
+	struct device_node *np;
+	u32 value;
+	int err;
+
+	for_each_matching_node(np, cbqri_mem_ctrl_ids) {
+		if (!of_device_is_available(np)) {
+			of_node_put(np);
+			continue;
+		}
+
+		ctrl_info = kzalloc(sizeof(*ctrl_info), GFP_KERNEL);
+		if (!ctrl_info)
+			goto err_node_put;
+		ctrl_info->type = CBQRI_CONTROLLER_TYPE_BANDWIDTH;
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
+		of_node_put(np);
+
+		pr_debug("addr=0x%lx max-rcid=%u max-mcid=%u", ctrl_info->addr,
+			 ctrl_info->rcid_count, ctrl_info->mcid_count);
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
+device_initcall(cbqri_mem_ctrl_init);

-- 
2.43.0


