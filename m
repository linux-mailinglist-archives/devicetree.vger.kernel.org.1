Return-Path: <devicetree+bounces-161363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8211A73A6D
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 18:30:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4ACF177DC7
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 17:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF788218E81;
	Thu, 27 Mar 2025 17:29:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353792192EE
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 17:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743096544; cv=none; b=N2M/YGiTfVitcbHEtGNjs55edv3jus94VFmwQ+1J85FyzV5uIOjFhsRnzYgyUFd5bhAoQEV1qVBm6QaRIY7kksp1AlpeuZAIu/SNfbPRLMhhg4qxCE5pdPXRq1oPioIXcNXX9ATwc0uuA2EYsmHkPOziNJjl0rDEeMLL9ul7Kdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743096544; c=relaxed/simple;
	bh=1ufy5l/4TNkqIz4H+ht3hW6OlvySs4fVijFL11ZzFRU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PDY/fk+UJA+3Rar4MbEG/bq+nYS/tARmDHSthjIJtTU8Ejz6rIJ4cHSc3xlQKdEkw5vH6CkGxrncaUVlWY6PiDI4T+i8t5ctToqM6Z0xUzlHIJd4am9B/1FcWdzRRYVV7NHvzxKrIWzq1XY0Rv/5xQn+kG/V/amAOc/kYgN9H1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1txr2D-0002hN-Bc; Thu, 27 Mar 2025 18:28:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: gregkh@linuxfoundation.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mka@chromium.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	festevam@denx.de,
	stern@rowland.harvard.edu,
	festevam@gmail.com
Cc: kernel@pengutronix.de,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] dt-bindings: usb: microchip,usb2514: add support for port vbus-supply
Date: Thu, 27 Mar 2025 18:28:02 +0100
Message-Id: <20250327172803.3404615-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250327172803.3404615-1-m.felsch@pengutronix.de>
References: <20250327172803.3404615-1-m.felsch@pengutronix.de>
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

Some PCB designs don't connect the USB hub port power control GPIO and
instead make use of a host controllable regulator. Add support for this
use-case by introducing portX-vbus-supply property.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 .../devicetree/bindings/usb/microchip,usb2514.yaml          | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/microchip,usb2514.yaml b/Documentation/devicetree/bindings/usb/microchip,usb2514.yaml
index 4e3901efed3f..ae6a9fb4f3d0 100644
--- a/Documentation/devicetree/bindings/usb/microchip,usb2514.yaml
+++ b/Documentation/devicetree/bindings/usb/microchip,usb2514.yaml
@@ -49,6 +49,12 @@ patternProperties:
     $ref: /schemas/usb/usb-device.yaml
     additionalProperties: true
 
+  "^port[1-7]-vbus-supply$"
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


