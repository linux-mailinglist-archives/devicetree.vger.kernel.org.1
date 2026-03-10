Return-Path: <devicetree+bounces-273623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAYSGilEsGlLhgIAu9opvQ
	(envelope-from <devicetree+bounces-273623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:17:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BD824254878
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:17:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C69B302DB7F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:13:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A05B53B6C04;
	Tue, 10 Mar 2026 16:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKSxIi/X"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E0D73A6B94
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 16:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773159184; cv=none; b=PHOZE1pjA2B5ArRWIqyNVV14oTPAi44QHlB3MJbXPqzdrZVn8aE96pw51iHGRWDSkKTiWJlW79dX7WnlBcfNkGzpYHjQzxtaapWGhHKq703ObTnL+Hk8VUVUHgGdJKdDJQFITyAVRBNQ/6rIa0EVkMpaOWPOjInMVlU4roz6vxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773159184; c=relaxed/simple;
	bh=7JoHv29OolzgIEv9y1w9pxw0Mu3pZSv8a8Og/54KOU8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=IWq0y9GpsVqAG9owSFbbe1tCyPWY3Vq6DsMhwz9iDGPx2LNoX6Gh+D0KlxJPryqIFny7s4T8DDP//1Qr8xKVwuK6z5v6p0vzE9IjwlVoR6kcVtibNeGaUZ/WsvFv5IPU1Kv0kf94UX5K5/nRNHVgIXAg8akqFf/6DM0Qlae0XSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKSxIi/X; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89D43C19423;
	Tue, 10 Mar 2026 16:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773159184;
	bh=7JoHv29OolzgIEv9y1w9pxw0Mu3pZSv8a8Og/54KOU8=;
	h=From:Date:Subject:To:Cc:From;
	b=bKSxIi/X7lmJgKndZfViruyVG4pOb+ccbjYjrv4+4n31isBUZqHzcxnovHfKGGutc
	 quk6k1i/9YdDmwkWbblp/SqUD8G6u8Fyu1A7YZTBP9/GEcCPecdT33/1P3CvRyjQw3
	 34P4jzicdQuZsdbVsjwL7zGIiBMOAKtyXf4iBBfK04dMf2wgP1EwDFDaA+EYKZKzBG
	 WHCbhOUlltRgLKENSEiP2GE3jtYIs9aTYW/QX6PAw27ZdcUDwMipPgEZYZAJo7swKV
	 VQvM9ISKfXPPccuMqij55jLIbbT5UbvYFcZIJ3ARf/SBRXb4avAim3kCR5LvkOx7qf
	 yY7SX6emM95Qg==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Tue, 10 Mar 2026 17:12:47 +0100
Subject: [PATCH v2] arm64: dts: airoha: en7581: Add switch node to to
 EN7581 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-airoha-7581-dsa-switch-v2-1-852692ba68b8@kernel.org>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4WNQQ6CMBBFr0K6dkxbQMCV9zAsCszQiYaSKUEN4
 e5WLuDyveS/v6mIwhjVNduU4MqRw5TAnjLVezeNCDwkVlbbi851A44leAdVWRsYooP44qX3QNR
 psgNh0WuVxrMg8fsI39vEnuMS5HP8rOZn/yZXAwaKoi5z3VXUGLo9UCZ8noOMqt33/QvCpD9jv
 QAAAA==
X-Change-ID: 20260309-airoha-7581-dsa-switch-ffb0f2dfe4c0
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: BD824254878
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273623-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Introduce dsa switch controller node to EN7581 SoC and EN7581
evaluation board.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
Changes in v2:
- Fix ethernet-phy node name
- Remove unnecessary phy-mode property in ethernet-phy nodes.
- Link to v1: https://lore.kernel.org/r/20260309-airoha-7581-dsa-switch-v1-1-448530b7f91f@kernel.org
---
 arch/arm64/boot/dts/airoha/en7581-evb.dts | 18 +++++++
 arch/arm64/boot/dts/airoha/en7581.dtsi    | 84 +++++++++++++++++++++++++++++++
 2 files changed, 102 insertions(+)

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
index ff6908a76e8eb6cf91343495d1fe531a868e41fb..c84c8d4a6662e24531e0c22ef3a4eb13da2d52fd 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -395,5 +395,89 @@ fixed-link {
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
+				gsw_phy1: ethernet-phy@9 {
+					compatible = "ethernet-phy-ieee802.3-c22";
+					reg = <9>;
+				};
+
+				gsw_phy2: ethernet-phy@10 {
+					compatible = "ethernet-phy-ieee802.3-c22";
+					reg = <10>;
+				};
+
+				gsw_phy3: ethernet-phy@11 {
+					compatible = "ethernet-phy-ieee802.3-c22";
+					reg = <11>;
+				};
+
+				gsw_phy4: ethernet-phy@12 {
+					compatible = "ethernet-phy-ieee802.3-c22";
+					reg = <12>;
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


