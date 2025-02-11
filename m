Return-Path: <devicetree+bounces-145117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1C0A30608
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 09:42:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51C7B1888653
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 08:42:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F0A11F0E31;
	Tue, 11 Feb 2025 08:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="btACsuEC";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="X6Tg75h9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665D41F03E6;
	Tue, 11 Feb 2025 08:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739263312; cv=none; b=Z0Uon6N+9nwGLkTsqd+XTuqPH2wA++cYUbXudqpYp4vP5SO9zAjIREdWcGZMjFKWuuAUoIr5KyDMACRdEOHf0D/M/9TEMqIrGV2k8PTABSrB3znCyHqm2g4E0SHDeNiK31+cyexb6YeRxNW4cL61do8H6XgpVesq55ODs9jAia8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739263312; c=relaxed/simple;
	bh=pFgYRyA3rYzTil7TL1A8R0renWw9AIYytpGp630Pypg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kdLMps+sZdHqd3lnkoE8YBTbhPW0BltbcuaRApYs4Xq58OisViGxC4nAYkfRHXI7xAfo/nifhdEcVWc37ieA4gmmEJx6q8JQvlv3yUIn42MIHbo90bJsZDz28nEDfKVkjMqtd6oUs8qZsLThJH2buQAw8/HyflCO6G2WIZADnIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=btACsuEC; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=X6Tg75h9 reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1739263310; x=1770799310;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=C0R9isyySuwnNx9dPUykzSU2bGVzljEuoHr9O38qK+Y=;
  b=btACsuECxe/r42zcWiGREaLZnw5JA7ZxNggp+85LCgdN23ONI834vElu
   IkViyucEDMyO1tvoucOO/XEkZof7+rOVfDYClkrHKpdu5BxpSGtpZxqw5
   IvgeV+kOZOa28vDd1HyYnR2Sq/d1qhKkQHkB7phDFcUcvyeKIoc5Sz/Xk
   BqP898tjwaXka61ZnQ374SvVrbzvtQKpyqMU68MP+8oMKhC1A7wKQMO5X
   V6QZJUgez9ak4obDpcHdg7YLsr7WR7t9rRyaSI/Hlm1J4yoK4G/u9j8ar
   bgRX9nfHGXboqYpyD6lbHEbMdULjbm4oon3+yHic9O57Qbr+rIocvyCUu
   Q==;
X-CSE-ConnectionGUID: M68Dm3NlQhGTHv/2IRQE4g==
X-CSE-MsgGUID: 4rMTWigRSCqlMw7RFcDnvA==
X-IronPort-AV: E=Sophos;i="6.13,277,1732575600"; 
   d="scan'208";a="41744830"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 11 Feb 2025 09:41:48 +0100
X-CheckPoint: {67AB0D4C-18-EBA888C4-C1AC8B84}
X-MAIL-CPID: 3998205C48C698F448D73D29C0A891B7_0
X-Control-Analysis: str=0001.0A006366.67AB0D4D.005E,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5270A169CCC;
	Tue, 11 Feb 2025 09:41:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1739263304;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=C0R9isyySuwnNx9dPUykzSU2bGVzljEuoHr9O38qK+Y=;
	b=X6Tg75h9ZAC+qaahQ5zW2LRbzAn8bhsXu6GjStruoYhsrGU4lChKSk6kAz/Vi9+S6IxIiv
	Yz7VZvsz0DTasttE2mCd8z+C6oy5WX8owXoWJAqtOohPUMb2iE93RxB9U8SeJlOiAtgmwU
	N3olBhd126CcFxY7JJAW+cFDWLe2rM47/2Dh4MQwW/KTYlBJb09MKXtu589IQTM5r07aiJ
	CZVwkoNSt/cmyBz0sOESvOVf1fq1n/tqp2tNqqOlEQVW+JTZiyR3d/hDkN89EoCTLeW6mB
	csFvFw6kkqv4WgEc2x183YiBslTmKpYK80dh+sJrpc5GQQPunuRtK9unFxGdGA==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: bridge: ldb: Implement simple Freescale i.MX91/93 DPI bridge
Date: Tue, 11 Feb 2025 09:41:18 +0100
Message-Id: <20250211084119.849324-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250211084119.849324-1-alexander.stein@ew.tq-group.com>
References: <20250211084119.849324-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

The i.MX91/93 contains a single syscon registers which is responsible
for configuring DPI output format. Add DT binding which represents
this configuration as a bridge.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../bridge/fsl,imx9-parallel-disp-fmt.yaml    | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/fsl,imx9-parallel-disp-fmt.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,imx9-parallel-disp-fmt.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,imx9-parallel-disp-fmt.yaml
new file mode 100644
index 0000000000000..54cb73b59b1eb
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/fsl,imx9-parallel-disp-fmt.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/fsl,imx9-parallel-disp-fmt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX91/93 DPI bridge
+
+maintainers:
+  - Alexander Stein <alexander.stein@ew.tq-group.com>
+
+description: |
+  The i.MX91/93 mediamix contains a single register which is responsible
+  for configuring the parallel display output format. This describes
+  this registers as bridge within the DT.
+
+properties:
+  compatible:
+    const: fsl,imx9-parallel-display-format
+
+  reg:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for DPI input.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for DPI output (panel or bridge).
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    blk-ctrl {
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        bridge@60 {
+            compatible = "fsl,imx9-parallel-display-format";
+            reg = <0x60 0x4>;
+            status = "disabled";
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    dpi_from_lcdif: endpoint {
+                        remote-endpoint = <&lcdif_to_dpi>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    dpi_out: endpoint {
+                    };
+                };
+            };
+        };
+    };
-- 
2.34.1


