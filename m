Return-Path: <devicetree+bounces-257160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EE525D3BE31
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:16:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 91354351270
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9380E33BBA7;
	Tue, 20 Jan 2026 04:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jai76Dba"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E2E2857C7;
	Tue, 20 Jan 2026 04:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882520; cv=none; b=XIFRSBQldbSB8/lJQFbGsFjuZiuOVU4GonRIU3snpGMd1UB9Jkul46RTN+cbK2j0g4t5ZvIsVHSAtWpRrHRvRhy47iCUXwTl3+e5qYu3m+RHxW0XDS9bb3hToFU22VGYroIdlHtpZFAyhm5wYTCHWGZkPWl9YQwHaP46b4bAhZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882520; c=relaxed/simple;
	bh=uuacy5TWBWCqGEovDfg1uYj/N0C7aRhzBOjqrPUPGZE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=TWDrkSCz5NJj1wfFnYH3xQzB2YNneBzkl0M476761sbpp4scqdf5je+lwjqA0ZqkejSYiiiHBd+YjAXq3sNH8Pg/HUs3LxwXR7V5RvZukB3MMiHit1ot3cs+NdvmIsPQOEXIOvKLcIt+fUoHVZQbKTPYz+MEIPrJAXx9fH+ROKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jai76Dba; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FC88C2BC87;
	Tue, 20 Jan 2026 04:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882519;
	bh=uuacy5TWBWCqGEovDfg1uYj/N0C7aRhzBOjqrPUPGZE=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=Jai76DbanQ5IUF9DJVoNKN6aw5/2fizcOT+y1rFd5QRfGD3T+F7L4Vwk2Vrw5WLjG
	 Tu999t924KW+7k3ERLZTgpVZQbmvq+vpXYA2EgQl98YKPURV9KvUaTb7hklYBIjwDm
	 Yiz71/fL45fmtFhJikGN/KmuvkS49J1YA8XGxAOufn33Xn880cIxyrIvmDoXbzpqC6
	 UcWry79PcViEKZLu76wAW4wtmjlk2u3FnoJi7jnZeM0bvZljd690UgkbGd39KZBYZq
	 sGI+1hkPMmRJWo5tVWpV4dyKZNjVUE9fmSW+XFHLqYOLh2wzy9hrNyAlciW/dvmMWY
	 djk3n+y6qfCKA==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:42 -0800
Subject: [PATCH RFC 05/19] RISC-V: QoS: define CBQRI capacity and bandwidth
 capabilities
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ssqosid-cbqri-v1-5-aa2a75153832@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4712; i=fustini@kernel.org;
 h=from:subject:message-id; bh=uuacy5TWBWCqGEovDfg1uYj/N0C7aRhzBOjqrPUPGZE=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwbtNAsIevn73zNt4bBKu+gDQj3PdcS2r/dxkA++3
 fSEcZt2RykLgxgXg6yYIsumD3kXlniFfl0w/8U2mDmsTCBDGLg4BWAiy+4yMmx8ps2tXLfitMMC
 af+nhz9Pi3RY76T+YlHKevvp3KlKZ8oZ/mk5pR4tlvN3vLJcYUlEcLXLNg0l+y+CrLJHpfrr3/x
 6xwIA
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

Define data structures to store the capacity and bandwidth capabilities
that are discovered for a CBQRI-capable controller.

Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 arch/riscv/kernel/qos/internal.h | 128 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 128 insertions(+)

