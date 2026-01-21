Return-Path: <devicetree+bounces-257859-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oA6QKuCscGkgZAAAu9opvQ
	(envelope-from <devicetree+bounces-257859-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:39:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A3B555A1
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:39:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A177266127D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 372A5481232;
	Wed, 21 Jan 2026 10:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="l+gOzbcc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9626947DD5F;
	Wed, 21 Jan 2026 10:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768990971; cv=none; b=m/m84uqyJSQo83BUe7v9KUMqNqSARM5z4t6Z8QJYm5NyDS8SoMO+iu1QkZvnCKqug2yiCzGsNK21vFufT7U4sEpB7m5ni++W7h/dVXe95tXWSBorsscZ/4lGN519xUe/+seGUeJ2E1NoB3+IjCNRCLXu+J/5PDv97blJK6590nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768990971; c=relaxed/simple;
	bh=cCVsmWD5x2Wp9Uyksc6R5cDwZAzUv2EH8wUugsqaG70=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Brof52Qyir5Sorub8+NXmgRihk9tM2XAjxWjPW1ATt9oMGoAqCIYY0qmtix/yd7BCuL9U8X//J6ySi1Bpa2HJlnBwfYMLKX7lBy7G/feMOy0s4Dn4doVMaUPH9A9CEoBerfgiDtP4YsDjuHr9CFK96uSYzznEmGrYdZ1dB9vUIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=l+gOzbcc; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Cc:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=M+S91k9FvN+Q1z+KwnvmtonUBdwa1+ZfBnBC0GNchH8=; b=l+gOzbccaGtAI89KYpjIi8YMkD
	mT6L3IrJSaEGMhm6/fuiIhAJ+RjEOe5TI/Cbh2/5y7rZ+UO/x8y0g7MKuo771qnsrf8Uti5rXi3IK
	v0vYfd6TsdTiXh+ImJcsL24EKwEnasvwsbekwuiibylVZHp+3gZMwPtiTTzcUk7pwnbIiYjxAFrz4
	OZZiQEuoCvURVyk47agKV76CaqZeV81Qk6TbH5bGmkqVK9yduZuRySKqmZgcrxosT8EYq8tmiIpgw
	ZDjs6gltBunfdBTSoYb4njUw/YnXvHY37cKoiuo/TPyf/Ts5sLfGPWqF5LrRJwFr/JQMHDKmScMa1
	93ogGfjQ==;
From: Andreas Kemnade <andreas@kemnade.info>
Date: Wed, 21 Jan 2026 11:22:37 +0100
Subject: [PATCH] arm64: dts: rockchip: Add TPS65185 for PineNote
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260121-rk-tps-v1-1-bc867e1dd200@kemnade.info>
X-B4-Tracking: v=1; b=H4sIAOyocGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQyND3aJs3ZKCYl1D4zRLM/PkxMTk1GQloOKCotS0zAqwQdGxtbUA7lg
 bUlgAAAA=
X-Change-ID: 20260121-rk-tps-13f967caacec
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Diederik de Haas <didi.debian@cknow.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Andreas Kemnade <andreas@kemnade.info>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2572; i=andreas@kemnade.info;
 h=from:subject:message-id; bh=cCVsmWD5x2Wp9Uyksc6R5cDwZAzUv2EH8wUugsqaG70=;
 b=owGbwMvMwCUm/rzkS6lq2x3G02pJDJkFKz5pxyVy+dUFzN1zyLO5aVXGdOa6o3ZqyVYtuTe/P
 K5+cN2xo4SFQYyLQVZMkeWXtYLbJ5VnucFTI+xh5rAygQxh4OIUgIkUdzF8L7m4worHwSC1tvbS
 ygmB2x2dTSd5rRHZbeV49N+1z/vcGf7Kbdb59mh5Wvy55R0fSlkrDW9e2Osa5lirdmjuOqUNTX6
 cAA==
X-Developer-Key: i=andreas@kemnade.info; a=openpgp;
 fpr=EEC0DB858E66C0DA70620AC07DBD6AC74DE29324
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kemnade.info:s=20220719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257859-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kemnade.info,none];
	DKIM_TRACE(0.00)[kemnade.info:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,0.0.0.68:email,kemnade.info:email,kemnade.info:dkim,kemnade.info:mid,ayakael.net:url]
X-Rspamd-Queue-Id: 50A3B555A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

As the TPS65185 driver is now upsteram, add it to the PineNote devietrees.
This is based on https://ayakael.net/forge/linux-pinenote but modified to
the binding requirements.
Without any other out-of-tree materials applied, this enables the
hwmon temperature reporting and the interrupt counter increments
by one per reading.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi | 49 +++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index 5c6f8cc401c9..7d490926dbc9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -499,6 +499,40 @@ typec_hs_usb2phy0: endpoint {
 			};
 		};
 	};
+
+	ebc_pmic: pmic@68 {
+		compatible = "ti,tps65185";
+		reg = <0x68>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <RK_PA6 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&ebc_pmic_pins>;
+		pinctrl-names = "default";
+		enable-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
+		pwr-good-gpios = <&gpio3 RK_PA7 GPIO_ACTIVE_HIGH>;
+		vcom-ctrl-gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&vcc_bat>;
+		wakeup-gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>;
+
+		regulators {
+			v3p3: v3p3 {
+				regulator-name = "v3p3";
+				/* Keep it always on because IRQ is pulled up against this line */
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			vcom: vcom {
+				regulator-name = "vcom";
+			};
+
+			vposneg: vposneg {
+				regulator-name = "vposneg";
+				regulator-min-microvolt = <15000000>;
+				regulator-max-microvolt = <15000000>;
+			};
+		};
+	};
 };
 
 &i2c5 {
@@ -563,6 +597,21 @@ bt_wake_h: bt-wake-h {
 		};
 	};
 
+	ebc-pmic {
+		ebc_pmic_pins: ebc-pmic-pins {
+			rockchip,pins = /* wakeup */
+					<3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>,
+					/* int */
+					<3 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>,
+					/* pwr_good */
+					<3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>,
+					/* pwrup */
+					<3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>,
+					/* vcom_ctrl */
+					<4 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	led {
 		led_pin: led-pin {
 			rockchip,pins = <3 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;

---
base-commit: 053966c344dbd346e71305f530e91ea77916189f
change-id: 20260121-rk-tps-13f967caacec

Best regards,
--  
Andreas Kemnade <andreas@kemnade.info>


