Return-Path: <devicetree+bounces-41945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A0E855E3E
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 10:33:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6E4A1F211FF
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 09:33:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D418C1B286;
	Thu, 15 Feb 2024 09:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="LcJ+yCno"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0188E179AE
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 09:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707989545; cv=none; b=qnGRwOPdBh1OvAaZfRCEkNhKiSCAKP+agBDecfHRSM+6qcDWEq05jc/f8YQzPuKsIv73FU5xVyjBbdcEPXE1CVMACWeChWXSvG1x8Jm0kIo0CMmWwcv9kBcOR0JI9Z7fgqybthYOjexMNAJL6xI60Z0FxdsdfZuPd2PUYXeZdoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707989545; c=relaxed/simple;
	bh=+bWsCQ2NZLwb0tKE1sZoTjnbc4jAcIbjBS+3qmNfK8s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eVJWsKID2qsTpLC6fkYnyxJEqSTAjtZMf0NVSOG0mqCLLtQrqlntG1ZAnKqLQaOWkuXew23DomrOvADwBwdS3YEEtLFE3+tWsrJkALJnbde6v/imtrPMtSm5Bc2FXl7exw9daa6h6jdQNDNQvtuOCWQXU2D224aqF99PqBuhHPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=LcJ+yCno; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1707989543; x=1739525543;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hyQwwuue8k9ICWXs7lfHS125lsG5ogkRl5B14tgL/Bw=;
  b=LcJ+yCnoqGMXqe5trZ4aOWk82qUlu/EYcQqSZRKjax0GPsHBGK78t/9L
   09Sq8FyuYDUoZPxxJ7Erc/Z0V5J6zOagY7zE1BSuZ1CiEJWoG6ZpeMI7v
   I+CqV2p9zPg3wFrPOHYCnyhQO3BJtnRF0vRgwaU/xfgsx8nQ/UVvNEMAJ
   YATu2iVpGtuwB1tKm4UmNU7ehUrP7EoncCnDJa9YHkfqvMUMSainaZmlL
   bQGlnkOPiUnWMjmWywz4x1txEFaRKAU3SVjwD+ux2ujHv0+bfR1y5D9US
   2jOH5V54b38MzpAlgO++Z/Q912//Tz/aN6Guw0Hoix7eCgAOzZrJpx5ui
   Q==;
X-IronPort-AV: E=Sophos;i="6.06,161,1705359600"; 
   d="scan'208";a="35420059"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 15 Feb 2024 10:32:16 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 2BBAA280084;
	Thu, 15 Feb 2024 10:32:16 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v5 1/2] dt-bindings: extcon-usb-gpio: convert to DT schema format
Date: Thu, 15 Feb 2024 10:32:13 +0100
Message-Id: <20240215093214.796821-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240215093214.796821-1-alexander.stein@ew.tq-group.com>
References: <20240215093214.796821-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the binding to DT schema format. Change the GPIO properties to new
naming convention using -gpios as well.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/extcon/extcon-usb-gpio.txt       | 21 --------
 .../bindings/extcon/extcon-usb-gpio.yaml      | 51 +++++++++++++++++++
 2 files changed, 51 insertions(+), 21 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
 create mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml

diff --git a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
deleted file mode 100644
index dfc14f71e81fb..0000000000000
--- a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-USB GPIO Extcon device
-
-This is a virtual device used to generate USB cable states from the USB ID pin
-connected to a GPIO pin.
-
-Required properties:
-- compatible: Should be "linux,extcon-usb-gpio"
-
-Either one of id-gpio or vbus-gpio must be present. Both can be present as well.
-- id-gpio: gpio for USB ID pin. See gpio binding.
-- vbus-gpio: gpio for USB VBUS pin.
-
-Example: Examples of extcon-usb-gpio node in dra7-evm.dts as listed below:
-	extcon_usb1 {
-		compatible = "linux,extcon-usb-gpio";
-		id-gpio = <&gpio6 1 GPIO_ACTIVE_HIGH>;
-	}
-
-	&omap_dwc3_1 {
-		extcon = <&extcon_usb1>;
-	};
diff --git a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
new file mode 100644
index 0000000000000..136f865b87816
--- /dev/null
+++ b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/extcon/extcon-usb-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: USB GPIO Extcon device
+
+maintainers:
+  - Alexander Stein <alexander.stein@ew.tq-group.com>
+
+description:
+  This is a virtual device used to generate USB cable states from the
+  USB ID pin connected to a GPIO pin.
+  Deprecated, use USB connector node instead.
+
+deprecated: true
+
+properties:
+  compatible:
+    const: linux,extcon-usb-gpio
+
+  id-gpios:
+    description: An input gpio for USB ID pin.
+    maxItems: 1
+
+  vbus-gpios:
+    description: An input gpio for USB VBus pin, used to detect presence of
+      VBUS 5V.
+    maxItems: 1
+
+required:
+  - compatible
+
+anyOf:
+  - required:
+      - id-gpios
+  - required:
+      - vbus-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    extcon-usb1 {
+      compatible = "linux,extcon-usb-gpio";
+      id-gpios = <&gpio6 1 GPIO_ACTIVE_HIGH>;
+      vbus-gpios = <&gpio6 2 GPIO_ACTIVE_HIGH>;
+    };
-- 
2.34.1


