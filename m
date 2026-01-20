Return-Path: <devicetree+bounces-257165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA09D3BE3A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:17:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 67EA7351711
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA63833D6E4;
	Tue, 20 Jan 2026 04:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzHYKw8w"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED3A33B947;
	Tue, 20 Jan 2026 04:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882524; cv=none; b=Wgq0xkHCC0aH5q5DO0pBaoXa3RgLgig53/HeueyJOKcSPS/gmFLrIngTwKAKYgNpIHtplF4X/aux2vxEjplQECkCxcEwhvdFpVnaiRzXhhCxmdFmaii/7Q/xFeR/713Jr+8vwuvlfG58C408TdrSWGmJmi0QxIpm9opn+Fk5L8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882524; c=relaxed/simple;
	bh=jw+AW2ohMGVwE01frppRYwsxi/H3/LBPifNRE5CWvac=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=u5gTKhgEch3bIEdGSGtlcUNOQq1ltjQdQaGlDqxGb90Vt6N+wLuMrf4ff85i/vhN5bLn1a4HV+5i/z/JxqyWxqycJXkXmmADkL0FWGRfLXNuVZkzUBq9bEJ0lfAQq8xtVQ3+s4CAeQHMFusP7MKcFf2TARzn2bERB1jH/l5XKXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzHYKw8w; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C42B5C2BC87;
	Tue, 20 Jan 2026 04:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882523;
	bh=jw+AW2ohMGVwE01frppRYwsxi/H3/LBPifNRE5CWvac=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=tzHYKw8w0WWEHMf/ggC0mFgB6cU2ZV861rE5FmdcrE46pVUB/XCmIRYTNdMixY04b
	 85M6AqX5o5XEONNJ6yBsr4+2pJzacEqw1wIno0QTIdX6DIW09pHQ4ww/gi6MkcrAYS
	 S+YP0bEzazZfcmDoNkx22MYjtsyoeAH66jnQeU0lxvhzQ8uhVISwqr38pDFePqlflM
	 5hpR4vta4fjkIYJsVTx3JiaTxL9LhalxXFMzAkTYxvG637Xmf/L74RyGoyUXYouwWL
	 iVZCa3y93s0BEcpfUr9uK/lix93lw4SXzcLqj+e5ofYtdk9g9aJK0dCoc3UNMZX8s8
	 wXuVHKv6fGkEA==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:47 -0800
Subject: [PATCH RFC 10/19] RISC-V: QoS: add late_initcall to setup resctrl
 interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ssqosid-cbqri-v1-10-aa2a75153832@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1362; i=fustini@kernel.org;
 h=from:subject:message-id; bh=jw+AW2ohMGVwE01frppRYwsxi/H3/LBPifNRE5CWvac=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwbt1VgdKl0yuWPu/DSXozJXF/UK/H63O/t0Wr/xp
 iI5S+6AjlIWBjEuBlkxRZZNH/IuLPEK/bpg/ottMHNYmUCGMHBxCsBEVJcwMvz9s/up6g6nC4/W
 PWj9JvVAO+bjwya3LPWJfxQuLcmw7zzOyHAqtC9qwum584T99q85axFpJJOmsijkzLOkaYrfbGp
 8azkA
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

Add late_initcall which checks if the Ssqosid extension is present, and
if so, calls resctrl setup and sets cpu hotplug state to "qos:online".

Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 arch/riscv/kernel/qos/qos.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/riscv/kernel/qos/qos.c b/arch/riscv/kernel/qos/qos.c
index 7b06f7ae9056..2cd5d7be1d10 100644
--- a/arch/riscv/kernel/qos/qos.c
+++ b/arch/riscv/kernel/qos/qos.c
@@ -1,5 +1,32 @@
 // SPDX-License-Identifier: GPL-2.0-only
+#include <linux/slab.h>
+#include <linux/err.h>
+#include <linux/cpu.h>
+#include <linux/cpumask.h>
+#include <linux/riscv_qos.h>
+
+#include <asm/csr.h>
 #include <asm/qos.h>
 
+#include "internal.h"
+
 /* cached value of sqoscfg csr for each cpu */
 DEFINE_PER_CPU(u32, cpu_srmcfg);
+
+static int __init qos_arch_late_init(void)
+{
+	int err;
+
+	if (!riscv_isa_extension_available(NULL, SSQOSID))
+		return -ENODEV;
+
+	err = qos_resctrl_setup();
+	if (err != 0)
+		return err;
+
+	cpuhp_setup_state(CPUHP_AP_ONLINE_DYN, "qos:online", qos_resctrl_online_cpu,
+			  qos_resctrl_offline_cpu);
+
+	return err;
+}
+late_initcall(qos_arch_late_init);

-- 
2.43.0


