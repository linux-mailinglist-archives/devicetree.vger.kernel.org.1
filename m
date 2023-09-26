Return-Path: <devicetree+bounces-3556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EA67AF440
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 21:41:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C96AD281676
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 19:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2D8829432;
	Tue, 26 Sep 2023 19:41:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666C038FB9
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 19:41:27 +0000 (UTC)
Received: from finn.localdomain (finn.gateworks.com [108.161.129.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7AFB9D;
	Tue, 26 Sep 2023 12:41:22 -0700 (PDT)
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
	by finn.localdomain with esmtp (Exim 4.93)
	(envelope-from <tharvey@gateworks.com>)
	id 1qlDvk-009Ej7-GZ; Tue, 26 Sep 2023 19:41:12 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Tim Harvey <tharvey@gateworks.com>
Subject: [PATCH v2] ARM: dts: imx6qdl-gw5904: add dt props for populating eth MAC addrs
Date: Tue, 26 Sep 2023 12:41:10 -0700
Message-Id: <20230926194110.1451416-1-tharvey@gateworks.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add device-tree props to allow boot firmware to populate MAC addresses.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---
v2: rebased on latest tree now that arm dt files have moved
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5904.dtsi | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5904.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5904.dtsi
index 3375b3fd8d4c..1e723807ab4c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5904.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5904.dtsi
@@ -52,6 +52,11 @@
 / {
 	/* these are used by bootloader for disabling nodes */
 	aliases {
+		ethernet0 = &fec;
+		ethernet1 = &lan1;
+		ethernet2 = &lan2;
+		ethernet3 = &lan3;
+		ethernet4 = &lan4;
 		led0 = &led0;
 		led1 = &led1;
 		led2 = &led2;
@@ -237,32 +242,36 @@ ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				port@0 {
+				lan4: port@0 {
 					reg = <0>;
 					label = "lan4";
 					phy-handle = <&sw_phy0>;
 					phy-mode = "internal";
+					local-mac-address = [00 00 00 00 00 00];
 				};
 
-				port@1 {
+				lan3: port@1 {
 					reg = <1>;
 					label = "lan3";
 					phy-handle = <&sw_phy1>;
 					phy-mode = "internal";
+					local-mac-address = [00 00 00 00 00 00];
 				};
 
-				port@2 {
+				lan2: port@2 {
 					reg = <2>;
 					label = "lan2";
 					phy-handle = <&sw_phy2>;
 					phy-mode = "internal";
+					local-mac-address = [00 00 00 00 00 00];
 				};
 
-				port@3 {
+				lan1: port@3 {
 					reg = <3>;
 					label = "lan1";
 					phy-handle = <&sw_phy3>;
 					phy-mode = "internal";
+					local-mac-address = [00 00 00 00 00 00];
 				};
 
 				port@5 {
-- 
2.25.1


