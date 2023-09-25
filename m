Return-Path: <devicetree+bounces-3293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE7D7AE252
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 01:35:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DA0A6281706
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 23:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBFD0266A0;
	Mon, 25 Sep 2023 23:35:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D67262BC
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 23:35:10 +0000 (UTC)
Received: from mo-csw.securemx.jp (mo-csw1802.securemx.jp [210.130.202.152])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1830136;
	Mon, 25 Sep 2023 16:35:08 -0700 (PDT)
Received: by mo-csw.securemx.jp (mx-mo-csw1802) id 38PNYkos921746; Tue, 26 Sep 2023 08:34:46 +0900
X-Iguazu-Qid: 2yAaLCv84JdgTyrse5
X-Iguazu-QSIG: v=2; s=0; t=1695684885; q=2yAaLCv84JdgTyrse5; m=WFyM66ysULiWHMyZilvpa0lvU0iH8qWby07yq/rBB0g=
Received: from imx12-a.toshiba.co.jp ([38.106.60.135])
	by relay.securemx.jp (mx-mr1800) id 38PNYi0i055533
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 26 Sep 2023 08:34:45 +0900
X-SA-MID: 7628795
From: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
To: Hans Verkuil <hverkuil@xs4all.nl>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 5/5] MAINTAINERS: Add entries for Toshiba Visconti Video Input Interface
Date: Tue, 26 Sep 2023 08:28:06 +0900
X-TSB-HOP2: ON
Message-Id: <20230925232806.950683-6-yuji2.ishikawa@toshiba.co.jp>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230925232806.950683-1-yuji2.ishikawa@toshiba.co.jp>
References: <20230925232806.950683-1-yuji2.ishikawa@toshiba.co.jp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Added entries for visconti Video Input Interface driver, including;
* device tree bindings
* source files
* documentation files

Signed-off-by: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
---
Changelog v2:
- no change

Changelog v3:
- added entry for driver API documentation

Changelog v4:
- added entry for header file

Changelog v5:
- no change

Changelog v6:
- update path to VIIF driver source files

Changelog v7:
- no change

Changelog v8:
- rename bindings description file

 MAINTAINERS | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 90f13281d297..2cd290dfadd3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2891,17 +2891,21 @@ F:	Documentation/devicetree/bindings/arm/toshiba.yaml
 F:	Documentation/devicetree/bindings/clock/toshiba,tmpv770x-pipllct.yaml
 F:	Documentation/devicetree/bindings/clock/toshiba,tmpv770x-pismu.yaml
 F:	Documentation/devicetree/bindings/gpio/toshiba,gpio-visconti.yaml
+F:	Documentation/devicetree/bindings/media/toshiba,visconti5-viif.yaml
 F:	Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml
 F:	Documentation/devicetree/bindings/pci/toshiba,visconti-pcie.yaml
 F:	Documentation/devicetree/bindings/pinctrl/toshiba,visconti-pinctrl.yaml
 F:	Documentation/devicetree/bindings/watchdog/toshiba,visconti-wdt.yaml
+F:	Documentation/driver-api/media/drivers/visconti-viif.rst
 F:	arch/arm64/boot/dts/toshiba/
 F:	drivers/clk/visconti/
 F:	drivers/gpio/gpio-visconti.c
+F:	drivers/media/platform/toshiba/visconti/
 F:	drivers/net/ethernet/stmicro/stmmac/dwmac-visconti.c
 F:	drivers/pci/controller/dwc/pcie-visconti.c
 F:	drivers/pinctrl/visconti/
 F:	drivers/watchdog/visconti_wdt.c
+F:	include/uapi/linux/visconti_viif.h
 N:	visconti
 
 ARM/UNIPHIER ARCHITECTURE
-- 
2.34.1



