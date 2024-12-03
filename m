Return-Path: <devicetree+bounces-126502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1AA9E1A39
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21F4AB45B7B
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 10:42:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D9581E25F3;
	Tue,  3 Dec 2024 10:39:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB621E25E8
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 10:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733222348; cv=none; b=Zr88hEK497m/RZy0/RpnNlLyVA1S1odQUbAY3BMe8JERiODjt0mudiBMEZEwVDkv+KhEA+aMjNX+IHGMSsAAFhgrdq8uhJ41mxPkTH81WVGgs6qzvT22DIUUHuJ8M9YgdpXTJSUoBHAiUmwA9tvhNXbIUsdNanPjCzkyrVovAGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733222348; c=relaxed/simple;
	bh=WCBRKK2EpvRkqNqUvWntlT5eb/TfdsDmqZAXrw/5Qos=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qFV0fvCORWo3xW4l9TSWwy/bkLW/iaLSjQEjcwZJS7zS7oVLg9rOLSrvGeQ2klZUIUKVS6pHZAo2uXCTz9e+C4Hdxnc5RuEGKuIipHFpIQYzC0AwYhVGZaIIZdEBqiNMMQd7cZuXYumMe8bik+07MBOBTxixOxGP6/Dv4wWF8gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tIQJ6-00012Q-4o; Tue, 03 Dec 2024 11:39:04 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 03 Dec 2024 11:38:36 +0100
Subject: [PATCH v3 2/3] dt-bindings: mtd: mchp48l640 add mb85rs128ty
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241203-mb85rs128ty-v3-2-79107d54d839@pengutronix.de>
References: <20241203-mb85rs128ty-v3-0-79107d54d839@pengutronix.de>
In-Reply-To: <20241203-mb85rs128ty-v3-0-79107d54d839@pengutronix.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Schocher <hs@denx.de>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, David Jander <david@protonic.nl>, 
 kernel@pengutronix.de, Jonas Rebmann <jre@pengutronix.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=918; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=WCBRKK2EpvRkqNqUvWntlT5eb/TfdsDmqZAXrw/5Qos=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkj3u3+ULyvz5JLvvcET/CznH69vUdITCOs+oLwsu/5Zu
 UnZ49bSjlIWBjEOBlkxRZZYNTkFIWP/62aVdrEwc1iZQIYwcHEKwER6rRkZzrow3brd5vdozk1B
 A+5d7Clh3m8S5A+oprqVqt9Lmq4wiZFhvWRwivuhzhuF65PrYuucrfP2CUvM/JP/45znF4lfbcb
 MAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add a compatible string to support Fujitsu MB85RS128TY.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml b/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
index 0ff32bd00bf6aee279fa78c624d8d47c6162f7f1..5c6b628c608d82515c7efd5dc74dfb8469894bef 100644
--- a/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
+++ b/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
@@ -16,8 +16,9 @@ description: |
 
 properties:
   compatible:
-    items:
-      - const: microchip,48l640
+    enum:
+      - fujitsu,mb85rs128ty
+      - microchip,48l640
 
   reg:
     maxItems: 1

-- 
2.39.5


