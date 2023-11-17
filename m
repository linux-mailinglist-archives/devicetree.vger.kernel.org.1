Return-Path: <devicetree+bounces-16476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 746BD7EED05
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:00:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0784DB209A5
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 08:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA2381FD6;
	Fri, 17 Nov 2023 08:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="gWb6REln"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84AD1D52
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 23:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1700207997; x=1731743997;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=IvFKHlvzHLkxpMBsWlwZOP/7vNk0RpWGUG6+Vh3LxYc=;
  b=gWb6RElnDDAEALFkfDw7BYjvSUfbUr9ReVKUwjgOrW/MuTSYbY3uYS0i
   e/gSkC/WbCsSdf+f/XtrBY7bOAQ9DZOctZjcVXHNn9f+Zq78WVeulF82P
   0xwkhjo6P/HdySF8SBu9Z67KzMUTQ10Z9J8EkM3YA+qPbxojCuNvvE6X9
   mcduONKNHh4oN9w1zuhKGlaE0sxtwm3QNTaI8nIyUIdVaYDCaiAMAWehD
   21f6tnFpDfxs4IrjOp39pgkd86B0w4CpH7cLVQ/1H9MM5rRNTmzhrMkNN
   LPrvHUL3piHmhi+51e7h9/yySuEZUzpgtPUmjMFdoL7ZUMgUXW8Ob8VON
   Q==;
X-IronPort-AV: E=Sophos;i="6.04,206,1695679200"; 
   d="scan'208";a="34033309"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 17 Nov 2023 08:59:55 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B88A928007F;
	Fri, 17 Nov 2023 08:59:55 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: tqma8mpql: Remove invalid/unused property
Date: Fri, 17 Nov 2023 08:59:57 +0100
Message-Id: <20231117075957.2128070-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

'dr_mode' is part of the USB DWC3 core, not the glue layer. Remove the
property from glue layer. Fixes the dtbs_check warning:
arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dtb: usb@32f10108:
  'dr_mode' does not match any of the regexes: '^usb@[0-9a-f]+$',
  'pinctrl-[0-9]+'
 from schema $id: http://devicetree.org/schemas/usb/fsl,imx8mp-dwc3.yaml#

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index eb11ef822d0e9..05bb43d0decea 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -740,7 +740,6 @@ &usb3_0 {
 &usb3_1 {
 	fsl,disable-port-power-control;
 	fsl,permanently-attached;
-	dr_mode = "host";
 	status = "okay";
 };
 
-- 
2.34.1


