Return-Path: <devicetree+bounces-244980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5B2CAABBC
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 19:01:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95C84303A0A9
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 18:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D5CA2BF012;
	Sat,  6 Dec 2025 18:00:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965D82BEFE7;
	Sat,  6 Dec 2025 18:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765044036; cv=none; b=nnaChLTJgc+Mk6AEef2YdZYOhc8pLlaKEcO4MTF8wbGxA1h9d6bCfXOqV3rd7XJ3V6356dOqcdNcyXM1ixNA1GxxKgFhPKbNIxPnE/buyAgxHa8gkKbSojOrugjuiWYBInNT29Lh6sjaFNzUsAEZHcIY86QxShro6ERBH8XHSj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765044036; c=relaxed/simple;
	bh=DGvIbKrzU87Oci56DDQ0jf6J+U0MKAWptd8MpniAUDA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=utFoHRpcCVgFUXAQzrTlr1S2O2uTaiwacj04Ahn5EEeB0tDWrJwT9BEQ/sWNkoAOv1zq6ze87Ck5uO6ZqgWOzXcpYJKf3SBy9UZwwtLsZ4/NHfY3AFXctjPe/6iwwesZNsF/7EacXFxcZ1vYauz1TrWmgk9QnidCcA7DlUxBiJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from srv01.abscue.de (localhost [127.0.0.1])
	by spamfilter.srv.local (Postfix) with ESMTP id BEA4D1C560C;
	Sat, 06 Dec 2025 18:53:55 +0100 (CET)
X-Spam-Level: 
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cdc0:3900:2bdf:1fd3:90e3:ead1])
	by srv01.abscue.de (Postfix) with ESMTPSA id 3764F1C560B;
	Sat, 06 Dec 2025 18:53:55 +0100 (CET)
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Date: Sat, 06 Dec 2025 18:53:51 +0100
Subject: [PATCH] arm64: dts: mediatek: mt8183: Add missing endpoint IDs to
 display graph
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251206-mt8183-display-graph-v1-1-a30e54481f28@abscue.de>
X-B4-Tracking: v=1; b=H4sIAK5tNGkC/x2MWwqAIBAArxL73YIainSV6ENzq4UeohFFdPekz
 xmYeSBTYsrQVg8kOjnzvhWQdQXD7LaJkENhUEJpqYTB9bDSNhg4x8XdOCUXZ9TCFDkY6xsPJY2
 JRr7+bde/7wecG5dVZgAAAA==
X-Change-ID: 20251206-mt8183-display-graph-506183c68b3b
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Evans Jahja <evansjahja13@gmail.com>, 
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
Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 122 +++++++++++++++++++++++++------
 1 file changed, 98 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 4e20a8f2eb25803057955401a7737c7f029a1424..0c73043c67fd01147179e8f9b065684f67749ec2 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1754,15 +1754,21 @@ ports {
 				#size-cells = <0>;
 
 				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <0>;
-					ovl0_in: endpoint {
+					ovl0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&mmsys_ep_main>;
 					};
 				};
 
 				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <1>;
-					ovl0_out: endpoint {
+					ovl0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&ovl_2l0_in>;
 					};
 				};
@@ -1783,15 +1789,21 @@ ports {
 				#size-cells = <0>;
 
 				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <0>;
-					ovl_2l0_in: endpoint {
+					ovl_2l0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&ovl0_out>;
 					};
 				};
 
 				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <1>;
-					ovl_2l0_out: endpoint {
+					ovl_2l0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&rdma0_in>;
 					};
 				};
