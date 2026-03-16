Return-Path: <devicetree+bounces-275935-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKcmJISbt2knTgEAu9opvQ
	(envelope-from <devicetree+bounces-275935-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:56:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 000D4294E56
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:56:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B16F303AABB
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 05:54:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53800346E66;
	Mon, 16 Mar 2026 05:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EM4aEJte"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922542BCF68
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 05:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773640486; cv=none; b=jLfJIiGZpRvMtVAI46Mr9vYCOQjOsgBgU4UP4WbUOsVQO8wuxAsAZeKRTrLIeoZC+T2P+KOP1reUWp6Ur+dxOBrzFS5yv2Z2d96r2Vv1ZMmdL3EanPgocOccqpS2Pgg1uXbCAaF61gCZltB2Nh3U0mcZIbhfoBVuuXQjv79HOio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773640486; c=relaxed/simple;
	bh=eukNjIBihqnDwPVnfCgWbR1V8gBGtpQkVjwyh2mO1Xs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JUnYRPqtZ6+3T6H6dEj8n8JyncM65MNuhC+GTcOL6lGZ5aa7ul1jgVOl0+RAdwbnGxt/GWGf07DmentSqTsbdz8XMuyARz0iKvrQQZX2gLB8sZi0asBrayDBGUM4nEizfHEvF7bQbtLfe6vtNfRA9hVeeoKrpEJ3FCwliACj198=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EM4aEJte; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-c7381c4345cso1711685a12.1
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 22:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773640483; x=1774245283; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HvbJo4sg+keqA0UYOTwphLAy1mW7zcwD5w4Qm8DSQTA=;
        b=EM4aEJteTzCLltCWkeBpxWwL/nnbZogCZlCx5VBVreZ+KWzq7C7BVm2y+lc05XRFFW
         j8lKLmYFC2GexCuzneXnSAU38vHgj4IhcBUih2hBOl5yBbvXlM+BW/wd+4/ZSuX0Tp9+
         FKnzNUeI/ztxHm6UwH0btcuyGzjQFVFmjOrssVr/lS9RUtcYbTMm9OnQDXr7pNZegu+R
         Yy4LJZZEAYCbRvPv/znVTJP/rnDPOZla5JulNtE8go9W7nJF1IVoiTwKgOi33JfKgsKf
         UEesgmaUKK1qYN3CkAsC1zd48vcJH3hSTVGHecXD+yVLlRthw62lMLEuPUw0n54FS1Hk
         z2Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773640483; x=1774245283;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HvbJo4sg+keqA0UYOTwphLAy1mW7zcwD5w4Qm8DSQTA=;
        b=asaJJPRmH54psxMT13DA9J1HNs7ylosk+pnh4anDhMRrvenZkD4X9JSZHph4ZbHByy
         7F9d1m5tZCHl65JpJvDW1TpyLDYGSzabDHvwyevFCU+BzpBO5XWvg09HRZ5nEgGIL2WX
         X5kbfsyQy/21NuPOGcA2McibQVoT79Yf+1FY7gFcrlEfvZ3ck1JJybURGdzdlCklFTP2
         X56GQm0m8EkEeykCpeEqink7lkqT8PO100QMjNDx1/s8OnUFFmKIBkpuTE+i4LYuPDLG
         N5/5XTfGwogNEkQbVZooRZXzkm88eOxiTgr4JNQ1OALSZPXl7l3WUpSqn+4hx0xmfHTG
         Ajow==
X-Forwarded-Encrypted: i=1; AJvYcCV6mWiycLksCLL2oKJOMB8GpRXnmr82r2iSTD32+wvJAF1g9p+OjGFHQceOrfwu02mgbYsTrhDRqopM@vger.kernel.org
X-Gm-Message-State: AOJu0YzfXiwSvlZzYxP2mKkIuMewcQR6jtl/5m9Oxf6WRZql+vdZa+iw
	TIt13S2/cgFNqmm5rnXEKjBB9zmwmS0H93ojaxOgVRgJ3s8KmXrld+kq
X-Gm-Gg: ATEYQzzg50b0R26eKIQIIZ0oGNu+GyCq+0rMKrcmliMj1CjnM0xJGQH4ApIUsVICcv/
	cgUVM12thAwLlWhMrqaVpTjzWYXzDQL5EzK+mIZAnVykBihI1BKjy/1ywlmYwApzRyv177tnukx
	R5WxywYj7+5r72eQ+xMtYRxd6yH3VX9wA7TEk2rUlY6JKQMP5tWqOxofcZYqj81S1QWfVM5+FeI
	sLV/Yt7dSXIMZkeyqZEAp+a59fYg7kdfmgTz34En0TyCK0VRTuV35lZAbDdd931zL8c9HDNbyQd
	aLX76yeM9XuKqh49jaN4ChLSerok2hCmFLXcdTvDhIOxFoWtCKc9TzdZZpnDRpXyxin15G+ScsS
	tuvEm9hnFb3TvbFuAHTED1fZQgAi+OyzoxHooJv8sFsdy3yntNn3afL82GzCuhmxPsOuhq/Y3T3
	ur7ux2c/nEv2ArN+xlzH8CMBAUkZamsDrfmMka/aohoq0RuukLgtCBJmBIJbTfUdF0K3pUYkQ7W
	DUFepkXQflVH5LZIrX+110=
X-Received: by 2002:a17:90b:580c:b0:359:8df1:8553 with SMTP id 98e67ed59e1d1-35a21fd7ac6mr9309269a91.9.1773640482884;
        Sun, 15 Mar 2026 22:54:42 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35b9db7dfe6sm2166285a91.8.2026.03.15.22.54.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 22:54:42 -0700 (PDT)
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
Subject: [PATCH net-next v14 2/3] arm64: dts: nuvoton: Add Ethernet nodes
Date: Mon, 16 Mar 2026 13:54:26 +0800
Message-ID: <20260316055427.1310569-3-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260316055427.1310569-1-a0987203069@gmail.com>
References: <20260316055427.1310569-1-a0987203069@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[foss.st.com,synopsys.com,nuvoton.com,st.com,lists.infradead.org,vger.kernel.org,lists.ozlabs.org,st-md-mailman.stormreply.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-275935-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.111.199.128:email,0.0.0.1:email,2.100.46.192:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,2.100.85.208:email,0.0.0.0:email]
X-Rspamd-Queue-Id: 000D4294E56
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add GMAC nodes for our MA35D1 development boards:
two RGMII interfaces for SOM board, and one RGMII
and one RMII interface for IoT board.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      | 25 +++++++++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      | 24 +++++++++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       | 52 +++++++++++++++++++
 3 files changed, 101 insertions(+)

diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts b/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
index 9482bec1aa57..78534d613486 100644
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
@@ -126,3 +128,26 @@ &uart14 {
 	pinctrl-0 = <&pinctrl_uart14>;
 	status = "okay";
 };
+
+&gmac0 {
+	status = "okay";
+	phy-handle = <&eth_phy0>;
+};
+
+&mdio0 {
+	eth_phy0: ethernet-phy@0 {
+		reg = <0>;
+	};
+};
+
+&gmac1 {
+	status = "okay";
+	phy-mode = "rmii";
+	phy-handle = <&eth_phy1>;
+};
+
+&mdio1 {
+	eth_phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
index f6f20a17e501..a029b660e8dc 100644
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
@@ -129,3 +131,25 @@ &uart16 {
 	pinctrl-0 = <&pinctrl_uart16>;
 	status = "okay";
 };
+
+&gmac0 {
+	status = "okay";
+	phy-handle = <&eth_phy0>;
+};
+
+&mdio0 {
+	eth_phy0: ethernet-phy@0 {
+		reg = <0>;
+	};
+};
+
+&gmac1 {
+	status = "okay";
+	phy-handle = <&eth_phy1>;
+};
+
+&mdio1 {
+	eth_phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
index e51b98f5bdce..7228ad4735b5 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
@@ -379,5 +379,57 @@ uart16: serial@40880000 {
 			clocks = <&clk UART16_GATE>;
 			status = "disabled";
 		};
+
+		gmac0: ethernet@40120000 {
+			compatible = "nuvoton,ma35d1-dwmac", "snps,dwmac-3.70a";
+			reg = <0x0 0x40120000 0x0 0x10000>;
+			interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+			clocks = <&clk EMAC0_GATE>, <&clk EPLL_DIV8>;
+			clock-names = "stmmaceth", "ptp_ref";
+
+			nuvoton,sys = <&sys 0>;
+			resets = <&sys MA35D1_RESET_GMAC0>;
+			reset-names = "stmmaceth";
+			snps,multicast-filter-bins = <0>;
+			snps,perfect-filter-entries = <8>;
+			rx-fifo-depth = <4096>;
+			tx-fifo-depth = <2048>;
+
+			phy-mode = "rgmii-id";
+			status = "disabled";
+
+			mdio0: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
+		gmac1: ethernet@40130000 {
+			compatible = "nuvoton,ma35d1-dwmac", "snps,dwmac-3.70a";
+			reg = <0x0 0x40130000 0x0 0x10000>;
+			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+			clocks = <&clk EMAC1_GATE>, <&clk EPLL_DIV8>;
+			clock-names = "stmmaceth", "ptp_ref";
+
+			nuvoton,sys = <&sys 1>;
+			resets = <&sys MA35D1_RESET_GMAC1>;
+			reset-names = "stmmaceth";
+			snps,multicast-filter-bins = <0>;
+			snps,perfect-filter-entries = <8>;
+			rx-fifo-depth = <4096>;
+			tx-fifo-depth = <2048>;
+
+			phy-mode = "rgmii-id";
+			status = "disabled";
+
+			mdio1: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
 	};
 };
-- 
2.43.0


