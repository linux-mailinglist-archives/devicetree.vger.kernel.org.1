Return-Path: <devicetree+bounces-257157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A5201D3BE2B
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:15:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 39F7F34730D
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B86C82DB7A6;
	Tue, 20 Jan 2026 04:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDM3mPlo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902A2338581;
	Tue, 20 Jan 2026 04:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882518; cv=none; b=lQ/C1eZP7ZTuC5/XLQRUwLDH4Wqleg+gxQp80yCcpHth7zChF5hz2c2TiUnotB5XCX9ZOY6OesVYyqk3W0o9amZPRf2OSQkruNcEouHCiTql9dJKs+mFgUGA+7ZrX0n39GO3j+NMnNc86uhaOG6Fj2kGSHRJAljA8EUBoLiQiYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882518; c=relaxed/simple;
	bh=/bDxWcPBw7DqP8cMaBdDBq6xIoctZXAai1IBsm35Yn8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=ZEiTQcHpjL19WTqaCKAGpxlMQ0sXlWB4l9tXHVTpqKMsUhU42VuXJlSYwz++/1MKQS6PmFFV4pkJPtSX451wFt4nqYlwCO1BxsEGE82bt9wb65GSmyjS7eniswL3kRXP+BIAHeD9+CGRPXBmEclPYI3tzxMCdjMFeKiDEWD1t40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDM3mPlo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B39C6C2BCB1;
	Tue, 20 Jan 2026 04:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882518;
	bh=/bDxWcPBw7DqP8cMaBdDBq6xIoctZXAai1IBsm35Yn8=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=bDM3mPlopQCjNR/5OkhnqbDNy0mwIxVLOtVwPt9ZZx5D5Q0FZUc+6BWgmg3VfnWWS
	 Zb0OL+UJkjW7nPdztp5vTl4eRqhgm11FeuwOZN6p3577GlNVEDdZgEOgsDJ/6OUJJg
	 3FgtEalpwkoip9rRqZDsBhEbAN5OiuSkmvhhLzCJo7RbminDTApqvC417B8v5IqoLi
	 nm1o3HvUM5KK8AKNZAigLmEaYmtyABPqqcgtZ7VsH7O9T7qO9Mvqc1tN+Rk2lFl3q4
	 bnQTbGOQbQhfPC3O93SEfPL3h3arHyRr9jHehextMspa+b2qdQpwkC1iSV20hRhGOK
	 D0Vbd6YGihZRw==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:39 -0800
Subject: [PATCH RFC 02/19] RISC-V: Detect the Ssqosid extension
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260119-ssqosid-cbqri-v1-2-aa2a75153832@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1616; i=fustini@kernel.org;
 h=from:subject:message-id; bh=/bDxWcPBw7DqP8cMaBdDBq6xIoctZXAai1IBsm35Yn8=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwYd63/sYelVnyTbru5XsFpk6pZXaw5kP2Bttitf/
 OzCidJ3HaUsDGJcDLJiiiybPuRdWOIV+nXB/BfbYOawMoEMYeDiFICJ8Jxi+MNh7ek95cANA71l
 NoynT361jD3iMs3USktfNfvW3EWPo78z/FO5cLCG+Zh+3n/FP4vql317FycVra55s1s+S+xdHHd
 0GQsA
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

Ssqosid is the RISC-V Quality-of-Service (QoS) Identifiers specification
which defines the Supervisor Resource Management Configuration (srmcfg)
register.

Link: https://github.com/riscv/riscv-ssqosid/releases/tag/v1.0
Signed-off-by: Kornel Dulęba <mindal@semihalf.com>
[fustini: rebase on riscv/for-next]
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 4369a2338541..28dff8233b34 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -110,6 +110,7 @@
 #define RISCV_ISA_EXT_ZALASR		101
 #define RISCV_ISA_EXT_ZILSD		102
 #define RISCV_ISA_EXT_ZCLSD		103
+#define RISCV_ISA_EXT_SSQOSID		104
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index c05b11596c19..bf704b48679c 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -558,6 +558,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
 	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
 	__RISCV_ISA_EXT_SUPERSET(ssnpm, RISCV_ISA_EXT_SSNPM, riscv_xlinuxenvcfg_exts),
+	__RISCV_ISA_EXT_DATA(ssqosid, RISCV_ISA_EXT_SSQOSID),
 	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
 	__RISCV_ISA_EXT_DATA(svade, RISCV_ISA_EXT_SVADE),
 	__RISCV_ISA_EXT_DATA_VALIDATE(svadu, RISCV_ISA_EXT_SVADU, riscv_ext_svadu_validate),

-- 
2.43.0


