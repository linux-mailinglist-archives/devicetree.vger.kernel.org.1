Return-Path: <devicetree+bounces-216155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F3528B53D11
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 22:24:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F0081BC82EB
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 20:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B68DE280A58;
	Thu, 11 Sep 2025 20:23:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB1E27B4F5
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 20:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757622182; cv=none; b=bmu3Eyzo9nVMOsPwgLEZfVebebJm8+G4K+0x49dBdPQQJAc0SJRccj5VJ0BcZvnTiGEY+iOJMMlNqTfR+4adldtczD92MInVSOc2ZY3ykezCSBMWc2IkjIaZ7Mgf3senwFk3MDt7xmNZIEtdo6CXVbdCRlfQemTXFRgz/aU+cJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757622182; c=relaxed/simple;
	bh=TXnmdDo5RUFYnHwQiJ5oW/Z1zuTGfz1ZHaRZcG0i0cs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=npGuPk2xz7gKD6LVbzMgYFtOe84ljfw0Nw1oTTICLXoXPlHgztxQyjiTjuyqBQ02CPenNilFIjuXMzBmt0HV9yANehOEYbkT/pnq5PVGQH5Ph1Zdz0Ui8jL6vLuYtHLnIoc15ZL5OZocUydwT2sOFf/xgR8c4lZqVajOLvOX5ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uwnog-0005yg-Mv; Thu, 11 Sep 2025 22:22:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 11 Sep 2025 22:22:44 +0200
Subject: [PATCH v4 3/5] dt-bindings: usb: usb-device: add usb hub port
 vbus-supply suppport
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-v6-16-topic-usb-onboard-dev-v4-3-1af288125d74@pengutronix.de>
References: <20250911-v6-16-topic-usb-onboard-dev-v4-0-1af288125d74@pengutronix.de>
In-Reply-To: <20250911-v6-16-topic-usb-onboard-dev-v4-0-1af288125d74@pengutronix.de>
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

Some PCB designs don't use the dedicated USB hub port power control GPIO
to control the port VBUS supply. Instead host managed GPIOs are used to
control the VBUS supply.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/devicetree/bindings/usb/usb-device.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/usb-device.yaml b/Documentation/devicetree/bindings/usb/usb-device.yaml
index 09fceb469f10525e9dcdb91435b142b0d21964b8..2f891a05ab9bca095eb881c5f601ac27ac63b542 100644
--- a/Documentation/devicetree/bindings/usb/usb-device.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-device.yaml
@@ -53,6 +53,12 @@ properties:
   "#size-cells":
     const: 0
 
+  vbus-supply:
+    description: USB hub port VBUS supply.
+      The host managed regulator which controlls the USB hub port VBUS. This
+      regulator is only required if the hub internal control signals aren't
+      used to control the VBUS regulators.
+
 patternProperties:
   "^interface@[0-9a-f]{1,2}(,[0-9a-f]{1,2})$":
     type: object

-- 
2.47.3


