Return-Path: <devicetree+bounces-92348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A7694CD1B
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 11:16:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 832D31C21044
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 09:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0512191F63;
	Fri,  9 Aug 2024 09:16:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2637F1917ED
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 09:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723194992; cv=none; b=nfCIKca3gglV5LbaaO9A+yFIGT0rIVYqgBaE/VyzCC6k934hp0PeMsqB6wFU+zRuHEP+hqlEDbJx/QEulakv3saneZTDFFUgxYcHsJHZ1hHnuXn0MP72Xh+FCfs1DYezOmBkzWLtGfv9b2C9Fdri78Oq1BWyEiS7wQyYkg/779s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723194992; c=relaxed/simple;
	bh=6EQvgFClGDzq0cWW+V/bMjO4oWxkEl2sZyTGFuRn6sw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GvYLOImFnoQtrB9DP0ADZrt/fc15W/jEpTE9lNM2dAaj04APceUgf7jeBEiBBjUq47cxJK1s5fKZOixLF9txsLaYXIe/yA5iYj7EsNWombk26yJjTbbd9jT0w29GbIhuzQEqYtEBOF5UZEozRQs6Zr3z0r8505obAdtilWPHSto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1scLjN-0002sf-7b; Fri, 09 Aug 2024 11:16:17 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1scLjM-005dEZ-2i; Fri, 09 Aug 2024 11:16:16 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1scLjM-00Epjg-01;
	Fri, 09 Aug 2024 11:16:16 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: arm: stm32: Add compatible strings for Protonic boards
Date: Fri,  9 Aug 2024 11:16:14 +0200
Message-Id: <20240809091615.3535447-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add compatible strings for Protonic MECIO1r0 and MECT1S boards to the
STM32MP151-based boards section and Protonic MECIO1r1 board to the
STM32MP153-based boards section.

MECIO1 is an I/O and motor control board used in blood sample analysis
machines. MECT1S is a 1000Base-T1 switch for internal machine networks
of blood sample analysis machines.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index 58099949e8f3a..703d4b574398d 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -54,6 +54,8 @@ properties:
       - description: ST STM32MP151 based Boards
         items:
           - enum:
+              - prt,mecio1r0 # Protonic MECIO1r0
+              - prt,mect1s   # Protonic MECT1S
               - prt,prtt1a   # Protonic PRTT1A
               - prt,prtt1c   # Protonic PRTT1C
               - prt,prtt1s   # Protonic PRTT1S
@@ -71,6 +73,12 @@ properties:
           - const: dh,stm32mp151a-dhcor-som
           - const: st,stm32mp151
 
+      - description: ST STM32MP153 based Boards
+        items:
+          - enum:
+              - prt,mecio1r1   # Protonic MECIO1r1
+          - const: st,stm32mp153
+
       - description: DH STM32MP153 DHCOM SoM based Boards
         items:
           - const: dh,stm32mp153c-dhcom-drc02
-- 
2.39.2


