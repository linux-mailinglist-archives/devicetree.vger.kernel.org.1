Return-Path: <devicetree+bounces-7981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0937C7C664A
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:21:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C7091C20C85
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7D59DF4F;
	Thu, 12 Oct 2023 07:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAAB3DDDB
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:21:05 +0000 (UTC)
Received: from mo-csw.securemx.jp (mo-csw1801.securemx.jp [210.130.202.135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 054A2BA;
	Thu, 12 Oct 2023 00:21:02 -0700 (PDT)
Received: by mo-csw.securemx.jp (mx-mo-csw1801) id 39C7KNoR494726; Thu, 12 Oct 2023 16:20:24 +0900
X-Iguazu-Qid: 2yAbIh4tauXUF3Sx6o
X-Iguazu-QSIG: v=2; s=0; t=1697095223; q=2yAbIh4tauXUF3Sx6o; m=67wGgEapaJ/fwJyDfXsshyrFu7oVJ3EkD1jwBCxdIq8=
Received: from imx12-a.toshiba.co.jp ([38.106.60.135])
	by relay.securemx.jp (mx-mr1801) id 39C7KKJL1872873
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 12 Oct 2023 16:20:21 +0900
X-SA-MID: 8623576
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
Subject: [PATCH v9 5/5] MAINTAINERS: Add entries for Toshiba Visconti Video Input Interface
Date: Thu, 12 Oct 2023 16:13:29 +0900
X-TSB-HOP2: ON
Message-Id: <20231012071329.2542003-6-yuji2.ishikawa@toshiba.co.jp>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231012071329.2542003-1-yuji2.ishikawa@toshiba.co.jp>
References: <20231012071329.2542003-1-yuji2.ishikawa@toshiba.co.jp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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

Changelog v9:
- no change

 MAINTAINERS | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index eaa1a28a9d54..6035f711b3fb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2902,17 +2902,21 @@ F:	Documentation/devicetree/bindings/arm/toshiba.yaml
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



