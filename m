Return-Path: <devicetree+bounces-255603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B266DD24AFB
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:13:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D4D03097D52
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:10:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC57F39C65B;
	Thu, 15 Jan 2026 13:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="AxBkfOiC"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B75D36E47A;
	Thu, 15 Jan 2026 13:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768482641; cv=none; b=fPXfJaq1pXQz95i+ApA40lu8AR8Q4ZsB63wYiOf+Vz87ijw5VJh0H9H6LZmOcqvIZt4q5I4yfzsyw6jKw/Fo1XPZIdq6aATIqdTfhbl5RxC5FJ7BWd2IP/236SmcNix0b/5/GpF6sIpmTAP4t3kuSrY0s9soySPkJ21PYw64lmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768482641; c=relaxed/simple;
	bh=dWXWKnfDVR+IlEHGZ7ZNUwzNrPO+NGwKp0fV3hm++hk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TnIfES6sFxVW5dJey99CDOvkwEZdYqxCh73R2FPyHOwOBLR3H1kk3v23+nTdL5zDLM8rRgkcuJPHQi6bkWv0P//9G1HLL/4fwkR8DmQ1oxsL73NnKO2wLKSu9YogxK5/g2xiqnxfUPXgZ4nBooxuxvlvNMYCPZ4OE2yI3zrbyuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=AxBkfOiC; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768482638;
	bh=dWXWKnfDVR+IlEHGZ7ZNUwzNrPO+NGwKp0fV3hm++hk=;
	h=From:To:Cc:Subject:Date:From;
	b=AxBkfOiCV54NRAY1JslEhpl8RDtPEjACijHqqEt3hCj+laH6qFRbiSm/easIXweGo
	 nUmPWSW6/yZha+1kzxYnVwIeC+z6+KuiKZbfxZ+UwzU89sZkYWUSNJ+Ms4I61hRX9M
	 sl8F2kz8WnAWv2TO5Kq9E42ZdBwoAa4EKIV7qAKdHGwT/RBt23EG+DlpLDOV70ObhX
	 X0FwleJuwAliSCls6CSlmU1HaasgsvTgDBps6x9k4mvNaKxgZdrSbW2S7fYYUIKz2O
	 5Ty8y/4bGjSztsUDgyzS5uHlQzP1KS8J7s9Eu2L3yz+84lXYlyuXG6IMAWHu7HDPbC
	 QN8MG7Tm2i/cg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0EF4B17E10F8;
	Thu, 15 Jan 2026 14:10:38 +0100 (CET)
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
	kernel@collabora.com,
	frank-w@public-files.de
Subject: [PATCH v2] arm64: dts: mediatek: mt7988a: Fix PCI-Express T-PHY node address
Date: Thu, 15 Jan 2026 14:10:35 +0100
Message-ID: <20260115131035.75574-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PCIe and USB TPHYs are under the soc bus, which provides MMIO,
and all nodes under that must use the bus, otherwise those would
clearly be out of place.

Add ranges to both the tphy(s) and assign the address to the main
node to silence a dtbs_check warning, and fix the children to
use the MMIO range of t-phy.

Fixes: ("f693e6ba55ae arm64: dts: mediatek: mt7988: Add t-phy for ssusb1")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt7988a.dtsi | 28 +++++++++++------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7988a.dtsi b/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
index bec590d26659..8c9a5aba2579 100644
--- a/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
@@ -629,20 +629,20 @@ pcie_intc1: interrupt-controller {
 		tphy: t-phy@11c50000 {
 			compatible = "mediatek,mt7986-tphy",
 				     "mediatek,generic-tphy-v2";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0 0x11c50000 0x1000>;
 			status = "disabled";
 
-			tphyu2port0: usb-phy@11c50000 {
-				reg = <0 0x11c50000 0 0x700>;
+			tphyu2port0: usb-phy@0 {
+				reg = <0 0x700>;
 				clocks = <&infracfg CLK_INFRA_USB_UTMI_CK_P1>;
 				clock-names = "ref";
 				#phy-cells = <1>;
 			};
 
-			tphyu3port0: usb-phy@11c50700 {
-				reg = <0 0x11c50700 0 0x900>;
+			tphyu3port0: usb-phy@700 {
+				reg = <0x700 0x900>;
 				clocks = <&infracfg CLK_INFRA_USB_PIPE_CK_P1>;
 				clock-names = "ref";
 				#phy-cells = <1>;
@@ -659,20 +659,20 @@ topmisc: system-controller@11d10084 {
 		xsphy: xs-phy@11e10000 {
 			compatible = "mediatek,mt7988-xsphy",
 				     "mediatek,xsphy";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0 0x11e10000 0x3900>;
 			status = "disabled";
 
-			xphyu2port0: usb-phy@11e10000 {
-				reg = <0 0x11e10000 0 0x400>;
+			xphyu2port0: usb-phy@0 {
+				reg = <0 0x400>;
 				clocks = <&infracfg CLK_INFRA_USB_UTMI>;
 				clock-names = "ref";
 				#phy-cells = <1>;
 			};
 
-			xphyu3port0: usb-phy@11e13000 {
-				reg = <0 0x11e13400 0 0x500>;
+			xphyu3port0: usb-phy@3400 {
+				reg = <0x3400 0x500>;
 				clocks = <&infracfg CLK_INFRA_USB_PIPE>;
 				clock-names = "ref";
 				#phy-cells = <1>;
-- 
2.52.0


