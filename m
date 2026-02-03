Return-Path: <devicetree+bounces-262263-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NHOG8j1gWljNAMAu9opvQ
	(envelope-from <devicetree+bounces-262263-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:19:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C1AD9D50
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:19:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B48DB3056924
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 13:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A11A13542E4;
	Tue,  3 Feb 2026 13:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Om4M1u7G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D23350D7E
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 13:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770124262; cv=none; b=Q65CRJNluBUz5FOds9NnsxVXC+cuna193ZFUmYPCLYZXhKjdSYpY1Snbv/w83x616+b6xDpuAo2KdAsEI0TCky+HeHO/rEx1nNaCSuv5oyuA9z/EOmC10jIabqvpP21i1efRqO79eiA/DZDPnj5/JoMUBxSELxIW03N1GEp1Aco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770124262; c=relaxed/simple;
	bh=1o9Fne598SwGTJY3I6xrUip+uU0Jf0THH2OblYUSYAc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mpqcjMi9YY/1FDFmFDmyHHbnDYXlYT2ZM6PMxt4JuqOUTt7toFx86KusE5MlMtwhOOrC3Du+jHffQDY1lKw9+66ZhlWEmN1U+IUackhGBfaIe4EZF7aE5iBfkZqYEHo4nhK7DazI8PEauuMjud6ddmqIGw6cM2Z5SgO54xxqoNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Om4M1u7G; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4806d23e9f1so62739135e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 05:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770124258; x=1770729058; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4t+1IR30JejxnxLJmy89CJnpbkRQt0qivcr95Sbh48M=;
        b=Om4M1u7GnufabeZPDrbf7z3b1mQuu4vlHksgsWMWNeLyN7KD2R0mhHGUzE150DBHAK
         PaP2HIqHujUhqiotHVuNn97fX8yqrVXGzWpXjPsr/YluFTL+1281iEdLvZ7neSToKnAB
         TdZXVfqp8Z4rRZN/rlaJCbbxCFvT6Ehxp8sCbN261imcRYI0k3JVb9dwgRRArU7J7UcC
         u2zw+V9RaZpS253E3FDXGS5zDboHN0lMunfdAlAGt984e5gjeGVTlEDWtFioJjgHgzIL
         PZi7Pb8zkZyKRT2iNtO8TzYa3OqCYk1x/VZCQqUa5QZT5xOIOwiUXXvo+ial65UTbGMi
         xsTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770124258; x=1770729058;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4t+1IR30JejxnxLJmy89CJnpbkRQt0qivcr95Sbh48M=;
        b=dRsnPohze1y7v+WxF4/etx+21kl4rcXM4LEvO1Uptq5ZusnY5ex5XhQFRxnJmVsUcU
         l3bISoKYnsE14R3BaUtzxCJlVhzH3A+LjN/GQI+K/4SCQfeI+T3Zn9M+ypR0V0QIrwt+
         whcFuqBp1a9dEKH+M9X0F/Sx3TvHMnlLvYY0chN6HacVHSbk7ZJ1akgw5Ezfq00nMbmr
         yjUEgk5bidEUt5m3c5/vWJwADXX2hFMvhTgMGeBE3pSatSYd1pqBdkYWIrpX5/Voxptc
         0zYGvypt8BS2ME8KdWUKVaX/gIVxJvSMLqZaxs1VAsJzzOp5oa47y7E2EfPqPOPLibLB
         +zxA==
X-Forwarded-Encrypted: i=1; AJvYcCV5vdTwzXiEh+qEZ8GXJBlg0LI7b06Y5O/Vi3xDbfoueSxLg9QoCrkfJJ/Q5CLWWV7sVDAZDwVTMy4D@vger.kernel.org
X-Gm-Message-State: AOJu0YzJX6gKQ+0z21AxbmibbFWOgi1nV2CopyZvcUYI5xyGRR6M8wq1
	hWxeK3GhLsbd42jTh/mPMjlCJ0xEXJw2TtZlehIiXbLR3gGOUrp8rV68
X-Gm-Gg: AZuq6aJUpPd4C8T9G5kZsO0xlpnijdz7uPIaCVCl3Q277spcn7O/hrLYhjkG5QpSqMf
	62dsvIcVCZ4K3fXFEuXZZVxohRNeovGPU+/nxjqg8UaAhpiwcHg9vNVCwjt0535X1722jS8yUxc
	Ha8xvcMcoJn7cMFIZ0U91s+7ygmv4nc0nmfV0Phxtxmm/MS5uP6g3ejKStUIxKEXFf3DeBieXRt
	vJtrwpt0X5n9zOmo0aI1XirvD2tBs272wB/uYemKeEDc/rElMPljEcHQoXW7+cVsquPsFxOLPeX
	Iy2zOI4L9QMZBpTIMV8fK61KsNU6C+bYYExq4StGBLelaBlh3wj+eUNsyiDSDNorttmCXqwwAvK
	ejYj2e3yS3s9+YRVJVFa3xUIPZqrlb7AHfCu6d5Dagq+3lJjx4JxPWJJiPVBYXjfdCZ5Bx9WrhM
	gTclVg3nSJctmM6+nyWQ==
X-Received: by 2002:a05:600c:8b31:b0:480:1dc6:269c with SMTP id 5b1f17b1804b1-482db49e6demr180470775e9.37.1770124258045;
        Tue, 03 Feb 2026 05:10:58 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:9cd9:f748:166d:55fc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4830512ddd0sm63662185e9.9.2026.02.03.05.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 05:10:57 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 10/10] arm64: dts: renesas: rzg3l-smarc-som: Enable eth1 (GBETH1) interface
