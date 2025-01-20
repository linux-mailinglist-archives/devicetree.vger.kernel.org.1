Return-Path: <devicetree+bounces-139768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AF2A16CFD
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 14:10:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96772160C38
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 13:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACEB71E231C;
	Mon, 20 Jan 2025 13:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="onaj1ljd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A315F1E1A39
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 13:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737378588; cv=none; b=e2VPLUpYoys9EMMqS8A+UDIMeGTUuBBMRMBcRMizAv/ALn8aA9FESiM4/pviP0ExfY+VU8ZqKesl+Uxg36WlW26bQdn13kSnlffVgZS4mNybwICeUIrslvPzROrssDzIwC6KkrVZApU4mR2TNIODiOe81IB6B9rGvXCKDqFTUUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737378588; c=relaxed/simple;
	bh=7o3Y+E7nnBZwgQGYjXgcYEZjLUWyl3PQWnVN9lSAnOw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tqGppyOTOrFsY0CY2vd63GTEO9LM6g2NaF/q4pa6jLFLJPHnoyvvPk+zpdohhDlQxEnfXOBUn63i5Gcod1I6gC1rZdK1LH9z1k4PHarvQuqrf/ltwwZXguyuIhWIC/Oh2AARcNIx0KAEZZ0lGhctbxRRAeKPvDfNmYyWkMOrvlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=onaj1ljd; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43618283d48so31497185e9.1
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 05:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1737378585; x=1737983385; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2lPi/twN6zUkfiC5mOpKuXZ209zqYTSm0G6i4T4io+0=;
        b=onaj1ljdkRsIYtjBEwJW48yzPCGLBwRuE7i6+GWZc1UNZkmgyma9zKOgFdjoMiofao
         pSqjSqfAdTrjhqEHiMatSquI4JVNAPCrKTuQ71WpLQt+zJ+WRlE9kNlWPK+zupvUvaFj
         h3VAo4ge5R/qSxHGdKrBITU9cwq23sUI2uSi6bcZde4Pm9lPtZV6vVJ6qTr2SmN0B6l3
         Y2X8VTYKWY2H1/NxK7njQGJsF0beLHcRBwmCF3CHrRwZ6jnphn709nxehJlqT1VsjEO6
         sM6ZFyfO32MFhDsQnCdvhGCRUThFIVpnoYP02kUP+dSzAzK2YK+YOhBlY8jz3IMCsToN
         DKOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737378585; x=1737983385;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2lPi/twN6zUkfiC5mOpKuXZ209zqYTSm0G6i4T4io+0=;
        b=qeCR2GMVNy+1gXD0xQ6V3wYphhzr+OO+oe2L2B0lVmyvxhYvNlg6kTT7LkfbARduXz
         7BlNa5gWSW2lZXcMVQoynCuvR/Yrfa50+6mNAoH/6SOhN0ZaP5XzuS1Stdr8/RMPtH9t
         hc+lQZVsdZbbALPfUwFdebPzSm5GdPbLgPLBi9+HWwEIad0OVeJCRiU05Js3mSdgJ4uV
         VIV77d1hg5Hred7Ft4Ca5I6mlCMY0/dZG02a+tI9bSr/LL3rBLjYgGTT0llkwlisGRd+
         s/aokcBlndeiXHMmoNJaT3c2HeMqbYzh78JmrAdQFvoc72Zv6z2VjhLZkPuEbqsus4LT
         I79w==
X-Forwarded-Encrypted: i=1; AJvYcCVRoyiPdB7EKKg+daOvLevX6Dm7bOToLIko4+1L42Wb4XqbPe/iZjMtbb8+FydCQDMdC3EkKaCkT6Ft@vger.kernel.org
X-Gm-Message-State: AOJu0YwjTS46p2JjI63jT9lwUE0ycF5TB4PKz7EeO2nBoHK86I8nq1FX
	B08UgxNk01R6yfDeLbcajCEEhdQW294btAqRK+C9VwyKs/qJBUOgr8q5D1RWNPs=
X-Gm-Gg: ASbGncu9WgEg9XnfH3FsZpDV8mMaSIosLxdy77bJZUUuddwVdk6V4V3EYwdVg4ZVQzA
	zY6DDj7s2247Cqbe5lQTnPnN5VriNs2D2P/3FIf+iNwQIc3pLrZqHhmahP4W5HvTUAX5/qeb8Pc
	mCZGeefxInl3l7YJVylFt/784DjTeVVghzfQ8/q3PxD8Riqw3N/VUOgcAHaVEVoPregRJb94VP2
	KuUssmgmELYzaqE0CPfODq+6vcf6EKsYv6r+sQ+U9VT0bPK+JwqFUEvDjBBv/EByYLxVJquatxk
	rJO1/xui9aIBsBkqszN3a0Q=
X-Google-Smtp-Source: AGHT+IEcU/85w7UbVunXHIxQ5T1EeguZXj0W8RnMAbTNHN0/tPf0amR8m308HxvIlVOOV/v1s38tVA==
X-Received: by 2002:a05:600c:c0e:b0:431:5044:e388 with SMTP id 5b1f17b1804b1-4389142968emr119630415e9.22.1737378584913;
        Mon, 20 Jan 2025 05:09:44 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.35])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4389041f61bsm138001955e9.17.2025.01.20.05.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 05:09:44 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	p.zabel@pengutronix.de,
	claudiu.beznea.uj@bp.renesas.com,
	wsa+renesas@sang-engineering.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: [PATCH v4 3/4] arm64: dts: renesas: rzg3s-smarc: Enable SCIF3
Date: Mon, 20 Jan 2025 15:09:35 +0200
Message-ID: <20250120130936.1080069-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250120130936.1080069-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250120130936.1080069-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable SCIF3. It is routed on the RZ SMARC Carrier II board on SER1_UART
interface.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- dropped checking the SW_CONFIG3
- dropped the include of rzg3s-smarc-switches.h

Changes in v3:
- none

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 81b4ffd1417d..0851e0b7ed40 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -12,6 +12,7 @@
 / {
 	aliases {
 		i2c0 = &i2c0;
+		serial1 = &scif3;
 		serial3 = &scif0;
 		mmc1 = &sdhi1;
 	};
@@ -162,6 +163,11 @@ scif0_pins: scif0 {
 			 <RZG2L_PORT_PINMUX(6, 4, 1)>; /* TXD */
 	};
 
+	scif3_pins: scif3 {
+		pinmux = <RZG2L_PORT_PINMUX(17, 2, 7)>, /* RXD */
+			 <RZG2L_PORT_PINMUX(17, 3, 7)>; /* TXD */
+	};
+
 	sdhi1_pins: sd1 {
 		data {
 			pins = "SD1_DATA0", "SD1_DATA1", "SD1_DATA2", "SD1_DATA3";
@@ -208,6 +214,12 @@ &scif0 {
 	status = "okay";
 };
 
+&scif3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&scif3_pins>;
+	status = "okay";
+};
+
 &sdhi1 {
 	pinctrl-0 = <&sdhi1_pins>;
 	pinctrl-1 = <&sdhi1_pins_uhs>;
-- 
2.43.0


