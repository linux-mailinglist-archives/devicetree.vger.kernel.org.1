Return-Path: <devicetree+bounces-255578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA1AD246EA
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:22:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99E39303894F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22005393DD4;
	Thu, 15 Jan 2026 12:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q6S3rl9N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0BA3933F9
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 12:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768479740; cv=none; b=JssziXgWE2DbJEhehBybi+dlbPApj0XNMuojtYJ2lnS/L4PHlZfErjyUIlNIXjcpXiqwHF93pk7TA6RT153gp9NmJ8b1RlfQUOf1r46j3Iug5skyn4EFaZN1F7L2HxomH2ofhV2qdcFV5RliXC4y8KMTp+Q5VXMjp1RJZMdY2aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768479740; c=relaxed/simple;
	bh=vy4CSU8booKrS42BndlVNBBMRMcmy89VbSVvDYyv2Jg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mfRC9vypVffXxbpNHknNmaXMQFvzsbF9QZZWA306bJCIfIK1Uq1zIW+4g+Co5iT5kFL7Ktp+KZmMtyQHTKX+Mx4usYl9YN0Thtv0a4FMhf0uVZhOg5oiKjyC25/pZFkUcROa/QhDsvdrXIN3XpFO0QS53Xq4gcbfsvMWR7+0rpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q6S3rl9N; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-43277900fb4so868362f8f.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 04:22:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768479737; x=1769084537; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E0imKrbxPxIWsgp9bTODWcq7WlyZpknj6TWfq+JQKdU=;
        b=Q6S3rl9NphNGISddfCupoIcBW+QZftUQ4XGjgrJyQsJY1fXfVS8i4uMjjfWrcpNtC5
         AgvH25WB7b4uJGqS5EdD+TLWe/Obffylh2ypK6dbobqDNzzAGoqaj8huGZFoFgB6l2YF
         VIDSam7QRacTu9gVAGkuPD/TX+CWi3PlO3G8RvxFSLNRi4amZHbmoGwDgYwv3lOC/lx3
         rfnUKlAsUnAdruxELWKMiI0UbJJMJZTmgUd6gZNYTlMI3uOKyN08J4i/k/nkYnLx3eie
         8F8P+l8Lwn4x9EQUHgaVsY71RwTt9jC1lfEz3mCgQbPDVtho2T2GvtpgsStlg0+/bvzv
         vCqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768479737; x=1769084537;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E0imKrbxPxIWsgp9bTODWcq7WlyZpknj6TWfq+JQKdU=;
        b=XlAFYZOgPPi11hr97xHrmyVtbKPbgacbxr2Vg40066qpUuBQq4Dihke532Ftv/Zee7
         IqhOd1O0mzhcEjDWMn4ota76nVpVpQ3cQD6ZZFeHhM8VsvkJ/RC9C4dkIpAtYjf/gn7B
         yAGOAQzulBZy0f7uQKZHEIAYYeJgv6xYleON+ZhrocQk60QDAiHyXzLJryAZSM7eFDpC
         0+6yBINxlzGY4BHFnKY+GXS9H3eacbbDXAvPhWtBsntLpPnEWPODUfEfX8yx9YZ7xkC6
         0bFpKB/Btw5NX1h+BEKPJh6Nz1r4CvHlDMCInJDfACbIwKhlPak79WYFojulpY6JBYkj
         w0kw==
X-Gm-Message-State: AOJu0YzY5mxl0P6WFJwNkpCnPDNzXrqRiQIyqu36u+5v+7yluGa7GDte
	8+FCJgyoKYDtl+yTkFPI1GXkdjVYnnHkWTQu2WaAuIg73OOrijeHUHIv
X-Gm-Gg: AY/fxX5HmiO60MWgX0BpH/7NamnHE8yUKjnBgZ6Q/EyfrpOr1/rMNk0Jzgh6/FKf+wM
	no8IJwhxVvXeW5ZyrRjbnUxEVqGUhNBF200ZeRYsNH+CCazseLERDUCIhNSGR5HWm6qFIxK4eNX
	WiS4oZ+5/RzAHaKYttbAYnsbRXwY/ym/4r2lyJ6AnWNBdo3zX9ylX38/3+3/nS4KFmQ7PfJoIaS
	dkmL4oUVHIhtJuaxYBzDceFtZOOlRLv/kAYHKWRJmLlvs14Sp2b1O1L0Y/U3ZYMYDWGNoE5KQOo
	zccQJb4ncpRPKlHw8Ze0fps446TuqUAzehYfApb5KMSOEIFZL5EO/5j+qg5ccmgzUyrU0LC+KFq
	e32WQKxovqdHZzUGHnuw1HbdEoeHH5FMuJRRYnVrKWJokj2CGpzze1yW7d5ulFhcNnrG0tRsH5R
	KNRaTzwGLjBCWy7JfkaYeULWnR9orupZG7znjShLsh5xq2YKZyZmuk2f7XXH1foOmJQBudg7cnm
	ahATHMkU30+x7IhYS+GDwbC
