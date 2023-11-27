Return-Path: <devicetree+bounces-19212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5052C7FA0C7
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:20:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0AB122812E3
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAC282D7BE;
	Mon, 27 Nov 2023 13:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="DRB86tVs"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5DD3AA;
	Mon, 27 Nov 2023 05:20:37 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A30DB6605835;
	Mon, 27 Nov 2023 13:20:35 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701091236;
	bh=U01xvbnT/mSsl9CGN0alnznWYP0QePGrsCETHRIiTB4=;
	h=From:To:Cc:Subject:Date:From;
	b=DRB86tVsQiup4pC8UN6u1wD8FXSHJ//4EtVEPAwxTpM22gF7N3A1WCZ+Z57IBi2O0
	 THwGKGvoPlzoQZfkdA/T12FKzYzyt4COlrN1vXp5XysOIcfCZtqQjGJvELWCRo/tzM
	 9b/lLu+jrKDEK3zDIa5ZJmFnoi5B8nSP4XguLRaHB4iaRMAgDjsAkl7HdrSL93vnY/
	 v+aLaFJ3VVeIYCIGduNIGaLp3B5RrBHkzFtJluoB5yLgwZwESxGIvP2yfTzit2sTNc
	 Ym0hgd7va6OZhKdtHD19UcPfTssfc6GZ5+bpUoOKgUokORYvNA8MC8A/wNMWIgRar5
	 glZwXeWUSjluQ==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	wenst@chromium.org,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	kernel@collabora.com
Subject: [PATCH] arm64: dts: mediatek: cherry: Fix interrupt cells for MT6360 on I2C7
Date: Mon, 27 Nov 2023 14:20:26 +0100
Message-ID: <20231127132026.165027-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change interrupt cells to 2 to suppress interrupts_property warning.

Fixes: 0de0fe950f1b ("arm64: dts: mediatek: cherry: Enable MT6360 sub-pmic on I2C7")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index 9d0f3d25cb07..ecc7a96ae358 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -466,7 +466,7 @@ &i2c7 {
 	pinctrl-0 = <&i2c7_pins>;
 
 	pmic@34 {
-		#interrupt-cells = <1>;
+		#interrupt-cells = <2>;
 		compatible = "mediatek,mt6360";
 		reg = <0x34>;
 		interrupt-controller;
-- 
2.42.0


