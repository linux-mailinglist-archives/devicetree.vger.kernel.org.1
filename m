Return-Path: <devicetree+bounces-17217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9CF7F1952
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 18:06:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F1F51C21851
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 17:06:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E705C2031A;
	Mon, 20 Nov 2023 17:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ZqmdI66z"
X-Original-To: devicetree@vger.kernel.org
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39C40CB;
	Mon, 20 Nov 2023 09:06:11 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3D902E000D;
	Mon, 20 Nov 2023 17:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1700499969;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QyeoyIjKWYnhadNlwnWChE/GqVDzf3ZKBilwOQ+lGlM=;
	b=ZqmdI66z1vy8lWgmGU5/XHNerVlOhh8vrY35rXCsocJuovHqlABoeZpMuq+A1lizcvborJ
	7rmOClkHFBTsjATqeTxyNG/BxA6y/J8DKS2HpJ4qGrlqLEtKXdD/RxZAhao/6aJBqWaTkU
	lLaqax7sJc507icl7mqUJ7Lgs7VhvIByEU2E9AjIRWRZMbRiPqAcZv75C6UVfBNJwGX6qo
	kETyAFJp1QO5QF/yY23b9RmMeu2v5N1rgPHdRUo7+IwnO1pi67rDHLTHjW00HqwukC5/Ru
	WE0upzToqBPx2Mp8unvEFMibO+vyyOmMbSGjztMIz2Er5RewGUQY4HanT1e+dw==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Mon, 20 Nov 2023 18:06:03 +0100
Subject: [PATCH v2 3/7] usb: cdns3-ti: move reg writes from probe into an
 init_hw helper
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231120-j7200-usb-suspend-v2-3-038c7e4a3df4@bootlin.com>
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

The hardware initialisation register write sequence is only used at
probe. To support suspend/resume with a controller losing power, we
must redo this sequence of writes.

Extract the register write sequence to a new cdns_ti_init_hw function to
reuse it later down the road, at resume.

We keep the devicetree-parsing aspect of the sequence in probe & add a
new field in the private struct to remember the USB2 refclk rate code
computation result.

Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
---
 drivers/usb/cdns3/cdns3-ti.c | 76 ++++++++++++++++++++++++--------------------
 1 file changed, 41 insertions(+), 35 deletions(-)

diff --git a/drivers/usb/cdns3/cdns3-ti.c b/drivers/usb/cdns3/cdns3-ti.c
index dc1594acdcee..d4232b440e4e 100644
--- a/drivers/usb/cdns3/cdns3-ti.c
+++ b/drivers/usb/cdns3/cdns3-ti.c
@@ -57,6 +57,7 @@ struct cdns_ti {
 	unsigned vbus_divider:1;
 	struct clk *usb2_refclk;
 	struct clk *lpm_clk;
+	int usb2_refclk_rate_code;
 };
 
 static const int cdns_ti_rate_table[] = {	/* in KHZ */
@@ -85,15 +86,50 @@ static inline void cdns_ti_writel(struct cdns_ti *data, u32 offset, u32 value)
 	writel(value, data->usbss + offset);
 }
 
+static void cdns_ti_init_hw(struct cdns_ti *data)
+{
+	u32 reg;
+
+	/* assert RESET */
+	reg = cdns_ti_readl(data, USBSS_W1);
+	reg &= ~USBSS_W1_PWRUP_RST;
+	cdns_ti_writel(data, USBSS_W1, reg);
+
+	/* set static config */
+	reg = cdns_ti_readl(data, USBSS_STATIC_CONFIG);
+	reg &= ~USBSS1_STATIC_PLL_REF_SEL_MASK;
+	reg |= data->usb2_refclk_rate_code << USBSS1_STATIC_PLL_REF_SEL_SHIFT;
+
+	reg &= ~USBSS1_STATIC_VBUS_SEL_MASK;
+	if (data->vbus_divider)
+		reg |= 1 << USBSS1_STATIC_VBUS_SEL_SHIFT;
+
+	cdns_ti_writel(data, USBSS_STATIC_CONFIG, reg);
+	reg = cdns_ti_readl(data, USBSS_STATIC_CONFIG);
+
+	/* set USB2_ONLY mode if requested */
+	reg = cdns_ti_readl(data, USBSS_W1);
+	if (data->usb2_only)
+		reg |= USBSS_W1_USB2_ONLY;
+
+	/* set default modestrap */
+	reg |= USBSS_W1_MODESTRAP_SEL;
+	reg &= ~USBSS_W1_MODESTRAP_MASK;
+	reg |= USBSS_MODESTRAP_MODE_NONE << USBSS_W1_MODESTRAP_SHIFT;
+	cdns_ti_writel(data, USBSS_W1, reg);
+
+	/* de-assert RESET */
+	reg |= USBSS_W1_PWRUP_RST;
+	cdns_ti_writel(data, USBSS_W1, reg);
+}
+
 static int cdns_ti_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *node = pdev->dev.of_node;
 	struct cdns_ti *data;
-	int error;
-	u32 reg;
-	int rate_code, i;
 	unsigned long rate;
+	int error, i;
 
 	data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 	if (!data)
@@ -133,41 +169,11 @@ static int cdns_ti_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	rate_code = i;
-
-	/* assert RESET */
-	reg = cdns_ti_readl(data, USBSS_W1);
-	reg &= ~USBSS_W1_PWRUP_RST;
-	cdns_ti_writel(data, USBSS_W1, reg);
-
-	/* set static config */
-	reg = cdns_ti_readl(data, USBSS_STATIC_CONFIG);
-	reg &= ~USBSS1_STATIC_PLL_REF_SEL_MASK;
-	reg |= rate_code << USBSS1_STATIC_PLL_REF_SEL_SHIFT;
-
-	reg &= ~USBSS1_STATIC_VBUS_SEL_MASK;
+	data->usb2_refclk_rate_code = i;
 	data->vbus_divider = device_property_read_bool(dev, "ti,vbus-divider");
-	if (data->vbus_divider)
-		reg |= 1 << USBSS1_STATIC_VBUS_SEL_SHIFT;
-
-	cdns_ti_writel(data, USBSS_STATIC_CONFIG, reg);
-	reg = cdns_ti_readl(data, USBSS_STATIC_CONFIG);
-
-	/* set USB2_ONLY mode if requested */
-	reg = cdns_ti_readl(data, USBSS_W1);
 	data->usb2_only = device_property_read_bool(dev, "ti,usb2-only");
-	if (data->usb2_only)
-		reg |= USBSS_W1_USB2_ONLY;
-
-	/* set default modestrap */
-	reg |= USBSS_W1_MODESTRAP_SEL;
-	reg &= ~USBSS_W1_MODESTRAP_MASK;
-	reg |= USBSS_MODESTRAP_MODE_NONE << USBSS_W1_MODESTRAP_SHIFT;
-	cdns_ti_writel(data, USBSS_W1, reg);
 
-	/* de-assert RESET */
-	reg |= USBSS_W1_PWRUP_RST;
-	cdns_ti_writel(data, USBSS_W1, reg);
+	cdns_ti_init_hw(data);
 
 	error = of_platform_populate(node, NULL, NULL, dev);
 	if (error) {

-- 
2.42.0


