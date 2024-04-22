Return-Path: <devicetree+bounces-61379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3060E8AC750
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 10:46:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA0F5B20E9F
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 08:46:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE6D05102B;
	Mon, 22 Apr 2024 08:46:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C844CB55
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 08:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713775585; cv=none; b=XjxeNZDg21KRnUqOLkwbd0ITqWcTP3cXNtx39u+zqVfJc3UtHlSVZskHV9TQI4PWSIaUrghPB6Kloa72Ef52PudSIoukrjVXmnvCVfVMdQXSLjLYIFASmTO3eXDhlrcaDMGMjlIYknmBiaMx/AQgJ2n0Jk5UUT9O9KWpJHtvHFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713775585; c=relaxed/simple;
	bh=QIpJu9ALWPLds/Oeu/ERZh+j6cvh9IyUasgqi32VFbM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Mbpi7UnJO2Ueskf0hKE0rj7VDrtIVa7MWkdeH4H3Gq9e5YryATbYO7XsKpVBVxrhHQzGRKatMYMToSHphBsBQbX5v2hB+i09fv5Vhi66aOH6N7r2zHzCY8PIJzALNRpv3nZNJms2LY/JRH/LBO3BYOfZY8fwRXJ2QNhgfNvMeCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rypJe-0000ML-El; Mon, 22 Apr 2024 10:46:22 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 22 Apr 2024 10:46:17 +0200
Subject: [PATCH 1/3] dt-bindings: net: mx93: add enet_clk_sel binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240422-v6-9-topic-imx93-eqos-rmii-v1-1-30151fca43d2@pengutronix.de>
References: <20240422-v6-9-topic-imx93-eqos-rmii-v1-0-30151fca43d2@pengutronix.de>
In-Reply-To: <20240422-v6-9-topic-imx93-eqos-rmii-v1-0-30151fca43d2@pengutronix.de>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Clark Wang <xiaoning.wang@nxp.com>, 
 Linux Team <linux-imx@nxp.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Jose Abreu <joabreu@synopsys.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com
X-Mailer: b4 0.13.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

When the eQOS on the i.MX93 is used in RMII mode, the TX_CLK must be set
to output mode. To do this, the ENET_CLK_SEL register must be accessed.
This register is located in a GPR register space.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml b/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
index 4c01cae7c93a7..1d1c8b90da871 100644
--- a/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
+++ b/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
@@ -56,6 +56,16 @@ properties:
         - tx
         - mem
 
+  enet_clk_sel:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to the GPR syscon
+          - description: the offset of the GPR register
+    description:
+      Should be phandle/offset pair. The phandle to the syscon node which
+      encompases the GPR register, and the offset of the GPR register.
+
   intf_mode:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     items:

-- 
2.43.2


