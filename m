Return-Path: <devicetree+bounces-11736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3397D670A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:38:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99348281B7E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B6052374D;
	Wed, 25 Oct 2023 09:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="UHMYIB46"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C4922F1A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:38:38 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB2C6A6;
	Wed, 25 Oct 2023 02:38:37 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B0C646607355;
	Wed, 25 Oct 2023 10:38:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698226716;
	bh=NsQGaQMdwBTZeaq0SwfWzI3tFI6jtmckhrCFUwqRGeo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UHMYIB46Ftw7EJBpfdNM8p0aXqcOWBSOPwZp3eNDsWMglGAqfEuxGxWtFIcUYQx7q
	 G+SDggzWZa5cFCOjXIjOzyWsQFwjBqt/tGjbkJZUlN+3Pt78LeH6Oz3EUye03K5p7X
	 lc9zxSZsa6gMeFY6quoUFIQo53aUVMk9tmCzndZ3TIGMjKQXQRvAlq1QuqjHInK8am
	 Q2G6w1Nh3fR/F3JVXrGVuPYB3b2cqfpd0us/XctlrfdZYk43NDQDUHB9Wh6jzcQDXf
	 cR12xaG+hZvdcADRz1obG95zI5pSFNKJt7nbUAgcIZVOBEr/dU8SgHqTtcY3wvKuqO
	 ChDtp1dvlkZmQ==
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
Subject: [PATCH 6/8] arm64: dts: mediatek: mt8183-evb: Fix unit_address_vs_reg warning on ntc
Date: Wed, 25 Oct 2023 11:38:14 +0200
Message-ID: <20231025093816.44327-7-angelogioacchino.delregno@collabora.com>
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

The NTC is defined as ntc@0 but it doesn't need any address at all.
Fix the unit_address_vs_reg warning by dropping the unit address: since
the node name has to be generic also fully rename it from ntc@0 to
thermal-sensor.

Fixes: ff9ea5c62279 ("arm64: dts: mediatek: mt8183-evb: Add node for thermistor")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index bae9b6763862..681deddffc2a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -38,7 +38,7 @@ scp_mem_reserved: memory@50000000 {
 		};
 	};
 
-	ntc@0 {
+	thermal-sensor {
 		compatible = "murata,ncp03wf104";
 		pullup-uv = <1800000>;
 		pullup-ohm = <390000>;
-- 
2.42.0


