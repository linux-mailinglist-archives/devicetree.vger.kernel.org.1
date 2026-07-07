Return-Path: <devicetree+bounces-321900-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yhaUCi3NTGrQpwEAu9opvQ
	(envelope-from <devicetree+bounces-321900-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:55:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF0E71A015
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:55:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ew.tq-group.com header.s=default2602 header.b=jhIqfXOn;
	dmarc=pass (policy=quarantine) header.from=ew.tq-group.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321900-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-321900-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 36B0730A83CD
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 09:51:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CD743DB964;
	Tue,  7 Jul 2026 09:51:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED96B3D8121;
	Tue,  7 Jul 2026 09:51:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783417865; cv=none; b=VqnfTeIW2PR5RUdA4SR12nUc75pyEmCZrTGulkbYVswgIBPM2ucGTITNQRvrwz+m+daS8G4gS9+zr5c6oJqHzV1dDsTpCkuJ5LBRRxhlg0E2PvPfWvElaYl4iqZAtpWB7aWxzAJfE/3S0xqImdcpQw97/GoVcPdgIwqYmmo4u70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783417865; c=relaxed/simple;
	bh=uvUSE3ELvuuP1bg636/bu0X6rDBec9822tl9+PXT7dE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JnlN0Cha7ooO7XeQYu6Z/kJ1xQva9UJFL1qUlJDtSfn5UVatMcWQVPwYKpDdJ8hxzlq893gsDJA6iNOn2i1KrwRsUA/nK5yye3XLPfKqLcStc2vEPOm+1yM755zq+Q/qJKTx4kZ4ZyopERUx1By73WZwRHm2qkMMO5BNwBrkK5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=jhIqfXOn; arc=none smtp.client-ip=188.40.3.216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=Lh9yzmm47jQRqeSTpuwljg2cNNdryTAreJDOVz1dgpE=; b=jhIqfXOnaxLo8rFdr1uyiuIPWP
	M/Aw+jMcJo2hN5ky8rMpkhSjninAGbEt1PPm5ow7qCRpcQAxf6mI+PmTl92YT2lsphjspybU10Afx
	t+EmI3e3Qo+LwGfN9T0dL/lL8RWNaZ2ftvB0RJvVZSEFWRaSuxDIBu/fBYvilDYYbOB5rKgaPu+5B
	k00OxRE+lNjOMGBpbKR7wYynqlzt869atn3n9mJwePvDD27ZMX7aU2B+srrSGVKlqtnqxbyL+afkB
	n2OlKZG1kpLVMeFIX0RlXQfRBhWgA+cCJLPx6SrVfpah73VA8gZ7n+il9szWLoTep0pRG4zn8pm1v
	ZKeVIwow==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wh2SE-000PWU-0u;
	Tue, 07 Jul 2026 11:51:02 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy05.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wh2SD-000Ck1-25;
	Tue, 07 Jul 2026 11:51:02 +0200
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Nora Schiffer <nora.schiffer@ew.tq-group.com>,
	linux@ew.tq-group.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/8] arm64: dts: fsl-lx2160a-tqmlx2160a-mbls2160a: add various GPIO hogs
Date: Tue,  7 Jul 2026 11:50:51 +0200
Message-ID: <20260707095057.1745867-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260707095057.1745867-1-alexander.stein@ew.tq-group.com>
References: <20260707095057.1745867-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/28053/Tue Jul  7 08:24:37 2026)
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321900-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:alexander.stein@ew.tq-group.com,m:nora.schiffer@ew.tq-group.com,m:linux@ew.tq-group.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ew.tq-group.com:from_mime,ew.tq-group.com:dkim,ew.tq-group.com:mid,tq-group.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CEF0E71A015

From: Nora Schiffer <nora.schiffer@ew.tq-group.com>

Add GPIO hogs for various signals:

- Reset signals not assiciated with a device described in the Device
  Tree (SATA, PCIe, ...)
- Inputs that must never be driven to avoid hardware damage

Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../fsl-lx2160a-tqmlx2160a-mblx2160a.dts      | 259 ++++++++++++++++++
 1 file changed, 259 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts
index a79290401551e..431e4ed2a8b86 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts
@@ -187,6 +187,118 @@ gpioex3: gpio@20 {
 		#gpio-cells = <2>;
 		gpio-controller;
 		vcc-supply = <&reg_vcc3v3>;
+
+		line0-hog {
+			gpio-hog;
+			gpios = <0 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "NOR_SWAP#";
+		};
+
+		line1-hog {
+			gpio-hog;
+			gpios = <1 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "BOOT_SRC2";
+		};
+
+		line2-hog {
+			gpio-hog;
+			gpios = <2 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "BOOT_SRC1";
+		};
+
+		line3-hog {
+			gpio-hog;
+			gpios = <3 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "BOOT_SRC0";
+		};
+
+		line4-hog {
+			gpio-hog;
+			gpios = <4 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "EMMC_SEL1";
+		};
+
+		line5-hog {
+			gpio-hog;
+			gpios = <5 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "EMMC_SEL0";
+		};
+
+		line6-hog {
+			gpio-hog;
+			gpios = <6 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "SD2_4_MUX_SEL";
+		};
+
+		line7-hog {
+			gpio-hog;
+			gpios = <7 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "SD2_3_MUX_SEL";
+		};
+
+		line8-hog {
+			gpio-hog;
+			gpios = <8 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "SD2_2_MUX_SEL";
+		};
+
+		line9-hog {
+			gpio-hog;
+			gpios = <9 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "SD1_MUX_SEL";
+		};
+
+		line10-hog {
+			gpio-hog;
+			gpios = <10 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "ENABLE_FAN";
+		};
+
+		line11-hog {
+			gpio-hog;
+			gpios = <11 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "SD3_MUX_SEL";
+		};
+
+		line12-hog {
+			gpio-hog;
+			gpios = <12 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "SD2_7_MUX_SEL";
+		};
+
+		line13-hog {
+			gpio-hog;
+			gpios = <13 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "SD2_6_MUX_SEL";
+		};
+
+		line14-hog {
+			gpio-hog;
+			gpios = <14 GPIO_ACTIVE_HIGH>;
+			input;
+			/* Reserved */
+		};
+
+		line15-hog {
+			gpio-hog;
+			gpios = <15 GPIO_ACTIVE_HIGH>;
+			input;
+			line-name = "EC2_SEL";
+		};
 	};
 };
 
