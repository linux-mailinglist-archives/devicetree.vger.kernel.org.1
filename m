Return-Path: <devicetree+bounces-48491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A68558723CA
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 17:11:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7F4D1C224C7
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 16:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43EE412C55A;
	Tue,  5 Mar 2024 16:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="mkbWtNsw"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB0E12BF3E;
	Tue,  5 Mar 2024 16:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709654973; cv=none; b=bUTPgR33pz62T3axVuOquOOU2V5iN6Nt9ta5X2v+JY0THymnNYxaXcSJ0emVX6wH0R5b28DhAe8rD6/Ws8Gmv9OnqNeAqzUcvVVQzjppHxOWkQPG9sVQBO9N0z0sWTNsiAZX44q8bUbtSeQhGa5m/H+gzRowzVcBI5OdQ7H5bV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709654973; c=relaxed/simple;
	bh=/8RtcWddviVHUGwjp6TY/AMTXo6O4yEiTsEm4nGhilk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UACraLi+HMrbp3+qVOJCrEyHnmJPgPdkHTlRVtIRMitCqfSqU0YjjwOOXMlI5kl0q5mpg/7omx6JyLoPY5XUHYY3EOaTIyRJ1XP9RxaS7S9UbpydkTWZwDf44yyEDoA4DfJZIGDbt5+ssH8gRMf3n4FMRS7nrDCZ0Uj6hZrWt7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=mkbWtNsw; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from localhost.localdomain (unknown [IPv6:2001:b07:5d2e:52c9:cc1e:e404:491f:e6ea])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A84171B83;
	Tue,  5 Mar 2024 17:09:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1709654941;
	bh=/8RtcWddviVHUGwjp6TY/AMTXo6O4yEiTsEm4nGhilk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mkbWtNswSWZToKGsXh8G43F2yO911v5E7rl7kfE92a4IJ21VUT3hOKtBL1ROeqAf0
	 z7iKdjbZnP6Ln4J9w+YSuTQ7nEY08bTMOO51AlP/MR/zOdCQ4P/l1DKpOxboFMWfm8
	 ltGiGYt6C76VXWyfZYwxr6+sBXozO0gqXqoQRq1Y=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Linux Media Mailing List <linux-media@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	David Plowman <david.plowman@raspberrypi.com>,
	Naushir Patuck <naush@raspberrypi.com>,
	Nick Hollinghurst <nick.hollinghurst@raspberrypi.org>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 7/9] media: dt-bindings: Add bindings for Raspberry Pi PiSP Back End
Date: Tue,  5 Mar 2024 17:08:50 +0100
Message-ID: <20240305160855.147483-8-jacopo.mondi@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240305160855.147483-1-jacopo.mondi@ideasonboard.com>
References: <20240305160855.147483-1-jacopo.mondi@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bindings for the Raspberry Pi PiSP Back End memory-to-memory image
signal processor.

Datasheet:
https://datasheets.raspberrypi.com/camera/raspberry-pi-image-signal-processor-specification.pdf

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Reviewed-by: Rob Herring <robh@kernel.org>

---
v2->v3:
- Add back 'clock-names' as suggested by Laurent
- Add Rob's ack
- minor grammar/style fixes
---
 .../bindings/media/raspberrypi,pispbe.yaml    | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml

diff --git a/Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml b/Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml
new file mode 100644
index 000000000000..446c1e788ade
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/raspberrypi,pispbe.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Raspberry Pi PiSP Image Signal Processor (ISP) Back End
+
+maintainers:
+  - Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
+  - Jacopo Mondi <jacopo.mondi@ideasonboard.com>
+
+description: |
+  The Raspberry Pi PiSP Image Signal Processor (ISP) Back End is an image
+  processor that fetches images in Bayer or Grayscale format from DRAM memory
+  in tiles and produces images consumable by applications.
+
+  The full ISP documentation is available at
+  https://datasheets.raspberrypi.com/camera/raspberry-pi-image-signal-processor-specification.pdf
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - brcm,bcm2712-pispbe
+      - const: raspberrypi,pispbe
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: aclk
+
+  iommus:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        isp@880000  {
+             compatible = "brcm,bcm2712-pispbe", "raspberrypi,pispbe";
+             reg = <0x10 0x00880000 0x0 0x4000>;
+             interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+             clocks = <&firmware_clocks 7>;
+             clock-names = "aclk";
+             iommus = <&iommu2>;
+        };
+    };
--
2.43.2