X-Received: by 2002:a05:6000:4027:b0:429:d3c9:b8af with SMTP id ffacd0b85a97d-434d75b7003mr3247068f8f.25.1768479736351;
        Thu, 15 Jan 2026 04:22:16 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:e531:127c:d5d3:3c41])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af6e1b7bsm5666146f8f.34.2026.01.15.04.22.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 04:22:15 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] arm64: dts: renesas: rzt2h/rzn2h-evk: Reorder ADC nodes
Date: Thu, 15 Jan 2026 12:22:10 +0000
Message-ID: <20260115122210.3971063-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reorder the ADC nodes in the dts/i files so they follow the same
alphabetical ordering used elsewhere in these files.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../dts/renesas/r9a09g077m44-rzt2h-evk.dts    |  55 +++---
 .../dts/renesas/r9a09g087m44-rzn2h-evk.dts    | 127 +++++++-------
 .../dts/renesas/rzt2h-n2h-evk-common.dtsi     | 157 +++++++++---------
 3 files changed, 171 insertions(+), 168 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
index eedea1ce57e6..e9639bbb2d70 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
@@ -171,6 +171,34 @@ led-8 {
 	};
 };
 
+&adc2 {
+	status = "okay";
+
+	channel@0 {
+		reg = <0x0>;
+	};
+
+	channel@1 {
+		reg = <0x1>;
+	};
+
+	channel@2 {
+		reg = <0x2>;
+	};
+
+	channel@3 {
+		reg = <0x3>;
+	};
+
+	channel@4 {
+		reg = <0x4>;
+	};
+
+	channel@5 {
+		reg = <0x5>;
+	};
+};
+
 &canfd {
 	pinctrl-0 = <&can0_pins>;
 	pinctrl-names = "default";
@@ -310,30 +338,3 @@ usb_pins: usb-pins {
 	};
 };
 
-&adc2 {
-	status = "okay";
-
-	channel@0 {
-		reg = <0x0>;
-	};
-
-	channel@1 {
-		reg = <0x1>;
-	};
-
-	channel@2 {
-		reg = <0x2>;
-	};
-
-	channel@3 {
-		reg = <0x3>;
-	};
-
-	channel@4 {
-		reg = <0x4>;
-	};
-
-	channel@5 {
-		reg = <0x5>;
-	};
-};
diff --git a/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
index 5d1da4de8af6..19f0a2c06753 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
@@ -210,6 +210,70 @@ led-11 {
 	};
 };
 
+&adc2 {
+	status = "okay";
+
+	channel@0 {
+		reg = <0x0>;
+	};
+
+	channel@1 {
+		reg = <0x1>;
+	};
+
+	channel@2 {
+		reg = <0x2>;
+	};
+
+	channel@3 {
+		reg = <0x3>;
+	};
+
+	channel@4 {
+		reg = <0x4>;
+	};
+
+	channel@5 {
+		reg = <0x5>;
+	};
+
+	channel@6 {
+		reg = <0x6>;
+	};
+
+	channel@7 {
+		reg = <0x7>;
+	};
+
+	channel@8 {
+		reg = <0x8>;
+	};
+
+	channel@9 {
+		reg = <0x9>;
+	};
+
+	channel@a {
+		reg = <0xa>;
+	};
+
+	channel@b {
+		reg = <0xb>;
+	};
+
+	channel@c {
+		reg = <0xc>;
+	};
+
+	channel@d {
+		reg = <0xd>;
+	};
+
+	channel@e {
+		reg = <0xe>;
+	};
+};
+
 #if CANFD_ENABLE
 &canfd {
 	pinctrl-0 = <&can1_pins>;
@@ -368,66 +432,3 @@ usb_pins: usb-pins {
 	};
 };
 
-&adc2 {
-	status = "okay";
-
-	channel@0 {
-		reg = <0x0>;
-	};
-
-	channel@1 {
-		reg = <0x1>;
-	};
-
-	channel@2 {
-		reg = <0x2>;
-	};
-
-	channel@3 {
-		reg = <0x3>;
-	};
-
-	channel@4 {
-		reg = <0x4>;
-	};
-
-	channel@5 {
-		reg = <0x5>;
-	};
-
-	channel@6 {
-		reg = <0x6>;
-	};
-
-	channel@7 {
-		reg = <0x7>;
-	};
-
-	channel@8 {
-		reg = <0x8>;
-	};
-
-	channel@9 {
-		reg = <0x9>;
-	};
-
-	channel@a {
-		reg = <0xa>;
-	};
-
-	channel@b {
-		reg = <0xb>;
-	};
-
-	channel@c {
-		reg = <0xc>;
-	};
-
-	channel@d {
-		reg = <0xd>;
-	};
-
-	channel@e {
-		reg = <0xe>;
-	};
-};
diff --git a/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi b/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
index 63bd91690b54..510399febf29 100644
--- a/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
@@ -69,6 +69,85 @@ vccq_sdhi1: regulator-vccq-sdhi1 {
 #endif
 };
 
