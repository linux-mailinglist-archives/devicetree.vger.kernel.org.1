Return-Path: <devicetree+bounces-257161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B23C4D3BE33
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:16:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 021F24E880B
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:16:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 354FC33C194;
	Tue, 20 Jan 2026 04:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTqecJFg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F269133BBD8;
	Tue, 20 Jan 2026 04:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882521; cv=none; b=OBHBQFYLi2Z3bn1Ev3NV1uf1UeD4IaVSk4Cm0uGvbKoobn2cqCm162/tuLXJFRe51gcdn+MrrCB8E23VElB0NQbEKYdtXoURrjpI8cSfQ1xoLIrT+wCYle35csOexEHQanu8ayNWkP8Xpvol4M9l4LjVULjDqwsw9U2P7+Qpbgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882521; c=relaxed/simple;
	bh=W0zogC96arTBm1Kk9wlCZRwh/gtmVd8rFFkcBWq21X8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=bMuJQ3uDwIknN2TzkEQeooy9Zata93hwBXDlvHDG9K4oUgO53BQ7NcMWuRbIW7qAk8XpoLGlppuFdvjt+lzcJxksdTkFCD3mV8NyJLxCyCtBFrEjUjEsdi/FK1lHg4ynrJO9MYGL3gRsScSGQdL8FzeA3Z6q2gOrsV3bZPQdLJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTqecJFg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3530C2BC86;
	Tue, 20 Jan 2026 04:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882520;
	bh=W0zogC96arTBm1Kk9wlCZRwh/gtmVd8rFFkcBWq21X8=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=iTqecJFgy7DP7NJEXOG0D+7xVxQpbpFr7ExRdsq8hnn7jzrAeapDKTeemFT3VCg/k
	 ugjrp/u0Bq74wcUnOJUUJDcU/5a5RK4B8FbgUzuMPibkq8zvqnHugbf7U2rS35INK7
	 NG+/+r+PO4JCWAVPXmNRcTNDDXoV075Bv6Ychxyb3DfobiKFZby2PIIoGPBU0PrPU4
	 Te++cye6IHxqeETHYapq1519jlMVONamWiWWqf5H1+JHRkrDxfErpbmz3FNwPOA0es
	 difE0Lh3wNUtWpdgi9creZ0DynzBJJzi/hC0O2KBFksYqPMzZXjDtFKUBfVcX//pEs
	 vkj6bwVoi0jxw==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:43 -0800
Subject: [PATCH RFC 06/19] RISC-V: QoS: define CBQRI resctrl resources and
 domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ssqosid-cbqri-v1-6-aa2a75153832@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1672; i=fustini@kernel.org;
 h=from:subject:message-id; bh=W0zogC96arTBm1Kk9wlCZRwh/gtmVd8rFFkcBWq21X8=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwZNSRLbqHRN41jHZ+f3/4p3tXBd8bolqeqnpzvxm
 PT5bVGHOkpZGMS4GGTFFFk2fci7sMQr9OuC+S+2wcxhZQIZwsDFKQATmbKf4X/dW63JwsGf3j5a
 fP2myTNf9SVGr/PNtfbaXnXlqD+wOSeD4a80d7iIif7v6rZ5c646TTr8151x7fm0ttCnv54I1Gf
 PE+UDAA==
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

Define data structures to encapsulate the resctrl resource
and domain structures.

Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
[fustini: rebased on riscv/for-next]
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 arch/riscv/kernel/qos/internal.h | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/riscv/kernel/qos/internal.h b/arch/riscv/kernel/qos/internal.h
index ff2c7eff50be..c0402dd06cfa 100644
--- a/arch/riscv/kernel/qos/internal.h
+++ b/arch/riscv/kernel/qos/internal.h
@@ -65,6 +65,11 @@
 #define CBQRI_BC_ALLOC_CTL_OP_READ_LIMIT   2
 #define CBQRI_BC_ALLOC_CTL_STATUS_SUCCESS  1
 
+int qos_resctrl_setup(void);
+void qos_resctrl_exit(void);
+int qos_resctrl_online_cpu(unsigned int cpu);
+int qos_resctrl_offline_cpu(unsigned int cpu);
+
 /* Capacity Controller hardware capabilities */
 struct riscv_cbqri_capacity_caps {
 	u16 ncblks; /* number of capacity blocks */
@@ -125,4 +130,26 @@ struct cbqri_controller {
 	bool mon_capable;
 };
 
+struct cbqri_resctrl_res {
+	struct rdt_resource     resctrl_res;
+	struct cbqri_controller controller;
+	u32 max_rcid;
+	u32 max_mcid;
+};
+
+struct cbqri_resctrl_dom {
+	struct rdt_domain_hdr       resctrl_dom_hdr;
+	struct rdt_ctrl_domain  resctrl_ctrl_dom;
+	struct rdt_mon_domain   resctrl_mon_dom;
+	u64 cbm;
+	u64 rbwb;
+	u64 *ctrl_val;
+	struct cbqri_controller *hw_ctrl;
+};
+
+struct cbqri_config {
+	u64 cbm; /* capacity block mask */
+	u64 rbwb; /* reserved bandwidth blocks */
+};
+
 #endif /* _ASM_RISCV_QOS_INTERNAL_H */

-- 
2.43.0


