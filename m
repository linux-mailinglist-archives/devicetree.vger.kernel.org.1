Return-Path: <devicetree+bounces-243836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A29C9DA27
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 04:22:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68FAF3A14AC
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 03:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 300D622CBC0;
	Wed,  3 Dec 2025 03:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="ismz0VN6"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ADA2DDAB;
	Wed,  3 Dec 2025 03:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764732117; cv=none; b=Lubjv3BvHFsKvyQmTowoYg8r3lXWC5VayZ1Ugci8vNGv+7IBUQXVHB4s2tmws5bt+KPbu8dYeSVB17hPc/vDsyiTzGrxun+PJyL2vTmEMwZfeh10T9mbGwGNqxbl38ih4abpT27sGSjWlYoosBSHgIoTvr7RF9jKFO/EGe45DrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764732117; c=relaxed/simple;
	bh=h2hCNpT7qiWp0u63vW4WUvUTM/pS6vEO989A3Y3P+5M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nx703X9zf5AVfh14RDouNIyjbbj5bgzBXZXmvhhWAH2BP8IgBItj2U0eCWY/z17VBKaHJkKtNTTSQ5Xc8t3Y4R5qh3Da3tIY2+7VgFhaOh4D96sz865mmbJi9kmZb/MeRsCdg3VAeVtWyo1hxiWGtDl5b7JB3QNAjjl6aulhybc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=ismz0VN6; arc=none smtp.client-ip=117.135.210.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=zG
	BGq2OtLr/Tw+dOoyB+U8Aa2Y5bi5NGEkZsJSUoqR4=; b=ismz0VN6S1IQx6cpWG
	yq39uCK6PiH/Df++6voqJqSpfCJbjEi25Clh2mpgJYwelfS1p6qkbPz+e0eCMfsr
	SygSHyIiCXskBbnyMGcsT2aAI6pnenkvymcG/MuBdfQasmsE7N7DrAel9WToB79x
	6pi+zAwN4/4FZcDvmolp+mIos=
Received: from duge-virtual-machine (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wDnR4amrC9pKWlQDg--.349S2;
	Wed, 03 Dec 2025 11:21:14 +0800 (CST)
From: q691800735@163.com
To: Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexandre Ghiti <alex@ghiti.fr>,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	jybruceupup <q691800735@163.com>
Subject: [PATCH] dt-bindings: soc: canaan: Add K230 power domain bindings
Date: Wed,  3 Dec 2025 11:21:07 +0800
Message-ID: <20251203032107.31388-1-q691800735@163.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDnR4amrC9pKWlQDg--.349S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7uF1fJr47WFWDWrW8Zw47Jwb_yoW8Cw4kpF
	yrCr95Gr4UJr1Skw4Sga4Y9343u3ykCr12y3sxWr1qyF4DWr1jqwnagF9Fvr9rArsa9r4I
	vF9IkFnI93y7ZaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0pRHv3UUUUUU=
X-CM-SenderInfo: jtwzimyqqxjki6rwjhhfrp/1tbiFA4ZMGkvpbKuvQAAsx

From: jybruceupup <q691800735@163.com>

Add device tree bindings for the Kendryte K230 power management domains
(PM domains), which control power gating of core peripherals (I2C, SPI,
MMC, AI2D).

Key properties:
- compatible: "canaan,k230-pm-domains"

This binding follows the Devicetree Specification v0.4 and upstream
PM domain framework requirements. It is a prerequisite for peripheral
drivers requiring power gating control.

Signed-off-by: jybruceupup <q691800735@163.com>
---
 MAINTAINERS                                      |  1 +
 include/dt-bindings/soc/canaan,k230_pm_domains.h | 13 +++++++++++++
 2 files changed, 14 insertions(+)
 create mode 100644 include/dt-bindings/soc/canaan,k230_pm_domains.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 4d456982a..13cdbf647 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22106,6 +22106,7 @@ P:	Documentation/arch/riscv/patch-acceptance.rst
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 F:	arch/riscv/
 F:	arch/riscv/configs/k230_defconfig
+F:	include/dt-bindings/soc/canaan,k230_pm_domains.h
 N:	riscv
 K:	riscv
 
diff --git a/include/dt-bindings/soc/canaan,k230_pm_domains.h b/include/dt-bindings/soc/canaan,k230_pm_domains.h
new file mode 100644
index 000000000..e212126e4
--- /dev/null
+++ b/include/dt-bindings/soc/canaan,k230_pm_domains.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _DT_BINDINGS_SOC_K230_PM_DOMAINS_H
+#define _DT_BINDINGS_SOC_K230_PM_DOMAINS_H
+
+#define K230_PM_DOMAIN_CPU1       0       /* CPU1 subsystem */
+#define K230_PM_DOMAIN_AI         1       /* AI Subsystem */
+#define K230_PM_DOMAIN_DISP       2       /* Display, 2.5D Engine */
+#define K230_PM_DOMAIN_VPU        3       /* Video subsystem */
+#define K230_PM_DOMAIN_DPU        4       /* 3D-struct Engine */
+#define K230_PM_DOMAIN_MAX        5
+
+#endif /* _DT_BINDINGS_SOC_K230_PM_DOMAINS_H */
-- 
2.52.0


