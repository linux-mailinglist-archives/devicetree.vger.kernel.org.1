Return-Path: <devicetree+bounces-18254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C89D7F5DD1
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 12:28:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB681281BB4
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A16BA23754;
	Thu, 23 Nov 2023 11:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2ED31BD;
	Thu, 23 Nov 2023 03:28:37 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id E2B652070A;
	Thu, 23 Nov 2023 12:28:35 +0100 (CET)
From: Francesco Dolcini <francesco@dolcini.it>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Joao Paulo Goncalves <joao.goncalves@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v1 2/3] dt-bindings: arm: ti: add verdin am62 mallow board
Date: Thu, 23 Nov 2023 12:28:25 +0100
Message-Id: <20231123112826.16549-3-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231123112826.16549-1-francesco@dolcini.it>
References: <20231123112826.16549-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Joao Paulo Goncalves <joao.goncalves@toradex.com>

Add Mallow carrier board for wifi and nonwifi variants of Toradex Verdin
AM62 SoM. Mallow is a low-cost carrier board in the Verdin family with
a small form factor and build for volume production making it ideal for
industrial and embedded applications.

https://www.toradex.com/products/carrier-board/mallow-carrier-board

Signed-off-by: Joao Paulo Goncalves <joao.goncalves@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 03d2a0d79fb0..c6506bccfe88 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -50,6 +50,7 @@ properties:
           - enum:
               - toradex,verdin-am62-nonwifi-dahlia # Verdin AM62 Module on Dahlia
               - toradex,verdin-am62-nonwifi-dev    # Verdin AM62 Module on Verdin Development Board
+              - toradex,verdin-am62-nonwifi-mallow # Verdin AM62 Module on Mallow
               - toradex,verdin-am62-nonwifi-yavia  # Verdin AM62 Module on Yavia
           - const: toradex,verdin-am62-nonwifi     # Verdin AM62 Module without Wi-Fi / BT
           - const: toradex,verdin-am62             # Verdin AM62 Module
@@ -60,6 +61,7 @@ properties:
           - enum:
               - toradex,verdin-am62-wifi-dahlia # Verdin AM62 Wi-Fi / BT Module on Dahlia
               - toradex,verdin-am62-wifi-dev    # Verdin AM62 Wi-Fi / BT M. on Verdin Development B.
+              - toradex,verdin-am62-wifi-mallow # Verdin AM62 Wi-Fi / BT Module on Mallow
               - toradex,verdin-am62-wifi-yavia  # Verdin AM62 Wi-Fi / BT Module on Yavia
           - const: toradex,verdin-am62-wifi     # Verdin AM62 Wi-Fi / BT Module
           - const: toradex,verdin-am62          # Verdin AM62 Module
-- 
2.25.1


