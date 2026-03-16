Return-Path: <devicetree+bounces-275954-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCMnLkmlt2lTTwEAu9opvQ
	(envelope-from <devicetree+bounces-275954-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:38:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6A8295394
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:38:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84CDD300D968
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:37:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6357F34C155;
	Mon, 16 Mar 2026 06:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AnnBqBOr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2758334BA57
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 06:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773643073; cv=none; b=QtOj4vQ7bjAdyj2KuPuEcUUG22KGcQeYCV972OQ/gUK13a0G/M2dRXMu29rYa4i/C19sD4v+MXQYrAS2/rYVoQRE4Fgyi7FHchtZwmNn3SvzujFyeAoOlLjlas4gRTFXpKxiAk9HK8dkUQZp1Dv+unBTE2hKd2sO64HJEHO1yYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773643073; c=relaxed/simple;
	bh=qDsHhbPxIT+Q9J1MamUtKdqYgi9yLUueJwoFGd2tGSA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HWmKcCrgnMf0hBAJXWsynecIOMy7eV7g9WpvwmWW+7Lem3Nh1p/jXAuLuVrASt2pFlhMwAah1+gsM7a+/C7B+Tl/Q7/2PMRQkv8n6iNjRWnJqxlVFKqOxd21CLBiNxkQnE0hGc2lQld9EzTkL1U8gtyw0/C/ueJqqT6edigV7nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AnnBqBOr; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2b04075d1e5so7625565ad.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 23:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773643071; x=1774247871; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v5k8sNwUCtuNl5KQTKE9dvLLTtEJ1hjFmuOQqcpUNe8=;
        b=AnnBqBOrcsaI86oX7kuFoK2BCV0eaFjIqwkgEWaHDkUFBcxcqMILcL4lkHiYG8OCGg
         +SE/QIVfP5UhHBNddyw/0jDnMHpNIHVw1sFylEYVjfLC/zhrxqlWlB6dMg7q5UbKAEEj
         Uiiw2ceziW9GMsG7o/eDCPKntit+YbVeK3RCVhuPYVoDBfurdE1PoDIMtUJdvwtptXeW
         FBUKz7SPOEsrXL60aKrMAsSPkv4lgrH9qgX0Fu0jpSqIf+pWcCtKzpcwe4T1dXXlQyRz
         7iRkOOUYPm1dztreRCmZjBMU4U/WM5NA4hHZNAKUMk0EQYXabAH8UuqAxrgmqhR562GT
         oUCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773643071; x=1774247871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=v5k8sNwUCtuNl5KQTKE9dvLLTtEJ1hjFmuOQqcpUNe8=;
        b=W7Aifw7MdV4PktCGh5TYjJIEOSs3n2dzYcZorm4Miawxg/dlesHLWtfFCLubF0HTKV
         03hPFj8xtbDSv6TpjLad9bxqO7ppGtziwJ5EcUUnGEQFLqGAgMDlaVudQnaLXTGHB6Ku
         TnW+8lvFUoMelBuku15zaFwRBcVMDeN++1yncAIh3inhrc1py/FD3DN6+zEH7e0+dmQ+
         M9LTchBRqz/87UTBk7/cAG/JszLTyBd5HE7WR5uajNEBi0Hjs3o87V3lYXjenBPHDzT1
         OamDuY2/bvoI/ZGJ/BFk88MU8Frf/w74XepA3lSQkoQMuJ51S2ncF3dEXH4VohDyua9f
         3oVA==
X-Forwarded-Encrypted: i=1; AJvYcCXRqc5b6VJq6WwW0vSFTkAUo6A/gEHomg2MKzYVBGSlWQZ0J8s0fpAIXmFBdo5ryUz/1RBYsIFrYT3x@vger.kernel.org
X-Gm-Message-State: AOJu0YxYsrC0TmgGUlN+nXhLbsPglzVufq1b9Q89Dk5MEojbLcIM2p4i
	5FHBWjVruvYyFJaL1D1JNwsHXguBM5IWB5UVZtJfg3WpdraOcEO8whyGIL8DOQ==
X-Gm-Gg: ATEYQzxoNyA+UF/pjMy9DRRNHMa8rtWDieGqKRHpsuOdNZpJNUdIotk5NbW7dC/uQvv
	LX+Sr9dFkvq+wfqqXzBdXS6dhsyRYwbgwzRBIxoNgUTpcsLha6txzsYipa/Nq0QpY/ONSaZWh1A
	NKwKBtmqJrn5cofGzqmJsNqKXf/23DGIB7lTm9KEu/veKchO1FzZpLTHJ88MqcCyiYotSVKId6j
	jSD+0kctWCjVM1K5XTHOlVaQDqRYrts3mWkYPiDinlhuPw9oUlm91a4URdVYF4QMXyRluc+zQ6J
	+66u9m8FEkia6QSKQP3EhaDsRT1wWpYCb+/ZBw7AOFy97TPkBeKV4+/VkvXAUoZEsXpZIKoQRQQ
	q4e6VDOWtWEeg7UELCj6NbQCDlwp42SsnmxmsHah8rqm+r+A2wnY3ALc3hijsyPFol7At0DPydq
	RoVOkx1+Sg++cwiEky5YUdQcbaj+Se2uwJZl/NTtqhbpbpcyDq2yB+3d6xXr5oxpoZUug6keeJP
	PiO55RsfQ==
X-Received: by 2002:a17:903:2b06:b0:2ae:c001:834b with SMTP id d9443c01a7336-2aecac3e7bdmr118041445ad.39.1773643071442;
        Sun, 15 Mar 2026 23:37:51 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece56cdf4sm122845295ad.8.2026.03.15.23.37.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 23:37:51 -0700 (PDT)
From: Zi-Yu Chen <zychennvt@gmail.com>
To: andi.shyti@kernel.org,
	ychuang3@nuvoton.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	zychennvt@gmail.com
Subject: [PATCH v2 3/3] arm64: dts: nuvoton: Add I2C nodes for MA35D1 SoC
Date: Mon, 16 Mar 2026 06:37:26 +0000
Message-Id: <20260316063726.41048-4-zychennvt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260316063726.41048-1-zychennvt@gmail.com>
References: <20260316063726.41048-1-zychennvt@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-275954-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[zychennvt@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[2.111.82.80:email,2.111.199.128:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,2.110.182.16:email,2.110.221.32:email,2.111.43.64:email,2.111.4.48:email]
X-Rspamd-Queue-Id: 1C6A8295394
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add I2C controller nodes to the MA35D1 SoC dtsi.
Also enable the I2C interfaces on the MA35D1 SOM board
to allow communication with onboard peripherals.

Signed-off-by: Zi-Yu Chen <zychennvt@gmail.com>
---
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      | 18 +++++-
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       | 60 +++++++++++++++++++
 2 files changed, 77 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
index f6f20a17e501..4dfb5340a139 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
@@ -13,6 +13,7 @@ / {
 	compatible = "nuvoton,ma35d1-som", "nuvoton,ma35d1";
 
 	aliases {
+		i2c0 = &i2c2;
 		serial0 = &uart0;
 		serial11 = &uart11;
 		serial12 = &uart12;
@@ -55,6 +56,12 @@ &clk {
 			   "integer";
 };
 
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+};
+
 &pinctrl {
 	uart-grp {
 		pinctrl_uart0: uart0-pins {
@@ -98,6 +105,15 @@ pinctrl_uart16: uart16-pins {
 			power-source = <1>;
 		};
 	};
+	
+	i2c-grp {
+		pinctrl_i2c1: i2c1-pins {
+			nuvoton,pins = <1 10 12>,
+				       <1 11 12>;
+			bias-disable;
+		};
+
+	};
 };
 
 &uart0 {
@@ -128,4 +144,4 @@ &uart16 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart16>;
 	status = "okay";
-};
+};
\ No newline at end of file
diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
index e51b98f5bdce..a88d1c2938e7 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
@@ -372,6 +372,66 @@ uart15: serial@407f0000 {
 			status = "disabled";
 		};
 
+		i2c1: i2c@40810000 {
+			compatible = "nuvoton,ma35d1-i2c";
+			reg = <0x0 0x40810000 0x0 0x1000>;
+			interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk I2C1_GATE>;
+			clock-frequency = <100000>;
+			resets = <&sys MA35D1_RESET_I2C1>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c2: i2c@40820000 {
+			compatible = "nuvoton,ma35d1-i2c";
+			reg = <0x0 0x40820000 0x0 0x1000>;
+			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk I2C2_GATE>;
+			clock-frequency = <100000>;
+			resets = <&sys MA35D1_RESET_I2C2>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c3: i2c@40830000 {
+			compatible = "nuvoton,ma35d1-i2c";
+			reg = <0x0 0x40830000 0x0 0x1000>;
+			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk I2C3_GATE>;
+			clock-frequency = <100000>;
+			resets = <&sys MA35D1_RESET_I2C3>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c4: i2c@40840000 {
+			compatible = "nuvoton,ma35d1-i2c";
+			reg = <0x0 0x40840000 0x0 0x1000>;
+			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk I2C4_GATE>;
+			clock-frequency = <100000>;
+			resets = <&sys MA35D1_RESET_I2C4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c5: i2c@40850000 {
+			compatible = "nuvoton,ma35d1-i2c";
+			reg = <0x0 0x40850000 0x0 0x1000>;
+			interrupts = <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk I2C5_GATE>;
+			clock-frequency = <100000>;
+			resets = <&sys MA35D1_RESET_I2C5>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		uart16: serial@40880000 {
 			compatible = "nuvoton,ma35d1-uart";
 			reg = <0x0 0x40880000 0x0 0x100>;
-- 
2.34.1


