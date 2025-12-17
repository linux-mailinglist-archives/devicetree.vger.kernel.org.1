Return-Path: <devicetree+bounces-247345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4862CCC7345
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:00:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F3EE83009085
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:00:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F204236CE1B;
	Wed, 17 Dec 2025 10:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="fzMFOEWh"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2FFC36C598;
	Wed, 17 Dec 2025 10:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765966787; cv=none; b=KKpFUldA69lYfnaG81z1kNEEaV77b9+lmuSSejinLenrVqfxNIhbVlkd1oksuwFVumMn5o7ULueVPLKPndpno8uZaa9RxgHIEDoZUuPJ+5mjdh/0KdWxwyo4rvh2Yiiyxrp6AN0F+KW7uh4yZAQI8rCaNCupXcZklHiP7ddDFWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765966787; c=relaxed/simple;
	bh=v2QuPDw9K0n6FNZS6s1RdjJ61am2N+d7TzADHlSeuNI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FGArARel6cFKBi7oqduupYkstjkaGQVOFkuz9kFi13AOF6CiMMwc8mD+FDPUR2bRzKLi+EnngxC7HSeCLRadw84ZC3zsZG6g5VpdFpDO8axuFFZfOXu0n/d89zntv5sHNEgczHvkjFiO9T3ni1bKxEfCviSL3F1NpJUzgqInvEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=fzMFOEWh; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765966783;
	bh=v2QuPDw9K0n6FNZS6s1RdjJ61am2N+d7TzADHlSeuNI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=fzMFOEWhTb0m3jQ5CdwtnpRBbMiWzwap3ho9Ip9Pt0iu82StoUJ+S+sJd/XRr5foH
	 lwt8+gMsnIfF27PKU1oh9rHQrRt7HI3UWVTNaVLQMXnVC9WOLSQATonwIw9kZwGKQw
	 /m010ho4is+AXnd6dr0TifJpdArztcpLYcNzyoOX6K2/5GbwrU4x2pfZYdVD+y9q3m
	 06V7CqolCkDqQu80IreTyoYJ9UuA7ITjlT8HxpgyIhxB9hGLS+w+yntAjDYd+JWw8U
	 cwd9PS0UVf/FG9Qm2r0nBQybkw9F8vKzWbm5P9Yq+/tsRlCqQ7v/MthU+UyN3P1a9g
	 2TvgPuoiJI1kg==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0009817E0C87;
	Wed, 17 Dec 2025 11:19:42 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 17 Dec 2025 11:19:07 +0100
Subject: [PATCH v2 08/12] arm64: dts: mediatek: mt8395-radxa-nio-12l:
 Enable HDMI output
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-mtk-genio-evk-hdmi-support-v2-8-a994976bb39a@collabora.com>
References: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
In-Reply-To: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765966775; l=3996;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=2k32lAvL+oS+oCDLIGRUdNxvio3a5abaLFyOgFe4WZE=;
 b=xt81f0QLLt9CcQxuZjWpo3nPRk59XynaBD/T0hg815CpvTkWyQ2hS3uzgOzy7yyNUiA3LKW5P
 CipyTTevDZ1AtN3l6ENmKVjK7xQMNiiP6TlH1fJYkIKYDON2tAe6n7C
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Add a definition for the on-board HDMI connector, enable and add
the relevant configuration for the HDMI PHY and controller, and
define the pins used by those.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 .../boot/dts/mediatek/mt8395-radxa-nio-12l.dts     | 142 +++++++++++++++++++++
 1 file changed, 142 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
index d32f973f5e0528bc3233ff01f029006dbe6ef894..b0e18876bd5d2341c6f17f47e9f11433be807ccd 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
@@ -37,6 +37,20 @@ chosen {
 		stdout-path = "serial0:921600n8";
 	};
 
+	connector {
+		compatible = "hdmi-connector";
+		label = "hdmi";
+		type = "a";
+		ddc-i2c-bus = <&hdmitx_ddc>;
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
@@ -245,6 +259,18 @@ port@1 {
 	};
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
 &eth {
 	phy-mode = "rgmii-rxid";
 	phy-handle = <&rgmii_phy>;
@@ -265,11 +291,61 @@ rgmii_phy: ethernet-phy@1 {
 	};
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
 &gpu {
 	mali-supply = <&mt6315_7_vbuck1>;
 	status = "okay";
 };
 
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
+
+	status = "okay";
+};
+
 &i2c2 {
 	clock-frequency = <400000>;
 	pinctrl-0 = <&i2c2_pins>;
@@ -448,6 +524,35 @@ typec_con_mux: endpoint {
 	};
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
 	domain-supply = <&mt6315_7_vbuck1>;
 };
@@ -647,6 +752,31 @@ pins {
 		};
 	};
 
+	hdmi_vreg_pins: hdmi-vreg-pins {
+		pins-pwr {
+			pinmux = <PINMUX_GPIO31__FUNC_HDMITX20_PWR5V>;
+			bias-disable;
+		};
+	};
+
+	hdmi_pins: hdmi-pins {
+		pins-hotplug {
+			pinmux = <PINMUX_GPIO32__FUNC_HDMITX20_HTPLG>;
+			bias-pull-down;
+		};
+
+		pins-ddc {
+			pinmux = <PINMUX_GPIO34__FUNC_HDMITX20_SCL>,
+				 <PINMUX_GPIO35__FUNC_HDMITX20_SDA>;
+			drive-strength = <10>;
+		};
+
+		pins-cec {
+			pinmux = <PINMUX_GPIO33__FUNC_HDMITX20_CEC>;
+			bias-disable;
+		};
+	};
+
 	i2c2_pins: i2c2-pins {
 		pins-bus {
 			pinmux = <PINMUX_GPIO12__FUNC_SDA2>,
@@ -1058,6 +1188,18 @@ &ssusb2 {
 	status = "okay";
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
 	vbus-supply = <&otg_vbus_regulator>;
 	status = "okay";

-- 
2.52.0


