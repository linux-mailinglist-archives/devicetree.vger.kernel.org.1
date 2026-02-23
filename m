Return-Path: <devicetree+bounces-267371-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MD5eHwA6nGlCBgQAu9opvQ
	(envelope-from <devicetree+bounces-267371-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:29:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DEF175841
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:29:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8ABD73050D7D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:27:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE837361650;
	Mon, 23 Feb 2026 11:27:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 865F43612FB
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771846063; cv=none; b=EppmCIaWOvarWJBI4R0DqlCQ9zrjx/33GYEtXHRR1dB9LgcZj319eR2FHpQ6WDC1W4JdHE62AgKwMS/TOzAWA1cTOpz1XPHdFC54Ad22R3VIQ3rGkyA6tjv1bwAaBhkyh25YE0wfukba8kcXOYC9KGTgZKagXjmMup4QDymCGz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771846063; c=relaxed/simple;
	bh=X99J4EYETaDcZTtHLmSJ/pCmG96o3v4GJbDAz+8Lxno=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g/ueUwImTitaglUtRFVex0vF6EhhuuilmpdAOUeug5FJ7BOAUpzjZXtisLtGhxDqt4D9Mc2EYXbUn7dJ85FB+5wvZNtIHJPe5KFEUXu9VENA6j104O19glDxQBZVKMYXEs/7zsj4Rcrk/wTq4XuZn/hKHPPpGIZQ+6znClLC4gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vuU6C-0007VH-9v; Mon, 23 Feb 2026 12:27:36 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 23 Feb 2026 12:27:36 +0100
Subject: [PATCH v5 3/4] dt-bindings: usb: usb-device: add usb hub port
 vbus-supply suppport
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-v6-16-topic-usb-onboard-dev-v5-3-28d3018a8026@pengutronix.de>
References: <20260223-v6-16-topic-usb-onboard-dev-v5-0-28d3018a8026@pengutronix.de>
In-Reply-To: <20260223-v6-16-topic-usb-onboard-dev-v5-0-28d3018a8026@pengutronix.de>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linuxfoundation.org,kernel.org,gmail.com,chromium.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267371-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.912];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.2:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:mid,pengutronix.de:email,0.0.0.1:email]
X-Rspamd-Queue-Id: D3DEF175841
X-Rspamd-Action: no action

Some PCB designs don't use the dedicated USB hub port power control GPIO
to control the port VBUS supply. Instead host managed GPIOs are used to
control the VBUS supply.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/devicetree/bindings/usb/usb-device.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/usb-device.yaml b/Documentation/devicetree/bindings/usb/usb-device.yaml
index 09fceb469f10525e9dcdb91435b142b0d21964b8..c9abdbea0e5348dc25f8f9484142089cf60bd514 100644
--- a/Documentation/devicetree/bindings/usb/usb-device.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-device.yaml
@@ -53,6 +53,12 @@ properties:
   "#size-cells":
     const: 0
 
+  vbus-supply:
+    description: USB hub port VBUS supply.
+      The host managed regulator which controls the USB hub port VBUS. This
+      regulator is only required if the hub internal control signals aren't
+      used to control the VBUS regulators.
+
 patternProperties:
   "^interface@[0-9a-f]{1,2}(,[0-9a-f]{1,2})$":
     type: object
@@ -85,6 +91,7 @@ additionalProperties: true
 
 examples:
   # hub connected to port 1
+  # device connected to hub port 2, vbus controlled by ext. regulator
   # device connected to port 2
   # device connected to port 3
   #    interface 0 of configuration 1
@@ -99,6 +106,14 @@ examples:
         hub@1 {
             compatible = "usb5e3,608";
             reg = <1>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            device@2 {
+                compatible = "usb123,4321";
+                reg = <2>;
+                vbus-supply = <&reg_5v0_vbus>;
+            };
         };
 
         device@2 {

-- 
2.47.3


