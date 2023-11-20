Return-Path: <devicetree+bounces-17219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2009D7F1958
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 18:06:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 516B71C218B6
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 17:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10575208B8;
	Mon, 20 Nov 2023 17:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="QBqPbnsx"
X-Original-To: devicetree@vger.kernel.org
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66829E8;
	Mon, 20 Nov 2023 09:06:13 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 62A2FE0010;
	Mon, 20 Nov 2023 17:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1700499972;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nDo2L/kHH9S9njIE6FRuQXRwkc6RX5NfCLZkNNd2W9E=;
	b=QBqPbnsxX5rPc90WJBdLJNqmikqCqCW9lLULcko2NpiWhto/Vzx2pBz1B1AyHUAckANfOn
	NOWwyh1lTnaIn3E0HmBzw5lgnGbvDErrP5rlqISW7AtaDHhy95aNawkIA+uDfh4dnVRIRH
	YSLa5MXVUPQ41b7VwNYsC+fwgi30ZjmCC4Ue+pCLNQdzsVGwUDg1AToa0QzAE3uIsyu6TJ
	sQ5Okl4vkxi7vl06ZP13kvGpe4rfCBTUFYCjYLOcgZYyh7QyF8+lwewZXi/c49xIfLfIJp
	95vGcaCza1+nxKTvoiTUeZwjmxI19pSBXHfqH9c2Dyikj/koqNOy1PYXAQuQCA==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Mon, 20 Nov 2023 18:06:06 +0100
Subject: [PATCH v2 6/7] usb: cdns3-ti: signal reset-on-resume to xHCI for
 J7200 platform
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231120-j7200-usb-suspend-v2-6-038c7e4a3df4@bootlin.com>
References: <20231120-j7200-usb-suspend-v2-0-038c7e4a3df4@bootlin.com>
In-Reply-To: <20231120-j7200-usb-suspend-v2-0-038c7e4a3df4@bootlin.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Roger Quadros <rogerq@kernel.org>, 
 Peter Chen <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 "Thomas Petazzoni thomas.petazzoni"@bootlin.com, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: b4 0.12.3
X-GND-Sasl: theo.lebrun@bootlin.com

Pass CDNS3_RESET_ON_RESUME as platform data to cdns3 host role. It will
in turn pass it down to xHCI platform data as XHCI_RESET_ON_RESUME.

Avoid this warning on resume:

  [   16.017462] xhci-hcd xhci-hcd.1.auto: xHC error in resume, USBSTS 0x401, Reinit

When used, remote wakeup is not expected to work.

Only focus J7200 as other SoC are untested.

Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
---
 drivers/usb/cdns3/cdns3-ti.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/cdns3/cdns3-ti.c b/drivers/usb/cdns3/cdns3-ti.c
index 84f93c2fcd5c..7d56a1acbc54 100644
--- a/drivers/usb/cdns3/cdns3-ti.c
+++ b/drivers/usb/cdns3/cdns3-ti.c
@@ -16,6 +16,7 @@
 #include <linux/of_platform.h>
 #include <linux/pm_runtime.h>
 #include <linux/property.h>
+#include "core.h"
 
 /* USB Wrapper register offsets */
 #define USBSS_PID		0x0
@@ -128,6 +129,7 @@ static int cdns_ti_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *node = pdev->dev.of_node;
+	const struct of_dev_auxdata *auxdata;
 	struct cdns_ti *data;
 	unsigned long rate;
 	int error, i;
@@ -177,7 +179,8 @@ static int cdns_ti_probe(struct platform_device *pdev)
 
 	cdns_ti_init_hw(data);
 
-	error = of_platform_populate(node, NULL, NULL, dev);
+	auxdata = of_device_get_match_data(dev);
+	error = of_platform_populate(node, NULL, auxdata, dev);
 	if (error) {
 		dev_err(dev, "failed to create children: %d\n", error);
 		return error;
@@ -222,8 +225,20 @@ static const struct dev_pm_ops cdns_ti_pm_ops = {
 
 #endif /* CONFIG_PM */
 
+static struct cdns3_platform_data cdns_ti_j7200_pdata = {
+	.quirks = CDNS3_RESET_ON_RESUME,
+};
+
+static const struct of_dev_auxdata cdns_ti_j7200_auxdata[] = {
+	{
+		.compatible = "cdns,usb3",
+		.platform_data = &cdns_ti_j7200_pdata,
+	},
+	{},
+};
+
 static const struct of_device_id cdns_ti_of_match[] = {
-	{ .compatible = "ti,j7200-usb", },
+	{ .compatible = "ti,j7200-usb", .data = cdns_ti_j7200_auxdata, },
 	{ .compatible = "ti,j721e-usb", },
 	{ .compatible = "ti,am64-usb", },
 	{},

-- 
2.42.0


