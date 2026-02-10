Return-Path: <devicetree+bounces-264231-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oG5uLW3BimkeNgAAu9opvQ
	(envelope-from <devicetree+bounces-264231-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 06:26:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1572B11715E
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 06:26:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF64C3057E82
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 05:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8F6232B9AD;
	Tue, 10 Feb 2026 05:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NQgHZMcG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E0A32B9BE
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 05:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770700967; cv=none; b=dUiu6nYcid2fC6KehkhtLtLl6+hnzDO3jhkNWoafE1H9o4Oubwf3PE4jh9DB+3RoClObeGrJkzOfGbzYzN4Ne0JpFPbn5LmV05saV3J89e8nlq+1T0DzF0XfwQkMOVKw4RVSll/KaMyZIAHuA9geVz7jqiGajLhH4AfItVuBdMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770700967; c=relaxed/simple;
	bh=eukNjIBihqnDwPVnfCgWbR1V8gBGtpQkVjwyh2mO1Xs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bsKagMGhRjgGp1BWx/xsxPyAUvjc/oMhuBiMsCUuG8RxGvkICVJaDxnTA/eIBINcokNbOkNU1gM6YNU1I+3fR/ehtkUOpgiw7AXStYV6a+i87OV1bEl5YWxSn2G8Krjfw0ioDRJGHM2QaSHOQJEJTSeDuheiPJFbd5LukO0SkBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NQgHZMcG; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a7a23f5915so34259855ad.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 21:22:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770700966; x=1771305766; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HvbJo4sg+keqA0UYOTwphLAy1mW7zcwD5w4Qm8DSQTA=;
        b=NQgHZMcGOUh2PUVEZ8tkXVhn50W0uZ/CI6rEKmijPDTbcOmrdk5lU6+R2brn1SJYQW
         9sMTkOz+nRHhaCbEzB8YbtRl1yxeQTe5ip90XNY7kjTjUzxgxVe140X9G2EgTdBj/IQy
         qm0t+TmdcZ6VmvevC/+RfI3qZbvQUqLPRDRCT7+qMnItemjkOouQjHy87rD2k+EUtP7h
         63xK05WgSafNSMFFGWM2e/+siMUs3jplnvJAMtX0e7AdXyCgYDlRTjWlKDrwyP1VZSOA
         7WG4/upAcM5y75BPqGtbkpRzO3Hnw0aRk271zwLhkUGRAf39b83NQI+EHHNtnT8mziG9
         GErA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770700966; x=1771305766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HvbJo4sg+keqA0UYOTwphLAy1mW7zcwD5w4Qm8DSQTA=;
        b=uSwns+ax9VV360dRWthD/uDgDoECtolObgWyl53JPiIfbIB9S+ylZmOenVxBbmYQLb
         4re6nmQS86P5OiwHdTpXS+t4BxPWHVnCjRBihqyA+fdPja5xCeSC09xwEcDPqz12XDgU
         RKuJidt+rsf2DS8CHMcE9h/kG/4SNHmtaDJmczbVzqeKf4ONP2LTOhgAoKEDhIdf9NzF
         G88Ua53yjj+3FRRyI8f0nf5HziRa6Z72H5DxEYrfocN4/ZGfXk1ju1FNXp0s+xEbKg/I
         v3RXNdqbjUuU4GkEX1UnTOpZ2eISkuvmIHncIrGUuPGM0FNc+LS/Z8yUi6zVOzPaActB
         gbdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkP+MZjhOoXT4lE6wf/KIgqsiKjHc8ZX7ptJAseb7pBxAAPwcKlqwO0bavhBHbpOL1bnGoz61II4lz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8+mwSDZnkHyo9aNohzVQhHOzGc5HYzEvSR6Bx24SWbNy/U9NV
	DIGA1L0PrNOyXWi87d/uHsdaNsgemnkwh6gqDylSfX82TZGOwcIV6LQz
X-Gm-Gg: AZuq6aI32BjcaQdPPSBItW8f16KexQGjYvrpN3PJRCI6MFM1AFC2hAfJHm+ZGY3FUbT
	syw7dlRiQClz7FQBQeo8RJObj22AEE5AWRxTDvQGFcO2Z1kJ7b2aA29NN2abQYHRHa4y862UJwo
	KB6/1jaOkSFSgxl4LjjaIJ0/4GA7vQDKKMawzpmrWMhy6dlSKBD+5cb3eEtENDmMFnSHqhpJp+4
	m2m6Fe+3GWc2Du6s+eObhI6D+j23bTddnS5044wbHI3L2N2j1mz502gapEOjBeGDBdlqBfYbl1E
	LQ1aG0XI3cWmmF5ZJms/go+L88wKeF4oPAVvo6kB0onrhHDy2zKoSNvheubnZLtcezfuJyfl+8Y
	Y4f01toY6fxfSu3IJl4QAzQzqUVLxGTGDZ3lKxZLUMfGsLqERnqqtIfEFcffDeqzu1ChNC94ofX
	i2mGeTR15lEqVgoRnP/+ZwY+5wpR9/2E/F5TmJo535Ig0WigAWWshsy5pT8GrILFVymOSMjVi4k
	YJnsRN16ris
X-Received: by 2002:a17:902:db08:b0:2a7:d42f:7065 with SMTP id d9443c01a7336-2a9521689bbmr159080225ad.27.1770700965772;
        Mon, 09 Feb 2026 21:22:45 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a951ca59f4sm122114275ad.43.2026.02.09.21.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 21:22:45 -0800 (PST)
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
Subject: [PATCH net-next v12 2/3] arm64: dts: nuvoton: Add Ethernet nodes
Date: Tue, 10 Feb 2026 13:22:25 +0800
Message-ID: <20260210052226.3005666-3-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260210052226.3005666-1-a0987203069@gmail.com>
References: <20260210052226.3005666-1-a0987203069@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
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
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[foss.st.com,synopsys.com,nuvoton.com,st.com,lists.infradead.org,vger.kernel.org,lists.ozlabs.org,st-md-mailman.stormreply.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264231-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	DBL_PROHIBIT(0.00)[2.100.85.208:email];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,2.100.46.192:email,2.111.199.128:email]
X-Rspamd-Queue-Id: 1572B11715E
X-Rspamd-Action: no action

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