+/*
+ * ADC0 AN000 can be connected to a potentiometer on the board or
+ * exposed on ADC header.
+ *
+ * T2H:
+ * SW17[1] = ON, SW17[2] = OFF - Potentiometer
+ * SW17[1] = OFF, SW17[2] = ON  - CN41 header
+ * N2H:
+ * DSW6[1] = OFF, DSW6[2] = ON - Potentiometer
+ * DSW6[1] = ON, DSW6[2] = OFF - CN3 header
+ */
+&adc0 {
+	status = "okay";
+
+	channel@0 {
+		reg = <0x0>;
+	};
+
+	channel@1 {
+		reg = <0x1>;
+	};
+
+	channel@2 {
+		reg = <0x2>;
+	};
+
+	channel@3 {
+		reg = <0x3>;
+	};
+};
+
+/*
+ * ADC1 AN100 can be exposed on ADC header or on mikroBUS connector.
+ *
+ * T2H:
+ * SW18[1] = ON, SW18[2] = OFF - CN42 header
+ * SW18[1] = OFF, SW18[2] = ON - mikroBUS
+ * N2H:
+ * DSW6[3] = ON, DSW6[4] = OFF - CN4 header
+ * DSW6[3] = OFF, DSW6[4] = ON - mikroBUS
+ *
+ * ADC1 AN101 can be exposed on ADC header or on Grove2 connector.
+ *
+ * T2H:
+ * SW18[3] = ON, SW18[4] = OFF - CN42 header
+ * SW18[3] = OFF, SW18[4] = ON - Grove2
+ * N2H:
+ * DSW6[5] = ON, DSW6[6] = OFF - CN4 header
+ * DSW6[5] = OFF, DSW6[6] = ON - Grove2
+ *
+ * ADC1 AN102 can be exposed on ADC header or on Grove2 connector.
+ *
+ * T2H:
+ * SW18[5] = ON, SW18[6] = OFF - CN42 header
+ * SW18[5] = OFF, SW18[6] = ON - Grove2
+ * N2H:
+ * DSW6[7] = ON, DSW6[8] = OFF - CN4 header
+ * DSW6[7] = OFF, DSW6[8] = ON - Grove2
+ */
+&adc1 {
+	status = "okay";
+
+	channel@0 {
+		reg = <0x0>;
+	};
+
+	channel@1 {
+		reg = <0x1>;
+	};
+
+	channel@2 {
+		reg = <0x2>;
+	};
+
+	channel@3 {
+		reg = <0x3>;
+	};
+};
+
 &ehci {
 	dr_mode = "otg";
 	status = "okay";
@@ -315,81 +394,3 @@ &wdt2 {
 	timeout-sec = <60>;
 };
 
-/*
- * ADC0 AN000 can be connected to a potentiometer on the board or
- * exposed on ADC header.
- *
- * T2H:
- * SW17[1] = ON, SW17[2] = OFF - Potentiometer
- * SW17[1] = OFF, SW17[2] = ON  - CN41 header
- * N2H:
- * DSW6[1] = OFF, DSW6[2] = ON - Potentiometer
- * DSW6[1] = ON, DSW6[2] = OFF - CN3 header
- */
-&adc0 {
-	status = "okay";
-
-	channel@0 {
-		reg = <0x0>;
-	};
-
-	channel@1 {
-		reg = <0x1>;
-	};
-
-	channel@2 {
-		reg = <0x2>;
-	};
-
-	channel@3 {
-		reg = <0x3>;
-	};
-};
-
-/*
- * ADC1 AN100 can be exposed on ADC header or on mikroBUS connector.
- *
- * T2H:
- * SW18[1] = ON, SW18[2] = OFF - CN42 header
- * SW18[1] = OFF, SW18[2] = ON - mikroBUS
- * N2H:
- * DSW6[3] = ON, DSW6[4] = OFF - CN4 header
- * DSW6[3] = OFF, DSW6[4] = ON - mikroBUS
- *
- * ADC1 AN101 can be exposed on ADC header or on Grove2 connector.
- *
- * T2H:
- * SW18[3] = ON, SW18[4] = OFF - CN42 header
- * SW18[3] = OFF, SW18[4] = ON - Grove2
- * N2H:
- * DSW6[5] = ON, DSW6[6] = OFF - CN4 header
- * DSW6[5] = OFF, DSW6[6] = ON - Grove2
- *
- * ADC1 AN102 can be exposed on ADC header or on Grove2 connector.
- *
- * T2H:
- * SW18[5] = ON, SW18[6] = OFF - CN42 header
- * SW18[5] = OFF, SW18[6] = ON - Grove2
- * N2H:
- * DSW6[7] = ON, DSW6[8] = OFF - CN4 header
- * DSW6[7] = OFF, DSW6[8] = ON - Grove2
- */
-&adc1 {
-	status = "okay";
-
-	channel@0 {
-		reg = <0x0>;
-	};
-
-	channel@1 {
-		reg = <0x1>;
-	};
-
-	channel@2 {
-		reg = <0x2>;
-	};
-
-	channel@3 {
-		reg = <0x3>;
-	};
-};
-- 
2.52.0


