Return-Path: <devicetree+bounces-44967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D442986045F
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 22:09:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 736C71F23DCB
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 21:09:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ECC573F1B;
	Thu, 22 Feb 2024 21:09:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE46F73F0C
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 21:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708636165; cv=none; b=BkMybGQ+5FAbHenEiRMi6Sw7HDlKXZ5696+PezhrVjOhsuDJ+kAaFsbx6XgsCMCtLYUP6G8Du+GXHaKlobc9BGTHlCMG3wPNSQSc9mtMuLPcMkf/SPKOa/5iTFgMPTRdefw1i1FefWzmZzjo+ZPrMrlrYPT6+SIOzKFkFEBwrcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708636165; c=relaxed/simple;
	bh=I3EW9Vuk0mnGohws0wZ3vlCFahdWLNd/taLlxlA1rao=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZL/ll9FOox2U9w6WldLRYkygSQBfcKwWb1tdn16rUXt+i9DVkZAAPzJ6OaDaYj1kaACgrQSBN3vWwRZpoIGiZ6H61mO7E+5H85lt82xjFiOgNQaP+lTfWwXavKbgqFH9UkgoJIVk1ZktSnOtocyBm77RElucOjtNOa8E43/Fdgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rdGJZ-0000lo-03; Thu, 22 Feb 2024 22:09:09 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: gregkh@linuxfoundation.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux@roeck-us.net,
	heikki.krogerus@linux.intel.com,
	jun.li@nxp.com
Cc: devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de
Subject: [PATCH v3 1/4] dt-bindings: usb: typec-tcpci: add tcpci fallback binding
Date: Thu, 22 Feb 2024 22:09:00 +0100
Message-Id: <20240222210903.208901-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240222210903.208901-1-m.felsch@pengutronix.de>
References: <20240222210903.208901-1-m.felsch@pengutronix.de>
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

The NXP PTN5110 [1] is an TCPCI [2] compatible chip, so add the fallback
binding.

[1] https://www.nxp.com/docs/en/data-sheet/PTN5110.pdf
[2] https://www.usb.org/sites/default/files/documents/usb-port_controller_specification_rev2.0_v1.0_0.pdf

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v3:
- use items
- adapt example

v2:
- rephrase commit message

 Documentation/devicetree/bindings/usb/nxp,ptn5110.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/nxp,ptn5110.yaml b/Documentation/devicetree/bindings/usb/nxp,ptn5110.yaml
index eaedb4cc6b6c..65a8632b4d9e 100644
--- a/Documentation/devicetree/bindings/usb/nxp,ptn5110.yaml
+++ b/Documentation/devicetree/bindings/usb/nxp,ptn5110.yaml
@@ -11,7 +11,9 @@ maintainers:
 
 properties:
   compatible:
-    const: nxp,ptn5110
+    items:
+      - const: nxp,ptn5110
+      - const: tcpci
 
   reg:
     maxItems: 1
@@ -41,7 +43,7 @@ examples:
         #size-cells = <0>;
 
         tcpci@50 {
-            compatible = "nxp,ptn5110";
+            compatible = "nxp,ptn5110", "tcpci";
             reg = <0x50>;
             interrupt-parent = <&gpio3>;
             interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
-- 
2.39.2


