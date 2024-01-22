Return-Path: <devicetree+bounces-33680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0858360A4
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:11:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91A521C21054
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D81183EA9E;
	Mon, 22 Jan 2024 11:04:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5F53EA74
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705921487; cv=none; b=ofxqzs3aWnx7eVD9ZY29s75FO76gJg0HXzwybJeH455xeLgu2LViR9619pp6UUfUCELKuRHCLOAHIFFFEfmBWTHIOaHnNQP0fs9KgLmASlWjaOSjgcopC5crip3l+z8ireu8AeNPFhcgf6yrjaUXZPjKpmSYAjUEmVT9+o/kpSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705921487; c=relaxed/simple;
	bh=eqirOGjCZP2NBSEkK8uc5P/vksk2IIWKQWYB/n+5qkY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Uc0tkuE8rOoLpArtpOI8UDbyW37Gqw9AkFMNQ1aGlpEJSQJvZTJHIEDDC34HmKHxJXJa6wdLJyYDRFpxR4EpIdoYyR4RcHyfMbHxYShLLhjnCqP+1wPLQXSW7H4gsMPfux3JDaLJZj5k1JRc6VN2Adao04tNzCp+bbQKAHdxi70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <fpf@pengutronix.de>)
	id 1rRs6K-0003nV-7r; Mon, 22 Jan 2024 12:04:24 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <fpf@pengutronix.de>)
	id 1rRs6I-001Zhh-Mi; Mon, 22 Jan 2024 12:04:22 +0100
Received: from fpf by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <fpf@pengutronix.de>)
	id 1rRs6I-00BSQd-23;
	Mon, 22 Jan 2024 12:04:22 +0100
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
To: Michael Hennerich <michael.hennerich@analog.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Alexandru Tachici <alexandru.tachici@analog.com>
Cc: kernel@pengutronix.de,
	Fabian Pfitzner <f.pfitzner@pengutronix.de>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] net: phy: adin: add missing clock option
Date: Mon, 22 Jan 2024 12:03:12 +0100
Message-Id: <20240122110311.2725036-1-f.pfitzner@pengutronix.de>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: fpf@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The GP_CLK pin on Adin1300 PHY's offers three different output clocks.
This patch adds the missing 125MHz recovered clock option which is not
yet availible in the driver.

Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
---
 Documentation/devicetree/bindings/net/adi,adin.yaml | 7 +++++--
 drivers/net/phy/adin.c                              | 2 ++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/adi,adin.yaml b/Documentation/devicetree/bindings/net/adi,adin.yaml
index 929cf8c0b0fd..cd1b4efa692b 100644
--- a/Documentation/devicetree/bindings/net/adi,adin.yaml
+++ b/Documentation/devicetree/bindings/net/adi,adin.yaml
@@ -38,14 +38,17 @@ properties:
 
   adi,phy-output-clock:
     description: |
-      Select clock output on GP_CLK pin. Two clocks are available:
-      A 25MHz reference and a free-running 125MHz.
+      Select clock output on GP_CLK pin. Three clocks are available:
+        - 25MHz reference
+        - free-running 125MHz 
+        - recovered 125MHz
       The phy can alternatively automatically switch between the reference and
       the 125MHz clocks based on its internal state.
     $ref: /schemas/types.yaml#/definitions/string
     enum:
       - 25mhz-reference
       - 125mhz-free-running
+      - 125mhz-recovered
       - adaptive-free-running
 
   adi,phy-output-reference-clock:
diff --git a/drivers/net/phy/adin.c b/drivers/net/phy/adin.c
index 2e1a46e121d9..b1ed6fd24763 100644
--- a/drivers/net/phy/adin.c
+++ b/drivers/net/phy/adin.c
@@ -508,6 +508,8 @@ static int adin_config_clk_out(struct phy_device *phydev)
 		sel |= ADIN1300_GE_CLK_CFG_25;
 	} else if (strcmp(val, "125mhz-free-running") == 0) {
 		sel |= ADIN1300_GE_CLK_CFG_FREE_125;
+	} else if (strcmp(val, "125mhz-recovered") == 0) {
+		sel |= ADIN1300_GE_CLK_CFG_RCVR_125;
 	} else if (strcmp(val, "adaptive-free-running") == 0) {
 		sel |= ADIN1300_GE_CLK_CFG_HRT_FREE;
 	} else {

base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
-- 
2.39.2


