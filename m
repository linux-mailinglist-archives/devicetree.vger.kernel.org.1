Return-Path: <devicetree+bounces-245417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAAFCB099B
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 17:37:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 858033116780
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 16:35:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20E743271F9;
	Tue,  9 Dec 2025 16:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="KPh1k2JP"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9065C329C65;
	Tue,  9 Dec 2025 16:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765298094; cv=none; b=V0BjTJNQa+/FCvVoYUpOI+TOAPguR2z3OJ5s+mdbp7s7BEVvR/XWkjl6XmRq6U64eqGkUCi3LIZsW8jRmJh59liBzNDPpSNo7Fy/Ee5Ab/G06rHnf5UjIt9ZP7Yu30CjDS8NEXsN+VkqrPMWjbVvH2jaivj+eLknZRMaxiv0d1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765298094; c=relaxed/simple;
	bh=FRKo1AwARMqoLFZEk9QOpazS6ahQf/BJkIKaYNCuSC0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Nfnc7hjGoGkwOIQMftTccGGL854Ii/QAkNqsD70WvYJTrs0wETc0h3XoFpQpCMi5ITCdsP37O2O4kLqqeNG2h9Xh9KUN16TcFSsoUu7+hoEdxphaA5uvkriboclPyF5mJjG7lfhE8/wuhNruWGo+N/8qKNIIJes1UUt0IPy280A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=KPh1k2JP; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765298090;
	bh=FRKo1AwARMqoLFZEk9QOpazS6ahQf/BJkIKaYNCuSC0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=KPh1k2JPrEfbnr9WiA4BOo1Dh88ZxnWBRrro3fx3qrWJS8aIGzPD6TXxtLQxPXMqM
	 wvWhfmrXJL2OvowGk9jJkFEPeiH58nYrd0GpYv08XfC5VPh9MQqqIlEXzWcY0tebpE
	 XMZ6iH2FJ5wRcEq9jZneLmuoC/0Wt/eV2ZZeyNa6tMYADbv/4gaTVuvs/zypGMEImk
	 6N4mhnBMkAoPcnVf35DRSmWyK+TiVs+Kv7BhWC7A7VVHESEBCYGVqwrrjEbpp8sCtH
	 UyL9cTZ4yIw0/HJrSr2sDhr5Emt0ZDeIDdYwRW5ovPzC900/99tV3TGINkOTodDKEp
	 pGWpy7rj+34iQ==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4F72117E1572;
	Tue,  9 Dec 2025 17:34:49 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 09 Dec 2025 17:34:36 +0100
Subject: [PATCH 06/12] arm64: dts: mediatek: mt8390-genio-common: Enable
 HDMI output
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-mtk-genio-evk-hdmi-support-v1-6-9a6106effba6@collabora.com>
References: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
In-Reply-To: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Guillaume Ranquet <granquet@baylibre.com>
Cc: kernel@collabora.com, Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765298083; l=4058;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=tvaehzMkqfYCKCJ6Z6JeDcEahAcXLZ26L71FY8FX9n8=;
 b=doWEPLBwLfmtwSzsnRHzkHB+nRsImGBbOOTIhC+2EcNFKUE52YRv77ALSWS32OjgeH9KsutAK
 2xSAo4yHrOxB1JYh87TdcCXsJsVbg6kCJsxqZzbHQpYF/dKBKMPaZrF
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Add a node for the HDMI-A connector found on this board, then
configure the display pipeline and enable the required DPI1
interface, HDMI controller, its integrated DDC and the HDMI
PHY to enable support for the HDMI output provided by these EVKs.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
[Louis-Alexis Eyraud: reworded subject and description]
Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 .../boot/dts/mediatek/mt8390-genio-common.dtsi     | 141 +++++++++++++++++++++
 1 file changed, 141 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi b/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi
index a2cdecd2b9034e2f295d817e846d6ed1845e686a..5fa1f5fbad18f2bf9b153ae9a029829641e43023 100644
--- a/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi
@@ -55,6 +55,20 @@ dmic_codec: dmic-codec {
 		wakeup-delay-ms = <30>;
 	};
 
+	connector {
+		compatible = "hdmi-connector";
+		label = "hdmi";
+		type = "a";
+		ddc-i2c-bus = <&hdmi_ddc>;
+		hdmi-pwr-supply = <&hdmi_phy>;
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&hdmi0_out>;
+			};
+		};
+	};
+
 	firmware {
 		optee {
 			compatible = "linaro,optee-tz";
@@ -328,6 +342,18 @@ &dither0_out {
 	remote-endpoint = <&dsi0_in>;
 };
 
+&dpi1 {
+	status = "okay";
+};
+
+&dpi1_in {
+	remote-endpoint = <&merge5_out>;
+};
+
+&dpi1_out {
+	remote-endpoint = <&hdmi0_in>;
+};
+
 &gamma0_out {
 	remote-endpoint = <&postmask0_in>;
 };
@@ -337,6 +363,55 @@ &gpu {
 	status = "okay";
 };
 
+&ethdr0 {
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+
+			ethdr0_in: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&vdosys1_ep_ext>;
+			};
+		};
+
+		port@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+
+			ethdr0_out: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&merge5_in>;
+			};
+		};
+	};
+};
+
+&hdmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_pins>;
+	status = "okay";
+};
+
+&hdmi0_in {
+	remote-endpoint = <&dpi1_out>;
+};
+
+&hdmi0_out {
+	remote-endpoint = <&hdmi_connector_in>;
+};
+
+&hdmi_phy {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_vreg_pins>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0_pins>;
@@ -475,6 +550,35 @@ &i2c6 {
 	status = "okay";
 };
 
+&merge5 {
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+
+			merge5_in: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&ethdr0_out>;
+			};
+		};
+
+		port@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+
+			merge5_out: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&dpi1_in>;
+			};
+		};
+	};
+};
+
 &mfg0 {
 	domain-supply = <&mt6359_vproc2_buck_reg>;
 };
@@ -727,6 +831,31 @@ pins-txd {
 		};
 	};
 
+	hdmi_vreg_pins: hdmi-vreg-pins {
+		pins-pwr {
+			pinmux = <PINMUX_GPIO50__FUNC_O_HDMITX20_PWR5V>;
+			bias-disable;
+		};
+	};
+
+	hdmi_pins: hdmi-pins {
+		pins-hotplug {
+			pinmux = <PINMUX_GPIO51__FUNC_I0_HDMITX20_HTPLG>;
+			bias-pull-down;
+		};
+
+		pins-cec {
+			pinmux = <PINMUX_GPIO52__FUNC_B1_HDMITX20_CEC>;
+			bias-disable;
+		};
+
+		pins-ddc {
+			pinmux = <PINMUX_GPIO53__FUNC_B1_HDMITX20_SCL>,
+				 <PINMUX_GPIO54__FUNC_B1_HDMITX20_SDA>;
+			drive-strength = <10>;
+		};
+	};
+
 	i2c0_pins: i2c0-pins {
 		pins {
 			pinmux = <PINMUX_GPIO56__FUNC_B1_SDA0>,
@@ -1286,6 +1415,18 @@ connector {
 	};
 };
 
+&vdosys1 {
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		vdosys1_ep_ext: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&ethdr0_in>;
+		};
+	};
+};
+
 &xhci0 {
 	status = "okay";
 };

-- 
2.52.0


