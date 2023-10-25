Return-Path: <devicetree+bounces-11932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4F07D717C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 18:13:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DB48EB21053
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:13:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D55682E643;
	Wed, 25 Oct 2023 16:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="kXFCdzre"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D1827EF2
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 16:12:59 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AEE0193;
	Wed, 25 Oct 2023 09:12:58 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39PGCo2G014922;
	Wed, 25 Oct 2023 11:12:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1698250370;
	bh=a78lhGsMSXpH6aIuXQaVkWQJnsBiGCqCQrARwCrvt28=;
	h=From:To:CC:Subject:Date;
	b=kXFCdzreaFvXqN7VBlywv33O8lVaGaZ211/ez9y/V7xTjuLuEjQvZFiEZAEv9EacQ
	 fM5ojzcf4hptUUTUXGWpC+Utd0oBZVEB9S70O4Ue/EvKPQEOADNGw+Yioka0LduuYY
	 Z9xKxjqJHJIWHyauxtF4K6iWOKv+VofzxCHbht38=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39PGCoMk005223
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 25 Oct 2023 11:12:50 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 25
 Oct 2023 11:12:49 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 25 Oct 2023 11:12:49 -0500
Received: from fllv0040.itg.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39PGCmqi111714;
	Wed, 25 Oct 2023 11:12:49 -0500
From: Andrew Davis <afd@ti.com>
To: Peter Rosin <peda@axentia.se>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Andrew Davis
	<afd@ti.com>
Subject: [PATCH v5] mux: mmio: use reg property when parent device is not a syscon
Date: Wed, 25 Oct 2023 11:12:47 -0500
Message-ID: <20231025161247.1283319-1-afd@ti.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

The DT binding for the reg-mux compatible states it can be used when the
"parent device of mux controller is not syscon device". It also allows
for a reg property. When the reg property is provided, use that to
identify the address space for this mux. If not provided fallback to
using the parent device as a regmap provider.

While here use dev_err_probe() in the error path to prevent printing
a message on probe defer which now can happen in extra ways.

Signed-off-by: Andrew Davis <afd@ti.com>
Reviewed-by: Nishanth Menon <nm@ti.com>
Acked-by: Peter Rosin <peda@axentia.se>
---

Changes from v4:
 - Shorten comment and code lines
 - Remove extra ret assignment

Changes from v3:
 - Check for probe defer

Changes from v2:
 - Rebased on v6.6-rc1

Changes from v1:
 - Flip logic as suggested in v1[0]

[0] https://lore.kernel.org/lkml/1c27d9d4-b1cc-c158-90f7-f7e47e02c424@ti.com/T/

 drivers/mux/mmio.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/mux/mmio.c b/drivers/mux/mmio.c
index fd1d121a584ba..30a952c34365f 100644
--- a/drivers/mux/mmio.c
+++ b/drivers/mux/mmio.c
@@ -44,15 +44,20 @@ static int mux_mmio_probe(struct platform_device *pdev)
 	int ret;
 	int i;
 
-	if (of_device_is_compatible(np, "mmio-mux"))
+	if (of_device_is_compatible(np, "mmio-mux")) {
 		regmap = syscon_node_to_regmap(np->parent);
-	else
-		regmap = dev_get_regmap(dev->parent, NULL) ?: ERR_PTR(-ENODEV);
-	if (IS_ERR(regmap)) {
-		ret = PTR_ERR(regmap);
-		dev_err(dev, "failed to get regmap: %d\n", ret);
-		return ret;
+	} else {
+		regmap = device_node_to_regmap(np);
+		/* Fallback to checking the parent node on "real" errors. */
+		if (IS_ERR(regmap) && regmap != ERR_PTR(-EPROBE_DEFER)) {
+			regmap = dev_get_regmap(dev->parent, NULL);
+			if (!regmap)
+				regmap = ERR_PTR(-ENODEV);
+		}
 	}
+	if (IS_ERR(regmap))
+		return dev_err_probe(dev, PTR_ERR(regmap),
+				     "failed to get regmap\n");
 
 	ret = of_property_count_u32_elems(np, "mux-reg-masks");
 	if (ret == 0 || ret % 2)
-- 
2.39.2


