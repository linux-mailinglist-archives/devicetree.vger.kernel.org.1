Return-Path: <devicetree+bounces-274699-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FOrNwvmsmktQwAAu9opvQ
	(envelope-from <devicetree+bounces-274699-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:12:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 891D62754FA
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:12:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D06E31D57C2
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E1B53F65E1;
	Thu, 12 Mar 2026 16:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mci+Q/Ew"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A9A3E559F
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 16:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773331473; cv=none; b=ANg1mQ/jDtHQtVE8jm2vRwjFNFTr0T1U5QbKoJubh618hwcEt3AoJtiZH7YN6DU5bPrFTiLrhocivRu7HxCQgOzRej7N2/kORNK9LZkx+xn+DdtnUm6JQgfLUnC6x/xhpu0M7fGN3yQ4ARpw1WHYXHwcnAAc75QRHmOdCCIUClc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773331473; c=relaxed/simple;
	bh=VoZUhiL5qaxG0jIuTsg6YyfJ9YYt8lwlQfs6DEon+ng=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l+N0AuMdVbkSDkOCiPYl8jDpRxrr/18B4JM5ctHc+u7zMBspKtvqiq4m8ySCB5X2zpcONQrFVBFEBoBmLoJNCJJqEHCNUx1fqB3N5yjgyV2FWUSyuZ59MJ+AqMIAQK0ZNcT6ao/axDjqDiPYbut7utZWm7uubjzM8u388zEHXyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mci+Q/Ew; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-439b7a87fb5so972653f8f.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 09:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773331470; x=1773936270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mdaSr2VY8h0OUfieKfnUdEjosKtH4D/f1Ox+ubEwlXY=;
        b=mci+Q/EwJQrugHpQP/SH889VZUcWTyL/E+Qe2Q4gxXL5WcFNXurg6+HJ0k4kFDbfaX
         bO/VyFxpy0iEEVbOjs2aIHtIn1UrfnawdPUnis7OJRMQb6R4veA3Ri838S2Jl+UKzG3o
         sEWAyX+O2A0WkvSmkH6lfy1ODzXY3W0BsUvgq4OK17e+UN1P+mbqlNfVw7+8weesj+xT
         vQ4nO6sAjP/Mfn21OuLnCLJPzOzjqqZdvC4gvu8QROUQuKiYUhDVekl32mGJM90mk3Zx
         FyQGhmCXWR3tra4AW1y/YULXvnwUTyRnBxmP1sLHPfDU0u81DFilMJr34v5aFJcE9kN9
         DM2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773331470; x=1773936270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mdaSr2VY8h0OUfieKfnUdEjosKtH4D/f1Ox+ubEwlXY=;
        b=D8mTtP4OVUtPcKKxebZm36PTrgtQTs/+BVShGJQDiJyXAtLJA5AQEoRe98KLUytvGh
         sPQ+i15KuE/UvzY4mLUzApn1btD6/Y8WaivWLdWofBZ5uLK7bBEAesw+m9iUYne3uMdt
         BVUf+WsNpRfOs+CyjiXYYid2VUD/VduWUqGm3ad+/zvnz77v1G/8wBvdORCrlM8dHnPY
         JCde3fBpWuj0T0zWOWSlw0Ave2+p5FCZu4q0/BXW2i93MvaI81V69DA/0myTOt+bb30U
         t0SyCHBWaqeuofM5hvqpNnh0/kBB30rw1joD4aYvcPfHBNXMRm0wf4RBlZBFgo4ZWeOa
         Zngg==
X-Forwarded-Encrypted: i=1; AJvYcCWkdMNaYdLHYxXBm5FuufzJieKUdGeCwDYSyWACMB58aaTF8nO+hiRppFqRfVJ23EjMqeuWwLQ/RpSc@vger.kernel.org
X-Gm-Message-State: AOJu0YyqUXRONuE6/o0uJkSibZK1wCCV/2oLlyDzGyIPzd96aU+mpDoj
	nSIERtsRuvN68yLPcE1a7q/ZVlkys7ac9rD7NpKRlJdkDsmmwGXTF4R/
X-Gm-Gg: ATEYQzz52Vh+KlmiquW918RaCLIo2qHdH6OS/Q3DWn3O4yA1hwTbBJPvvs8C9Syq12g
	eNrUUCgyh6S0X98VJy2tdRiUB8ozCdUxS2vC1XL5gNPDyect5F12QMjDtx3h3mUQ4eoDxrXF+Et
	ohe9yHKafhH+uuuq8LNKwGBSjgrnXj1OXm0wwwgprOCV+w0oRvp7FjOolM7dyr8e7f6P2skxeSZ
	Q6phlV827aIVPfQm3UkjwjJndbmdQ+1MSamos91TpJeWiv60wCX+5zIsvN4T0jo00+mVcKkqAXJ
	jjCFSw0FCqP3/ET736tf/bli1FL5oAKuFQaZLadLjIFGDpuBRfFfksIIWEKOOfwJK96RA4GKvTd
	ZQppmIiUnLkD6kJihjSB8PWM9tC24pkZdpZ2rGJaPHy3Xq3hDuhTixHebs9uy5UtFMaTQOTYk1J
	MTMqLCAzArSHB7J/swoHzrY6V0QujBPvpZ1DpLBXsmoG9w0hDGqQ6id2ye4DvRQt7ZpihdPYwT4
	7oqHipWlzUbs1B2WonL/q+OkwoPPfCRT7HjosqINUUfqYE=
X-Received: by 2002:a05:600c:6085:b0:485:3d9f:5510 with SMTP id 5b1f17b1804b1-4854b10a1f5mr117508505e9.19.1773331470232;
        Thu, 12 Mar 2026 09:04:30 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:fc52:7d64:32f4:e21e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20b899sm9775528f8f.23.2026.03.12.09.04.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 09:04:29 -0700 (PDT)
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
Subject: [PATCH 1/2] arm64: dts: renesas: r9a09g087m44-rzn2h-evk: Add PHY interrupt support
Date: Thu, 12 Mar 2026 16:04:06 +0000
Message-ID: <20260312160407.3387840-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274699-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 891D62754FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add interrupt support for the GMAC1 and GMAC2 PHYs on the RZ/N2H EVK
board. The PHYs are connected to the ICU via IRQ14 and IRQ15 lines
respectively.

Define RZN2H_IRQxx macros in the SoC DTSI to map the ICU IRQ_NS lines
to their absolute ICU interrupt space offsets.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi     | 18 ++++++++++++++++++
 .../dts/renesas/r9a09g087m44-rzn2h-evk.dts     |  9 +++++++--
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
index 6218cef2fca5..f697e9698ed3 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
@@ -8,6 +8,24 @@
 #include <dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 
+/* The IRQ_NS lines start at offset 16 in the ICU interrupt space */
+#define RZN2H_IRQ0	16
+#define RZN2H_IRQ1	17
+#define RZN2H_IRQ2	18
+#define RZN2H_IRQ3	19
+#define RZN2H_IRQ4	20
+#define RZN2H_IRQ5	21
+#define RZN2H_IRQ6	22
+#define RZN2H_IRQ7	23
+#define RZN2H_IRQ8	24
+#define RZN2H_IRQ9	25
+#define RZN2H_IRQ10	26
+#define RZN2H_IRQ11	27
+#define RZN2H_IRQ12	28
+#define RZN2H_IRQ13	29
+#define RZN2H_IRQ14	30
+#define RZN2H_IRQ15	31
+
 / {
 	compatible = "renesas,r9a09g087";
 	#address-cells = <2>;
diff --git a/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
index 19f0a2c06753..821a74edab50 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
@@ -303,6 +303,7 @@ &i2c1 {
 };
 
 &mdio1_phy {
+	interrupts-extended = <&icu RZN2H_IRQ15 IRQ_TYPE_EDGE_FALLING>;
 	/*
 	 * PHY3 Reset Configuration:
 	 *
@@ -312,6 +313,7 @@ &mdio1_phy {
 };
 
 &mdio2_phy {
+	interrupts-extended = <&icu RZN2H_IRQ14 IRQ_TYPE_EDGE_FALLING>;
 	/*
 	 * PHY2 Reset Configuration:
 	 *
@@ -338,6 +340,7 @@ can1_pins: can1-pins {
 	 * DSW5[6] OFF - connect MDC/MDIO of Ethernet port 2 to GMAC2
 	 * DSW5[7] ON - use pins P29_1-P29_7, P30_0-P30_4, P30_7,
 	 * P31_2, P31_4 and P31_5 are used for Ethernet port 2
+	 * DSW13[7] OFF; DSW13[8] ON - use pin P13_7 for IRQ14
 	 */
 	gmac2_pins: gmac2-pins {
 		pinmux = <RZT2H_PORT_PINMUX(29, 1, 0xf)>, /* ETH2_TXCLK */
@@ -358,7 +361,8 @@ gmac2_pins: gmac2-pins {
 			 <RZT2H_PORT_PINMUX(31, 5, 0xf)>, /* ETH2_COL */
 			 <RZT2H_PORT_PINMUX(30, 5, 0x10)>, /* GMAC2_MDC */
 			 <RZT2H_PORT_PINMUX(30, 6, 0x10)>, /* GMAC2_MDIO */
-			 <RZT2H_PORT_PINMUX(31, 0, 0x2)>; /* ETH2_REFCLK */
+			 <RZT2H_PORT_PINMUX(31, 0, 0x2)>, /* ETH2_REFCLK */
+			 <RZT2H_PORT_PINMUX(13, 7, 0x0)>; /* IRQ14 */
 
 	};
 
@@ -388,7 +392,8 @@ gmac1_pins: gmac1-pins {
 			 <RZT2H_PORT_PINMUX(0, 3, 0xf)>, /* ETH3_COL */
 			 <RZT2H_PORT_PINMUX(26, 1, 0x10)>, /* GMAC1_MDC */
 			 <RZT2H_PORT_PINMUX(26, 2, 0x10)>, /* GMAC1_MDIO */
-			 <RZT2H_PORT_PINMUX(34, 6, 0x2)>; /* ETH3_REFCLK */
+			 <RZT2H_PORT_PINMUX(34, 6, 0x2)>, /* ETH3_REFCLK */
+			 <RZT2H_PORT_PINMUX(17, 3, 0x0)>; /* IRQ15 */
 	};
 
 	/*
-- 
2.53.0


