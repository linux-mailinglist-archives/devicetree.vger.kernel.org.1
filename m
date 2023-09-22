Return-Path: <devicetree+bounces-2525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FB57AB241
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 14:38:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E91E52821D9
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 12:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 576151E500;
	Fri, 22 Sep 2023 12:38:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90CE62F25
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 12:38:53 +0000 (UTC)
X-Greylist: delayed 516 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 22 Sep 2023 05:38:52 PDT
Received: from mail11.truemail.it (mail11.truemail.it [IPv6:2001:4b7e:0:8::81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77A108F
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 05:38:52 -0700 (PDT)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 0E29D20371;
	Fri, 22 Sep 2023 14:30:07 +0200 (CEST)
From: Francesco Dolcini <francesco@dolcini.it>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Francesco Dolcini <francesco.dolcini@toradex.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] arm64: dts: ti: verdin-am62: disable MIPI DSI bridge
Date: Fri, 22 Sep 2023 14:30:03 +0200
Message-Id: <20230922123003.25002-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Keep the DPI to MIPI-DSI bridge disabled in the SoM dtsi file.

The display chain is not wholly described in the device tree file, on
Verdin product family the displays are additional accessories that are
configured/enabled using DT overlays.

With this enabled we have issues when a display is enabled on
TIDSS port1 (LVDS) and port0 (DSI) is not used.

Fixes: 9e77200356ba ("arm64: dts: ti: verdin-am62: Add DSI display support")
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi b/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
index 40992e7e4c30..5db52f237253 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
@@ -1061,6 +1061,7 @@ dsi_bridge: dsi@e {
 		vddc-supply = <&reg_1v2_dsi>;
 		vddmipi-supply = <&reg_1v2_dsi>;
 		vddio-supply = <&reg_1v8_dsi>;
+		status = "disabled";
 
 		dsi_bridge_ports: ports {
 			#address-cells = <1>;
-- 
2.25.1


