Return-Path: <devicetree+bounces-243920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CF90CC9E76E
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:27:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CE7994E0262
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:27:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21C612DCBF4;
	Wed,  3 Dec 2025 09:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="AYQu2abe"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6F329C326;
	Wed,  3 Dec 2025 09:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764754049; cv=none; b=VAu0pRoXQPIB/LCKWeIqVpHtrmXgsHtshJJ3o/kSOBuCkxRIZasonpkBAvphu0ZU98/VBd0bPp5v6w0xqLtgOV09NfCfSsEsJ3MdLJVv2f7hbkfXe3VMX1qOi2vQGgM0YYMl7gByYaDz3u7dClIbezeYYXJSWfEDtdzRxhK1BaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764754049; c=relaxed/simple;
	bh=mF5tUgDzRwP2k+I+CAhN+923SsNr17x1kde61sTJtfQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KsRzodI2t8f5mZVNuH3eEX0b43VdP07DgiGTBlg42z9U7DknGTqp+5hAI7e8HHBpJNuApixqIom3yTzlrB7yhjpoWOrYo4YgZtUiIJhcsnosTUGoZVX/5iPsAneQfpCSYPEaYhr/jwvG8pOLmTYHjqI3sK4G2fq7t2lOmEYVNMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=AYQu2abe; arc=none smtp.client-ip=220.197.31.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=cC
	riXEwSkN9xvdxEwxwspYlZeXn4Z8eoTNrLXs4V20s=; b=AYQu2abeSgrN2N6eqp
	tft9tG36HedDodduzPMPkpUJz3zs3DUrcUseBnkcgY5w+cxF652ZGeNyv9Hsbd4j
	HtfKv6ZVK0DTG89eY4esn4IuLYjXEXdcQHtQohozo8mgplVFnQwRWA3ssZGIlQGX
	YMaYaDXwxlYYmMUvhQQH506DQ=
Received: from duge-virtual-machine (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wDH7UVCAjBp7GVBEQ--.10032S2;
	Wed, 03 Dec 2025 17:26:27 +0800 (CST)
From: q691800735@163.com
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	jybruceupup <q691800735@163.com>
Subject: [PATCH] dt-bindings: soc: Add Kendryte K230 power domain bindings
Date: Wed,  3 Dec 2025 17:26:24 +0800
Message-ID: <20251203092624.219460-1-q691800735@163.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDH7UVCAjBp7GVBEQ--.10032S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zw1DJryDXryxGFWUJF15twb_yoW8AF4rpF
	98CFyfGr4UJr1fAw4Sga4Yvw13Cw4kCr12y3sxXr1qyF1Utr1jqrnagF9Fvr9xArsakr4I
	9F9xCrnI9347XaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0pRmjgrUUUUU=
X-CM-SenderInfo: jtwzimyqqxjki6rwjhhfrp/1tbiFB4ZMGkwAQgaLgABsG

From: jybruceupup <q691800735@163.com>

Add canaan,k230_pm_domains.h to define power domain IDs for Kendryte K230
RISC-V SoC (CPU1, AI, display, VPU, 3D-struct engine).

Update MAINTAINERS RISC-V entry to include the new binding header for
proper maintenance tracking.

Signed-off-by: jybruceupup <q691800735@163.com>
---
 MAINTAINERS                                      |  1 +
 include/dt-bindings/soc/canaan,k230_pm_domains.h | 13 +++++++++++++
 2 files changed, 14 insertions(+)
 create mode 100644 include/dt-bindings/soc/canaan,k230_pm_domains.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 980a3d5d6..d83920cbc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22105,6 +22105,7 @@ C:	irc://irc.libera.chat/riscv
 P:	Documentation/arch/riscv/patch-acceptance.rst
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 F:	arch/riscv/
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


