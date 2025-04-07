Return-Path: <devicetree+bounces-163664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 523FCA7DBF9
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 13:15:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE2C17A3B42
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 11:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D637F23BFA9;
	Mon,  7 Apr 2025 11:13:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A04423BF88
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 11:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744024436; cv=none; b=jci6gkmujOouJtNa6sjpVslZo4rx7vmzmyUr5LlsZGHIGnmWPLVFFJGZeGsZLoepLKMuOOALRIrOWyAXPXsxUkDJc94+oP5gqktxDti44bktaqKln4PzF6mfDDpPVwY8MzR6MaUd0H3oDIiDePOWaYEAT5OtHdgCIsNj7TaPdA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744024436; c=relaxed/simple;
	bh=M6FpkVRtxGORrbTAyIXtmXdXTm4QW5v28hjznZvm/vs=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HJFqnFXTvVOKU/lq6dQV4nUL76TX6sN34ShRbdRhVSWqIE8m3mrKUs1DX3UBWH7hw6+G943hdPtvAtnjM6wjsRfJG1O+fEvGc/JuQbQmbPOYilW7PTNYFk4eW+qFSnih1Vs6iBwgigDIphQwp98rCD//PAx6nbeB5Z71uGUFZUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from Atcsqr.andestech.com (localhost [127.0.0.2] (may be forged))
	by Atcsqr.andestech.com with ESMTP id 537Aobtm002370
	for <devicetree@vger.kernel.org>; Mon, 7 Apr 2025 18:50:37 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 537Ang5P001561
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 7 Apr 2025 18:49:42 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS31.andestech.com
 (10.0.1.89) with Microsoft SMTP Server id 14.3.498.0; Mon, 7 Apr 2025
 18:49:42 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To: <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
CC: <paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <alex@ghiti.fr>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <tglx@linutronix.de>,
        <daniel.lezcano@linaro.org>, <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        <tim609@andestech.com>, "Ben
 Zong-You Xie" <ben717@andestech.com>
Subject: [PATCH 2/9] dt-bindings: riscv: add Andes QiLai SoC and the Voyager board bindings
Date: Mon, 7 Apr 2025 18:49:30 +0800
Message-ID: <20250407104937.315783-3-ben717@andestech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250407104937.315783-1-ben717@andestech.com>
References: <20250407104937.315783-1-ben717@andestech.com>
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
X-MAIL:Atcsqr.andestech.com 537Aobtm002370

Add DT binding documentation for the Andes QiLai SoC and the
Voyager development board.

Signed-off-by: Ben Zong-You Xie <ben717@andestech.com>
---
 .../devicetree/bindings/riscv/andes.yaml      | 25 +++++++++++++++++++
 MAINTAINERS                                   |  5 ++++
 2 files changed, 30 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/andes.yaml

diff --git a/Documentation/devicetree/bindings/riscv/andes.yaml b/Documentation/devicetree/bindings/riscv/andes.yaml
new file mode 100644
index 000000000000..aa1edf1fdec7
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/andes.yaml
@@ -0,0 +1,25 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/riscv/andes.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Andes SoC-based boards
+
+maintainers:
+  - Ben Zong-You Xie <ben717@andestech.com>
+
+description:
+  Andes SoC-based boards
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - andestech,voyager
+          - const: andestech,qilai
+
+additionalProperties: true
diff --git a/MAINTAINERS b/MAINTAINERS
index 96b827049501..a0ccac1cca29 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20725,6 +20725,11 @@ F:	drivers/irqchip/irq-riscv-intc.c
 F:	include/linux/irqchip/riscv-aplic.h
 F:	include/linux/irqchip/riscv-imsic.h
 
+RISC-V ANDES SoC Support
+M:	Ben Zong-You Xie <ben717@andestech.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/riscv/andes.yaml
+
 RISC-V ARCHITECTURE
 M:	Paul Walmsley <paul.walmsley@sifive.com>
 M:	Palmer Dabbelt <palmer@dabbelt.com>
-- 
2.34.1