diff --git a/arch/riscv/kernel/qos/internal.h b/arch/riscv/kernel/qos/internal.h
new file mode 100644
index 000000000000..ff2c7eff50be
--- /dev/null
+++ b/arch/riscv/kernel/qos/internal.h
@@ -0,0 +1,128 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef _ASM_RISCV_QOS_INTERNAL_H
+#define _ASM_RISCV_QOS_INTERNAL_H
+
+#include <linux/resctrl.h>
+
+#define CBQRI_CC_CAPABILITIES_OFF 0
+#define CBQRI_CC_MON_CTL_OFF      8
+#define CBQRI_CC_MON_CTL_VAL_OFF 16
+#define CBQRI_CC_ALLOC_CTL_OFF   24
+#define CBQRI_CC_BLOCK_MASK_OFF  32
+
+#define CBQRI_BC_CAPABILITIES_OFF 0
+#define CBQRI_BC_MON_CTL_OFF      8
+#define CBQRI_BC_MON_CTR_VAL_OFF 16
+#define CBQRI_BC_ALLOC_CTL_OFF   24
+#define CBQRI_BC_BW_ALLOC_OFF    32
+
+#define CBQRI_CC_CAPABILITIES_VER_MINOR_MASK  GENMASK(3, 0)
+#define CBQRI_CC_CAPABILITIES_VER_MAJOR_MASK  GENMASK(7, 4)
+
+#define CBQRI_CC_CAPABILITIES_FRCID_MASK   0x1
+#define CBQRI_CC_CAPABILITIES_FRCID_SHIFT  24
+
+#define CBQRI_CC_CAPABILITIES_NCBLKS_SHIFT 8
+#define CBQRI_CC_CAPABILITIES_NCBLKS_MASK  0xFFFF
+
+#define CBQRI_BC_CAPABILITIES_VER_MINOR_MASK  GENMASK(3, 0)
+#define CBQRI_BC_CAPABILITIES_VER_MAJOR_MASK  GENMASK(7, 4)
+
+#define CBQRI_BC_CAPABILITIES_NBWBLKS_SHIFT 8
+#define CBQRI_BC_CAPABILITIES_NBWBLKS_MASK  0xFFFF
+#define CBQRI_BC_CAPABILITIES_MRBWB_SHIFT   32
+#define CBQRI_BC_CAPABILITIES_MRBWB_MASK    0xFFFF
+
+#define CBQRI_CONTROL_REGISTERS_BUSY_SHIFT   39
+#define CBQRI_CONTROL_REGISTERS_BUSY_MASK    0x01
+#define CBQRI_CONTROL_REGISTERS_STATUS_SHIFT 32
+#define CBQRI_CONTROL_REGISTERS_STATUS_MASK  0x7F
+#define CBQRI_CONTROL_REGISTERS_OP_SHIFT     0
+#define CBQRI_CONTROL_REGISTERS_OP_MASK      0x1F
+#define CBQRI_CONTROL_REGISTERS_AT_SHIFT     5
+#define CBQRI_CONTROL_REGISTERS_AT_MASK      0x07
+#define CBQRI_CONTROL_REGISTERS_AT_DATA      0
+#define CBQRI_CONTROL_REGISTERS_AT_CODE      1
+#define CBQRI_CONTROL_REGISTERS_RCID_SHIFT   8
+#define CBQRI_CONTROL_REGISTERS_RCID_MASK    0xFFF
+#define CBQRI_CONTROL_REGISTERS_RBWB_SHIFT   0
+#define CBQRI_CONTROL_REGISTERS_RBWB_MASK    0xFFFF
+
+#define CBQRI_CC_MON_CTL_OP_CONFIG_EVENT 1
+#define CBQRI_CC_MON_CTL_OP_READ_COUNTER 2
+#define CBQRI_CC_MON_CTL_STATUS_SUCCESS  1
+
+#define CBQRI_CC_ALLOC_CTL_OP_CONFIG_LIMIT 1
+#define CBQRI_CC_ALLOC_CTL_OP_READ_LIMIT   2
+#define CBQRI_CC_ALLOC_CTL_OP_FLUSH_RCID   3
+#define CBQRI_CC_ALLOC_CTL_STATUS_SUCCESS  1
+
+#define CBQRI_BC_MON_CTL_OP_CONFIG_EVENT 1
+#define CBQRI_BC_MON_CTL_OP_READ_COUNTER 2
+#define CBQRI_BC_MON_CTL_STATUS_SUCCESS  1
+
+#define CBQRI_BC_ALLOC_CTL_OP_CONFIG_LIMIT 1
+#define CBQRI_BC_ALLOC_CTL_OP_READ_LIMIT   2
+#define CBQRI_BC_ALLOC_CTL_STATUS_SUCCESS  1
+
+/* Capacity Controller hardware capabilities */
+struct riscv_cbqri_capacity_caps {
+	u16 ncblks; /* number of capacity blocks */
+	u16 cache_level;
+	u32 blk_size;
+
+	bool supports_alloc_at_data;
+	bool supports_alloc_at_code;
+
+	bool supports_alloc_op_config_limit;
+	bool supports_alloc_op_read_limit;
+	bool supports_alloc_op_flush_rcid;
+
+	bool supports_mon_at_data;
+	bool supports_mon_at_code;
+
+	bool supports_mon_op_config_event;
+	bool supports_mon_op_read_counter;
+
+	bool supports_mon_evt_id_none;
+	bool supports_mon_evt_id_occupancy;
+};
+
+/* Bandwidth Controller hardware capabilities */
+struct riscv_cbqri_bandwidth_caps {
+	u16 nbwblks; /* number of bandwidth blocks */
+	u16 mrbwb;   /* max reserved bw blocks */
+
+	bool supports_alloc_at_data;
+	bool supports_alloc_at_code;
+
+	bool supports_alloc_op_config_limit;
+	bool supports_alloc_op_read_limit;
+
+	bool supports_mon_at_data;
+	bool supports_mon_at_code;
+
+	bool supports_mon_op_config_event;
+	bool supports_mon_op_read_counter;
+
+	bool supports_mon_evt_id_none;
+	bool supports_mon_evt_id_rdwr_count;
+	bool supports_mon_evt_id_rdonly_count;
+	bool supports_mon_evt_id_wronly_count;
+};
+
+struct cbqri_controller {
+	struct cbqri_controller_info *ctrl_info;
+	void __iomem *base;
+
+	int ver_major;
+	int ver_minor;
+
+	struct riscv_cbqri_bandwidth_caps bc;
+	struct riscv_cbqri_capacity_caps cc;
+
+	bool alloc_capable;
+	bool mon_capable;
+};
+
+#endif /* _ASM_RISCV_QOS_INTERNAL_H */

-- 
2.43.0


