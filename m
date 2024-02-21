Return-Path: <devicetree+bounces-44483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB2385E700
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 20:13:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BCA651F25C7F
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 19:13:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5523D85C51;
	Wed, 21 Feb 2024 19:13:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70FD1097B
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:13:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708542813; cv=none; b=IbfNXEIeAoPySc9G/NmPelm8SpL0U8ws9B9nW9GG/6Pd5S1aUq0PwKgFeZxRLrB9AbjBDbV8/XMsKnKw8LiEm7TB1/lbRkWxqXt4qfs3aXuPUfQGGg47GGvBTqpwQGNlAu7eSqQnmDjDue/eFHTGSKyx4a81MHB1oJPWiGqJEYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708542813; c=relaxed/simple;
	bh=jefV61l/T0TatZNUI9/rQ+/DLxxeKsWDtFNb40LJrcw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=jUbgXu9mDKO2UUIfXETxgcb9mo5SsuR6t4/B9beCJUsZlr0SWOen7Z9PLdVMyR8ufxufyFmNOV/sz9zQY59nuEiHZDwJ7lJsmXmgv8VCLvAgkY83uP/KThnjetCHjlg7mGWdaRLaKRP5LUZ2Vr3w7lDsYz8O4V5dd3cmfNCKcVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rcs1T-000155-EG; Wed, 21 Feb 2024 20:12:51 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: conor.dooley@microchip.com,
	v.georgiev@metrotek.ru,
	mdf@kernel.org,
	hao.wu@intel.com,
	yilun.xu@intel.com,
	trix@redhat.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: linux-fpga@vger.kernel.org,
	devicetree@vger.kernel.org,
	kernel@pengutronix.de
Subject: [PATCH] dt-bindings: fpga: microchip,mpf-spi-fpga-mgr: document CPOL/CPHA support
Date: Wed, 21 Feb 2024 20:12:47 +0100
Message-Id: <20240221191247.3643671-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Microchip FPGAs can communicate in different modes, so document them to
avoid dt-validate warnings.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 .../devicetree/bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml   | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml b/Documentation/devicetree/bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml
index a157eecfb5fc..bb9a7d16db60 100644
--- a/Documentation/devicetree/bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml
+++ b/Documentation/devicetree/bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml
@@ -22,6 +22,9 @@ properties:
     description: SPI chip select
     maxItems: 1
 
+  spi-cpol: true
+  spi-cpha: true
+
 required:
   - compatible
   - reg
-- 
2.39.2