@@ -1812,15 +1824,21 @@ ports {
 				#size-cells = <0>;
 
 				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <0>;
-					ovl_2l1_in: endpoint {
+					ovl_2l1_in: endpoint@1 {
+						reg = <1>;
 						remote-endpoint = <&mmsys_ep_ext>;
 					};
 				};
 
 				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <1>;
-					ovl_2l1_out: endpoint {
+					ovl_2l1_out: endpoint@1 {
+						reg = <1>;
 						remote-endpoint = <&rdma1_in>;
 					};
 				};
@@ -1842,15 +1860,21 @@ ports {
 				#size-cells = <0>;
 
 				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <0>;
-					rdma0_in: endpoint {
+					rdma0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&ovl_2l0_out>;
 					};
 				};
 
 				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <1>;
-					rdma0_out: endpoint {
+					rdma0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&color0_in>;
 					};
 				};
@@ -1872,15 +1896,21 @@ ports {
 				#size-cells = <0>;
 
 				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <0>;
-					rdma1_in: endpoint {
+					rdma1_in: endpoint@1 {
+						reg = <1>;
 						remote-endpoint = <&ovl_2l1_out>;
 					};
 				};
 
 				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <1>;
-					rdma1_out: endpoint {
+					rdma1_out: endpoint@1 {
+						reg = <1>;
 						remote-endpoint = <&dpi_in>;
 					};
 				};
@@ -1901,15 +1931,21 @@ ports {
 				#size-cells = <0>;
 
 				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <0>;
-					color0_in: endpoint {
+					color0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&rdma0_out>;
 					};
 				};
 
 				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <1>;
-					color0_out: endpoint {
+					color0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&ccorr0_in>;
 					};
 				};
@@ -1929,15 +1965,21 @@ ports {
 				#size-cells = <0>;
 
 				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <0>;
-					ccorr0_in: endpoint {
+					ccorr0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&color0_out>;
 					};
 				};
 
 				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <1>;
-					ccorr0_out: endpoint {
+					ccorr0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&aal0_in>;
 					};
 				};
@@ -1957,15 +1999,21 @@ ports {
 				#size-cells = <0>;
 
 				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <0>;
-					aal0_in: endpoint {
+					aal0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&ccorr0_out>;
 					};
 				};
 
 				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <1>;
-					aal0_out: endpoint {
+					aal0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&gamma0_in>;
 					};
 				};
@@ -1985,15 +2033,21 @@ ports {
 				#size-cells = <0>;
 
 				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <0>;
-					gamma0_in: endpoint {
+					gamma0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&aal0_out>;
 					};
 				};
 
 				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <1>;
-					gamma0_out: endpoint {
+					gamma0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&dither0_in>;
 					};
 				};
@@ -2013,15 +2067,21 @@ ports {
 				#size-cells = <0>;
 
 				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <0>;
-					dither0_in: endpoint {
+					dither0_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&gamma0_out>;
 					};
 				};
 
 				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <1>;
-					dither0_out: endpoint {
+					dither0_out: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&dsi_in>;
 					};
 				};
@@ -2047,15 +2107,22 @@ ports {
 				#size-cells = <0>;
 
 				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <0>;
-					dsi_in: endpoint {
+					dsi_in: endpoint@0 {
+						reg = <0>;
 						remote-endpoint = <&dither0_out>;
 					};
 				};
 
 				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <1>;
-					dsi_out: endpoint { };
+					dsi_out: endpoint@0 {
+						reg = <0>;
+					};
 				};
 			};
 		};
@@ -2076,15 +2143,22 @@ ports {
 				#size-cells = <0>;
 
 				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <0>;
-					dpi_in: endpoint {
+					dpi_in: endpoint@1 {
+						reg = <1>;
 						remote-endpoint = <&rdma1_out>;
 					};
 				};
 
 				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
 					reg = <1>;
-					dpi_out: endpoint { };
+					dpi_out: endpoint@1 {
+						reg = <1>;
+					};
 				};
 			};
 		};

---
base-commit: 6987d58a9cbc5bd57c983baa514474a86c945d56
change-id: 20251206-mt8183-display-graph-506183c68b3b

Best regards,
-- 
Otto Pflüger <otto.pflueger@abscue.de>


