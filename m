Return-Path: <devicetree+bounces-237227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AFCC4E9B2
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 15:54:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B2A53AA7EE
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 14:41:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95E28328274;
	Tue, 11 Nov 2025 14:36:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140FD2DECBA
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 14:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762871806; cv=none; b=a1nY9kVMZbQxeTvtnPfCkK8PAy8vdd5IdHvzbEiA3Ql2p/CdFzKkT0fkfgaEj5BDr/IZFTVI75X3tmc7i1Pa/1oZHKgi9Ej0lBLi+mKBMPEIB5tT2wjeQhS8UOUsT3FMO6vYk1KqG1DslVz8rnHPY4QlsGElHhxK15X3ScsPAkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762871806; c=relaxed/simple;
	bh=MrA5Pm+bMe7Y1bUbUfwg73ko1PRGj7avWFqhiEsp8Dc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ePkdGaEMc3ePV4uVVIVSjcVsJfTbQS+YMo/Y9WUcm23Hbq5mV1bb2Or2shBgElcJ7knwkkt2Qy/tm+8Nm5ecfGjC0WspHopor7Cy2CCHdkGD/8++UxTmfsDutr/91cz1Cn5/2OvYeEUq/wLSGoHv6aBaq3y7pH/dFAPX7PH3+cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vIpU4-0004Ul-6V; Tue, 11 Nov 2025 15:36:36 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 11 Nov 2025 15:36:14 +0100
Subject: [PATCH 1/4] media: dt-bindings: adi,adv7180: add VPP and CSI
 register maps
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251111-b4-adv7180-vpp-sub-device-v1-1-9877fe9f709b@pengutronix.de>
References: <20251111-b4-adv7180-vpp-sub-device-v1-0-9877fe9f709b@pengutronix.de>
In-Reply-To: <20251111-b4-adv7180-vpp-sub-device-v1-0-9877fe9f709b@pengutronix.de>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 kernel@pengutronix.de, Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The ADV7280 and ADV7280-M have up to three register maps for the VPP and
CSI. The address of these register maps may be programmed via registers
in the main register map.

Allow to specify the addresses of the VPP and CSI in the device tree to
solve address conflicts on a board level.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 .../devicetree/bindings/media/i2c/adi,adv7180.yaml | 44 ++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml b/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml
index dee8ce7cb7ba..4bbdc812442b 100644
--- a/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml
@@ -138,6 +138,31 @@ allOf:
       required:
         - ports
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - adi,adv7280
+              - adi,adv7280-m
+    then:
+      properties:
+        reg:
+          minItems: 1
+          maxItems: 3
+          description:
+            The ADV7280 and ADV7280-M have up to three register maps, which can be
+            accessed via the I2C port. The main register map, the VPP register map,
+            and the CSI register map. The main register map is mandatory. The other
+            register maps are optional and the default is used unless specified.
+
+        reg-names:
+          minItems: 1
+          items:
+            - const: main
+            - enum: [ csi, vpp ]
+            - enum: [ csi, vpp ]
+
 examples:
   - |
     i2c {
@@ -187,3 +212,22 @@ examples:
                     };
             };
     };
+
+  - |
+    i2c {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            composite-in@20 {
+                    compatible = "adi,adv7280-m";
+                    reg = <0x20>, <0x42>, <0x44>;
+                    reg-names = "main", "vpp", "csi";
+
+                    port {
+                            adv7280_out: endpoint {
+                                    bus-width = <8>;
+                                    remote-endpoint = <&vin1ep>;
+                            };
+                    };
+            };
+    };

-- 
2.47.3


