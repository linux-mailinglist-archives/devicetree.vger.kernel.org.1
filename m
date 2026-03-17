Return-Path: <devicetree+bounces-276609-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKiqEScquWmVtQEAu9opvQ
	(envelope-from <devicetree+bounces-276609-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:17:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FB22A7B18
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:17:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A523E300A64C
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:16:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E6033A5E9E;
	Tue, 17 Mar 2026 10:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Vpsbvyld"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C3F73A5E6F
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773742597; cv=none; b=WWA0Bw0WZphifXBzZeHu0B1M0IcQBlTRvssjx810P/9e4Q4WFMYuz8jUyH3zoiobLk4ea0v6FD4rAJrZhGapot/orjXEqG7mccI3v4X649Hz0tGDpyAlHuWLxT5Lmj7ysmgHPbmu/P6LKM8o+eYcUaK05bqTAcYOJJglfCxqta8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773742597; c=relaxed/simple;
	bh=+gST9qIDLwx+PAONExhadksgQ6qC+s6Vkq5FGDT091A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bOVDN5kSB5/5eZtEWSCoRhNDXoP9JTQpwPt/2bONEMFWNLEl+XsDa7xTSEJtfGUEafoEt2eHTGsgTIJLswAusv8M20Rxc1o4vsqU63j3lCnd/m5RiMKD25hwFa1ZRqirkvRuC3/o1N0eU+tT3lAPANtszNBkNgQzFFgvj8i9Naw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vpsbvyld; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48532925a4bso28974555e9.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773742594; x=1774347394; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RKn9+CLHPf91JmmIWUA4oTfuxyk7Dg46U3iktOxaSxI=;
        b=Vpsbvyldf4g1KvTNhEI3HRpQ2viZqIRoIxVHQ+MNux2+ZgEshPJBe6fEmGVIEA1MsM
         uBC0UOGerzvYz/6ZQoHrdMz8Gdt4Aq8+KdluYmBC+nNrRcTaTc93TEg3YTn+5cCNRocW
         Hys6B3n8pe7p3mfY7t4h1FTzTEi7qWczmh35aMDR/avizrLv8TDgvSzWpdSLhmXuPRKJ
         CHRzmvKp/ERvAG/QGCtFRcT/ppHxGlcMyg4yTReGx5ZcbCrcPTw9+02kjOkd80VIFcXe
         gcYnLgtHFepr48iEr7aLc+lBMsJoBOEsDwPNypE+4H90FPZCj3ji54epXpaV+H5unV/6
         KoFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773742594; x=1774347394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RKn9+CLHPf91JmmIWUA4oTfuxyk7Dg46U3iktOxaSxI=;
        b=Ggfs9q+3er+sKho+fVCrtH0TB92G1SqjNvR5r2TmvH3M8HEGZfNc7/IllB98YGG6oa
         BO91rvxCg3rjmtQJND0uUDMAwxYkvfeIH+9KX86OcKTEYDSyS3xeKg1PirOSYSqkHiPL
         9Aw1wPW1A4iTlU2iLs+NGNDjDqJLjRwv5P1bdPgzosLe51q8N0BPsspUJMy3G+Lu9Qef
         WJofGnHV8s5xkGHjYq4p1TyVBetFZEfb/I96bqqFAd4akhOege7/pCT5bK7xMHnihWZR
         rQbWhgAgoGMDlMTLjEu5BDQTeflHxJyLESelh2D2Gl+lucq19xQ0Xh4HCYfbPldhZCOq
         tUpA==
X-Forwarded-Encrypted: i=1; AJvYcCVGyqZ15aGxZVz+v2aaa3ygikK0XLJpWXTlWTrVetnXV0fHtiFe6igRstbAoM6vNgCSvCti5PkQCyha@vger.kernel.org
X-Gm-Message-State: AOJu0YxzfO94ouvvAyFXsYksKjIDXFphj8g6R3aizfa3dAhtLIFYkss/
	bmCUzbDlMflvrBcttw/uf4eiJcpkLeRWnpf5idvrA/5OvxFaMXXKM3+p
X-Gm-Gg: ATEYQzzy66xxn8yEtuDJddSjgyoGHSaHMnLEEtFiXpfljIdG8OUSkVZJyRrOqyGk0Hg
	foAEbdDgnDAFwZ7LNxJbNzymrEr6s/6Mhlv5FNViTOeXOQ03VrpVQaHaI/cGW1hsXSSziM2JL8z
	JR2SvmHIBsztblG99JFkkWifWuKKH6NWGj8Ins0HnecgdgK71C1XmSoKxLK84OXRo6V2+tUrscJ
	M59lWjaLuuB2R19TF34qhi+3Kwx/e/UwMMZRJSCVUVtYsS832gRp+LYYbwNp0upKZowEOG8RSGN
	j7QUWKEebnKHmn1LZ0r18zlSwiZDmYwfRncc5emPxJlXZOIwYYSB+yE1SF3TBLxwt7MwbPSElDH
	e82BRKYDH/c5jQTSp8GwhG2Dy1wrPT9Dr0oBUU+8X8cs7mS0xbtxn/H280zcveJcXD0ToVpd+5R
	rX8iMVn9rEkZTWFZP8VLZ428GwhRg1jsY/PEX1WiRRnPgAgpAV
X-Received: by 2002:a05:600c:628c:b0:485:3b34:2f51 with SMTP id 5b1f17b1804b1-485566c9440mr255638035e9.4.1773742593705;
        Tue, 17 Mar 2026 03:16:33 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e16b:fc56:e220:9aa9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856eaee510sm53903275e9.14.2026.03.17.03.16.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 03:16:33 -0700 (PDT)
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
Subject: [PATCH v3 3/8] arm64: dts: renesas: Add reset-names for RZ/G2L and RZ/V2H family SoCs
Date: Tue, 17 Mar 2026 10:16:16 +0000
Message-ID: <20260317101627.174491-4-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317101627.174491-1-biju.das.jz@bp.renesas.com>
References: <20260317101627.174491-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276609-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.180.91.224:email,0.168.77.240:email];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,renesas.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.168.156.16:email,0.158.216.16:email,0.158.255.32:email]
X-Rspamd-Queue-Id: D9FB22A7B18
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add reset-names for RZ/{G2L,G2UL,G3S} and RZ/{V2L,V2H,V2N} SoCs.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change.
v2:
 * New patch
