Return-Path: <devicetree+bounces-12883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AD27DBAA8
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 14:25:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C2B3C1C20AA1
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 13:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 180E1168B8;
	Mon, 30 Oct 2023 13:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="g5d3n2kj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842A516402
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 13:25:31 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7120D97;
	Mon, 30 Oct 2023 06:25:30 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A18E066071A3;
	Mon, 30 Oct 2023 13:25:28 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698672329;
	bh=wz7abYmfV4HWaoeOBzSJ/u42aKuYiLe917d2C8mb5w8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=g5d3n2kjct0RdiYJ2bIBv+u77xHD+a/Xe50Ftl6FrwLrmq6VJKBJHeZtux6N/oc3G
	 8MP0yY2Y8pKZFBS3ZfiFylxV2MNqs8io8vMR1jbdiEbwu8LDds0tc16ksi984h36C+
	 THCNL/LMtbUEUMn3hnqLk2NkMXb3b/+T49OP92oIJk3O5X1hyh+7sSZQgLAxKnPxQ0
	 m2ag56ESKBdROQmUzVlokbKeYJRijBz1jql+jgpO/8/Sr/tdeLtcMcXigwTenbOjBC
	 Iaf1ZhcwhMqaGa/usFd7w+DOcVIUePCtWf2qHiddEMWa2KKsSuAlKnKJw4naU7G8VS
	 CTi0fs0zu8/6w==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	wenst@chromium.org,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 1/2] arm64: dts: mediatek: mt8195-cherry: Add MFG0 domain supply
Date: Mon, 30 Oct 2023 14:25:22 +0100
Message-ID: <20231030132523.86123-2-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231030132523.86123-1-angelogioacchino.delregno@collabora.com>
References: <20231030132523.86123-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

MFG0 is the main power domain for the GPU and its surrounding glue
logic, and has a specific power rail.

Add its power supply on Cherry platforms and remove the now useless
(and wrong) regulator-always-on property from the vbuck1 regulator.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index 2c2f079600ba..26213100419a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -478,6 +478,10 @@ pmic@34 {
 	};
 };
 
+&mfg0 {
+	domain-supply = <&mt6315_7_vbuck1>;
+};
+
 &mmc0 {
 	status = "okay";
 
@@ -1231,7 +1235,6 @@ mt6315_7_vbuck1: vbuck1 {
 				regulator-enable-ramp-delay = <256>;
 				regulator-ramp-delay = <6250>;
 				regulator-allowed-modes = <0 1 2>;
-				regulator-always-on;
 			};
 		};
 	};
-- 
2.42.0


