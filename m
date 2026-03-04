Return-Path: <devicetree+bounces-270838-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMzYMsufp2nTigAAu9opvQ
	(envelope-from <devicetree+bounces-270838-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 03:58:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F36941FA1E6
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 03:58:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2DC2230FF908
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 02:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E092353EEB;
	Wed,  4 Mar 2026 02:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="MCrd1N7W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f227.google.com (mail-pf1-f227.google.com [209.85.210.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6871A3542F8
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 02:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772592933; cv=none; b=GPtISNTW+x/90x9A/ljkgHoANj5wuj6t0IIJOeVN/8yOYIxoKwbhOEk6Udk2QMUiQZ2QTOvY8BbtElLc/2tHRF8tgo62pkO/63aeniFhampOxqYQIzaObDfdV2gTw2HXuklCwiuIOGL0QbIVJrwvTfXjpDZHxCnNoM/qcXJPbyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772592933; c=relaxed/simple;
	bh=F59+Jc7sBT/sB7Bf2aTGXlMhSv4GG5B4BafcXYNcTzo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lDDEZMYgXKkp+/jDViMN4+t5lwT17LrvmCjXPCVg0yiQMHEB3RIt+mVv782K95tX3OscomLOWULO/7lJFfb451f2gKq7Uiq2lOu0CpymoLm7B/foBo6VbEfTYn5dHj1yBUt0q5F1Tor3FdudC/hzYTTnNmVYNGSM2g4ae8w8DFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=ausil.us; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=MCrd1N7W; arc=none smtp.client-ip=209.85.210.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ausil.us
Received: by mail-pf1-f227.google.com with SMTP id d2e1a72fcca58-8272a56b91cso5378805b3a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 18:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772592931; x=1773197731; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pGL01KQz8fGNmgMjeX5GBD+LWCxCWAmCr/D+fX/lnJI=;
        b=MCrd1N7WVZQ561MtTgrjId2NaSz1k3AtwbJQFRprN6jVeY1nSs8cK/9zvyNFdV3bMU
         KJkKH5hQZEq+sYps97abMfJlWYQicFqsR5c8fbeDvhVPaSFnR/Mkx60xiHmfO3wGaTWd
         kE3/PPm11V+e58U/LPIbyXLScA/mx8sDmxvxb/6kE3cmMLrM7kz+iSPWCqyq8a9YCcus
         HOyoof8+wgr8QWQOBjcmofWsiv7SWC1Ap3V3oIfOsCqY6eW4jNKlI7QrHMYxXdxqdtIl
         RAjhZRQHmxsMpJzhwBUoaEdDtcypEeeBx64oixPigHK3+3h+yuAGhoc7/gw2UDz6w+t4
         nwkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772592931; x=1773197731;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pGL01KQz8fGNmgMjeX5GBD+LWCxCWAmCr/D+fX/lnJI=;
        b=cwd6QR3aXYgMdTMUZwyhBlPbJ0Dvh6CxULBaIUyRc7VO34Uyg8dqVWrJfDe88OtiYN
         sO+wzq8FPwjaY5Sez8Vi4KaH4e40YxKNYPWeoHXklfof/dbnUp4s+aHjfTfZhovaNlqm
         tgOjcqWisnGMY57VW1oLjkgFl0H4H64TcgIyXkzxypFbWjZcOjb/23bphmj0bR6GGK37
         daxL5UvvPCmSmBXA+W1wqARRD0hJXmhHbcafXdEHEHP8kDce6Ous2Iq17X6rpWLCe1ZE
         hLMt0iT7XSsUbd2MW1jkQglQXpxG2HpW9lGPl158GiK91jv437dvvzxCjJBFwe1t8C82
         WpyA==
X-Forwarded-Encrypted: i=1; AJvYcCXRv2sVPs5mBz7PG1azF8WKYtckRKSBSYRsTMNHaXz/FPLLmzfUK7+B+elnfO6iMdnphn2HTjXSr/pD@vger.kernel.org
X-Gm-Message-State: AOJu0YwnR3xdq7GlNwAE1IPlS8SQXhkdOq3MlGAhAZ6VKe50vDDEbv6F
	HyOd8Ck4SeX7TNESGlqa4TtzYKAeqU6OFRnXOCsTd9ffewCvKyLa3Y5+c+H58cRY6JqdQnWVQhH
	Hf3+m+rFN1vsjT09sbA3ldOVT8Ztzt2nlMaHd
X-Gm-Gg: ATEYQzz/nKbA9wTZ0yt+sYRcdKaDyL58PHOU7kUPoNKYrwPIX3dUAlaCLaeHqgTxvU6
	kGV3kMj/6k1xzEIi2j4TMCAcX3rvMCdwTCVpZU7k1vFNUhw58TEOKZyRagPmYRYn8p720jQlF0r
	zFv1ND2JivYO6Uz1cusx91lO/y9oFVHQ3WUtlcF3glr8JP+pzyKXJUoK4ldBL6oHWzBw25rQLuS
	EIvbAUaUvWf0fJPIVcXQ2OTTsSR7t87d9MyUb7whJDr5yiodsuDtYnlVJg0BY/LvyWmoX+eGYjH
	p1++azON0inq/D68EqHCmEeY/f7QIbx5P+XN3heegnuvVoBdNBCt4ehTo1kNINcshY/38v+/5BO
	x/ehbTPyEWfcNkcZtjp0RxE9YUqcx8gwF7VK+vbRtsTqc
X-Received: by 2002:a05:6300:6710:b0:394:427b:eab with SMTP id adf61e73a8af0-3982dd5fb4bmr439560637.11.1772592930680;
        Tue, 03 Mar 2026 18:55:30 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 41be03b00d2f7-c70fa7d59b3sm1374096a12.7.2026.03.03.18.55.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 18:55:30 -0800 (PST)
X-Relaying-Domain: ausil.us
From: dennis@ausil.us
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>
Subject: [PATCH V2 2/3] arm64: dts: rockchip: refactor items from Orange Pi 5/b to prep for Pro
Date: Tue,  3 Mar 2026 20:55:19 -0600
Message-ID: <20260304025521.210377-3-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304025521.210377-1-dennis@ausil.us>
References: <20260304025521.210377-1-dennis@ausil.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: F36941FA1E6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org,ausil.us];
	TAGGED_FROM(0.00)[bounces-270838-lists,devicetree=lfdr.de];
	DMARC_BAD_POLICY(0.00)[ausil.us : Multiple policies defined in DNS];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennis@ausil.us,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ausil.us:+];
	DBL_PROHIBIT(0.00)[0.0.0.10:email,0.0.0.51:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.1:email,0.0.0.0:email,ausil.us:dkim,ausil.us:email,ausil.us:mid,0.0.0.22:email,0.0.0.2:email]
