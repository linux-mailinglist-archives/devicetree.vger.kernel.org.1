Return-Path: <devicetree+bounces-11011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB51B7D3C70
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 18:27:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01F611C20456
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:27:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A469F1D542;
	Mon, 23 Oct 2023 16:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="tDZauvxm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F343514F70
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 16:27:10 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D576E5;
	Mon, 23 Oct 2023 09:27:09 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39NGR1AZ104142;
	Mon, 23 Oct 2023 11:27:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1698078421;
	bh=jtWF08naILkon915EMffsBHZ2FAx71FsAsp0B6E5a0A=;
	h=From:To:CC:Subject:Date;
	b=tDZauvxmMBt/rPVm+YSnBky1Gh/yefYbWukB4ZrEqYWMoiaa5017tILg4I2IGehZU
	 TACTR9eFhTe61T3F/tjpI5mIKIK29NkQNjQCjHifuQqghXZKI/A7Sr9D3QApA3p1O5
	 sdNdM/+9NQ0pBQV7+wNvmWWU9Ss+urtSCGW//Q7I=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39NGR1Fp094422
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 23 Oct 2023 11:27:01 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 23
 Oct 2023 11:27:01 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 23 Oct 2023 11:27:01 -0500
Received: from fllv0039.itg.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39NGR00G081049;
	Mon, 23 Oct 2023 11:27:00 -0500
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
Subject: [PATCH v4] mux: mmio: use reg property when parent device is not a syscon
Date: Mon, 23 Oct 2023 11:26:59 -0500
Message-ID: <20231023162659.81397-1-afd@ti.com>
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
---

Changes from v3:
 - Check for probe defer

Changes from v2:
 - Rebased on v6.6-rc1

Changes from v1:
 - Flip logic as suggested in v1[0]

[0] https://lore.kernel.org/lkml/1c27d9d4-b1cc-c158-90f7-f7e47e02c424@ti.com/T/

 drivers/mux/mmio.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/mux/mmio.c b/drivers/mux/mmio.c
index fd1d121a584ba..07c99588ff999 100644
--- a/drivers/mux/mmio.c
+++ b/drivers/mux/mmio.c
@@ -44,14 +44,17 @@ static int mux_mmio_probe(struct platform_device *pdev)
 	int ret;
 	int i;
 
-	if (of_device_is_compatible(np, "mmio-mux"))
+	if (of_device_is_compatible(np, "mmio-mux")) {
 		regmap = syscon_node_to_regmap(np->parent);
-	else
-		regmap = dev_get_regmap(dev->parent, NULL) ?: ERR_PTR(-ENODEV);
+	} else {
+		regmap = device_node_to_regmap(np);
+		/* Fallback to checking the parent node on any error other than probe defer */
+		if (IS_ERR(regmap) && regmap != ERR_PTR(-EPROBE_DEFER))
+			regmap = dev_get_regmap(dev->parent, NULL) ?: ERR_PTR(-ENODEV);
+	}
 	if (IS_ERR(regmap)) {
 		ret = PTR_ERR(regmap);
-		dev_err(dev, "failed to get regmap: %d\n", ret);
-		return ret;
+		return dev_err_probe(dev, ret, "failed to get regmap\n");
 	}
 
 	ret = of_property_count_u32_elems(np, "mux-reg-masks");
-- 
2.39.2


