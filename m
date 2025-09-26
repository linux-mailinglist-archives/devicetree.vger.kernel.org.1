Return-Path: <devicetree+bounces-221807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6C0BA315A
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:13:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40C861BC1189
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA1A22848A0;
	Fri, 26 Sep 2025 09:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aruba.it header.i=@aruba.it header.b="Dn2pQUM3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpcmd02101.aruba.it (smtpcmd02101.aruba.it [62.149.158.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A19E21D3D2
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.149.158.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758878030; cv=none; b=sLH6YCLVQgMEt0hd8ONVzx+uaWhP7Gp7AubTkZi5TxAOgarL4++YnPjtSAGEKrxqOW9Cl6BeNgcxrOkAouV8imWxjqXopzBjc4z84qBe0kr+QL5pnrckadkgJAjn3McEybpYVKyO3cAOEEZHwoqeOcbEcbzGkoX+DQyGtO2w4Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758878030; c=relaxed/simple;
	bh=S7JgcSwdHpRzzvI7aKcqbxp1YD07m/GRY6L4F5gZFok=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JIrFLL/HFI0vwV2NMjV0EnY8uPE7VSI+13phm4S5UfjWL9sdujcvL8dQXj3lXjTQfz19uJG/7Z7cBEiny4AUPO6Hy1HbJ7yi6XpvZP1F0b2QSIz2np2uv8ypC0obFNpUU7aLgVDwJM7514Wo8o/xHosP+6rEh2JsaQEaSxd9cFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=enneenne.com; spf=pass smtp.mailfrom=enneenne.com; dkim=pass (2048-bit key) header.d=aruba.it header.i=@aruba.it header.b=Dn2pQUM3; arc=none smtp.client-ip=62.149.158.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=enneenne.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=enneenne.com
Received: from polimar.homenet.telecomitalia.it ([79.0.204.227])
	by Aruba SMTP with ESMTPSA
	id 24TPvsM0ploie24TPvAPUK; Fri, 26 Sep 2025 11:10:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1758877839; bh=S7JgcSwdHpRzzvI7aKcqbxp1YD07m/GRY6L4F5gZFok=;
	h=From:To:Subject:Date:MIME-Version;
	b=Dn2pQUM3QpWmPZGRjcnsVG6ZBg0lpKuJDajF6FY96VMai8O1xbKPA4mx0HYyQtoON
	 L/wapqYGT746eURROdEUmtQAG2+pGeFNWtKZABm4RAm3sX6E0XZNxoAWzjGl8ILxoX
	 gQZjpxTB3rYTRE2lR56BYYGXT7d5Q+baNoJ6+H0s//u7x4JxmSuTR1V0gU14zHptcV
	 jiIskj3dhCPBwWg0WhhpD+0iAYbSNp9Muih9UFgAnoJowyPFUaERrltSHICGc0pzWl
	 H0agEb4YV47mS2OpXTsVQjXO72/ABw641MJVVuNWlPD8Y7R9O3Q+pByfpGlQQBQoHF
	 v5Z2zFt+PyzMg==
From: Rodolfo Giometti <giometti@enneenne.com>
To: linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Rodolfo Giometti <giometti@enneenne.com>
Subject: [PATCH] drivers rtc-pcf8523.c: add "clockout-disable" property
Date: Fri, 26 Sep 2025 11:10:38 +0200
Message-Id: <20250926091038.2262571-1-giometti@enneenne.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfIEuJ+x7ZsYVtxm0wuNxSzQDfKMg5N5a7LqML/OksRUIgI5z9lW5W0N5/9txtlTXl2+dRI/opvJaezlPW+AHYxHffjxVQe58zZLrzbP5jysg9p5SR6S2
 JGgKSzZyQyc0bUJ7h+t+IEn4xE/m5ekamm6P+suGGtxF9xtesXrIgSYA1QmFA9aBeqqUZ3caBQqLMhQoLfMscnhdwf41j5GOVULwUT1meHklNCDcyurRWEbx
 5biKEKgg1r+qgQYVaH1Z20WoWSWnM6cNSVxtgCMkbceDuz7ffjQV7Uv2RpPzraJ5dqD6ZMIK1Yt3jFnG3fxikmAwePuww4OTgAM0Oi0cTNyOf9CuoiWIw06A
 En9lWYDHrcADWctkWN3AxRpzISbsFs1XfKDz1MGf61YMrZKBYsuZVQvnsSg4eW0V5xM5aBpR

Some systems may require disabling clock generation on the CLKOUT pin
even if there is no IRQ management.

Signed-off-by: Rodolfo Giometti <giometti@enneenne.com>
---
 .../devicetree/bindings/rtc/nxp,pcf8523.yaml        |  5 +++++
 drivers/rtc/rtc-pcf8523.c                           | 13 +++++++++----
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/rtc/nxp,pcf8523.yaml b/Documentation/devicetree/bindings/rtc/nxp,pcf8523.yaml
index d11c8bc16bc0..d18c396c06cd 100644
--- a/Documentation/devicetree/bindings/rtc/nxp,pcf8523.yaml
+++ b/Documentation/devicetree/bindings/rtc/nxp,pcf8523.yaml
@@ -25,6 +25,11 @@ properties:
     enum: [ 7000, 12500 ]
     default: 12500
 
+  clockout-disable:
+    type: boolean
+    description:
+      Disable the clock generation on CLKOUT pin.
+
 required:
   - compatible
   - reg
diff --git a/drivers/rtc/rtc-pcf8523.c b/drivers/rtc/rtc-pcf8523.c
index 2c63c0ffd05a..7ecbee4f9c6b 100644
--- a/drivers/rtc/rtc-pcf8523.c
+++ b/drivers/rtc/rtc-pcf8523.c
@@ -418,6 +418,7 @@ static int pcf8523_probe(struct i2c_client *client)
 	struct pcf8523 *pcf8523;
 	struct rtc_device *rtc;
 	bool wakeup_source = false;
+	bool clockout_disable;
 	u32 value;
 	int err;
 
@@ -467,16 +468,20 @@ static int pcf8523_probe(struct i2c_client *client)
 	set_bit(RTC_FEATURE_ALARM_RES_MINUTE, rtc->features);
 	clear_bit(RTC_FEATURE_UPDATE_INTERRUPT, rtc->features);
 
+	clockout_disable = of_property_read_bool(client->dev.of_node,
+							"clockout-disable");
+	if (client->irq > 0 || clockout_disable) {
+		err = regmap_write(pcf8523->regmap,
+						PCF8523_TMR_CLKOUT_CTRL, 0x38);
+		if (err < 0)
+			return err;
+	}
 	if (client->irq > 0) {
 		unsigned long irqflags = IRQF_TRIGGER_LOW;
 
 		if (dev_fwnode(&client->dev))
 			irqflags = 0;
 
-		err = regmap_write(pcf8523->regmap, PCF8523_TMR_CLKOUT_CTRL, 0x38);
-		if (err < 0)
-			return err;
-
 		err = devm_request_threaded_irq(&client->dev, client->irq,
 						NULL, pcf8523_irq,
 						IRQF_SHARED | IRQF_ONESHOT | irqflags,
-- 
2.34.1


