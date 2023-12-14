Return-Path: <devicetree+bounces-25409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1997C8132F5
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:23:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C8EB1C212BA
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF94A59E49;
	Thu, 14 Dec 2023 14:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="JOsNyT9J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9153A7;
	Thu, 14 Dec 2023 06:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702563814; x=1734099814;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hLc79ehLKHzTwYeXZeaPOBNlJM3lI7AeOkDs1ow+EXQ=;
  b=JOsNyT9JDkDM/GTOdbLNup3oBNaA+uEXViCuBCg9KZTyWbttMp2lZkO5
   B2b6Y6po/HhvXRjBhS4SX7P32+1dRX7B5eTySTndaaOY5CB9mesoMWx6e
   VzXyEIWta2FW1+SwgOQtyPQqySHfva20p2D2jRgoBNKRwJ6nR5GR2Atea
   TpKutSeo6/yM+Pvk9rSH5WP9hsjzIvuKCDl3EM0AKZOS84kmnbq9kG3VD
   YUb/i5PH4WZN5xs2ny2j+qXZ1aGVKacRMzmvSmwLGhDGm4PVoM6r7/RP1
   FlNP4C3x/b4VpnKUwc1VK7va4dn3H7TgSpFZFGY40zkZrThN4OaSR9r4X
   A==;
X-IronPort-AV: E=Sophos;i="6.04,275,1695679200"; 
   d="scan'208";a="34512087"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2023 15:23:30 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 35F43280075;
	Thu, 14 Dec 2023 15:23:30 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Li Yang <leoyang.li@nxp.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 2/4] dt-bindings: arm: add TQMa8Xx boards
Date: Thu, 14 Dec 2023 15:23:25 +0100
Message-Id: <20231214142327.1962914-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214142327.1962914-1-alexander.stein@ew.tq-group.com>
References: <20231214142327.1962914-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

TQMa8Xx is a SOM series featuring NXP i.MX8X SoC.
They are called TQMa8XQP and TQMa8XDP respectively.
MBa8Xx is an evaluation mainboard for this SOM

Signed-off-by: Markus Niebel <Markus.Niebel@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index cd87d1afe7b72..918a19d418922 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1231,6 +1231,22 @@ properties:
           - const: toradex,colibri-imx8x
           - const: fsl,imx8qxp
 
+      - description:
+          TQMa8Xx is a series of SOM featuring NXP i.MX8X system-on-chip
+          variants. It is designed to be clicked on different carrier boards
+          MBa8Xx is the starterkit
+        oneOf:
+          - items:
+              - enum:
+                  - tq,imx8dxp-tqma8xdp-mba8xx # TQ-Systems GmbH TQMa8XDP SOM on MBa8Xx
+              - const: tq,imx8dxp-tqma8xdp     # TQ-Systems GmbH TQMa8XDP SOM (with i.MX8DXP)
+              - const: fsl,imx8dxp
+          - items:
+              - enum:
+                  - tq,imx8qxp-tqma8xqp-mba8xx # TQ-Systems GmbH TQMa8XQP SOM on MBa8Xx
+              - const: tq,imx8qxp-tqma8xqp     # TQ-Systems GmbH TQMa8XQP SOM (with i.MX8QXP)
+              - const: fsl,imx8qxp
+
       - description: i.MX8ULP based Boards
         items:
           - enum:
-- 
2.34.1


