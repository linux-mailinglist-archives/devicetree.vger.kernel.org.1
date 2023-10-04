Return-Path: <devicetree+bounces-5689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 071167B7833
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 08:53:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 8AB9DB2085C
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 06:53:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1413763B8;
	Wed,  4 Oct 2023 06:53:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AA8613A
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 06:53:35 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 079A1AC;
	Tue,  3 Oct 2023 23:53:32 -0700 (PDT)
Received: from p200300ccff1732001a3da2fffebfd33a.dip0.t-ipconnect.de ([2003:cc:ff17:3200:1a3d:a2ff:febf:d33a] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qnvl7-004VAE-Jo; Wed, 04 Oct 2023 08:53:25 +0200
Received: from andi by aktux with local (Exim 4.96)
	(envelope-from <andreas@kemnade.info>)
	id 1qnvl6-00A6aq-1y;
	Wed, 04 Oct 2023 08:53:24 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: bcousson@baylibre.com,
	tony@atomide.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Andreas Kemnade <andreas@kemnade.info>
Subject: [PATCH] ARM: dts: omap3-gta04: Drop superfluous omap36xx compatible
Date: Wed,  4 Oct 2023 08:53:23 +0200
Message-Id: <20231004065323.2408615-1-andreas@kemnade.info>
X-Mailer: git-send-email 2.39.2
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

Drop omap36xx compatible as done in other omap3630 devices.
This has apparently fallen through the lattice.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 arch/arm/boot/dts/ti/omap/omap3-gta04.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ti/omap/omap3-gta04.dtsi b/arch/arm/boot/dts/ti/omap/omap3-gta04.dtsi
index b6b27e93857f..3661340009e7 100644
--- a/arch/arm/boot/dts/ti/omap/omap3-gta04.dtsi
+++ b/arch/arm/boot/dts/ti/omap/omap3-gta04.dtsi
@@ -11,7 +11,7 @@
 
 / {
 	model = "OMAP3 GTA04";
-	compatible = "goldelico,gta04", "ti,omap3630", "ti,omap36xx", "ti,omap3";
+	compatible = "goldelico,gta04", "ti,omap3630", "ti,omap3";
 	cpus {
 		cpu@0 {
 			cpu0-supply = <&vcc>;
-- 
2.39.2


