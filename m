Return-Path: <devicetree+bounces-254466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24294D185A5
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:10:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7BBC731224F7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 753E938F23C;
	Tue, 13 Jan 2026 11:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="UdeK7XYq"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130E038F23B;
	Tue, 13 Jan 2026 11:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768302031; cv=none; b=bcggZo141IFZcu9ToTCRgYqL9WmVuneTlal1LapKQ6xPeDgMxzflo5hGmW+uymjphTFnKAEutFP9OWmFbG7AT4RRGZm92DupuekvxtiteYwIkMVfmcPj5P2OhsrDg/EWAkr70t9TpX8QUVvVHQY3BQS7nHzZqxnLuLKt3LhDyRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768302031; c=relaxed/simple;
	bh=qBHtCmqQf3fbItk/B0xEDhMX4d577DCqnwXvhK6bRIA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=C8Dltf937XP6zs6IOL8MdNWz4ufyZ8cks7qtjHXshskPqYdByCm3UO8s1IdgVqmvhzRK7nLlq4u3D7A1CCHNdp0Hz5fthA1mJiiWSrZgp7U/xxI/5zUGItyHpcwdFW5CJa6QEIhBcCO6V645pN7LUaa9INwJujqgxIPV7M2Mzk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=UdeK7XYq; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768302028;
	bh=qBHtCmqQf3fbItk/B0xEDhMX4d577DCqnwXvhK6bRIA=;
	h=From:To:Cc:Subject:Date:From;
	b=UdeK7XYqgtDbieCGWK8RucVLb28Foo8tmygpqtX/Ve8owsSKVhhkKVTbLw2AzU80D
	 Q2UaBwL/0eFxC9mqtL7wdeFgZDaJ4Vp3SFbafULWszQFkt24kog3n/3ZBd66NOLk25
	 EhwOpgNt+s4Mc0Rlj6qnlhcM4ZaGwxqMaJoIpuGl6PyZs7aNG1N9OAmYwEa10zvKgN
	 8fq+pnFyoW0Kc0Pa5Fm9P3uzlBLR8mIaBZE3F2WlqZzgOngjhlXhiPM5AKw69fdMBR
	 cduJut5k7pE0oOt437aZ9M6innRx0s17MB11mBTOl4ftlfx/uzVmhsWh8OQJ5z1b5A
	 jyVel3Zc769cg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E5C7E17E10F4;
	Tue, 13 Jan 2026 12:00:27 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH] arm64: dts: mediatek: mt8173-evb: Add interrupts to DA9211 regulator
Date: Tue, 13 Jan 2026 12:00:26 +0100
Message-ID: <20260113110026.37032-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the required pinmux and assign the right interrupts-extended
to the DA9211 regulator (PIO pin 15).

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8173-evb.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-evb.dts b/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
index 51118a4149d8..1049877e6cda 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
@@ -117,6 +117,7 @@ &i2c1 {
 	buck: da9211@68 {
 		compatible = "dlg,da9211";
 		reg = <0x68>;
+		interrupts-extended = <&pio 15 IRQ_TYPE_LEVEL_LOW>;
 
 		regulators {
 			da9211_vcpu_reg: BUCKA {
@@ -179,6 +180,13 @@ pins1 {
 		};
 	};
 
+	i2c1_pins_a: i2c1-pins {
+		pins-da9211 {
+			pinmux = <MT8173_PIN_15_EINT15__FUNC_GPIO15>;
+			bias-pull-up;
+		};
+	};
+
 	mmc0_pins_default: mmc0-default-pins {
 		pins-cmd-dat {
 			pinmux = <MT8173_PIN_57_MSDC0_DAT0__FUNC_MSDC0_DAT0>,
-- 
2.52.0