X-Rspamd-Action: no action

From: Dennis Gilmore <dennis@ausil.us>

The Orange Pi 5 Pro uses the same SoC and base as the Orange Pi 5 and
Orange Pi 5B but has had sound, USB, and leds wired up differently. The
boards also use gmac for ethernet where thre Pro has a PCIe attached NIC

Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 184 ++++++++++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 202 ++----------------
 .../boot/dts/rockchip/rk3588s-orangepi-5b.dts | 181 ++++++++++++++++
 3 files changed, 378 insertions(+), 189 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index 83b9b6645a1e..a102458d7f6f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -2,12 +2,62 @@
 
 /dts-v1/;
 
+#include <dt-bindings/usb/pd.h>
 #include "rk3588s-orangepi-5.dtsi"
 
 / {
 	model = "Xunlong Orange Pi 5";
 	compatible = "xunlong,orangepi-5", "rockchip,rk3588s";
 
+	aliases {
+		ethernet0 = &gmac1;
+		mmc0 = &sdmmc;
+	};
+
+	analog-sound {
+		compatible = "simple-audio-card";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hp_detect>;
+		simple-audio-card,name = "rockchip,es8388";
+		simple-audio-card,bitclock-master = <&masterdai>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&masterdai>;
+		simple-audio-card,hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,routing =
+			"Headphones", "LOUT1",
+			"Headphones", "ROUT1",
+			"LINPUT1", "Microphone Jack",
+			"RINPUT1", "Microphone Jack",
+			"LINPUT2", "Onboard Microphone",
+			"RINPUT2", "Onboard Microphone";
+		simple-audio-card,widgets =
+			"Microphone", "Microphone Jack",
+			"Microphone", "Onboard Microphone",
+			"Headphone", "Headphones";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+
+		masterdai: simple-audio-card,codec {
+			sound-dai = <&es8388>;
+			system-clock-frequency = <12288000>;
+		};
+	};
+
+	pwm-leds {
+		compatible = "pwm-leds";
+
+		led {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_STATUS;
+			linux,default-trigger = "heartbeat";
+			max-brightness = <255>;
+			pwms = <&pwm0 0 25000 0>;
+		};
+	};
+
 	vcc3v3_pcie20: regulator-vcc3v3-pcie20 {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -21,12 +71,146 @@ vcc3v3_pcie20: regulator-vcc3v3-pcie20 {
 	};
 };
 
+&gmac1 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii-rxid";
+	pinctrl-0 = <&gmac1_miim
+		     &gmac1_tx_bus2
+		     &gmac1_rx_bus2
+		     &gmac1_rgmii_clk
+		     &gmac1_rgmii_bus>;
+	pinctrl-names = "default";
+	tx_delay = <0x42>;
+	status = "okay";
+};
+
+&i2c6 {
+	es8388: audio-codec@10 {
+		compatible = "everest,es8388", "everest,es8328";
+		reg = <0x10>;
+		clocks = <&cru I2S1_8CH_MCLKOUT>;
+		AVDD-supply = <&vcc_3v3_s0>;
+		DVDD-supply = <&vcc_1v8_s0>;
+		HPVDD-supply = <&vcc_3v3_s0>;
+		PVDD-supply = <&vcc_3v3_s0>;
+		assigned-clocks = <&cru I2S1_8CH_MCLKOUT>;
+		assigned-clock-rates = <12288000>;
+		#sound-dai-cells = <0>;
+	};
+
+	usbc0: usb-typec@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usbc0_int>;
+		vbus-supply = <&vbus_typec>;
+		status = "okay";
+
+		usb_con: connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			data-role = "dual";
+			op-sink-microwatt = <1000000>;
+			power-role = "dual";
+			sink-pdos =
+				<PDO_FIXED(5000, 1000, PDO_FIXED_USB_COMM)>;
+			source-pdos =
+				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+			try-power-role = "source";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					usbc0_hs: endpoint {
+						remote-endpoint = <&usb_host0_xhci_drd_sw>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					usbc0_ss: endpoint {
+						remote-endpoint = <&usbdp_phy0_typec_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+					usbc0_sbu: endpoint {
+						remote-endpoint = <&usbdp_phy0_typec_sbu>;
+					};
+				};
+			};
+		};
+	};
+};
+
+&i2s1_8ch {
+	rockchip,i2s-tx-route = <3 2 1 0>;
+	rockchip,i2s-rx-route = <1 3 2 0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclk
+	             &i2s1m0_mclk
+	             &i2s1m0_lrck
+	             &i2s1m0_sdi1
+	             &i2s1m0_sdo3>;
+	status = "okay";
+};
+
 &pcie2x1l2 {
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie20>;
 	status = "okay";
 };
 
