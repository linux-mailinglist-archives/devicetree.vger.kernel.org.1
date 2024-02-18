Return-Path: <devicetree+bounces-43203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4191F85978A
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 16:14:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4127281A06
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 15:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8CEA6BFDF;
	Sun, 18 Feb 2024 15:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="GT+EQuZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289A46BFA5
	for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 15:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708269243; cv=none; b=sqaTwKMmaKSSR6x8OPJ2FpiwccsI+3FBsWD0XVuIJmomjkicJlyLPlFV+0HqwgGuc8731sYhROjs7utZv2xLAZJLsmRFhXYSZrkiU3C970LvMW5P8U8oYa1mT2F/Izbf4uWE8vEZNi76jtqG02xe1MReul8ekBsym+dfxVYaoD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708269243; c=relaxed/simple;
	bh=Gb8MOPQA8iHaNkDZvQvGMuyeyh0ktuw3AzkNkmj2+SQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Wxxof8FSNS57i0r1FK99H+xV2W4UCFaWbGj1uTkCiEqbcm/p74zun1NyZOlA/1TFxKzHtQ7wQEb9S9J2G59kq4TBNjcgja7rwXFCcI/pAWVwDLzkc3+1QvbKBajyTkZxFkKoHBkmNerkxYDsVfKthLF2dJFRn4ivQomUzllJzNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=GT+EQuZN; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-33d509ab80eso2743f8f.3
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 07:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708269240; x=1708874040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v3INayNM3vP9PiYuaZtLXnwcILE1ew0o01Gi3XQP/5Q=;
        b=GT+EQuZNHSR7L7iu1c62gvDS5OkDdGUFQZ26LPYPxWUjPzVkMm8cPIqc6WW5XZCSPa
         VOzEIypJGsaFnAOlfxCWltlZgp74qCjb+xUMso+Ou58nu+UuZn/1Z9fyEBouIcxqt33l
         atF9XHcst9dGgzafIoQq7+tYI+SIcU+uvVkbRrjuPg8nmAHW7gqIqMoUWzq2ODqsiq9E
         RbwC7vxdT8sXnNge6XgLIv/PMK9cNzX+0ahVscKSTIqBHNkqCa6Z1L0hQehB6zelO0hC
         3uEXPlc8SdPSm2AZmqIfLWn4uNOqr/43EV3+OGy8YrtZxS9Hlf1ee0bs7kANSV9mj+a7
         e2Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708269240; x=1708874040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v3INayNM3vP9PiYuaZtLXnwcILE1ew0o01Gi3XQP/5Q=;
        b=jHWPqk6fajmBtwNyWFDczvAcVmuE7WW+T+8NnLDhRERFqt46ClxMbOWoH7J3Y4KvQR
         w+UJXklUMWoKXWyEU1kNmGmMqt/Ndl/VjtKRHvrTkWfB0zv1l5VVicU7zyq6hlYUuEok
         dz2N2K//JCCVZndod8m4QM17dhlqknwxwgG4Ch/LmRzBy8ClpB5D0eU1oYOsP/SrGtM/
         iH9Y6l6SfuRqKRNUXmYA6+jIpW6sZI5m8UOPqaZH48DV4q2jPyHHk9KhopggVmyNJNq4
         B6INrJ2+uFnKyMeZA7hz/QpiNENaW8eA9FAyd8B9SHZHRWoPpgxb6rZEZwyCpY45MNiy
         /+pw==
X-Gm-Message-State: AOJu0YxdOOgzGfKCD8lyPZeBBoJv/4tJx1xH1ldUyDoANHcTXwOxgy/t
	ShlunxPEycvdq0D69R7wD+2fhhbwPWECtYAC96/pBtmLuG7/OvfjfY1W7355M48=
X-Google-Smtp-Source: AGHT+IF2GNQ1KecR5Q/WvCiqLqgcAqs5/zZPRwICkdDauhhHxyvX3MpY9XT2uYz4KToBXVsgCfaaQg==
X-Received: by 2002:a5d:6da7:0:b0:33d:500c:d498 with SMTP id u7-20020a5d6da7000000b0033d500cd498mr118535wrs.64.1708269240595;
        Sun, 18 Feb 2024 07:14:00 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id bu19-20020a056000079300b0033d3d9447e3sm2150744wrb.83.2024.02.18.07.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Feb 2024 07:14:00 -0800 (PST)
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>
Subject: [PATCH 1/2] ARM: dts: microchip: sama7g5: align dmas to the opening '<'
Date: Sun, 18 Feb 2024 17:13:52 +0200
Message-Id: <20240218151353.3612621-2-claudiu.beznea@tuxon.dev>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240218151353.3612621-1-claudiu.beznea@tuxon.dev>
References: <20240218151353.3612621-1-claudiu.beznea@tuxon.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Align dmas to the opening '<' to comply with the dts coding style,
indentation section, point 3: "For arrays spanning across lines, it is
preferred to align the continued entries with opening < from the first
line."

