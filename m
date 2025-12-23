Return-Path: <devicetree+bounces-249290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F282CDA7FD
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 21:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F89B30CF53E
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:20:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AE6B2868A9;
	Tue, 23 Dec 2025 20:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="JWd8YeUf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA17A34D4D7
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766521254; cv=none; b=dN3dVqR92OywdGw9NFzWswPPmMZYnRDWyCeqIB9YeolzwjTfCR2i24ik+yWdrdnF9ANzItDI14TR5NryMaxnLpCurxXHYAcozuchqBys0RGcv/mwZluAASkymfOMCjvps945El9rzkb5LYRd5dDeTPBiOWUwiLMzVpyVTD2dM2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766521254; c=relaxed/simple;
	bh=zUvrtsolEdengocgVlyXQxoSJXOg4mGPqcC0PLdIbPE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S4y6PWVNCFuzq0k6rlsthUX66I4dAlY7po0+QgczPmuQbs84GKkbTQtT37Q5cW7zjflGM0fBE5LTfDVveX+OQp3W44vS8VdErC71NcOBMu+/bKiRDOfHZgw4yKiSDgo9MHngz/4wxk3t7d8FidZNMEXmTKKByW7x+3pVUW0sZfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=JWd8YeUf; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7b7828bf7bcso6123121b3a.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:20:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1766521251; x=1767126051; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XldW6lxnsgyAezmPBHgoeGUpbHtzZudWE9rMzsQl4gQ=;
        b=JWd8YeUfcE2jxi4dlT6RjGrdeqZAThp66WLdnh1AdZbByRtMWbUC3/KQA3vOxoI7rQ
         Nej77PlWwyPaR0CweuAUAHdybLE+chQvK13KAx1PHCFCzP8dqOUX7DNszBLGLS3YPcje
         3obQGC21IXK8hIsdJaIVFWus/hPNRBL0nHrgv8Rk5tPmeAiEGaHpc8i+apiMSFebghNE
         0W0Qy8FfsEMkqnJOoL71GDcIZHE5UqsuPBST8EGPO7XAr1u45JqOy2YCVoY6QZ5iqEaC
         ghB9VRmSjvWVRdEspk9wiO4HaSDvwPHstMR28m2thH4fnj7e8ayv8KKHgpqopigvFmEG
         nQsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766521251; x=1767126051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XldW6lxnsgyAezmPBHgoeGUpbHtzZudWE9rMzsQl4gQ=;
        b=exLLSVnDOpBm8fxKFY/WBbFQlSxJtMMNeaIe4mHoIg6rzCINS5fCUljfmbn/63O7uK
         tJdwxRg56FVyLg/t6VeYJSMFKimkQ1B6ol+7IDcDgqYT0daE5CfF2qZJE/xgZHYOgwTa
         gk0ifSkxdvjkUm1uytdLRnznmt1BIVGGdr3K9Jt+n9KTOXFXKSLHZPPNGgEkYpf4VrDS
         BjJMjtU3ft5SbvOWD3vYzVs0INZ2i8W/hLa9DjMRC6jsPLMSxM5x6l8HqCPkUVoVRrDp
         3o26N9fKdgVfqeUyIMVBKJis9xuaL9QgcMowDPWepn9IltZb+jy0HwBp5+qlsKsZUDVZ
         0HBw==
X-Forwarded-Encrypted: i=1; AJvYcCV4TRjBecA+Vr7zMNzaSdrI0HOZA783q1L1uIRpPuYTuE0y+/u3c9S+d+qGBr03d4DfX5cOPkIhQBEx@vger.kernel.org
X-Gm-Message-State: AOJu0YwDf8g9elym86yjLd8FA1J9kt7feuN/059NJ4By5QysRmBRp2zY
	FeXFV3SMDZbErcr1Me6Ap5+1Y7K7hVrXKgsCum8aZFQTm8WwNEusTGldw2Vh0nm6ZNI=
X-Gm-Gg: AY/fxX7CYesS19kJ/sAEvCeBckAiqssRsUU/Ky22ccPr47Bt5EadCnsRHdcvlT4T2iN
	znuF0VfO+uQsk/tz6ORJqDl4y1s0KHxZvb0ZUYLEP6fZozVHQ6GxRc8SpfOO1kv7Ljmm6Q3Vua1
	7qNaZfQ0MWXuuJSX03K0iQHFBZ3rOn9bdHBrK6oJKstWaS7FqNnpctW+Lh2Nqm8zmzDbV9z8o1W
	QgS0N9i79geuadoxiH6Z+eE0n5pjmY5Op/GrP+vIJ3GxRVeAEiouFtlAgT0x957mNRAoWtnhr0k
	KHqG88z60W9K2FxWYcXm52vBIOSjjhS2t5zpDiM3BOhcW4oOJsG6JdhoAYQRHdaAUg7M8ngpn46
	80udJs+vNWCO9XrQ5ZsJptA1+mwcKUDR7ad8uL0sHH1+CKnNGl9cKQciXzIXszJkwQzvQW7urtx
	yF81qiKDCvL8A+yuLgU4YBL1XYgUHN++vP6JstD2nCJkZ4g6XzzKf04VZb4b/gUgBazazeRtUVb
	63yD0sk9IzM+MI2FYw=
X-Google-Smtp-Source: AGHT+IHKR6G1JkjZPbcb6JKFu1uGkQq63m4FpssJS+cOb3Ug/zNWJVDVvih5redVT4o6Tq4IHHU3Qw==
X-Received: by 2002:a05:6a20:2588:b0:366:14af:9bbf with SMTP id adf61e73a8af0-376ab2e77c7mr15535010637.73.1766521251186;
        Tue, 23 Dec 2025 12:20:51 -0800 (PST)
Received: from fedora (dh207-15-53.xnet.hr. [88.207.15.53])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-c1e7cbfa619sm12567549a12.36.2025.12.23.12.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 12:20:50 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev,
	herbert@gondor.apana.org.au,
	davem@davemloft.net,
	vkoul@kernel.org,
	andi.shyti@kernel.org,
	lee@kernel.org,
	andrew+netdev@lunn.ch,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	linusw@kernel.org,
	Steen.Hegelund@microchip.com,
	daniel.machon@microchip.com,
	UNGLinuxDriver@microchip.com,
	olivia@selenic.com,
	radu_nicolae.pirea@upb.ro,
	richard.genoud@bootlin.com,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	broonie@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	lars.povlsen@microchip.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	dmaengine@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-clk@vger.kernel.org
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 08/15] dt-bindings: crypto: atmel,at91sam9g46-aes: add microchip,lan9691-aes
Date: Tue, 23 Dec 2025 21:16:19 +0100
Message-ID: <20251223201921.1332786-9-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251223201921.1332786-1-robert.marko@sartura.hr>
References: <20251223201921.1332786-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document Microchip LAN969x AES compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes in v3:
* Pick Acked-by from Conor

 .../devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml
index 19010f90198a..f3b6af6baf15 100644
--- a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml
+++ b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml
@@ -16,6 +16,7 @@ properties:
       - const: atmel,at91sam9g46-aes
       - items:
           - enum:
+              - microchip,lan9691-aes
               - microchip,sam9x7-aes
               - microchip,sama7d65-aes
           - const: atmel,at91sam9g46-aes
-- 
2.52.0


