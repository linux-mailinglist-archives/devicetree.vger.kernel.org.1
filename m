Return-Path: <devicetree+bounces-129405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B84A69EB7DA
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:15:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01ABF280E00
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:15:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3558240391;
	Tue, 10 Dec 2024 17:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="jx6caag1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91CB7241F4F
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850658; cv=none; b=E54+T5P+q2oxiPfZAPRDuF3UsL9yEp/Y2PYemNzeEeRPWVEqv8idjpjyHRuVLRgC1JJ4pk6EEcOBTGWm32wZr1VK5W2rriU8ZIe1603LQCSmsrOibZCv+nQ4ZhAPyHxNLLhx3aYJ0rNMu1EseOQlXNZ16jfFC5friSV5kU2EW2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850658; c=relaxed/simple;
	bh=d78/cjRoA1rGuCezGVFS8ZJSQg5DxH7DXWKg06PRmuY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UBLI+K7kTe/YaQ1kt1pxNJOtUg0JioOOLPmbsRrhER4KlPtWQ3VTlKeJULgxYHf8hJzDzw3Q+EAXRMGeo+aGh8YvO27iSZtbJ4o5r4CxTYbx0G/Jo9OcAbb6E86xq52oSHUX8Hb+jJl2tyXn74A4blFva3Adf3zKdoSHjVrFb9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=jx6caag1; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d3dce16a3dso6043482a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850655; x=1734455455; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XG8zYqRJnsZkhZfRr2g1CnvN6FDBTlyfj/tmdbveBiw=;
        b=jx6caag1FYIcxb+as7XhlwVVacZd/ekU9KnjO00lsodxHeXPYAK+G4uBi7/HDdlwBb
         x+nB9qINuLm029N9r5tjrwgkQdSMhJWEjW2KElU2DMSqV9YZbYzVT/PiiseM909qmiRX
         OSXQKQAH2vhof7kbqRRvQru+KyBuW6nJCDTvGF/8sGexnxZY/u+qU2Gs6wmYS7ZLOiw5
         Wgqistxd93er9z4AOGdsYExS0pcX6p1cZWkowHg1dLesFdZtEjXP6Jezg1N+l2dOoh33
         BtedPGoyeGg2dTlxYlR7EwaScHpQ+DePhTZLUnsMQPaQFGZ45SUSZvQsroeSNvyfMVLh
         2XMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850655; x=1734455455;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XG8zYqRJnsZkhZfRr2g1CnvN6FDBTlyfj/tmdbveBiw=;
        b=BUlk9HfgNxwVSfB4AGmPBpA5p3GXIu3AqCxh80UeccPpvsWFFPRbwyPyVFJLRPWBwb
         yDW6ifDHA/6kcpEJvwwPWeRs9JEpnzgXjh8zzDs4UkI1e0EeF3zyQvZPpNjTrkuod+Kp
         dZWtbCnDy9uw263CKX25aWG1If/Wkqs+Z8o9AjvLR6vcTUWou+v02zk8lJUNNL9jRtUm
         hFtAuoVVQ0fs4pOVonsOO+mXyIgLoDjOHGywD5xXUsaYhlpA7Hn6ddVEfRvGd/T1O1tH
         igRAb7pxgrd2Est3TPC9KCj2yXX3xDa1SyTzuN34/8v5kuNHuUQhGB3hH/SIV0hgMNiM
         0H/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVEOADHboNaa/4p7MXkPGwrYN2KuFXmM7q8uplkra7ZJclLPb9hmujeNOH8YATOK962RqoZWX5lMT1N@vger.kernel.org
X-Gm-Message-State: AOJu0YzuMVsMfJdlhiAGxmnhYxwJO3Uf1kQbOmDyQE6l6XqsIcWzZnkg
	k+QcRdo4WoFY25P12mvcRVQ6KpniiY92bF6F3K53gDirKYuulARzztsOei6r90k=
X-Gm-Gg: ASbGncv21J7OPjjR8qHLDGJFx5S660j01B/tf4GERyEhHXX2UAM6SoXIGtoW8JbvZep
	M0e/6gAHOTVdeXIfZ8As2qMepsXdpwHWnqR7rSuGa49l9uMNXU2bFrvD2w0Rv2ka11o571dKVFc
	bufs+5EJD8Xo4M1fqFsHfGvkKan6sRyq1J5gs3UqtciAj++EwUxXn/xVl7PgOb0gKvYvvrZOQIz
	daEXDPxTcyeNEQ1TA0rvWHNIGqfEZmIDS0XvqPnLzFaWDq1y0zWtHwbOG/GhJfD3WqZNcjIkzhi
	CvJCpE9g
X-Google-Smtp-Source: AGHT+IEgKnHNaC3IX1FEtNtvTz24/8StgSao5VAD6Ub2m7Bx+D6TJNFGkozP9JnrbZSvN4zlM3/+Ng==
X-Received: by 2002:a05:6402:510a:b0:5d0:d208:4cad with SMTP id 4fb4d7f45d1cf-5d41e16362amr4621139a12.2.1733850654831;
        Tue, 10 Dec 2024 09:10:54 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:53 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 21/24] arm64: dts: renesas: rzg3s-smarc-som: Add versa3 clock generator node
Date: Tue, 10 Dec 2024 19:09:50 +0200
Message-Id: <20241210170953.2936724-22-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add versa3 clock generator node. It provides the clocks for the Ethernet
PHY, PCIe, audio devices.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags

Changes in v3:
- none

Changes in v2:
- none

 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 2ed01d391554..6e58d47d85b0 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -92,6 +92,12 @@ vcc_sdhi2: regulator2 {
 		gpios = <&pinctrl RZG2L_GPIO(8, 1) GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
+
+	x3_clk: x3-clock {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+	};
 };
 
 #if SW_CONFIG3 == SW_ON
@@ -152,6 +158,30 @@ &extal_clk {
 
 &i2c1 {
 	status = "okay";
+
+	versa3: clock-generator@68 {
+		compatible = "renesas,5l35023";
+		reg = <0x68>;
+		clocks = <&x3_clk>;
+		#clock-cells = <1>;
+		assigned-clocks = <&versa3 0>,
+				  <&versa3 1>,
+				  <&versa3 2>,
+				  <&versa3 3>,
+				  <&versa3 4>,
+				  <&versa3 5>;
+		assigned-clock-rates = <24000000>,
+				       <12288000>,
+				       <11289600>,
+				       <25000000>,
+				       <100000000>,
+				       <100000000>;
+		renesas,settings = [
+		  80 00 11 19 4c 42 dc 2f 06 7d 20 1a 5f 1e f2 27
+		  00 40 00 00 00 00 00 00 06 0c 19 02 3f f0 90 86
+		  a0 80 30 30 9c
+		];
+	};
 };
 
 #if SW_CONFIG2 == SW_ON
-- 
2.39.2


