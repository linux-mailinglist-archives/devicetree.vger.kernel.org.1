Return-Path: <devicetree+bounces-19309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0657FA5DD
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 17:13:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CC7A1C20C6E
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 16:13:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 642EA2D623;
	Mon, 27 Nov 2023 16:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BAE799
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 08:13:25 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <auto@pengutronix.de>)
	id 1r7eEI-0001PK-88; Mon, 27 Nov 2023 17:13:02 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <auto@pengutronix.de>)
	id 1r7eEF-00Bz1E-Jf; Mon, 27 Nov 2023 17:12:59 +0100
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <auto@pengutronix.de>)
	id 1r7eEF-00D7aJ-1h;
	Mon, 27 Nov 2023 17:12:59 +0100
From: Roland Hieber <rhi@pengutronix.de>
Date: Mon, 27 Nov 2023 17:12:28 +0100
Subject: [PATCH 1/2] dt-bindings: display: bridge: samsung-dsim: Add i.MX7D
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231127-b4-imx7-mipi-dsi-v1-1-7d22eee70c67@pengutronix.de>
References: <20231127-b4-imx7-mipi-dsi-v1-0-7d22eee70c67@pengutronix.de>
In-Reply-To: <20231127-b4-imx7-mipi-dsi-v1-0-7d22eee70c67@pengutronix.de>
To: Inki Dae <inki.dae@samsung.com>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Roland Hieber <rhi@pengutronix.de>, Philipp Zabel <p.zabel@pengutronix.de>
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: auto@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Philipp Zabel <p.zabel@pengutronix.de>

Add support for the "fsl,imx7d-mipi-dsim" compatible used on i.MX7D.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 .../devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml         | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
index 4ed7a799ba26..e43fec560941 100644
--- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
@@ -27,7 +27,9 @@ properties:
           - fsl,imx8mm-mipi-dsim
           - fsl,imx8mp-mipi-dsim
       - items:
-          - const: fsl,imx8mn-mipi-dsim
+          - enum:
+              - fsl,imx7d-mipi-dsim
+              - fsl,imx8mn-mipi-dsim
           - const: fsl,imx8mm-mipi-dsim
 
   reg:

-- 
2.39.2


