Return-Path: <devicetree+bounces-246695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F1ECBEF75
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:44:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7BCE2304FEB8
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:38:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 840D9315765;
	Mon, 15 Dec 2025 16:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="AIWJvlhh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD4130C61B
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 16:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765816713; cv=none; b=nu3Dwwy6l7KU7ezB/b+XCOQx3+oRMKX9wd1t3C0QrKKCysOaB0E5CF0B4LCRarys7q0QEs/3pJoRaWP7qJfsmloy/Y6AX5lRaCYUALNNPYmuaT/gmV6u4W+CN/7JmKmCe+wOaaVrHw3CknH1fZhlWyptqMxPN4BvdMdItu5SMzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765816713; c=relaxed/simple;
	bh=k/Yd1BmFzU0e9UFcJv9URIkTbmDEVBM0hOo+JTGIPAg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZMccETcEl0Czv3Q8wUI9O2KYQLv6rc8hNe4YkndRKTZL4R2tpYnEe+o9RkaH5y7jS4l1fUEGV7c2LUCYixHUh4OK39oZ24C3IZYefh+rpnhoRtZ9mX36+RTJnIO21Ezvv5ixUgh8eR/mCJHGBxYtXbcY2KlMu+QfRcAQwq6KW7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=AIWJvlhh; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47796a837c7so26841805e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1765816709; x=1766421509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cnKll+Mu3yr6wHuUg3E47hI29XfbMlTNI5VvcSPHEnI=;
        b=AIWJvlhhcWl5hbSyydkjLe/GDVS3V4vTDb4qeNWdR80M81ODF67qfM5mpLQNIjN2zg
         Cg0N+4vq4jQXHdnYY3svgMl/T49I5Zrp29STPCUNk6JrOin56BtaqbkiwBbaqR3OEZxD
         49isbVf+h4T2y7jhcwZgxNVTn28fbsNDx6pSx03mQF/0PDPnwg/ClnbgMkoHgXwi33ES
         l4rcR55YPGa4n54zK4ReHi/Fp9QkdZ9iXcPVs3V1UJHq0sTlTOTD31QjCOJN1tBd4HdH
         ScnT8mVHvKhb7KcWLzK4aDi21gN7q6e+xh5Vf/QLRwsO8/PdYTmcByG2duRS9HvdtUPv
         m4cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765816709; x=1766421509;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cnKll+Mu3yr6wHuUg3E47hI29XfbMlTNI5VvcSPHEnI=;
        b=gvyxtEYEBpd1q7OtUMWIWucUgu3GFI7mXYhrC8/gL+rVIhPkBkcJAOt2bL4rITCkba
         pxRTfmFP54FZuZO3IQTI6X9sMzI7n1HfRu16U7BQ+5UVS84I+8hcm/YEMjxl+RiYbzjD
         RJd8IEb4BaM1bWX+kGP5lrPEnTxHhO7yPBeWyCj7/YQb3bFDvFNgeTau/ZO6cnool7Tx
         vyiLkSomdR5kPoNhQTX5NcbHN44zcXlTMjZLQgC6IAoM33w90IFQE7fOFJo54GDQxTun
         D3uo/pkWfjxVlFvJ7xitF/JKQbJYyAJ3GJNmdF+IXFSBnRtOs1wN4OKTwFxKCN6A8t/w
         0fSw==
X-Forwarded-Encrypted: i=1; AJvYcCXMHnq4RHbtxPRKbMTsmbMndoSbiRNMBK4YDj6xFuwtGIzNWsZgyEivr43DfSqoeCscOeLwo8xP9gSO@vger.kernel.org
X-Gm-Message-State: AOJu0Yyys3RK4Yf0rQiwY5ddV+Z7jJmveq8kDqx5LfRfgocu7Xb+m7mi
	X/rZqcRcLQh6Y8Yq6rIe2l8Qxf2ThAxlkMGKq2Xdotx9MyOk+sApiqNn1zmU2V89Tts=
