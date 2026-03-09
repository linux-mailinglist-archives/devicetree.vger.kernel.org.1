Return-Path: <devicetree+bounces-272991-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGnUEB7irmlPJwIAu9opvQ
	(envelope-from <devicetree+bounces-272991-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:07:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 172DE23B3F4
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:07:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D31103082A7F
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5019E3D7D63;
	Mon,  9 Mar 2026 15:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHIox8hg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15883D4100
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 15:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773068632; cv=none; b=WLo2LYZRgl2jespvi3oW4K6bCru0x5y584kIs/27IBDubhXfUSKh/DTA1At60N1B9+WxY+bjUPzn5Vh4Bne9fUYZ5elp69MF7OpHn+YOu/Z5mOL1JYaAov8ReNklSsMmG4n1MAzQthyo4Vzic6793CZtcd6MKxlHoiRxeuFdE3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773068632; c=relaxed/simple;
	bh=6ZPA6FHZiUtujOKfWLTrb+gxh6+jEbn32xVsTeHNfxc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=LFq+n/MNHpWIQ8AAyyyQQpxn/V5p2n8nd0RywRDGSznNwBxsJuOY88h4CFMP6sD9cNgDnorIGB65mpp2tabmWctKGNjUjzS/rZ0a6jQAEP077poYO6vVLCOm2wl1rM+UK6/mkT2vuJUTnEi/di7hMJj7JEM8aFQSmgBrZVv0JoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHIox8hg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F15C5C4CEF7;
	Mon,  9 Mar 2026 15:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773068631;
	bh=6ZPA6FHZiUtujOKfWLTrb+gxh6+jEbn32xVsTeHNfxc=;
	h=From:Date:Subject:To:Cc:From;
	b=IHIox8hgWdJ8ow3jhwl1CgFjB5lcHiMgNtROnf//3fOq8mPKSaFvaqFPoOfZDPUcW
	 NGRkkIRzsVBSRrUk0Tl4N/O8nsXIfdBectEv9CrqUfsxNR3iJJ8F++ln/11Eaz5zpt
	 +fauVQGaF7i1sWZiQaX/JC0mYRQsnRjJTo0Ca9yVBfCF1hJFjpQ3vTTDmz/4+ZKgX4
	 5mnDD62riHVPDQx5J1IlKcpLg26Ulhpy/JjORY1GqSnW1Ygj3pEbnw8LCC0UFbwgZI
	 5Vfxu/6+zwwRzbmIuFIf1xxLL80EQBfPxa/T2D7o7pqwDxDMZ3iZ6cJsQhu/VaYeCe
	 LZvoOkFawWsUQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Mon, 09 Mar 2026 16:03:35 +0100
Subject: [PATCH] arm64: dts: airoha: en7581: Add switch node to to EN7581
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-airoha-7581-dsa-switch-v1-1-448530b7f91f@kernel.org>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MOQ6EMAxA0asg12PJhGWWqyCKkNjEDYzi0YCEu
 DsR5Sv+P8A4Kxt8qgMy/9V0XQrqRwUh+WVm1FgMjlxPDb3Ra16Tx2f3qjGaR9v0FxKKTCQuCre
 BoMTfzKL7PR7G87wAPRnFv2gAAAA=
X-Change-ID: 20260309-airoha-7581-dsa-switch-ffb0f2dfe4c0
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 172DE23B3F4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272991-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.3:email,0.0.0.2:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.963];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.1:email,0.0.0.4:email,0.0.0.6:email]
X-Rspamd-Action: no action

Introduce dsa switch controller node to EN7581 SoC and EN7581
evaluation board.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/airoha/en7581-evb.dts | 18 +++++++
 arch/arm64/boot/dts/airoha/en7581.dtsi    | 88 +++++++++++++++++++++++++++++++
 2 files changed, 106 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
index 886e2e4b5f64ce1a2a5496d35b8379fb4ac27dc2..4c6fca99ae62ec8202e211e18311f2ab7e18d2e5 100644
--- a/arch/arm64/boot/dts/airoha/en7581-evb.dts
+++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
@@ -81,6 +81,18 @@ conf {
 			drive-open-drain = <1>;
 		};
 	};
+
+	mdio_pins: mdio-pins {
+		mux {
+			function = "mdio";
+			groups = "mdio";
+		};
+
+		conf {
+			pins = "gpio2";
+			output-high;
+		};
+	};
 };
 
 &pcie0 {
@@ -106,3 +118,9 @@ &eth {
 &gdm1 {
 	status = "okay";
 };
+
+&switch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mdio_pins>;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index ff6908a76e8eb6cf91343495d1fe531a868e41fb..caabb07a7f689e3ad67742f32d3575dfc45e9061 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -395,5 +395,93 @@ fixed-link {
 				};
 			};
 		};
+
+		switch: switch@1fb58000 {
+			compatible = "airoha,en7581-switch";
+			reg = <0 0x1fb58000 0 0x8000>;
+			resets = <&scuclk EN7581_GSW_RST>;
+
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH>;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				gsw_port1: port@1 {
+					reg = <1>;
+					label = "lan1";
+					phy-mode = "internal";
+					phy-handle = <&gsw_phy1>;
+				};
+
+				gsw_port2: port@2 {
+					reg = <2>;
+					label = "lan2";
+					phy-mode = "internal";
+					phy-handle = <&gsw_phy2>;
+				};
+
+				gsw_port3: port@3 {
+					reg = <3>;
+					label = "lan3";
+					phy-mode = "internal";
+					phy-handle = <&gsw_phy3>;
+				};
+
+				gsw_port4: port@4 {
+					reg = <4>;
+					label = "lan4";
+					phy-mode = "internal";
+					phy-handle = <&gsw_phy4>;
+				};
+
+				port@6 {
+					reg = <6>;
+					label = "cpu";
+					ethernet = <&gdm1>;
+					phy-mode = "internal";
+
+					fixed-link {
+						speed = <10000>;
+						full-duplex;
+						pause;
+					};
+				};
+			};
+
+			mdio: mdio {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				gsw_phy1: ethernet-phy@1 {
+					compatible = "ethernet-phy-ieee802.3-c22";
+					reg = <9>;
+					phy-mode = "internal";
+				};
+
+				gsw_phy2: ethernet-phy@2 {
+					compatible = "ethernet-phy-ieee802.3-c22";
+					reg = <10>;
+					phy-mode = "internal";
+				};
+
+				gsw_phy3: ethernet-phy@3 {
+					compatible = "ethernet-phy-ieee802.3-c22";
+					reg = <11>;
+					phy-mode = "internal";
+				};
+
+				gsw_phy4: ethernet-phy@4 {
+					compatible = "ethernet-phy-ieee802.3-c22";
+					reg = <12>;
+					phy-mode = "internal";
+				};
+			};
+		};
 	};
 };

---
base-commit: 405c09548a695ca7be58b5b9d3ac8388630e907f
change-id: 20260309-airoha-7581-dsa-switch-ffb0f2dfe4c0

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>