+&pwm0 {
+	pinctrl-0 = <&pwm0m2_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &sfc {
 	status = "okay";
 };
+
+&usb_host0_xhci {
+	dr_mode = "otg";
+	usb-role-switch;
+
+	port {
+		usb_host0_xhci_drd_sw: endpoint {
+			remote-endpoint = <&usbc0_hs>;
+		};
+	};
+};
+
+&usb_host2_xhci {
+	status = "okay";
+};
+
+&usbdp_phy0 {
+	mode-switch;
+	orientation-switch;
+	sbu1-dc-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		usbdp_phy0_typec_ss: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc0_ss>;
+		};
+
+		usbdp_phy0_typec_sbu: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&usbc0_sbu>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
index dafad29f9854..7c7276968d95 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
@@ -3,19 +3,13 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/leds/common.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
-#include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
 
 / {
-	aliases {
-		ethernet0 = &gmac1;
-		mmc0 = &sdmmc;
-	};
-
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
@@ -34,38 +28,6 @@ button-recovery {
 		};
 	};
 
-	analog-sound {
-		compatible = "simple-audio-card";
-		pinctrl-names = "default";
-		pinctrl-0 = <&hp_detect>;
-		simple-audio-card,name = "rockchip,es8388";
-		simple-audio-card,bitclock-master = <&masterdai>;
-		simple-audio-card,format = "i2s";
-		simple-audio-card,frame-master = <&masterdai>;
-		simple-audio-card,hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
-		simple-audio-card,mclk-fs = <256>;
-		simple-audio-card,routing =
-			"Headphones", "LOUT1",
-			"Headphones", "ROUT1",
-			"LINPUT1", "Microphone Jack",
-			"RINPUT1", "Microphone Jack",
-			"LINPUT2", "Onboard Microphone",
-			"RINPUT2", "Onboard Microphone";
-		simple-audio-card,widgets =
-			"Microphone", "Microphone Jack",
-			"Microphone", "Onboard Microphone",
-			"Headphone", "Headphones";
-
-		simple-audio-card,cpu {
-			sound-dai = <&i2s1_8ch>;
-		};
-
-		masterdai: simple-audio-card,codec {
-			sound-dai = <&es8388>;
-			system-clock-frequency = <12288000>;
-		};
-	};
-
 	hdmi0-con {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -77,18 +39,6 @@ hdmi0_con_in: endpoint {
 		};
 	};
 
-	pwm-leds {
-		compatible = "pwm-leds";
-
-		led {
-			color = <LED_COLOR_ID_GREEN>;
-			function = LED_FUNCTION_STATUS;
-			linux,default-trigger = "heartbeat";
-			max-brightness = <255>;
-			pwms = <&pwm0 0 25000 0>;
-		};
-	};
-
 	vbus_typec: regulator-vbus-typec {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -101,15 +51,6 @@ vbus_typec: regulator-vbus-typec {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc5v0_sys: regulator-vcc5v0-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-	};
-
 	vcc_3v3_sd_s0: regulator-vcc-3v3-sd-s0 {
 		compatible = "regulator-fixed";
 		gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_LOW>;
@@ -119,6 +60,15 @@ vcc_3v3_sd_s0: regulator-vcc-3v3-sd-s0 {
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc_3v3_s3>;
 	};
+
+	vcc5v0_sys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
 };
 
 &combphy0_ps {
@@ -161,20 +111,6 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
-&gmac1 {
-	clock_in_out = "output";
-	phy-handle = <&rgmii_phy1>;
-	phy-mode = "rgmii-rxid";
-	pinctrl-0 = <&gmac1_miim
-		     &gmac1_tx_bus2
-		     &gmac1_rx_bus2
-		     &gmac1_rgmii_clk
-		     &gmac1_rgmii_bus>;
-	pinctrl-names = "default";
-	tx_delay = <0x42>;
-	status = "okay";
-};
-
 &gpu {
 	mali-supply = <&vdd_gpu_s0>;
 	status = "okay";
@@ -270,69 +206,6 @@ &i2c6 {
 	pinctrl-0 = <&i2c6m3_xfer>;
 	status = "okay";
 
-	es8388: audio-codec@10 {
-		compatible = "everest,es8388", "everest,es8328";
-		reg = <0x10>;
-		clocks = <&cru I2S1_8CH_MCLKOUT>;
-		AVDD-supply = <&vcc_3v3_s0>;
-		DVDD-supply = <&vcc_1v8_s0>;
-		HPVDD-supply = <&vcc_3v3_s0>;
-		PVDD-supply = <&vcc_3v3_s0>;
-		assigned-clocks = <&cru I2S1_8CH_MCLKOUT>;
-		assigned-clock-rates = <12288000>;
-		#sound-dai-cells = <0>;
-	};
-
-	usbc0: usb-typec@22 {
-		compatible = "fcs,fusb302";
-		reg = <0x22>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usbc0_int>;
-		vbus-supply = <&vbus_typec>;
-		status = "okay";
-
-		usb_con: connector {
-			compatible = "usb-c-connector";
-			label = "USB-C";
-			data-role = "dual";
-			op-sink-microwatt = <1000000>;
-			power-role = "dual";
-			sink-pdos =
-				<PDO_FIXED(5000, 1000, PDO_FIXED_USB_COMM)>;
-			source-pdos =
-				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
-			try-power-role = "source";
-
-			ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				port@0 {
-					reg = <0>;
-					usbc0_hs: endpoint {
-						remote-endpoint = <&usb_host0_xhci_drd_sw>;
-					};
-				};
-
-				port@1 {
-					reg = <1>;
-					usbc0_ss: endpoint {
-						remote-endpoint = <&usbdp_phy0_typec_ss>;
-					};
-				};
-
-				port@2 {
-					reg = <2>;
-					usbc0_sbu: endpoint {
-						remote-endpoint = <&usbdp_phy0_typec_sbu>;
-					};
-				};
-			};
-		};
-	};
-
 	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
@@ -346,18 +219,6 @@ hym8563: rtc@51 {
 	};
 };
 
-&i2s1_8ch {
-	rockchip,i2s-tx-route = <3 2 1 0>;
-	rockchip,i2s-rx-route = <1 3 2 0>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2s1m0_sclk
-	             &i2s1m0_mclk
-	             &i2s1m0_lrck
-	             &i2s1m0_sdi1
-	             &i2s1m0_sdo3>;
-	status = "okay";
-};
-
 &i2s5_8ch {
 	status = "okay";
 };
@@ -404,12 +265,6 @@ typec5v_pwren: typec5v-pwren {
 	};
 };
 
-&pwm0 {
-	pinctrl-0 = <&pwm0m2_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
 &rknn_core_0 {
 	npu-supply = <&vdd_npu_s0>;
 	sram-supply = <&vdd_npu_s0>;
@@ -840,29 +695,6 @@ &uart2 {
 	status = "okay";
 };
 
-&usbdp_phy0 {
-	mode-switch;
-	orientation-switch;
-	sbu1-dc-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
-	sbu2-dc-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
-	status = "okay";
-
-	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		usbdp_phy0_typec_ss: endpoint@0 {
-			reg = <0>;
-			remote-endpoint = <&usbc0_ss>;
-		};
-
-		usbdp_phy0_typec_sbu: endpoint@1 {
-			reg = <1>;
-			remote-endpoint = <&usbc0_sbu>;
-		};
-	};
-};
-
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -872,15 +704,7 @@ &usb_host0_ohci {
 };
 
 &usb_host0_xhci {
-	dr_mode = "otg";
-	usb-role-switch;
 	status = "okay";
-
-	port {
-		usb_host0_xhci_drd_sw: endpoint {
-			remote-endpoint = <&usbc0_hs>;
-		};
-	};
 };
 
 &usb_host1_ehci {
@@ -891,15 +715,15 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
-&usb_host2_xhci {
+&usbdp_phy0 {
 	status = "okay";
 };
 
-&vop_mmu {
+&vop {
 	status = "okay";
 };
 
-&vop {
+&vop_mmu {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
index d21ec320d295..5acd96969ddf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
@@ -2,6 +2,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/usb/pd.h>
 #include "rk3588s-orangepi-5.dtsi"
 
 / {
@@ -9,11 +10,191 @@ / {
 	compatible = "xunlong,orangepi-5b", "rockchip,rk3588s";
 
 	aliases {
+		ethernet0 = &gmac1;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 	};
+
+	analog-sound {
+		compatible = "simple-audio-card";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hp_detect>;
+		simple-audio-card,name = "rockchip,es8388";
+		simple-audio-card,bitclock-master = <&masterdai>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&masterdai>;
+		simple-audio-card,hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,routing =
+			"Headphones", "LOUT1",
+			"Headphones", "ROUT1",
+			"LINPUT1", "Microphone Jack",
+			"RINPUT1", "Microphone Jack",
+			"LINPUT2", "Onboard Microphone",
+			"RINPUT2", "Onboard Microphone";
+		simple-audio-card,widgets =
+			"Microphone", "Microphone Jack",
+			"Microphone", "Onboard Microphone",
+			"Headphone", "Headphones";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+
+		masterdai: simple-audio-card,codec {
+			sound-dai = <&es8388>;
+			system-clock-frequency = <12288000>;
+		};
+	};
+
+	pwm-leds {
+		compatible = "pwm-leds";
+
+		led {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_STATUS;
+			linux,default-trigger = "heartbeat";
+			max-brightness = <255>;
+			pwms = <&pwm0 0 25000 0>;
+		};
+	};
+
+};
+
+&gmac1 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii-rxid";
+	pinctrl-0 = <&gmac1_miim
+		     &gmac1_tx_bus2
+		     &gmac1_rx_bus2
+		     &gmac1_rgmii_clk
+		     &gmac1_rgmii_bus>;
+	pinctrl-names = "default";
+	tx_delay = <0x42>;
+	status = "okay";
+};
+
+&i2c6 {
+	es8388: audio-codec@10 {
+		compatible = "everest,es8388", "everest,es8328";
+		reg = <0x10>;
+		clocks = <&cru I2S1_8CH_MCLKOUT>;
+		AVDD-supply = <&vcc_3v3_s0>;
+		DVDD-supply = <&vcc_1v8_s0>;
+		HPVDD-supply = <&vcc_3v3_s0>;
+		PVDD-supply = <&vcc_3v3_s0>;
+		assigned-clocks = <&cru I2S1_8CH_MCLKOUT>;
+		assigned-clock-rates = <12288000>;
+		#sound-dai-cells = <0>;
+	};
+
+	usbc0: usb-typec@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usbc0_int>;
+		vbus-supply = <&vbus_typec>;
+		status = "okay";
+
+		usb_con: connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			data-role = "dual";
+			op-sink-microwatt = <1000000>;
+			power-role = "dual";
+			sink-pdos =
+				<PDO_FIXED(5000, 1000, PDO_FIXED_USB_COMM)>;
+			source-pdos =
+				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+			try-power-role = "source";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					usbc0_hs: endpoint {
+						remote-endpoint = <&usb_host0_xhci_drd_sw>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					usbc0_ss: endpoint {
+						remote-endpoint = <&usbdp_phy0_typec_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+					usbc0_sbu: endpoint {
+						remote-endpoint = <&usbdp_phy0_typec_sbu>;
+					};
+				};
+			};
+		};
+	};
+};
+
+&i2s1_8ch {
+	rockchip,i2s-tx-route = <3 2 1 0>;
+	rockchip,i2s-rx-route = <1 3 2 0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclk
+	             &i2s1m0_mclk
+	             &i2s1m0_lrck
+	             &i2s1m0_sdi1
+	             &i2s1m0_sdo3>;
+	status = "okay";
+};
+
+&pwm0 {
+	pinctrl-0 = <&pwm0m2_pins>;
+	pinctrl-names = "default";
+	status = "okay";
 };
 
 &sdhci {
 	status = "okay";
 };
+
+&usb_host0_xhci {
+	dr_mode = "otg";
+	usb-role-switch;
+
+	port {
+		usb_host0_xhci_drd_sw: endpoint {
+			remote-endpoint = <&usbc0_hs>;
+		};
+	};
+};
+
+&usb_host2_xhci {
+	status = "okay";
+};
+
+&usbdp_phy0 {
+	mode-switch;
+	orientation-switch;
+	sbu1-dc-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		usbdp_phy0_typec_ss: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc0_ss>;
+		};
+
+		usbdp_phy0_typec_sbu: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&usbc0_sbu>;
+		};
+	};
+};
-- 
2.53.0


