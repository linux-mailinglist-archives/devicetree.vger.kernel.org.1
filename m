Return-Path: <devicetree+bounces-274700-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAAxFbPmsmktQwAAu9opvQ
	(envelope-from <devicetree+bounces-274700-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:15:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E42275645
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:15:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DA1FB301F6AB
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:04:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 327AF3F65EF;
	Thu, 12 Mar 2026 16:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R2mOqz5+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99203E4C82
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 16:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773331474; cv=none; b=FiwE9oQ28iB0s3jrSe0zzcdSDu2JKU/8/XDW68eJfRuHSFkSJTlYSNmift2yWaEJ+MOlxQ0R5VqwCkJWm4GA8UNJbR5+7dUH1qHtHDeUA9TWxIBt3IFYLbCJBFD6uCDi+T5mTgJ/f4PtdFJBEmlakLtXmqUGw9b04mssvHGkLz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773331474; c=relaxed/simple;
	bh=TmbMyDWohNFBQJGgdtfkdS1sq/sYQH/G4n16Ow+QF0A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VPs39hK9+tcyQnbb8vYiZxdVIBN10BEzDAFcIoBYlykakV0oShy2UqaLcMPk/3CQRqHG5l+jkqTB2TdkbvAy+2OSmGaa2HQtThdgFRiFtvXYsm5koeM896/h8Z94QRFnx6UMLUIoC67GfJ1kG91fBdbqe9S1MAfSWdo5hcfABIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R2mOqz5+; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-4327790c4e9so943346f8f.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 09:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773331471; x=1773936271; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DL07YIOOK8hOw0a10uZ2IzLFMJq7qVGtBYBdc7awMFw=;
        b=R2mOqz5+xfYhr9coE8Ln+bhH9hZyhv+RHlRyRUmdH+YfR1mGgQf/LeKlwbBbFw6iOM
         IzICJb4k1ys/a9ivdKz5S2RzQZrR8i1/OVDFhSWoj4jIhPtMddUMCDLEsJWw7fWmA+nr
         BWho48f0x8jvS+XOnp+nmaTYekGYfOMBvZb4UbIXUtykYTGBUX8dDbKjNOhsEdMDOiF9
         SC3hEK5AVN44UNTaSarjf62F6czBSq69QPww/ortcg+h81Tjo0w3ot60yMXs4m7YYVpo
         gwxs23DTbZ10a6rP5BDG5hvOiRjkfFyO13sbTMXykdj0GjyHU3HT73cm9xEtaaePBLGx
         1d7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773331471; x=1773936271;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DL07YIOOK8hOw0a10uZ2IzLFMJq7qVGtBYBdc7awMFw=;
        b=nMXyTpj0RUQ9FHMvwVmwWHep5dokJKyRb6yy7aYV5+5Y49WWtc17w9xMjyx45PR/N/
         Zfek9YsKefojC5Uyn2o8jr3zaHlBatytwkwiEX9FiERHlSeCeAbNzXzR06AhMnE+kOwB
         GqxdpEQjDEoLSsAnjqoy5al15s/jn6fgb8sgz4E9dn8UD7lE6mGaMW8Ug/VkeTjxqSsy
         j4SksF/comUNr/Vz4y2fq7cuVge9Zl7KZFiPe/lW3n3161TdltwVURtzal1ivzN9bblm
         GH9TeMJYqO0CPzoOZdgcmyX2wcCCqkLAljxcYjMmMSF0f4zUGW8Eb75eCgPpB1761fIP
         38rw==
X-Forwarded-Encrypted: i=1; AJvYcCWOf5tMVS6VJAY4LnwRkbJnf4fdFBTBM9ZU8NqaSLrhdduhaptD6frEu75LYc8QcCPyJRZsEWMcZ7lC@vger.kernel.org
X-Gm-Message-State: AOJu0YxXoaaKLWx0AS/JtpVLcK6fLEm/cTUky2eXZcFpJJjmHZsUy5Z3
	oW6ECK79E2aPCe39pQxzA3p290qkMW/y1LhCy0hTu13RaGBabMIaa00n
X-Gm-Gg: ATEYQzwd9gGo91+8i+KyIwvhMagCnR8actviHbN6BntKm0AvV/ARMeTotYJ2KiXJxkW
	b4OWy6nzyAyjIvrAxV45u67VecaPX9iT/yu6lmPimyHlalHRGtsO5K771KIyTDs5oRmGl81L2Mf
	bEE+QA40l08Oy1yDkBQEBaU3VIfaTiU9bjdAcfnEPe1kFQImuc8e8Mc+UNMv52NLPzVkexPMvyM
	9Cj4QAXRHUxiu3H5I9qKjCq/ijfyDmidNtru1KTIxeT532cTUj7p9mm/LRFTumvMYREz0kOEwqe
	a2EKvc04lZwZXAyBOEp7ZVArR2Cj3fHIQLw6gezQvAAiO1B5G0yhgd4pJxQN6aU+8ymhZPc4kbg
	P5ZOd+Q/ZCRfKPhETZueRADToqgMBFxThFgSeJVjvG6gM4Ju9WXLDUG6iO7E4SAK/LgJcgLQXWh
	8+BuznrIY5A6AQRJ6JpeT7y/hDcmgfvzFcgyUWrydnu7bU7yBLRwdNBnA66Yhn8AOfr8h63/vWj
	HFi2lmK684ZLzQvXVqOq8I78BrQD9r/mnQqI6q9sN8SSRw=
X-Received: by 2002:a05:6000:40ce:b0:439:b2d9:cf35 with SMTP id ffacd0b85a97d-43a04d865b7mr409728f8f.8.1773331470877;
        Thu, 12 Mar 2026 09:04:30 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:fc52:7d64:32f4:e21e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20b899sm9775528f8f.23.2026.03.12.09.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 09:04:30 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 2/2] arm64: dts: renesas: r9a09g077m44-rzt2h-evk: Add PHY interrupt support
