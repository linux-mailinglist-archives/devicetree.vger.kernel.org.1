Return-Path: <devicetree+bounces-10678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F837D2790
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 02:46:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17D9A2814F2
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 00:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40042A40;
	Mon, 23 Oct 2023 00:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3BA366;
	Mon, 23 Oct 2023 00:46:03 +0000 (UTC)
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6CE7E9;
	Sun, 22 Oct 2023 17:45:58 -0700 (PDT)
Received: from mail.andestech.com (ATCPCS16.andestech.com [10.0.1.222])
	by Atcsqr.andestech.com with ESMTP id 39N0iJja078965;
	Mon, 23 Oct 2023 08:44:19 +0800 (+08)
	(envelope-from peterlin@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.498.0; Mon, 23 Oct 2023
 08:44:15 +0800
From: Yu Chien Peter Lin <peterlin@andestech.com>
To: <acme@kernel.org>, <adrian.hunter@intel.com>, <ajones@ventanamicro.com>,
        <alexander.shishkin@linux.intel.com>, <andre.przywara@arm.com>,
        <anup@brainfault.org>, <aou@eecs.berkeley.edu>,
        <atishp@atishpatra.org>, <conor+dt@kernel.org>,
        <conor.dooley@microchip.com>, <conor@kernel.org>,
        <devicetree@vger.kernel.org>, <dminus@andestech.com>,
        <evan@rivosinc.com>, <geert+renesas@glider.be>, <guoren@kernel.org>,
        <heiko@sntech.de>, <irogers@google.com>, <jernej.skrabec@gmail.com>,
        <jolsa@kernel.org>, <jszhang@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-perf-users@vger.kernel.org>,
        <linux-renesas-soc@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-sunxi@lists.linux.dev>, <locus84@andestech.com>,
        <magnus.damm@gmail.com>, <mark.rutland@arm.com>, <mingo@redhat.com>,
        <n.shubin@yadro.com>, <namhyung@kernel.org>, <palmer@dabbelt.com>,
        <paul.walmsley@sifive.com>, <peterlin@andestech.com>,
        <peterz@infradead.org>, <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        <rdunlap@infradead.org>, <robh+dt@kernel.org>, <samuel@sholland.org>,
        <sunilvl@ventanamicro.com>, <tglx@linutronix.de>,
        <tim609@andestech.com>, <uwu@icenowy.me>, <wens@csie.org>,
        <will@kernel.org>, <ycliang@andestech.com>
Subject: [PATCH v3 RESEND 01/13] riscv: errata: Rename defines for Andes
Date: Mon, 23 Oct 2023 08:40:48 +0800
Message-ID: <20231023004100.2663486-2-peterlin@andestech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231023004100.2663486-1-peterlin@andestech.com>
References: <20231023004100.2663486-1-peterlin@andestech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.0.15.183]
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 39N0iJja078965

Using "ANDES" rather than "ANDESTECH" to unify the naming
convention with directory, file names, Kconfig options
and other definitions.

Signed-off-by: Yu Chien Peter Lin <peterlin@andestech.com>
Reviewed-by: Charles Ci-Jyun Wu <dminus@andestech.com>
Reviewed-by: Leo Yu-Chi Liang <ycliang@andestech.com>
---
Changes v1 -> v2:
  - No change
Changes v2 -> v3:
  - Rewrote commit message (suggested by Conor)
---
 arch/riscv/errata/andes/errata.c       | 10 +++++-----
 arch/riscv/include/asm/errata_list.h   |  4 ++--
 arch/riscv/include/asm/vendorid_list.h |  2 +-
 arch/riscv/kernel/alternative.c        |  2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/errata/andes/errata.c b/arch/riscv/errata/andes/errata.c
index 197db68cc8da..d2e1abcac967 100644
--- a/arch/riscv/errata/andes/errata.c
+++ b/arch/riscv/errata/andes/errata.c
@@ -18,9 +18,9 @@
 #include <asm/sbi.h>
 #include <asm/vendorid_list.h>
 
