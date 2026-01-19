Return-Path: <devicetree+bounces-256695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF4DD3A01A
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 08:38:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4399A3078EF2
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:33:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08BC13370E4;
	Mon, 19 Jan 2026 07:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A+TwGcX5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9491E33033B
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768808038; cv=none; b=A33bIBFx8IHQB+N2mFznWtnfqVlU5s3oDgSQeYMnwmV48B7kt5OstbKfmlW4B+fHQFn/fT997BgGH48wicF6I0GvD2r852D5h2yqYaryhDh17OADEZw7QSTiSmt1SU+P2hrQX3Xq3Prb7RY+wMof8JuGHctDVbB+96ewFicpYSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768808038; c=relaxed/simple;
	bh=oSJiyv6++pRry++B3jUCB0ujcBR28n94M/1nAaGgQrs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c/AYdSLFrScLrWWAiUyZ9BK/8qi/7RUBDqp/Ed5yZ0WpwDxJbwq0pvNNByfsjswBHu+8/R4QAunSN0t4QU2MJ3J/gWQxuEi3t9IcCw6rghKGWdn5RhFqaBIeK41ByKJ6/meCS5MBpaYd8EMS6kZVEkDykLUuvYsw7zqYGq6yHT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A+TwGcX5; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a0834769f0so27333915ad.2
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 23:33:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768808037; x=1769412837; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hqveaJe53LxwbIM9SPax0uC9xDx3I0UHkG7RcVXnAnw=;
        b=A+TwGcX59zL3h4Sia/WiF+am1D6T0aAdEyTC2vpr9kgwiOoZKGEH1RsxT83f5Y1RZX
         CKbCGAXGn8myKlD4pyNnpjVWyfyWEwzD4pRVSCW8XgdcVTMFTlhyWyfCkg/vLqPN9DO8
         /Z51x6Bth1S0TwU6SiP2orWJXaWeyivB3MKe6daAE7Rt5jaZ5ubA8AUNIZv/FS+hF4qR
         TwPmxfz4MLhQdJNNC1yuN4aXEQqG3YlCHkL0KBF/N2/1wNJCIqdPBmdzhVoCaI4AWjik
         oI+bumNbSXewBKVDiwBx4mZJBpvkGYwioWEEAUkSSRMk7FkDttN7VVIh6B1kzORfiruC
         cRHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768808037; x=1769412837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hqveaJe53LxwbIM9SPax0uC9xDx3I0UHkG7RcVXnAnw=;
        b=mgMuCACR17dMQeLinpQJn2vIDvAlFgniQ63potc6qvUhMdGJRebFX3ositDXud00CV
         O+aEhbYoh0azcwsG+FszE5GkcQ8hdMz71QeyFIFgX1/01BLqE+RH/zafUtCo1mWCeUNN
         02fxZzjMB3wG4c6JJglni7bATCH+35kW5gDorGJHQAv5yuwEssvZaC30/N1RrUEsqlID
         eAD3XBY5GEacW3lotgUBNyUOaVYr836vR1fShRdZGp0D0+up2y0q3OtjgZ3wL+FW8WJS
         sGCtfnTUS/G1H0Rb6WV+jnEbJA4JvX9PR99iAaMFVedIET8MDAIVxVnrlzsDtwcfjVlE
         LmJQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4XWvoLaNMzBDEsXd0SY0fa7mcsFK0iCKAPXp9QIyF5AW8LBGHOat85jvw696mIXKgSyBv668wRfMY@vger.kernel.org
X-Gm-Message-State: AOJu0YxOch7om88aUGfWy0TI9FG/ZDHMNTKOAYLBNSu3xkpuNSbb9IOh
	zTAZbutiDWECGo+mKqfrADLtQxOuwx7lU/qkUG5g7CUzY/AFujULYvy6
X-Gm-Gg: AZuq6aKr6Jxcx/VA7Txfp18Q2zomlGrMBWiFsYb64R+8r7sJad1ORus4az+LvmL/5kS
	yi1qaGA0c96gtXfRQAWKTDacQEC0waNrCoiY2iQ6zbbac4lFRBgINiwwUS2DkQxbkXYzryIzIcH
	Tq9k86FjTkiG6gaB6WQdeqymiR3gSTh8EeVdMPaFufdVX9ZQ1YVsj5FnmbGzcbkWzuLIe+xQ8XI
	vFHwS+fN+FPDXFcxpLuDbrifRu7bnO3iS81jK00Ug7TG8oZuh+bWqrkKgYm83yOTDebrjsH39oP
	+aNTH6Qn3Uq8lwkcAVmJRBGz1yG/SxiVowkypdlqPmkCe6kE/p8jaE7dogQFmWNBvZwpwKtmT/R
	AUzsOnjvj+BWSxnjOaXXnsIZmp4Gc8qrnr/HtjgYE85WIdA8DgJn3Qnco4GPTRPGVcrGrgQ6/Ww
	0VFuCn7O4GGZQ8yzwTK4ZhI103EewsiSQ5aPdg0VdePNxps1RsT5cZlkqDtcIuyqgydQ1BwGp+