Date: Thu, 12 Mar 2026 16:04:07 +0000
Message-ID: <20260312160407.3387840-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260312160407.3387840-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260312160407.3387840-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274700-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 61E42275645
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add interrupt support for the GMAC1 and GMAC2 PHYs on the RZ/T2H EVK
board. The PHYs are connected to the ICU via IRQ3 and IRQ13 lines
respectively.

Define RZT2H_IRQxx macros in the SoC DTSI to map the ICU IRQ_NS lines
to their absolute ICU interrupt space offsets.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g077.dtsi     | 18 ++++++++++++++++++
 .../dts/renesas/r9a09g077m44-rzt2h-evk.dts     |  8 ++++++--
 2 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
index 81f6a36e6e72..3761551c9647 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
@@ -8,6 +8,24 @@
 #include <dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 
+/* The IRQ_NS lines start at offset 16 in the ICU interrupt space */
+#define RZT2H_IRQ0	16
+#define RZT2H_IRQ1	17
+#define RZT2H_IRQ2	18
+#define RZT2H_IRQ3	19
+#define RZT2H_IRQ4	20
+#define RZT2H_IRQ5	21
+#define RZT2H_IRQ6	22
+#define RZT2H_IRQ7	23
+#define RZT2H_IRQ8	24
+#define RZT2H_IRQ9	25
+#define RZT2H_IRQ10	26
+#define RZT2H_IRQ11	27
+#define RZT2H_IRQ12	28
+#define RZT2H_IRQ13	29
+#define RZT2H_IRQ14	30
+#define RZT2H_IRQ15	31
+
 / {
 	compatible = "renesas,r9a09g077";
 	#address-cells = <2>;
diff --git a/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
index e9639bbb2d70..9d9ad9261781 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
@@ -224,10 +224,12 @@ &i2c1 {
 };
 
 &mdio1_phy {
+	interrupts-extended = <&icu RZT2H_IRQ3 IRQ_TYPE_EDGE_FALLING>;
 	reset-gpios = <&pinctrl RZT2H_GPIO(32, 3) GPIO_ACTIVE_LOW>;
 };
 
 &mdio2_phy {
+	interrupts-extended = <&icu RZT2H_IRQ13 IRQ_TYPE_EDGE_FALLING>;
 	/*
 	 * PHY2 Reset Configuration:
 	 *
@@ -274,7 +276,8 @@ gmac2_pins: gmac2-pins {
 			 <RZT2H_PORT_PINMUX(31, 5, 0xf)>, /* ETH2_COL */
 			 <RZT2H_PORT_PINMUX(30, 5, 0x10)>, /* GMAC2_MDC */
 			 <RZT2H_PORT_PINMUX(30, 6, 0x10)>, /* GMAC2_MDIO */
-			 <RZT2H_PORT_PINMUX(31, 0, 0x2)>; /* ETH2_REFCLK */
+			 <RZT2H_PORT_PINMUX(31, 0, 0x2)>, /* ETH2_REFCLK */
+			 <RZT2H_PORT_PINMUX(31, 1, 0x0)>; /* IRQ13 */
 	};
 
 	/*
@@ -302,7 +305,8 @@ gmac1_pins: gmac1-pins {
 			 <RZT2H_PORT_PINMUX(35, 2, 0xf)>, /* ETH3_COL */
 			 <RZT2H_PORT_PINMUX(26, 1, 0x10)>, /* GMAC1_MDC */
 			 <RZT2H_PORT_PINMUX(26, 2, 0x10)>, /* GMAC1_MDIO */
-			 <RZT2H_PORT_PINMUX(34, 6, 0x2)>; /* ETH3_REFCLK */
+			 <RZT2H_PORT_PINMUX(34, 6, 0x2)>, /* ETH3_REFCLK */
+			 <RZT2H_PORT_PINMUX(27, 2, 0x0)>; /* IRQ3 */
 	};
 
 	/*
-- 
2.53.0