-#define ANDESTECH_AX45MP_MARCHID	0x8000000000008a45UL
-#define ANDESTECH_AX45MP_MIMPID		0x500UL
-#define ANDESTECH_SBI_EXT_ANDES		0x0900031E
+#define ANDES_AX45MP_MARCHID		0x8000000000008a45UL
+#define ANDES_AX45MP_MIMPID		0x500UL
+#define ANDES_SBI_EXT_ANDES		0x0900031E
 
 #define ANDES_SBI_EXT_IOCP_SW_WORKAROUND	1
 
@@ -32,7 +32,7 @@ static long ax45mp_iocp_sw_workaround(void)
 	 * ANDES_SBI_EXT_IOCP_SW_WORKAROUND SBI EXT checks if the IOCP is missing and
 	 * cache is controllable only then CMO will be applied to the platform.
 	 */
-	ret = sbi_ecall(ANDESTECH_SBI_EXT_ANDES, ANDES_SBI_EXT_IOCP_SW_WORKAROUND,
+	ret = sbi_ecall(ANDES_SBI_EXT_ANDES, ANDES_SBI_EXT_IOCP_SW_WORKAROUND,
 			0, 0, 0, 0, 0, 0);
 
 	return ret.error ? 0 : ret.value;
@@ -43,7 +43,7 @@ static bool errata_probe_iocp(unsigned int stage, unsigned long arch_id, unsigne
 	if (!IS_ENABLED(CONFIG_ERRATA_ANDES_CMO))
 		return false;
 
-	if (arch_id != ANDESTECH_AX45MP_MARCHID || impid != ANDESTECH_AX45MP_MIMPID)
+	if (arch_id != ANDES_AX45MP_MARCHID || impid != ANDES_AX45MP_MIMPID)
 		return false;
 
 	if (!ax45mp_iocp_sw_workaround())
diff --git a/arch/riscv/include/asm/errata_list.h b/arch/riscv/include/asm/errata_list.h
index b55b434f0059..c190393aa9db 100644
--- a/arch/riscv/include/asm/errata_list.h
+++ b/arch/riscv/include/asm/errata_list.h
@@ -12,8 +12,8 @@
 #include <asm/vendorid_list.h>
 
 #ifdef CONFIG_ERRATA_ANDES
-#define ERRATA_ANDESTECH_NO_IOCP	0
-#define ERRATA_ANDESTECH_NUMBER		1
+#define ERRATA_ANDES_NO_IOCP 0
+#define ERRATA_ANDES_NUMBER 1
 #endif
 
 #ifdef CONFIG_ERRATA_SIFIVE
diff --git a/arch/riscv/include/asm/vendorid_list.h b/arch/riscv/include/asm/vendorid_list.h
index e55407ace0c3..2f2bb0c84f9a 100644
--- a/arch/riscv/include/asm/vendorid_list.h
+++ b/arch/riscv/include/asm/vendorid_list.h
@@ -5,7 +5,7 @@
 #ifndef ASM_VENDOR_LIST_H
 #define ASM_VENDOR_LIST_H
 
-#define ANDESTECH_VENDOR_ID	0x31e
+#define ANDES_VENDOR_ID		0x31e
 #define SIFIVE_VENDOR_ID	0x489
 #define THEAD_VENDOR_ID		0x5b7
 
diff --git a/arch/riscv/kernel/alternative.c b/arch/riscv/kernel/alternative.c
index 319a1da0358b..0128b161bfda 100644
--- a/arch/riscv/kernel/alternative.c
+++ b/arch/riscv/kernel/alternative.c
@@ -43,7 +43,7 @@ static void riscv_fill_cpu_mfr_info(struct cpu_manufacturer_info_t *cpu_mfr_info
 
 	switch (cpu_mfr_info->vendor_id) {
 #ifdef CONFIG_ERRATA_ANDES
-	case ANDESTECH_VENDOR_ID:
+	case ANDES_VENDOR_ID:
 		cpu_mfr_info->patch_func = andes_errata_patch_func;
 		break;
 #endif
-- 
2.34.1


