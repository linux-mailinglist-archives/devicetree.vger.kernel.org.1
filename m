Return-Path: <devicetree+bounces-15238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6E77E93BD
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 01:52:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 764D0B207BF
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 00:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D2D82566;
	Mon, 13 Nov 2023 00:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="YE3TogPp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD723D72
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:52:35 +0000 (UTC)
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05B4F1BD4
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 16:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=TiJf9ojlNhxPnbwNmLPWFg4kCpD3p403c86z54PQPYc=; b=YE3Tog
	PpHPXlwO2TjuqG1Kquj3nAfm+3SUV6FEWjnc1gxJTZPfbLcZnVNrYWuUjZ+3eIkt
	S14S9GpmaIbJ3FKfTtYAa+Nk15KPd2dTNuClf2I6iedbeO5sfYU7QLgm7pbjX7hv
	C5pMdnEMvZFJXXzq2aq+htq4ZG5ZZA54g5P+hDvIvWrXaHMkMA89hLqQ9496m2if
	87MnzjpPF4/AkSOLMrh/gY0gFI9mVgC9AjZlUD3Wa04WM0y/6jYY/fcFdbD6egwA
	4PLCJpqI03zP1C1QALSBOCxH61ifWbA7JvD+joVPJlCPIKNIqTGBNXg+NvgBj8V5
	jjZRDOjVUBVqV/fw==
Received: (qmail 4084506 invoked from network); 13 Nov 2023 01:52:31 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 13 Nov 2023 01:52:31 +0100
X-UD-Smtp-Session: l3s3148p1@OwetFf4JkcIMv8XD
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Johan Hovold <johan@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/3] dt-bindings: gnss: u-blox: add "reset-gpios" binding
Date: Sun, 12 Nov 2023 19:51:50 -0500
Message-Id: <20231113005152.10656-3-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20231113005152.10656-1-wsa+renesas@sang-engineering.com>
References: <20231113005152.10656-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Renesas KingFisher board includes a U-Blox Neo-M8 chip. This chip
has a reset pin which is also wired on the board. Introduce a binding to
support this reset pin.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
index 4835a280b3bf..8e97e475613f 100644
--- a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
+++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
@@ -41,6 +41,9 @@ properties:
     description: >
       Backup voltage regulator
 
+  reset-gpios:
+    maxItems: 1
+
 required:
   - compatible
   - vcc-supply
@@ -49,10 +52,12 @@ unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     serial {
         gnss {
             compatible = "u-blox,neo-8";
             v-bckp-supply = <&gnss_v_bckp_reg>;
             vcc-supply = <&gnss_vcc_reg>;
+            reset-gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
         };
     };
-- 
2.35.1


