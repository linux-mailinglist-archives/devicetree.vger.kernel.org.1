Return-Path: <devicetree+bounces-257164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B2924D3BE38
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D87AB347E4E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53E0633D4F2;
	Tue, 20 Jan 2026 04:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYH/GKnN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A7433CE8A;
	Tue, 20 Jan 2026 04:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882522; cv=none; b=FeyiRkSNYLZ41y1LOOpRHOVHhbNPzSoeT+ya7l8wqjOW5KSUlIX9mcf+rkv50S4JgjCItA6cen4WwPObzSburQNapJfOCPkxbbRSR2F4WAKe6hQ007VN+QI/DzmT2EUvTXaUthZY1uaDhYGT6E2POdIoDbznnjbhTTEfHLroz6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882522; c=relaxed/simple;
	bh=SXrtFbN0ix7KxT0GqeIs7HkzT3FdlhgaF3gCwM+F2Mc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=dpDBpIGXw1MfUlgiJu0/4ZeWQmAIXKSuExKFH1TH+MouOL4N2brqTtHfr87pUBU4nAcYzkexKpWQ+dWkRhQW7fIwvv/ItXy7WsReq+ABoG3ZS+7X+ld3Rg6Qwv2k2AjOYuffTaWNE9R7IeN2z0Nwel72hOsBrgE1MQaL15/QQqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYH/GKnN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66B54C2BC86;
	Tue, 20 Jan 2026 04:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882522;
	bh=SXrtFbN0ix7KxT0GqeIs7HkzT3FdlhgaF3gCwM+F2Mc=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=GYH/GKnNLch3a/BJWK/t9HsJfo8yJwJ8lY7anK+3t1lgejF14xSE5vjBl+eZ2y2gl
	 YXGprIBPMmUTYAC2ZXGTZyJnCGPoHXOhm99+FW9T7H2OVw6gymn605Uk36xJEr45nm
	 GX+WTIw77nHuCjhvhANGNUOfbVYNBU8VB/NWiGl6UnvSkddhmGH+O3fMHLnumhq1og
	 C9kp1hiBWNog7+TotNgmcsGHhM3N4CwuTDwIOpkuE5orkFYXbnjtEDQCHts1irrldJ
	 ISzpJKn7C0bszrkOEGFFkF8tTE1hE7Axc9yxk07Kxkt90D7CDtkgM6O2uthIHMHaRU
	 aIzdd7L32Q9OA==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:46 -0800
Subject: [PATCH RFC 09/19] RISC-V: QoS: expose implementation to resctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ssqosid-cbqri-v1-9-aa2a75153832@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1087; i=fustini@kernel.org;
 h=from:subject:message-id; bh=SXrtFbN0ix7KxT0GqeIs7HkzT3FdlhgaF3gCwM+F2Mc=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwZF1c69f1YjasXrHwXVb9bd+FXizcnw+PAc2dmcu
 Zary9hedJSyMIhxMciKKbJs+pB3YYlX6NcF819sg5nDygQyhIGLUwAm8tqQ4Q9n1dv7n26Uf7Rl
 yRPlVYi+mRxfMc1G6Ezjx2WJM20EpXQZGZa1S74S4VUOkdFhtf87VyE3LbL7jFacEi+rbaKKT/U
 fNgA=
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

The generic resctrl header include/linux/resctrl.h includes
linux/riscv_qos.h when CONFIG_ARCH_HAS_CPU_RESCTRL is set.

Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 MAINTAINERS                      | 1 +
 arch/riscv/include/asm/resctrl.h | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 31e536304972..96ead357a634 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22510,6 +22510,7 @@ M:	Drew Fustini <fustini@kernel.org>
 L:	linux-riscv@lists.infradead.org
 S:	Supported
 F:	arch/riscv/include/asm/qos.h
+F:	arch/riscv/include/asm/resctrl.h
 F:	arch/riscv/kernel/qos/
 F:	include/linux/riscv_qos.h
 
diff --git a/arch/riscv/include/asm/resctrl.h b/arch/riscv/include/asm/resctrl.h
new file mode 100644
index 000000000000..7d247d87dab9
--- /dev/null
+++ b/arch/riscv/include/asm/resctrl.h
@@ -0,0 +1,2 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <linux/riscv_qos.h>

-- 
2.43.0


