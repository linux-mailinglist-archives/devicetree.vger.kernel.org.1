Return-Path: <devicetree+bounces-257162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBAFD3BE37
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:16:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F31164E8ADC
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8278A33C513;
	Tue, 20 Jan 2026 04:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJrWM4Jl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADD733C528;
	Tue, 20 Jan 2026 04:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882522; cv=none; b=rvJjkiIyAiRh0AatsdcoTEe7QVpm2C64oL8xEDHM+xeSFMuO7wSWN65gSZ8EfUI9wyTGzMtw6Ba6NWxRbz43mMvN+fjX2RgDohmxdmO04YqcJUJ7JEKf9aw+17jOYx50vd8BMhP5WQKz8w0ZX/HV0urwKpTQOuZ0pBXzi55vz9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882522; c=relaxed/simple;
	bh=VY+L/H7NAb+kbLIgJH0JdAYq+trW362UFibAaSaVSAU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=M+Gr24WxF6RZxv/ZJhCWp1fOmXlThJrifwP6AzX5rqmKZca9sRWO+kXd0/sRk9R3v7e4FUMqfrpiM5u4sdsNVjn6ysH1LDe2ZEM1TUxeaUDl91gqIbA9/850WfD0VB5eqrppv9eN3IcwpxgrRKNJdeKykiM5/AG+3+wg+qfPUjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJrWM4Jl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BEB4C2BCB0;
	Tue, 20 Jan 2026 04:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882520;
	bh=VY+L/H7NAb+kbLIgJH0JdAYq+trW362UFibAaSaVSAU=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=tJrWM4Jlv8EPiNguXi34IMmH900SeLGHOZKnLesPNJ3HxYkOle3hygR3We4ASD7QD
	 tDGiAZ9C0/hzar4PZkjwedtXys5obJMOBOyxyeoDNZ8l0ARpcSY+s+Y+X80LXq8BLL
	 EJ9xZJK5BI1gZ4rqiIoPSBb/he6UJRMT2BeCiMZh6JuWBTP7n3CneJ+vRBLYCFKNye
	 YHiwXT3E8QOn+pwjF2/PyENV3IwYbi/4EZMnt46JDYrdpkjVsZ6I+dUUC1QyTzwcmv
	 6hsdNewZriAif/INmK6b8vr6a+iklQxqIAi4fiuafVgxfHf3HFgzr/rHKpkSc2K2Em
	 zVQEirZQ4nEjg==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:44 -0800
Subject: [PATCH RFC 07/19] RISC-V: QoS: define prototypes for resctrl
 interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ssqosid-cbqri-v1-7-aa2a75153832@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2765; i=fustini@kernel.org;
 h=from:subject:message-id; bh=VY+L/H7NAb+kbLIgJH0JdAYq+trW362UFibAaSaVSAU=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwZlv0240nxloabf7If7vILvexoe0PBM3nw3NsBX6
 lNMg59SRykLgxgXg6yYIsumD3kXlniFfl0w/8U2mDmsTCBDGLg4BWAiF5czMvQ5y7P3Wzn6ii8r
 u7hkcV6B7aV6x7WOCh3Hdpz8pt6Vspbhf16/75FGy9h3zWb32npTDolJlNtv6ZYqrNT9HBgd934
 VAwA=
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

Define the prototypes for the resctrl interface functions that are
implemented on RISC-V.

Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
[fustini: rebased on riscv/for-next]
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 include/linux/riscv_qos.h | 44 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/include/linux/riscv_qos.h b/include/linux/riscv_qos.h
index 51c3a96bbcd0..0c551ed85fe1 100644
--- a/include/linux/riscv_qos.h
+++ b/include/linux/riscv_qos.h
@@ -3,6 +3,7 @@
 #ifndef __LINUX_RISCV_QOS_H
 #define __LINUX_RISCV_QOS_H
 
+#include <linux/resctrl_types.h>
 #include <linux/iommu.h>
 #include <linux/types.h>
 
@@ -31,4 +32,47 @@ struct cbqri_controller_info {
 
 extern struct list_head cbqri_controllers;
 
+bool resctrl_arch_alloc_capable(void);
+bool resctrl_arch_mon_capable(void);
+bool resctrl_arch_is_llc_occupancy_enabled(void);
+bool resctrl_arch_is_mbm_local_enabled(void);
+bool resctrl_arch_is_mbm_total_enabled(void);
+
+struct rdt_resource;
+/*
+ * Note about terminology between x86 (Intel RDT/AMD QoS) and RISC-V:
+ *   CLOSID on x86 is RCID on RISC-V
+ *     RMID on x86 is MCID on RISC-V
+ *      CDP on x86 is AT (access type) on RISC-V
+ */
+u32  resctrl_arch_rmid_idx_encode(u32 closid, u32 rmid);
+void resctrl_arch_rmid_idx_decode(u32 idx, u32 *closid, u32 *rmid);
+void resctrl_arch_set_cpu_default_closid_rmid(int cpu, u32 closid, u32 pmg);
+void resctrl_arch_sched_in(struct task_struct *tsk);
+void resctrl_arch_set_closid_rmid(struct task_struct *tsk, u32 closid, u32 rmid);
+bool resctrl_arch_match_closid(struct task_struct *tsk, u32 closid);
+bool resctrl_arch_match_rmid(struct task_struct *tsk, u32 closid, u32 rmid);
+void resctrl_arch_reset_resources(void);
+void *resctrl_arch_mon_ctx_alloc(struct rdt_resource *r, enum resctrl_event_id evtid);
+void resctrl_arch_mon_ctx_free(struct rdt_resource *r, enum resctrl_event_id evtid,
+			       void *arch_mon_ctx);
+struct rdt_domain_hdr *resctrl_arch_find_domain(struct list_head *domain_list, int id);
+
+static inline bool resctrl_arch_event_is_free_running(enum resctrl_event_id evt)
+{
+	/* must be true for resctrl L3 monitoring files to be created */
+	return true;
+}
+
+static inline unsigned int resctrl_arch_round_mon_val(unsigned int val)
+{
+	return val;
+}
+
+/* Not needed for RISC-V */
+static inline void resctrl_arch_enable_mon(void) { }
+static inline void resctrl_arch_disable_mon(void) { }
+static inline void resctrl_arch_enable_alloc(void) { }
+static inline void resctrl_arch_disable_alloc(void) { }
+
 #endif /* __LINUX_RISCV_QOS_H */

-- 
2.43.0