@@ -223,6 +335,83 @@ gpioex0: gpio@20 {
 				#gpio-cells = <2>;
 				gpio-controller;
 				vcc-supply = <&reg_vcc3v3>;
+
+				line2-hog {
+					gpio-hog;
+					gpios = <2 GPIO_ACTIVE_HIGH>;
+					input;
+					line-name = "QSFP_MODPRS#";
+				};
+
+				line3-hog {
+					gpio-hog;
+					gpios = <3 GPIO_ACTIVE_HIGH>;
+					input;
+					line-name = "QSFP_INT#";
+				};
+
+				line5-hog {
+					gpio-hog;
+					gpios = <5 GPIO_ACTIVE_HIGH>;
+					input;
+					line-name = "IRQ_RETIMER_1#";
+				};
+
+				line6-hog {
+					gpio-hog;
+					gpios = <6 GPIO_ACTIVE_HIGH>;
+					input;
+					line-name = "IRQ_RETIMER_2#";
+				};
+
+				line7-hog {
+					gpio-hog;
+					gpios = <7 GPIO_ACTIVE_HIGH>;
+					input;
+					line-name = "MPCIE_1_WAKE#";
+				};
+
+				line8-hog {
+					gpio-hog;
+					gpios = <8 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "MPCIE_1_DISABLE#";
+				};
+
+				line9-hog {
+					gpio-hog;
+					gpios = <9 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "MPCIE_1_RESET#";
+				};
+
+				line10-hog {
+					gpio-hog;
+					gpios = <10 GPIO_ACTIVE_HIGH>;
+					input;
+					line-name = "MPCIE_2_WAKE#";
+				};
+
+				line11-hog {
+					gpio-hog;
+					gpios = <11 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "MPCIE_2_DISABLE#";
+				};
+
+				line12-hog {
+					gpio-hog;
+					gpios = <12 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "MPCIE_2_RESET#";
+				};
+
+				line15-hog {
+					gpio-hog;
+					gpios = <15 GPIO_ACTIVE_HIGH>;
+					input;
+					line-name = "SIM_CARD_DETECT";
+				};
 			};
 
 			gpioex1: gpio@21 {
@@ -231,6 +420,20 @@ gpioex1: gpio@21 {
 				#gpio-cells = <2>;
 				gpio-controller;
 				vcc-supply = <&reg_vcc3v3>;
+
+				line13-hog {
+					gpio-hog;
+					gpios = <13 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "RST_M2_SATA_1#";
+				};
+
+				line14-hog {
+					gpio-hog;
+					gpios = <14 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "RST_M2_SATA_2#";
+				};
 			};
 
 			gpioex2: gpio@22 {
@@ -239,6 +442,62 @@ gpioex2: gpio@22 {
 				#gpio-cells = <2>;
 				gpio-controller;
 				vcc-supply = <&reg_vcc3v3>;
+
+				line8-hog {
+					gpio-hog;
+					gpios = <8 GPIO_ACTIVE_HIGH>;
+					input;
+					line-name = "XFI1_RET_LOSS";
+				};
+
+				line9-hog {
+					gpio-hog;
+					gpios = <9 GPIO_ACTIVE_HIGH>;
+					input;
+					line-name = "XFI2_RET_LOSS";
+				};
+
+				line10-hog {
+					gpio-hog;
+					gpios = <10 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "PCIE_1_PERST#";
+				};
+
+				line11-hog {
+					gpio-hog;
+					gpios = <11 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "PCIE_2_PERST#";
+				};
+
+				line12-hog {
+					gpio-hog;
+					gpios = <12 GPIO_ACTIVE_HIGH>;
+					input;
+					line-name = "PCIE_WAKE#";
+				};
+
+				line13-hog {
+					gpio-hog;
+					gpios = <13 GPIO_ACTIVE_HIGH>;
+					input;
+					line-name = "X8_PRSNT1#";
+				};
+
+				line14-hog {
+					gpio-hog;
+					gpios = <14 GPIO_ACTIVE_HIGH>;
+					input;
+					line-name = "X4_1_PRSNT1#";
+				};
+
+				line15-hog {
+					gpio-hog;
+					gpios = <15 GPIO_ACTIVE_HIGH>;
+					input;
+					line-name = "X4_2_PRSNT1#";
+				};
 			};
 		};
 
-- 
2.54.0