X-Gm-Gg: AY/fxX5Mlljkg2rw5WLphph8d87JXSZv6vE1qo42nev2ib3sJ4IuRfRjCxmltEqL01C
	KvtabzSAzhvKKR0QdFf+VKMlUkdCtWctEeKg8QJRjcrxx/zUv2It5Yz2cNaNNQcmd/jsEOvYKFg
	C9e9UtLx57RwvFu5G0aIUalaWF6a6KwcFYZreAXspA1jyM6BXcXy6cmcRq1dCsDoCpo3Aj1FsOd
	9vsByzlUvwKhcIpCLYcN1lwmbbV8XfDvjcPG4HzK+oXWHTG6Srq1MZMAzQymFDyk4SAy32dPigY
	5t0HAE0WED7R8hyRtpU7XNtiaeaFO6ClcKnhn++yXzVHewZtc4z28QPFyG+8YHRxKDeNcC7bHxU
	sy2B8iI5km4Ne6Bsh4r+JCEtHotsF6FtUGv0/rLbIYohe1DZBQTd6rr4Ub7dZdHwW72RtfNRtGO
	HW65eB0wAaMnwQ2wcumHO3TyKKPaokGZZS6TK/Gw6xK6Xr
X-Google-Smtp-Source: AGHT+IHqk87hRgFNW+4zdWPZBEuhhkRVJA1LnAloDmFeZHxaQu5P+L96TkAMIyaxKGjp4sqU43QQWQ==
X-Received: by 2002:a05:600c:a086:b0:471:1774:3003 with SMTP id 5b1f17b1804b1-47a8f90fefamr116081975e9.29.1765816709336;
        Mon, 15 Dec 2025 08:38:29 -0800 (PST)
Received: from fedora (cpezg-94-253-146-254-cbl.xnet.hr. [94.253.146.254])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47a8f74b44csm192209725e9.3.2025.12.15.08.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 08:38:28 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev,
	Steen.Hegelund@microchip.com,
	daniel.machon@microchip.com,
	UNGLinuxDriver@microchip.com,
	herbert@gondor.apana.org.au,
	davem@davemloft.net,
	vkoul@kernel.org,
	linux@roeck-us.net,
	andi.shyti@kernel.org,
	lee@kernel.org,
	andrew+netdev@lunn.ch,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	linusw@kernel.org,
	olivia@selenic.com,
	radu_nicolae.pirea@upb.ro,
	richard.genoud@bootlin.com,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	richardcochran@gmail.com,
	wsa+renesas@sang-engineering.com,
	romain.sioen@microchip.com,
	Ryan.Wanner@microchip.com,
	lars.povlsen@microchip.com,
	tudor.ambarus@linaro.org,
	charan.pedumuru@microchip.com,
	kavyasree.kotagiri@microchip.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	dmaengine@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-clk@vger.kernel.org,
	mwalle@kernel.org
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 01/19] include: dt-bindings: add LAN969x clock bindings
Date: Mon, 15 Dec 2025 17:35:18 +0100
Message-ID: <20251215163820.1584926-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the required LAN969x clock bindings.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v2:
* Rename file to microchip,lan9691.h

 include/dt-bindings/clock/microchip,lan9691.h | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 include/dt-bindings/clock/microchip,lan9691.h

diff --git a/include/dt-bindings/clock/microchip,lan9691.h b/include/dt-bindings/clock/microchip,lan9691.h
new file mode 100644
index 000000000000..260370c2b238
--- /dev/null
+++ b/include/dt-bindings/clock/microchip,lan9691.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+
+#ifndef _DT_BINDINGS_CLK_LAN9691_H
+#define _DT_BINDINGS_CLK_LAN9691_H
+
+#define GCK_ID_QSPI0		0
+#define GCK_ID_QSPI2		1
+#define GCK_ID_SDMMC0		2
+#define GCK_ID_SDMMC1		3
+#define GCK_ID_MCAN0		4
+#define GCK_ID_MCAN1		5
+#define GCK_ID_FLEXCOM0		6
+#define GCK_ID_FLEXCOM1		7
+#define GCK_ID_FLEXCOM2		8
+#define GCK_ID_FLEXCOM3		9
+#define GCK_ID_TIMER		10
+#define GCK_ID_USB_REFCLK	11
+
+/* Gate clocks */
+#define GCK_GATE_USB_DRD	12
+#define GCK_GATE_MCRAMC		13
+#define GCK_GATE_HMATRIX	14
+
+#endif
-- 
2.52.0


