Return-Path: <devicetree+bounces-3561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F80E7AF453
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 21:44:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 6BE941C20310
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 19:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C230248843;
	Tue, 26 Sep 2023 19:44:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E5B41E47
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 19:44:18 +0000 (UTC)
Received: from finn.localdomain (finn.gateworks.com [108.161.129.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC600121;
	Tue, 26 Sep 2023 12:44:16 -0700 (PDT)
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
	by finn.localdomain with esmtp (Exim 4.93)
	(envelope-from <tharvey@gateworks.com>)
	id 1qlDye-009EkN-1Q; Tue, 26 Sep 2023 19:44:12 +0000
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
Subject: [PATCH] arm64: dts: imx8mm: fix imx8mm-venice-gw72xx-0x-rpidsi compatible
Date: Tue, 26 Sep 2023 12:44:10 -0700
Message-Id: <20230926194410.1451940-1-tharvey@gateworks.com>
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

Fix the imx8mm-venice-gw72xx-0x-rpidsi dt overlay compatible string
which should be gw,imx8mm-gw72xx-0x.

Fixes: 6b4da1354fd8 ("arm64: dts: imx8mm: add imx8mm-venice-gw72xx-0x-rpidsi overlay for display")
Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 .../boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtso      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtso
index e0768d408c3b..2e4156b58108 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtso
@@ -11,7 +11,7 @@
 /plugin/;
 
 &{/} {
-	compatible = "gw,imx8mm-gw73xx-0x", "fsl,imx8mm";
+	compatible = "gw,imx8mm-gw72xx-0x", "fsl,imx8mm";
 
 	panel {
 		compatible = "powertip,ph800480t013-idf02";
-- 
2.25.1


