Return-Path: <devicetree+bounces-251864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB88ACF7BEB
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 11:19:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 004A43007689
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 10:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4357D3246E8;
	Tue,  6 Jan 2026 10:19:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B20B42DF152;
	Tue,  6 Jan 2026 10:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767694759; cv=none; b=QrU20T2qEv494qAIchJHo7T1blgL0GM2Vgr18oAdkrfCNXBOA3qcMO4/yNIii2UubeuxEmjYnv/5eKlxUaesU0BzF0CsE0xvDdGHEX+cvJnQ8/uihufXtnF1+O5HsVhPHKSECagIYiDDitJ305NTBKiswZve+uHkfg0UTNwl9No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767694759; c=relaxed/simple;
	bh=R43pjW5JEsbyNY2Cnq6OEGABjT4sjPRiOTkO5KT6dJA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=c7Wpi9e7FeKTxi/W0ZwvC6zwjFCfS6DwH+GJYCdDSJXCL/QFYbS0fL8P+mLWbqow0ruuV20Izrpzbq9TrSrjF/5E/xEfAysmeVISKnCmoodDGFqunApL3K9jH9vf7YvSQzLHCzrAuQ+tH5+jSpZ+Xw3WPf0NkQGXUK3s+A6hSQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from srv01.abscue.de (localhost [127.0.0.1])
	by spamfilter.srv.local (Postfix) with ESMTP id CFC531C244E;
	Tue, 06 Jan 2026 11:11:16 +0100 (CET)
X-Spam-Level: 
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cdc2:6400:a8e6:fbd5:9810:ee8b])
	by srv01.abscue.de (Postfix) with ESMTPSA id 6E9501C244D;
	Tue, 06 Jan 2026 11:11:16 +0100 (CET)
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Date: Tue, 06 Jan 2026 11:11:12 +0100
Subject: [PATCH v2] arm64: dts: mediatek: mt8183: Add missing endpoint IDs
 to display graph
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260106-mt8183-display-graph-v2-1-e7e56054eef5@abscue.de>
X-B4-Tracking: v=1; b=H4sIAL/fXGkC/4WNTQqDMBBGryKz7pT8qISueo/iIiajDrQaEhsq4
 t2beoEu34PvfTskikwJbtUOkTInXuYC6lKBm+w8ErIvDEqoRirR4ms10mj0nMLTbjhGGyZsRFu
 ka02veyjTEGngz5l9dIUnTusSt/Mly5/9E8wSJVotqKlrIwdl7rZP7k1XT9Adx/EFAWJigrgAA
 AA=
X-Change-ID: 20251206-mt8183-display-graph-506183c68b3b
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Evans Jahja <evansjahja13@gmail.com>, Chen-Yu Tsai <wenst@chromium.org>, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
X-Mailer: b4 0.14.2

The endpoint IDs in the display graph are expected to match the
associated display path number, i.e. all endpoints connected to
mmsys_ep_main must have reg = <0> and all endpoints connected to
mmsys_ep_ext must have reg = <1>.

Add the missing ID to all endpoints in the display graph, based on
mt8365.dtsi as an existing example that does this correctly.

Fixes: e72d63fa0563 ("arm64: dts: mediatek: mt8183: Migrate to display controller OF graph")
Reported-by: Evans Jahja <evansjahja13@gmail.com>
Closes: https://lore.kernel.org/linux-mediatek/CAAq5pW9o3itC0G16LnJO7KMAQ_XoqXUpB=cuJ_7e3-H11zKd5Q@mail.gmail.com/
Tested-by: Chen-Yu Tsai <wenst@chromium.org>
Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
Changes in v2:
- Change property order to follow device tree coding style
- Link to v1: https://lore.kernel.org/r/20251206-mt8183-display-graph-v1-1-a30e54481f28@abscue.de
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 146 ++++++++++++++++++++++++++-----
 1 file changed, 122 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 4e20a8f2eb25803057955401a7737c7f029a1424..db86e2bd0c7bd61236a9eef16e803374810d3d1a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1755,14 +1755,22 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					ovl0_in: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					ovl0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&mmsys_ep_main>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					ovl0_out: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					ovl0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&ovl_2l0_in>;
 					};
 				};
@@ -1784,14 +1792,22 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					ovl_2l0_in: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					ovl_2l0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&ovl0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					ovl_2l0_out: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					ovl_2l0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&rdma0_in>;
 					};
 				};
@@ -1813,14 +1829,22 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					ovl_2l1_in: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					ovl_2l1_in: endpoint@1 {
+						reg = <1>;
 						remote-endpoint = <&mmsys_ep_ext>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					ovl_2l1_out: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					ovl_2l1_out: endpoint@1 {
+						reg = <1>;
 						remote-endpoint = <&rdma1_in>;
 					};
 				};
@@ -1843,14 +1867,22 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					rdma0_in: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					rdma0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&ovl_2l0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					rdma0_out: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					rdma0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&color0_in>;
 					};
 				};
@@ -1873,14 +1905,22 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					rdma1_in: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					rdma1_in: endpoint@1 {
+						reg = <1>;
 						remote-endpoint = <&ovl_2l1_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					rdma1_out: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					rdma1_out: endpoint@1 {
+						reg = <1>;
 						remote-endpoint = <&dpi_in>;
 					};
 				};
@@ -1902,14 +1942,22 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					color0_in: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					color0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&rdma0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					color0_out: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					color0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&ccorr0_in>;
 					};
 				};
@@ -1930,14 +1978,22 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					ccorr0_in: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					ccorr0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&color0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					ccorr0_out: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					ccorr0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&aal0_in>;
 					};
 				};
@@ -1958,14 +2014,22 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					aal0_in: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					aal0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&ccorr0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					aal0_out: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					aal0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&gamma0_in>;
 					};
 				};
@@ -1986,14 +2050,22 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					gamma0_in: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					gamma0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&aal0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					gamma0_out: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					gamma0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&dither0_in>;
 					};
 				};
@@ -2014,14 +2086,22 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					dither0_in: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					dither0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&gamma0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					dither0_out: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					dither0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&dsi_in>;
 					};
 				};
@@ -2048,14 +2128,23 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					dsi_in: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					dsi_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&dither0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					dsi_out: endpoint { };
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					dsi_out: endpoint@0 {
+						reg = <0>;
+					};
 				};
 			};
 		};
@@ -2077,14 +2166,23 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					dpi_in: endpoint {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					dpi_in: endpoint@1 {
+						reg = <1>;
 						remote-endpoint = <&rdma1_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					dpi_out: endpoint { };
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					dpi_out: endpoint@1 {
+						reg = <1>;
+					};
 				};
 			};
 		};

---
base-commit: 6cd6c12031130a349a098dbeb19d8c3070d2dfbe
change-id: 20251206-mt8183-display-graph-506183c68b3b

Best regards,
-- 
Otto Pflüger <otto.pflueger@abscue.de>


