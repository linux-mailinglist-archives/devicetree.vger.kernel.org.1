Return-Path: <devicetree+bounces-257166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CD189D3BE3B
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:17:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EDBC1351B07
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:17:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DB6333DECA;
	Tue, 20 Jan 2026 04:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjkctdjK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3D133C538;
	Tue, 20 Jan 2026 04:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882524; cv=none; b=rz4Q9a3aE9pGBgxZz4wKUCtY0S4ugNJxiC3MbMMy79xZ79V0w4rBwTYsEZsvIoGcu8pwUE2ekjgdTHe8lT8vCJWAbwrDap71i6MwykMq3/L9bYhK3bEW/scWgRxzpKr2kY3wHChuI1I8G3OKTHYU9yAxIYm7ztUloxtpQYtz01I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882524; c=relaxed/simple;
	bh=LLcYCf8E3m+c3NEGM6PLVB/b2aK0eRa7uHCxUc0B8eM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=SriRoQni/JDNdoZXJnEWagQbrZN2HQDK2ekb7eGCP77SOZ460JyBZysQt2ooetQ82hQIWs8bakor8E5Pm0H26O9G9X7xRt2LAnFBmmrNdtzW2ZWhw9/pfqVVBUW9305sWjtnK1MeH2sK+s9JnO/jAndcRf20/3BLATaiUh0QVsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjkctdjK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 549EAC2BCC6;
	Tue, 20 Jan 2026 04:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882523;
	bh=LLcYCf8E3m+c3NEGM6PLVB/b2aK0eRa7uHCxUc0B8eM=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=NjkctdjKUn0SLqbTQurxBFfLInhgoQWsPREXXMtKwABJ/gYwDhLfCUs8qJtBs06rc
	 EUaBhI2ahtDB8PBFbcHF5tCQl1GzV1TZdEqVEDdKoB4hJkz+LqtjEayxp6d+28gFE8
	 3ABLnRkLQPtnbfcmjEIIUs7xDEA+B4pluqyp1dkgwdmiqtqqtrMmERzCcuE3zeTV53
	 NoZia7WtAER7IlZZVsX/H+NT6nWzcWrp9vpmUzk7d0PbNOeq1moTRsUKI1lcK+6Vrh
	 /lpV9aJzxiRiuX6iEMy0eT/YDrf8e9SePo2PA9hEHQ7H7RV8fEx8GeUbuUfigHfv0v
	 G9hZ+ZbdjOglg==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:48 -0800
Subject: [PATCH RFC 11/19] RISC-V: QoS: add to build when
 CONFIG_RISCV_ISA_SSQOSID set
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ssqosid-cbqri-v1-11-aa2a75153832@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=738; i=fustini@kernel.org;
 h=from:subject:message-id; bh=LLcYCf8E3m+c3NEGM6PLVB/b2aK0eRa7uHCxUc0B8eM=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwbdjty3TG5LQAHrWZZdIf/E2jMXGsx4bdseHx+2s
 0fuqKVwRykLgxgXg6yYIsumD3kXlniFfl0w/8U2mDmsTCBDGLg4BWAii20ZGd6Wzr7z0Wshw7Je
 jeDaqElRHatnO7xLi2dY+6hi7mvPLzsYGc7V2kZWJvycdatwx5ufb6pO+ChkSX88qvOua0PZlo8
 +3/kB
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

Add the srmcfg CSR handling and the resctrl interface to the build when
CONFIG_RISCV_ISA_SSQOSID is set.

Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 arch/riscv/kernel/qos/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/qos/Makefile b/arch/riscv/kernel/qos/Makefile
index 9f996263a86d..9ed0c13a854d 100644
--- a/arch/riscv/kernel/qos/Makefile
+++ b/arch/riscv/kernel/qos/Makefile
@@ -1,2 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_RISCV_ISA_SSQOSID) += qos.o
+obj-$(CONFIG_RISCV_ISA_SSQOSID) += qos.o qos_resctrl.o

-- 
2.43.0


