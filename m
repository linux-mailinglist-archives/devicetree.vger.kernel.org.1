Return-Path: <devicetree+bounces-182129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAC6ACA947
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 08:09:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DDBA23BC8C8
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 06:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48DD4190678;
	Mon,  2 Jun 2025 06:08:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794D617A2EE
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 06:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748844539; cv=none; b=Z68bB/yF7Iln5rG6pCHtGEjfqyRDvAlh42I3HbgsJz69z42Q55khvtgsaoiqhqqWSNPF9wfsVvIaNwK9ZpJP2e5XD8Etfca98rgW+trOalwe71uH8ccpbx8Zlz0hvisaJP3BqVrGX3RUaypJppkrwP0OeSXL/8jgtzilaRXYYfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748844539; c=relaxed/simple;
	bh=HkOBIAl/Lm3q4fJNJ06VobxmZFNhDI/EiOvdTI7VQF0=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=r201bRPajGhbGS1PAs3EhcbYDFyTR0r0w1TRpg9r+TVsv8lfomhFyCBSPVvAUZ3lGNu+AqIrpL9ZsCtqA0pQx1Dm4amKJd8cHPrdQqsvc3+cN6pfG3FzIBTc41GwlMcDiZS1bXrelJ+eaidSkdGV/Q+IfE8UX8kYNp10qRpx2HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 55267s7I096125
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 2 Jun 2025 14:07:54 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS31.andestech.com
 (10.0.1.89) with Microsoft SMTP Server id 14.3.498.0; Mon, 2 Jun 2025
 14:07:54 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To:
CC: <paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <alex@ghiti.fr>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <tglx@linutronix.de>,
        <daniel.lezcano@linaro.org>, <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <tim609@andestech.com>,
        Ben Zong-You Xie <ben717@andestech.com>
Subject: [PATCH v5 1/8] riscv: add Andes SoC family Kconfig support
Date: Mon, 2 Jun 2025 14:07:40 +0800
Message-ID: <20250602060747.689824-2-ben717@andestech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250602060747.689824-1-ben717@andestech.com>
References: <20250602060747.689824-1-ben717@andestech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-DKIM-Results: atcpcs31.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 55267s7I096125

The first SoC in the Andes series is QiLai. It includes a high-performance
quad-core RISC-V AX45MP cluster and one NX27V vector processor.

For further information, refer to [1].

[1] https://www.andestech.com/en/products-solutions/andeshape-platforms/qilai-chip/

Signed-off-by: Ben Zong-You Xie <ben717@andestech.com>
---
 arch/riscv/Kconfig.errata | 2 +-
 arch/riscv/Kconfig.socs   | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/Kconfig.errata b/arch/riscv/Kconfig.errata
index e318119d570d..be76883704a6 100644
--- a/arch/riscv/Kconfig.errata
+++ b/arch/riscv/Kconfig.errata
@@ -12,7 +12,7 @@ config ERRATA_ANDES
 
 config ERRATA_ANDES_CMO
 	bool "Apply Andes cache management errata"
-	depends on ERRATA_ANDES && ARCH_R9A07G043
+	depends on ERRATA_ANDES && (ARCH_R9A07G043 || ARCH_ANDES)
 	select RISCV_DMA_NONCOHERENT
 	default y
 	help
diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 8b503e54fa1b..2f1626daaad1 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -1,5 +1,14 @@
 menu "SoC selection"
 
+config ARCH_ANDES
+	bool "Andes SoCs"
+	depends on MMU && !XIP_KERNEL
+	select ERRATA_ANDES
+	select ERRATA_ANDES_CMO
+	select AX45MP_L2_CACHE
+	help
+	  This enables support for Andes SoC platform hardware.
+
 config ARCH_MICROCHIP_POLARFIRE
 	def_bool ARCH_MICROCHIP
 
-- 
2.34.1


