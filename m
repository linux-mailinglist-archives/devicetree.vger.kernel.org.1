Return-Path: <devicetree+bounces-20879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 494FE80136A
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 20:11:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 840B01C20D6A
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 19:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B4AC4EB28;
	Fri,  1 Dec 2023 19:11:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 468D0B0
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 11:11:26 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r98v1-00023n-Fm; Fri, 01 Dec 2023 20:11:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	quentin.schulz@theobroma-systems.com,
	heiko@sntech.de,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Theobroma-Systems Jaguar SBC
Date: Fri,  1 Dec 2023 20:11:02 +0100
Message-Id: <20231201191103.343097-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231201191103.343097-1-heiko@sntech.de>
References: <20231201191103.343097-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Heiko Stuebner <heiko.stuebner@cherry.de>

Add the binding for the Jaguar board from Theobroma-Systems.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..44181a36c5d5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -875,6 +875,11 @@ properties:
           - const: tsd,rk3399-puma-haikou
           - const: rockchip,rk3399
 
+      - description: Theobroma Systems RK3588-SBC Jaguar
+        items:
+          - const: tsd,rk3588-jaguar
+          - const: rockchip,rk3588
+
       - description: Tronsmart Orion R68 Meta
         items:
           - const: tronsmart,orion-r68-meta
-- 
2.39.2


