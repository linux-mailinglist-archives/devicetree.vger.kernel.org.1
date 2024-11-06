Return-Path: <devicetree+bounces-119485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C96469BE6AD
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 13:04:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F430280A6E
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 12:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CF201E5718;
	Wed,  6 Nov 2024 12:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="YRs+JLEX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200851E32DD
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 12:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730894510; cv=none; b=ntX57vqULAjaMF4yeScE1b+paLqDSd6+M5snfcAYy8cbG9pCvsb1iQRQe6nXkP9v1eskv2P9DBY06/agNdy6h5U8+gvyNFG/w6zOF7OBhK4R6T/H5Xr6l5syZStPMnGmDmutEhGGHKcleAyRDMcVyoUmHSItTEL3U+VucfDma9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730894510; c=relaxed/simple;
	bh=cdTGdBSGwZDd4PzidcwteOvTws8IpDX3/6UJ3FwbvRk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tDyGW9+C8IPoFifRapD52Aj0SlvcITvjnwUWkclyeh1SyA5aRtAQjfHYrg/iDVYFs0wjWRZcLYQy1EIS2kdzur0ReyhT8VRtAd9spQYPULYdybQ45H7e/v5HiJh1CHLkTYdhxQblmVkBJEF0UeOs0zHkrEBRBN4kr10DXyNByYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=YRs+JLEX; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5cefa22e9d5so411617a12.3
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 04:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730894507; x=1731499307; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JIdu7WjXa0eVWsCwY3jgkJQC1LZ5RgeDeaXNlLhMi9w=;
        b=YRs+JLEXfb9pCYF2tXuopB0WpYd1NF5UizS3MVdI2VFk+ps+72nJg9FO6s/qalM4ex
         I2dSB4ls7PrAIlqBJpXgH55efUBknbFXBlb85zOgX5OkJWCjQg6ukuQrctdXJutpnlKd
         fPtvQeNfXWV8rOUQuVdaArjPmxgNfavXj1eef7rALg9X1QkXU+qax+MJ5W27Z3DCB8ge
         eCxOpkHa0nmTouPaIZS8cQhMMDbejehQyrPLAESqpSP0j/+Yk6WYh4x3To3fJCUN9P61
         oXZ+IhVHyb2z5uxBUBZ2HfJn9SCI4lCDlhY5YFs1JlnRE5fq6JLzD58UJO6WcFad20X4
         iGug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730894507; x=1731499307;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JIdu7WjXa0eVWsCwY3jgkJQC1LZ5RgeDeaXNlLhMi9w=;
        b=oVGWFgcRb+GiTariz2mGN2gPxqWr5bcgS7Y9BRjOjD54LD0jee/MeJguoAsRy212Yr
         tP/uzvrBfDIPjubPlrYIWrCyRFotYIC8jMWztWmwIY43svuKBiRPdubZYPMm1bb+ylZl
         0jZEta079g9tdGhJ4BStnMkuYQ0A8tHLTlMLyT57uu7oHnt2WYlRAnh71AmxlmxPr/o0
         OHscBqFHJSNzBvL6wCU3Ne+CI1R+ONoURMFEGy2MzrshaEsimXmUZppy5GwZK/R5Y/2h
         unEtJwBLQYzjMtvLXZFS6DiulQ2ihUWgFTjsP7ftrAraZRJuyH6sZ8y+Yh6CXmTZmQOc
         SeRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNVeqUevHDWHQQKW4MKYZiwyBxfOTkK7Ihe0wdfUekF7is/BzWp7AvllBW+0WyZNVaOvHVbi4qQVVY@vger.kernel.org
X-Gm-Message-State: AOJu0Yxto0mKDhhq1pyySkK/pAFwVpTFEjcjZ5m9qdeYX/EQOSOPnXVf
	W2l35ZOuzxFGgC6IZ23kFUkfjNCfMl7l2pYzN+bBzX2Y+PkaxnxXkaBtirnEv1c=
X-Google-Smtp-Source: AGHT+IGPyHvvM+AtZ3lG61txxGUpYBcZB8hGoiLLa+wD40ZLTJYNGJhk/p4S3Usjl1OjiJ8aG1Wgdw==
X-Received: by 2002:a17:906:dc95:b0:a99:fc6b:44f3 with SMTP id a640c23a62f3a-a9de61ce14amr3848263566b.44.1730894507498;
        Wed, 06 Nov 2024 04:01:47 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cee6afe528sm2697984a12.55.2024.11.06.04.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 04:01:47 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	p.zabel@pengutronix.de,
	lethal@linux-sh.org,
	g.liakhovetski@gmx.de,
	ysato@users.sourceforge.jp,
	ulrich.hecht+renesas@gmail.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-serial@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 8/9] arm64: dts: renesas: rzg3s-smarc: Enable SCIF3
Date: Wed,  6 Nov 2024 14:01:17 +0200
Message-Id: <20241106120118.1719888-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241106120118.1719888-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241106120118.1719888-1-claudiu.beznea.uj@bp.renesas.com>
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
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 33b9873b225a..1be21ece131e 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -9,9 +9,14 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/pinctrl/rzg2l-pinctrl.h>
 
+#include "rzg3s-smarc-switches.h"
+
 / {
 	aliases {
 		i2c0 = &i2c0;
+#if SW_CONFIG3 == SW_ON
+		serial1 = &scif3;
+#endif
 		serial3 = &scif0;
 		mmc1 = &sdhi1;
 	};
@@ -102,6 +107,11 @@ scif0_pins: scif0 {
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
@@ -141,6 +151,14 @@ &scif0 {
 	status = "okay";
 };
 
+#if SW_CONFIG3 == SW_ON
+&scif3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&scif3_pins>;
+	status = "okay";
+};
+#endif
+
 &sdhi1 {
 	pinctrl-0 = <&sdhi1_pins>;
 	pinctrl-1 = <&sdhi1_pins_uhs>;
-- 
2.39.2


