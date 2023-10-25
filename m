Return-Path: <devicetree+bounces-11737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A097D670B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:38:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C28CE1C20DDE
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A37622F1A;
	Wed, 25 Oct 2023 09:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="jH5lBZHR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE77F22EFC
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:38:39 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDFAA10A;
	Wed, 25 Oct 2023 02:38:38 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D389A660734F;
	Wed, 25 Oct 2023 10:38:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698226717;
	bh=Nrg4W3/4J917pILWnR2UswnN4M0Do4Gs1SY6J/UF33k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jH5lBZHRgcrQysxfV79kKfFefA1PsQ78A0mZRi/sr0+H11XjcLiyM6Cz8C5sK36b6
	 SFcUDjm1rFRXQeNyxraGrEEbdltYAqFvIgHVW0CT9wdHyLSRwLBMwhMFLJKSk83Fhj
	 e6ovtmB2V7WEVisSZ56xfKjw9OLkWxoHQn0eMwWHZWs/Jc8JWXpypM9vbD4sc5eQK5
	 PxRdm6q60UmxaTVaQmxBv60ey8jKJFtImvEosHR0eguTTfULprdY4S+FOcL7vqom+R
	 SJiOul3NCLTKf4HQzC+Q0U2KkwBeZurWRncMeIioRh73kUZiwVmb+J6/Dc7rRxHT9L
	 LLbgy0sKwqUoQ==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: hsinyi@chromium.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	angelogioacchino.delregno@collabora.com,
	erin.lo@mediatek.com,
	eddie.huang@mediatek.com,
	pihsun@chromium.org,
	fparent@baylibre.com,
	chunfeng.yun@mediatek.com,
	gregkh@linuxfoundation.org,
	michael.kao@mediatek.com,
	mka@chromium.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 7/8] arm64: dts: mediatek: mt8173-evb: Fix regulator-fixed node names
Date: Wed, 25 Oct 2023 11:38:15 +0200
Message-ID: <20231025093816.44327-8-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231025093816.44327-1-angelogioacchino.delregno@collabora.com>
References: <20231025093816.44327-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix a unit_address_vs_reg warning for the USB VBUS fixed regulators
by renaming the regulator nodes from regulator@{0,1} to regulator-usb-p0
and regulator-usb-p1.

Fixes: c0891284a74a ("arm64: dts: mediatek: add USB3 DRD driver")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8173-evb.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-evb.dts b/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
index 692e8173c9eb..0e5c628d1ec3 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
@@ -44,7 +44,7 @@ extcon_usb: extcon_iddig {
 		id-gpio = <&pio 16 GPIO_ACTIVE_HIGH>;
 	};
 
-	usb_p1_vbus: regulator@0 {
+	usb_p1_vbus: regulator-usb-p1 {
 		compatible = "regulator-fixed";
 		regulator-name = "usb_vbus";
 		regulator-min-microvolt = <5000000>;
@@ -53,7 +53,7 @@ usb_p1_vbus: regulator@0 {
 		enable-active-high;
 	};
 
-	usb_p0_vbus: regulator@1 {
+	usb_p0_vbus: regulator-usb-p0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vbus";
 		regulator-min-microvolt = <5000000>;
-- 
2.42.0


