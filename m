Return-Path: <devicetree+bounces-257167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2908ED3BE41
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:18:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D99B44E8744
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 032BD33DEF1;
	Tue, 20 Jan 2026 04:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjlSLzA7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB0633C1B7;
	Tue, 20 Jan 2026 04:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882525; cv=none; b=Exu1DSWcBXqz3KtLB8jyu1J1shyw7OcEyDb7cTdhs7ipm3Yy30m2kQsFKL6a3j2uUAdPnOw6G/T4/x7KRj2peAKuUrIovNGcbdo48VhTrdYOKzcEr1XXpgHywHs8wMz1I+NfvJxh2V+jBbRD5Q/uWGedopOz7ssEh1sh/XLi5os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882525; c=relaxed/simple;
	bh=uFVTMJOPvCbobzJzlLLOywkmk/8YKf9YQOLxRrQYfB8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=JGD44URNbZN0HRPhTM96PFxdds1fY6cav7v7ItNBmQmKJrwSaBD4vSvDWALOzKYpma432JaCrcA0h1QBavchsFYGL0gBAoSwdJuRbK+FgKJDecyyu1QsCAUkVDtm/pyJoDEIdO+O7Tdq694+7hTy7sjLgSd+NR39pJtRLJNxINY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjlSLzA7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAC85C2BCB0;
	Tue, 20 Jan 2026 04:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882524;
	bh=uFVTMJOPvCbobzJzlLLOywkmk/8YKf9YQOLxRrQYfB8=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=EjlSLzA7PLfg5Brd4VelzPqUk2McwqgKEHr9LXbNSZS1+tB4h3R6KaBUUFgXrV3Pq
	 NeRpnqofz2UV8XK4Muf+zWbpA0QXbXhZkcP/uKyzYuYhPJWyHrzvjL1SsOxEfTTsvO
	 HXoDxTUh3eXXCg3X3F0nl/OBW3pE6FeK2JZDQH1ej1Xv/tm2CCPicpgkwwWl1zoynm
	 +54/6E4DgDxiSdAgXcW9mGIg0ZX3VAqLhCuSkFZvbCMB84n0UQWlaMVAknhbyJmBuv
	 IV9YxR1gpH3Zo8EZbJ88jv6A3QlFy8WZ3S91sbl/tpFrL1ZxQlOqCJbklLdbNzgDfF
	 b3p/Co+to5Ddw==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:49 -0800
Subject: [PATCH RFC 12/19] RISC-V: QoS: make CONFIG_RISCV_ISA_SSQOSID
 select resctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ssqosid-cbqri-v1-12-aa2a75153832@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=875; i=fustini@kernel.org;
 h=from:subject:message-id; bh=uFVTMJOPvCbobzJzlLLOywkmk/8YKf9YQOLxRrQYfB8=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwb3zA5w3fvmloVYg6G7fU/96pqPs/8adhgHbkh+x
 mGT1XO7o5SFQYyLQVZMkWXTh7wLS7xCvy6Y/2IbzBxWJpAhDFycAjCRnkiG/2FrmKxCF/OkvLi5
 21L3RcairRvZVMwv8r5v1n5XuNa3/AbDH76jCXrvFvms41hTJSsSMf2x4m2JNqVCL5Wq0j1yCtN
 n8gIA
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

Make CONFIG_RISCV_ISA_SSQOSID select the config options for resctrl:
ARCH_HAS_CPU_RESCTRL, RESCTRL_FS and MISC_FILESYSTEMS.

Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 arch/riscv/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 35a6238b02c5..8ff6d962b6b2 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -598,6 +598,9 @@ config RISCV_ISA_SVNAPOT
 config RISCV_ISA_SSQOSID
 	bool "Ssqosid extension support for supervisor mode Quality of Service ID"
 	default y
+	select ARCH_HAS_CPU_RESCTRL
+	select RESCTRL_FS
+	select MISC_FILESYSTEMS
 	help
 	  Adds support for the Ssqosid ISA extension (Supervisor-mode
 	  Quality of Service ID).

-- 
2.43.0