Date: Tue,  3 Feb 2026 13:10:33 +0000
Message-ID: <20260203131048.421708-11-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203131048.421708-1-biju.das.jz@bp.renesas.com>
References: <20260203131048.421708-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262263-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,0.0.0.7:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bp.renesas.com:mid,2.220.108.0:email]
X-Rspamd-Queue-Id: 74C1AD9D50
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Enable the Gigabit Ethernet Interface (GBETH1) populated on the RZ/G3L
SMARC EVK. Also add pincontrol definitions for GBETH{0,1}.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * No change
---
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   |  1 +
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     | 92 +++++++++++++++++++
 2 files changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
index 2f918830b8f1..58733016b66b 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
@@ -14,6 +14,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/pinctrl/renesas,r9a08g046-pinctrl.h>
 #include "r9a08g046l48.dtsi"
 #include "rzg3l-smarc-som.dtsi"
 #include "renesas-smarc2.dtsi"
diff --git a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
index f52af01a7eff..0b9bb073c282 100644
--- a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
@@ -10,6 +10,7 @@ / {
 
 	aliases {
 		ethernet0 = &eth0;
+		ethernet1 = &eth1;
 	};
 
 	memory@48000000 {
@@ -23,6 +24,8 @@ &eth0 {
 	phy-handle = <&phy0>;
 	phy-mode = "rgmii-id";
 
+	pinctrl-0 = <&eth0_pins>;
+	pinctrl-names = "default";
 	status = "okay";
 };
 
@@ -30,6 +33,19 @@ &eth0_rxc_rx_clk {
 	clock-frequency = <125000000>;
 };
 
+&eth1 {
+	phy-handle = <&phy1>;
+	phy-mode = "rgmii-id";
+
+	pinctrl-0 = <&eth1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&eth1_rxc_rx_clk {
+	clock-frequency = <125000000>;
+};
+
 &extal_clk {
 	clock-frequency = <24000000>;
 };
@@ -53,3 +69,79 @@ phy0: ethernet-phy@7 {
 		txd3-skew-psec = <0>;
 	};
 };
+
+&mdio1 {
+	phy1: ethernet-phy@7 {
+		compatible = "ethernet-phy-id0022.1640",
+			     "ethernet-phy-ieee802.3-c22";
+		reg = <7>;
+		rxc-skew-psec = <1400>;
+		txc-skew-psec = <1400>;
+		rxdv-skew-psec = <0>;
+		txdv-skew-psec = <0>;
+		rxd0-skew-psec = <0>;
+		rxd1-skew-psec = <0>;
+		rxd2-skew-psec = <0>;
+		rxd3-skew-psec = <0>;
+		txd0-skew-psec = <0>;
+		txd1-skew-psec = <0>;
+		txd2-skew-psec = <0>;
+		txd3-skew-psec = <0>;
+	};
+};
+
+&pinctrl {
+	eth0_pins: eth0 {
+		txc {
+			pinmux = <RZG3L_PORT_PINMUX(B, 1, 1)>;  /* ETH0_TXC_REF_CLK */
+			power-source = <1800>;
+			output-enable;
+			drive-strength-microamp = <5200>;
+		};
+
+		ctrl {
+			pinmux = <RZG3L_PORT_PINMUX(A, 1, 1)>, /* MDC */
+				 <RZG3L_PORT_PINMUX(A, 0, 1)>, /* MDIO */
+				 <RZG3L_PORT_PINMUX(C, 2, 1)>, /* PHY_INTR */
+				 <RZG3L_PORT_PINMUX(C, 1, 1)>, /* RXD3 */
+				 <RZG3L_PORT_PINMUX(C, 0, 1)>, /* RXD2 */
+				 <RZG3L_PORT_PINMUX(B, 7, 1)>, /* RXD1 */
+				 <RZG3L_PORT_PINMUX(B, 6, 1)>, /* RXD0 */
+				 <RZG3L_PORT_PINMUX(B, 0, 1)>, /* RXC */
+				 <RZG3L_PORT_PINMUX(A, 2, 1)>, /* RX_CTL */
+				 <RZG3L_PORT_PINMUX(B, 5, 1)>, /* TXD3 */
+				 <RZG3L_PORT_PINMUX(B, 4, 1)>, /* TXD2 */
+				 <RZG3L_PORT_PINMUX(B, 3, 1)>, /* TXD1 */
+				 <RZG3L_PORT_PINMUX(B, 2, 1)>, /* TXD0 */
+				 <RZG3L_PORT_PINMUX(A, 3, 1)>; /* TX_CTL */
+				 power-source = <1800>;
+		};
+	};
+
+	eth1_pins: eth1 {
+		txc {
+			pinmux = <RZG3L_PORT_PINMUX(E, 1, 1)>;  /* ETH1_TXC_REF_CLK */
+			power-source = <1800>;
+			output-enable;
+			drive-strength-microamp = <5200>;
+		};
+
+		ctrl {
+			pinmux = <RZG3L_PORT_PINMUX(D, 1, 1)>, /* MDC */
+				 <RZG3L_PORT_PINMUX(D, 0, 1)>, /* MDIO */
+				 <RZG3L_PORT_PINMUX(F, 2, 1)>, /* PHY_INTR */
+				 <RZG3L_PORT_PINMUX(F, 1, 1)>, /* RXD3 */
+				 <RZG3L_PORT_PINMUX(F, 0, 1)>, /* RXD2 */
+				 <RZG3L_PORT_PINMUX(E, 7, 1)>, /* RXD1 */
+				 <RZG3L_PORT_PINMUX(E, 6, 1)>, /* RXD0 */
+				 <RZG3L_PORT_PINMUX(E, 0, 1)>, /* RXC */
+				 <RZG3L_PORT_PINMUX(D, 2, 1)>, /* RX_CTL */
+				 <RZG3L_PORT_PINMUX(E, 5, 1)>, /* TXD3 */
+				 <RZG3L_PORT_PINMUX(E, 4, 1)>, /* TXD2 */
+				 <RZG3L_PORT_PINMUX(E, 3, 1)>, /* TXD1 */
+				 <RZG3L_PORT_PINMUX(E, 2, 1)>, /* TXD0 */
+				 <RZG3L_PORT_PINMUX(D, 3, 1)>; /* TX_CTL */
+				 power-source = <1800>;
+		};
+	};
+};
-- 
2.43.0


