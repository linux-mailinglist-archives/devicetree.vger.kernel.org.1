Return-Path: <devicetree+bounces-195498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB44B01D8F
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 15:31:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BB191CC0392
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 13:31:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 224DA2D3EDB;
	Fri, 11 Jul 2025 13:31:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2D0299AA4
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 13:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752240683; cv=none; b=OkB249u6W3fhTDz92h1Cs+5/jt68Lqy6JkFehySaUEbGufE8718hQotBnfBkd+ytL4ktlD/DD3ziuC8QzUmINiheiosOOL+DUm6F9bg38ricAxpVXrrRfJ5upPOXEMTL1/zoabRS7wKhg41bCQj7LM9Ll8QYPZDp9mMC8aWUHe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752240683; c=relaxed/simple;
	bh=rxJr4tpi6DEPFP82taMvG15uH3s3cawAV/8Tlt7o4EM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=c1BjbS47raJNy3/POyKmE/rZXlPbPPwYGWuoXaJABsqpIza4jwPBpVn9OYdq9kYeHsM1Dqzsyqjub/dYXlP73J4eB1W/BCiA+lSbtvMGM8FLI5fvPmhPeInQVytTmGfC9UBFJuy+P2X4MOgHDBMGMQVv4pkUz0pVd+Lt1nvCTH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 56BDUjes015105
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Jul 2025 21:30:45 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS31.andestech.com
 (10.0.1.89) with Microsoft SMTP Server id 14.3.498.0; Fri, 11 Jul 2025
 21:30:45 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To:
CC: <arnd@arndb.de>, <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <aou@eecs.berkeley.edu>, <alex@ghiti.fr>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <tglx@linutronix.de>,
        <daniel.lezcano@linaro.org>, <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <soc@lists.linux.dev>,
        <tim609@andestech.com>, Ben Zong-You Xie <ben717@andestech.com>
Subject: [PATCH v2 9/9] MAINTAINERS: Add entry for Andes SoC
Date: Fri, 11 Jul 2025 21:30:25 +0800
Message-ID: <20250711133025.2192404-10-ben717@andestech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250711133025.2192404-1-ben717@andestech.com>
References: <20250711133025.2192404-1-ben717@andestech.com>
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
X-MAIL:Atcsqr.andestech.com 56BDUjes015105

Add entry for Andes SoC maintainer and related files

Signed-off-by: Ben Zong-You Xie <ben717@andestech.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d79d546c2f95..3e16da28de50 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21318,6 +21318,15 @@ F:	drivers/irqchip/irq-riscv-intc.c
 F:	include/linux/irqchip/riscv-aplic.h
 F:	include/linux/irqchip/riscv-imsic.h
 
+RISC-V ANDES SoC Support
+M:	Ben Zong-You Xie <ben717@andestech.com>
+S:	Maintained
+T:	git: https://github.com/ben717-linux/linux
+F:	Documentation/devicetree/bindings/interrupt-controller/andestech,plicsw.yaml
+F:	Documentation/devicetree/bindings/riscv/andes.yaml
+F:	Documentation/devicetree/bindings/timer/andestech,plmt0.yaml
+F:	arch/riscv/boot/dts/andes/
+
 RISC-V ARCHITECTURE
 M:	Paul Walmsley <paul.walmsley@sifive.com>
 M:	Palmer Dabbelt <palmer@dabbelt.com>
-- 
2.34.1