X-Received: by 2002:a17:903:3b87:b0:29e:93be:fe50 with SMTP id d9443c01a7336-2a71891ace9mr83664425ad.42.1768808036852;
        Sun, 18 Jan 2026 23:33:56 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a71941e3cdsm84863325ad.100.2026.01.18.23.33.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 23:33:56 -0800 (PST)
From: Joey Lu <a0987203069@gmail.com>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mcoquelin.stm32@gmail.com,
	richardcochran@gmail.com
Cc: alexandre.torgue@foss.st.com,
	joabreu@synopsys.com,
	ychuang3@nuvoton.com,
	schung@nuvoton.com,
	yclu4@nuvoton.com,
	peppe.cavallaro@st.com,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH net-next v8 2/3] arm64: dts: nuvoton: Add Ethernet nodes
Date: Mon, 19 Jan 2026 15:33:40 +0800
Message-ID: <20260119073342.3132502-3-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119073342.3132502-1-a0987203069@gmail.com>
References: <20260119073342.3132502-1-a0987203069@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add GMAC nodes for our MA35D1 development boards:
two RGMII interfaces for SOM board, and one RGMII
and one RMII interface for IoT board.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      | 12 +++++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      | 10 ++++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       | 54 +++++++++++++++++++
 3 files changed, 76 insertions(+)
 mode change 100644 => 100755 arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
 mode change 100644 => 100755 arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
 mode change 100644 => 100755 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi

diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts b/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
old mode 100644
new mode 100755
index 9482bec1aa57..5cc712ae92d8
--- a/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
@@ -18,6 +18,8 @@ aliases {
 		serial12 = &uart12;
 		serial13 = &uart13;
 		serial14 = &uart14;
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
 	};
 
 	chosen {
@@ -126,3 +128,13 @@ &uart14 {
 	pinctrl-0 = <&pinctrl_uart14>;
 	status = "okay";
 };
+
+&gmac0 {
+	phy-mode = "rgmii-id";
+	status = "okay";
+};
+
+&gmac1 {
+	phy-mode = "rmii";
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
old mode 100644
new mode 100755
index f6f20a17e501..1d9ac350a1f1
--- a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
@@ -18,6 +18,8 @@ aliases {
 		serial12 = &uart12;
 		serial14 = &uart14;
 		serial16 = &uart16;
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
 	};
 
 	chosen {
@@ -129,3 +131,11 @@ &uart16 {
 	pinctrl-0 = <&pinctrl_uart16>;
 	status = "okay";
 };
+
+&gmac0 {
+	status = "okay";
+};
+
+&gmac1 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
old mode 100644
new mode 100755
index e51b98f5bdce..89712e262ee6
--- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
@@ -379,5 +379,59 @@ uart16: serial@40880000 {
 			clocks = <&clk UART16_GATE>;
 			status = "disabled";
 		};
+
+		gmac0: ethernet@40120000 {
+			compatible = "nuvoton,ma35d1-dwmac";
+			reg = <0x0 0x40120000 0x0 0x10000>;
+			interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+			clocks = <&clk EMAC0_GATE>, <&clk EPLL_DIV8>;
+			clock-names = "stmmaceth", "ptp_ref";
+
+			nuvoton,sys = <&sys 0>;
+			resets = <&sys MA35D1_RESET_GMAC0>;
+			reset-names = "stmmaceth";
+
+			phy-mode = "rgmii-id";
+			phy-handle = <&eth_phy0>;
+			status = "disabled";
+
+			mdio0: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eth_phy0: ethernet-phy@0 {
+					reg = <0>;
+				};
+			};
+		};
+
+		gmac1: ethernet@40130000 {
+			compatible = "nuvoton,ma35d1-dwmac";
+			reg = <0x0 0x40130000 0x0 0x10000>;
+			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+			clocks = <&clk EMAC1_GATE>, <&clk EPLL_DIV8>;
+			clock-names = "stmmaceth", "ptp_ref";
+
+			nuvoton,sys = <&sys 1>;
+			resets = <&sys MA35D1_RESET_GMAC1>;
+			reset-names = "stmmaceth";
+
+			phy-mode = "rgmii-id";
+			phy-handle = <&eth_phy1>;
+			status = "disabled";
+
+			mdio1: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eth_phy1: ethernet-phy@1 {
+					reg = <1>;
+				};
+			};
+		};
 	};
 };
-- 
2.43.0


