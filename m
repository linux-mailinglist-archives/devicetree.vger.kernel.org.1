Return-Path: <devicetree+bounces-147656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0211A38E68
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 22:59:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB5BB3B4388
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 21:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FA551AA795;
	Mon, 17 Feb 2025 21:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="FrTGaWmW"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A649D1A5BAD;
	Mon, 17 Feb 2025 21:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739829437; cv=none; b=nVdE9zcCfs+Vnb2f1O5vsnaroXpZS5QY+2AFSj/4qCVcT4j9rItKaRUNdYmHL+attocclVEwSJymd2kmrablX0YVU4+IBXw/GNlbZ/IKszRCX0XxNpY9gjbbFV2+NfZWsMlTXSdHjnW0NYadolB1HQpEHkJQSiV3ZfKdyMM4CRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739829437; c=relaxed/simple;
	bh=HqD/otvQ6CB/wALHb0KdTDbQw39m8H0tlEIqNzso+MM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uOzaBCzGYSYCqCekdawZ7UMmggsWto5E5x+o66+xY/g4HBmUyIifThAj5yAe7JSGFwIqSk0+VVL2icJv8ef38NsgN5p9zpXlHnEo38RbtStmyatbPupPms7EyKrxiuHLR/is83cml1+ULkS1Do4AaL3aQzI1gWAPOeUVIgg9vrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=FrTGaWmW; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1739829433;
	bh=HqD/otvQ6CB/wALHb0KdTDbQw39m8H0tlEIqNzso+MM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FrTGaWmWZk7taRw20lsQ0wHef9+y9vUd8rxtGJSS2XOgvbq+FVHdXKd/2k+AqM/7X
	 OGGhSL/cyyrUgIrTpt8JY0z12EITFpcXrZTueXVNedHjbtjsL/xyG4kJsX266qFbQt
	 tRCJURjwzZoD1KR9+sGFu3k7XSTucHKSr7XYazqyd6q9PCtUGKQayebPTSCJmGOxk1
	 J87UUbiUFqfvh9gat1f4JtjYuxtpwIP1CJE9INjk2DmAKO1brjtYItY5flZrR9H+8x
	 OGt43Dubjo/ZiGYc8IxE7asXbA8diwdrFvUsw0m6oPS0GMJJr5/BT1/j0b7PCxQZED
	 QmfbCDp3iRqjQ==
Received: from earth.mtl.collabora.ca (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5179C17E0391;
	Mon, 17 Feb 2025 22:57:07 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Alexey Charkov <alchark@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Niklas Cassel <cassel@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Algea Cao <algea.cao@rock-chips.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	kernel@collabora.com,
	Quentin Schulz <quentin.schulz@cherry.de>
Subject: [PATCH v7 3/3] arm64: dts: rockchip: Enable HDMI audio outputs for Rock 5B
Date: Mon, 17 Feb 2025 16:47:42 -0500
Message-ID: <20250217215641.372723-4-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250217215641.372723-1-detlev.casanova@collabora.com>
References: <20250217215641.372723-1-detlev.casanova@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

HDMI audio is available on the Rock 5B HDMI TX ports.
Enable it for both ports.

Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 27128c6a05a2f..8f42cd0427701 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -231,6 +231,10 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi0_sound {
+	status = "okay";
+};
+
 &hdmi1 {
 	pinctrl-0 = <&hdmim0_tx1_cec &hdmim0_tx1_hpd
 		     &hdmim1_tx1_scl &hdmim1_tx1_sda>;
@@ -249,6 +253,10 @@ hdmi1_out_con: endpoint {
 	};
 };
 
+&hdmi1_sound {
+	status = "okay";
+};
+
 &hdptxphy_hdmi0 {
 	status = "okay";
 };
@@ -351,6 +359,14 @@ i2s0_8ch_p0_0: endpoint {
 	};
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
+&i2s6_8ch {
+	status = "okay";
+};
+
 &package_thermal {
 	polling-delay = <1000>;
 
-- 
2.48.1