Signed-off-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
---
 arch/arm/boot/dts/microchip/sama7g5.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/microchip/sama7g5.dtsi b/arch/arm/boot/dts/microchip/sama7g5.dtsi
index 269e0a3ca269..15227a870d34 100644
--- a/arch/arm/boot/dts/microchip/sama7g5.dtsi
+++ b/arch/arm/boot/dts/microchip/sama7g5.dtsi
@@ -714,7 +714,7 @@ uart0: serial@200 {
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 38>;
 				clock-names = "usart";
 				dmas = <&dma1 AT91_XDMAC_DT_PERID(6)>,
-					<&dma1 AT91_XDMAC_DT_PERID(5)>;
+				       <&dma1 AT91_XDMAC_DT_PERID(5)>;
 				dma-names = "tx", "rx";
 				atmel,use-dma-rx;
 				atmel,use-dma-tx;
@@ -740,7 +740,7 @@ i2c1: i2c@600 {
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 39>;
 				atmel,fifo-size = <32>;
 				dmas = <&dma0 AT91_XDMAC_DT_PERID(8)>,
-					<&dma0 AT91_XDMAC_DT_PERID(7)>;
+				       <&dma0 AT91_XDMAC_DT_PERID(7)>;
 				dma-names = "tx", "rx";
 				status = "disabled";
 			};
@@ -763,7 +763,7 @@ uart3: serial@200 {
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 41>;
 				clock-names = "usart";
 				dmas = <&dma1 AT91_XDMAC_DT_PERID(12)>,
-					<&dma1 AT91_XDMAC_DT_PERID(11)>;
+				       <&dma1 AT91_XDMAC_DT_PERID(11)>;
 				dma-names = "tx", "rx";
 				atmel,use-dma-rx;
 				atmel,use-dma-tx;
@@ -807,7 +807,7 @@ uart4: serial@200 {
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 42>;
 				clock-names = "usart";
 				dmas = <&dma1 AT91_XDMAC_DT_PERID(14)>,
-					<&dma1 AT91_XDMAC_DT_PERID(13)>;
+				       <&dma1 AT91_XDMAC_DT_PERID(13)>;
 				dma-names = "tx", "rx";
 				atmel,use-dma-rx;
 				atmel,use-dma-tx;
@@ -833,7 +833,7 @@ uart7: serial@200 {
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 45>;
 				clock-names = "usart";
 				dmas = <&dma1 AT91_XDMAC_DT_PERID(20)>,
-					<&dma1 AT91_XDMAC_DT_PERID(19)>;
+				       <&dma1 AT91_XDMAC_DT_PERID(19)>;
 				dma-names = "tx", "rx";
 				atmel,use-dma-rx;
 				atmel,use-dma-tx;
@@ -928,7 +928,7 @@ i2c8: i2c@600 {
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 46>;
 				atmel,fifo-size = <32>;
 				dmas = <&dma0 AT91_XDMAC_DT_PERID(22)>,
-					<&dma0 AT91_XDMAC_DT_PERID(21)>;
+				       <&dma0 AT91_XDMAC_DT_PERID(21)>;
 				dma-names = "tx", "rx";
 				status = "disabled";
 			};
@@ -952,7 +952,7 @@ i2c9: i2c@600 {
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 47>;
 				atmel,fifo-size = <32>;
 				dmas = <&dma0 AT91_XDMAC_DT_PERID(24)>,
-					<&dma0 AT91_XDMAC_DT_PERID(23)>;
+				       <&dma0 AT91_XDMAC_DT_PERID(23)>;
 				dma-names = "tx", "rx";
 				status = "disabled";
 			};
@@ -977,7 +977,7 @@ spi11: spi@400 {
 				#size-cells = <0>;
 				atmel,fifo-size = <32>;
 				dmas = <&dma0 AT91_XDMAC_DT_PERID(28)>,
-					    <&dma0 AT91_XDMAC_DT_PERID(27)>;
+				       <&dma0 AT91_XDMAC_DT_PERID(27)>;
 				dma-names = "tx", "rx";
 				status = "disabled";
 			};
-- 
2.39.2


