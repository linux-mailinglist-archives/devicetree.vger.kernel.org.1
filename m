Return-Path: <devicetree+bounces-207608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 729D0B30020
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 18:34:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 493A6B61EC8
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 16:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D4CB2DF71D;
	Thu, 21 Aug 2025 16:32:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA012E092E
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 16:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755793930; cv=none; b=eKtb68YsQDUeH1Jd3juCCIYmaxKfbM+R/IOQ7SWoMMzIf6dBsDjel2T6AM6Rz+GHODs6HuKbvpqR5HAMI5BUir0kfW6oPu1kHU19mvUaIP4ehHOQUEpGJk4QJgVl1GxCr3GVj26xEO8799I1rjyNIY9tkKBhzpGWLJVpDHc199A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755793930; c=relaxed/simple;
	bh=4cPDIenIDZFT0xPmTB+xHrnqirfM/zBjaZe2zVKjOYI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EVTlBqfwrKj0MDcTaq1zxBhXu/odNrUu8o69DrdUxoTXBSY0ZVrVLZ3qb3MUAc0TIFHxxT+jbAcP/gADDxnGR15r6dCQDE3cquLeoP+gonQ03LQL3VcYpHkKG2+oWfSQZsgAt8nadtsoGZ6e8faV7AjpBa5VzPrCVtM/0sLgJYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1up8Cj-0004O7-OD; Thu, 21 Aug 2025 18:31:57 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 21 Aug 2025 18:31:57 +0200
Subject: [PATCH v3 3/4] dt-bindings: usb: microchip,usb2514: add support
 for port vbus-supply
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-v6-16-topic-usb-onboard-dev-v3-3-6d2b38a5d818@pengutronix.de>
References: <20250821-v6-16-topic-usb-onboard-dev-v3-0-6d2b38a5d818@pengutronix.de>
In-Reply-To: <20250821-v6-16-topic-usb-onboard-dev-v3-0-6d2b38a5d818@pengutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
 Matthias Kaehlcke <mka@chromium.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, 
 Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Some PCB designs don't connect the USB hub port power control GPIO and
instead make use of a host controllable regulator. Add support for this
use-case by introducing portX-vbus-supply property.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/devicetree/bindings/usb/microchip,usb2514.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/microchip,usb2514.yaml b/Documentation/devicetree/bindings/usb/microchip,usb2514.yaml
index 4e3901efed3fcd4fbbd8cb777f9df4fcadf2ca00..ac1e5f1a5ea2e66c61ce92154385952b15e78e55 100644
--- a/Documentation/devicetree/bindings/usb/microchip,usb2514.yaml
+++ b/Documentation/devicetree/bindings/usb/microchip,usb2514.yaml
@@ -49,6 +49,12 @@ patternProperties:
     $ref: /schemas/usb/usb-device.yaml
     additionalProperties: true
 
+  "^port[1-7]-vbus-supply$":
+    type: object
+    description:
+      Regulator controlling the USB VBUS on portX. Only required if the host
+      controls the portX VBUS.
+
 allOf:
   - $ref: usb-device.yaml#
   - if:

-- 
2.39.5