---
 arch/arm64/boot/dts/renesas/r9a07g043.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r9a07g054.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r9a09g047.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi | 1 +
 7 files changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a07g043.dtsi b/arch/arm64/boot/dts/renesas/r9a07g043.dtsi
index 593c66b27ad1..ded4f1f11d60 100644
--- a/arch/arm64/boot/dts/renesas/r9a07g043.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a07g043.dtsi
@@ -604,6 +604,7 @@ pinctrl: pinctrl@11030000 {
 			resets = <&cpg R9A07G043_GPIO_RSTN>,
 				 <&cpg R9A07G043_GPIO_PORT_RESETN>,
 				 <&cpg R9A07G043_GPIO_SPARE_RESETN>;
+			reset-names = "rstn", "port", "spare";
 		};
 
 		dmac: dma-controller@11820000 {
diff --git a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
index 29273da81995..cb0c9550aa03 100644
--- a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
@@ -1017,6 +1017,7 @@ pinctrl: pinctrl@11030000 {
 			resets = <&cpg R9A07G044_GPIO_RSTN>,
 				 <&cpg R9A07G044_GPIO_PORT_RESETN>,
 				 <&cpg R9A07G044_GPIO_SPARE_RESETN>;
+			reset-names = "rstn", "port", "spare";
 		};
 
 		irqc: interrupt-controller@110a0000 {
diff --git a/arch/arm64/boot/dts/renesas/r9a07g054.dtsi b/arch/arm64/boot/dts/renesas/r9a07g054.dtsi
index 0dee48c4f1e4..7a3e5b6a685f 100644
--- a/arch/arm64/boot/dts/renesas/r9a07g054.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a07g054.dtsi
@@ -1025,6 +1025,7 @@ pinctrl: pinctrl@11030000 {
 			resets = <&cpg R9A07G054_GPIO_RSTN>,
 				 <&cpg R9A07G054_GPIO_PORT_RESETN>,
 				 <&cpg R9A07G054_GPIO_SPARE_RESETN>;
+			reset-names = "rstn", "port", "spare";
 		};
 
 		irqc: interrupt-controller@110a0000 {
diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 997e6cf0bb82..3a69bb246bab 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -533,6 +533,7 @@ pinctrl: pinctrl@11030000 {
 			resets = <&cpg R9A08G045_GPIO_RSTN>,
 				 <&cpg R9A08G045_GPIO_PORT_RESETN>,
 				 <&cpg R9A08G045_GPIO_SPARE_RESETN>;
+			reset-names = "rstn", "port", "spare";
 		};
 
 		irqc: interrupt-controller@11050000 {
diff --git a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
index 2eccaa7ed1c5..5499cd969efe 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
@@ -265,6 +265,7 @@ pinctrl: pinctrl@10410000 {
 			interrupt-parent = <&icu>;
 			power-domains = <&cpg>;
 			resets = <&cpg 0xa5>, <&cpg 0xa6>;
+			reset-names = "main", "error";
 		};
 
 		cpg: clock-controller@10420000 {
diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
index 9192c5bf7e59..ab3aeb599137 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
@@ -288,6 +288,7 @@ pinctrl: pinctrl@10410000 {
 			gpio-ranges = <&pinctrl 0 0 96>;
 			power-domains = <&cpg>;
 			resets = <&cpg 0xa5>, <&cpg 0xa6>;
+			reset-names = "main", "error";
 		};
 
 		cpg: clock-controller@10420000 {
diff --git a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
index 9581af58024e..88fc7379b109 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
@@ -270,6 +270,7 @@ pinctrl: pinctrl@10410000 {
 			interrupt-parent = <&icu>;
 			power-domains = <&cpg>;
 			resets = <&cpg 0xa5>, <&cpg 0xa6>;
+			reset-names = "main", "error";
 		};
 
 		cpg: clock-controller@10420000 {
-- 
2.43.0


