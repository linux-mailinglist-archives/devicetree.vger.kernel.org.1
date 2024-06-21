Return-Path: <devicetree+bounces-78414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8555912373
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 13:26:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 631AD288078
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 11:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6792D17B42B;
	Fri, 21 Jun 2024 11:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="JAa7eP8N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7CA17B407
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 11:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718969022; cv=none; b=Ad2DGPjGNTE9InTfVfQiM1KXvyro7JSRU1WRPph8/sMSK/6TROLZu/QyA8pZ/fAO+mpzVCFxExFSMUz5G6mJX1ejEX/4mS0wRR+ioH8XJsJw1X8Q/KNMMHc5jw4O8uh6zcuTwTUE15FD2Lr8oNrg/1/Lvb9AtAhsE2XWu4VzT64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718969022; c=relaxed/simple;
	bh=JYgANfGK0OX8coSzjyoca5b835OY0thvAp8k5tv/WVM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jwDd6PKOQ0A4PoCGGsExw+woEeYTEuigc12b0VKYHH0+JvgwX17PuClX5gv/zT4l5cMgfZRRaYSfmS/+1oOruO0neA/Vq5e4fZgovjvsg6Heg04eoxIoAahMFvcn85EqLxA9Cj51SK235E0HYsU/2UqcM4jzaJTdqwUC+UvkzZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=JAa7eP8N; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-57ccd1111aeso2298209a12.0
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 04:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718969019; x=1719573819; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ebUuaMvHVQnkndloXfGsR/owtWP+gpjE1NoWoH3dplE=;
        b=JAa7eP8NR3gPlIWuXDitYo/A9n1uSnBAtziN6wps1x1rrVVjUtYJ0ujtn55MkhJ/Tb
         ORWKkmkyukeN5BgoHQ5halpq6Fa+aWnKNioEF/R6sXt83DKoofB5jCtNeOZ9quJWNM9G
         As9zlAO51VCsfZc9q19X3oTw/5XCX9jUBEqNAmbj72DNuQAydzc4n2etJMySMJ1VRytY
         X4OXV6p2A2P7vnMUvuYj1htW5lrsgCPsqE22vEb9P/PtsBoHy9VkSoRGfG6cao17wtXo
         r0BEnujtQC2IP6shoU2xugkAXIHtlWEDUcvmOvaa/IaH8hLQngx1AEMhoFyDxNRKT+N6
         QRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718969019; x=1719573819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ebUuaMvHVQnkndloXfGsR/owtWP+gpjE1NoWoH3dplE=;
        b=MEm9H0W3ept0z0XVXOX3BWJD11fLfsryyuFmgnsKPsmD6LLB9wksR5VjVAR5toDF7k
         KgfvxArzQNmaIxkdpBbVoXVnDOy6ZbLa5LtzErwMvLvdJwT3K/paWwNOwRG1zwkMM9wD
         IPkaPvbbPsyF5Y9qK/sm/bhtiCZ0j/nFBjLvl9eeiUSwseuvCYCei4V+RDf06m/SK/0V
         ICxKajXFAZFt2WR9/cCemAKBriBGRxcq/LGdLND2G0ZlgbyRo8QFY94ZBDEsRRcFfhnS
         IkvXFWfD2E1sdp4jsNeOkYQLnkoPu1ggQXxqYF0ANMpkI1s2gkPfjHc4aNAWdiBDFYHl
         vg5g==
X-Forwarded-Encrypted: i=1; AJvYcCWKnsKGi/Td6Ypa+6Xk5/Sq07f1bF4m+iDRdwdSqn4O0j6n5GYmLm0zTxw3WW2R/A+V2WvxIbJzA1G4pv6K4zR3OqeOf/vYr39jYw==
X-Gm-Message-State: AOJu0Yy0YTrAvZaHap/gae0BlOdRBdLC9LE+qjTRzBHePlMTWl5ifmR0
	lUmc9tCSE0PPZnDnjnNjsOVsuVc1vjgz8U2l4VowCTQ3iPYYCFdWS/OdpBYP6xM=
X-Google-Smtp-Source: AGHT+IGZv8gS1+I6ldBjfQ4fdMF7NlgFickAepkyUrui9xQnT8bZE+QnGQ4UWGjz1h6JNkW6Y5A7vw==
X-Received: by 2002:a17:907:a587:b0:a6f:bf0f:4209 with SMTP id a640c23a62f3a-a6fbf0f42f2mr378145566b.42.1718969019378;
        Fri, 21 Jun 2024 04:23:39 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fd0838345sm64498466b.99.2024.06.21.04.23.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 04:23:39 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 11/12] arm64: dts: renesas: rzg3s-smarc: Enable i2c0 node
Date: Fri, 21 Jun 2024 14:23:02 +0300
Message-Id: <20240621112303.1607621-12-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240621112303.1607621-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240621112303.1607621-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable i2c0 node.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index deb2ad37bb2e..7945d44e6ee1 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -11,6 +11,7 @@
 
 / {
 	aliases {
+		i2c0 = &i2c0;
 		serial0 = &scif0;
 		mmc1 = &sdhi1;
 	};
@@ -66,6 +67,12 @@ vccq_sdhi1: regulator-vccq-sdhi1 {
 	};
 };
 
+&i2c0 {
+	status = "okay";
+
+	clock-frequency = <1000000>;
+};
+
 &pinctrl {
 	key-1-gpio-hog {
 		gpio-hog;
-- 
2.39.2


