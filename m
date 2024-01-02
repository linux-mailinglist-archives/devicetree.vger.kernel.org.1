Return-Path: <devicetree+bounces-29212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBBE821F63
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 17:18:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A678FB21F59
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 16:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1EE114F72;
	Tue,  2 Jan 2024 16:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="Y3uL6p8X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC9514F6C
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 16:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-55668ccbb87so433396a12.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 08:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1704212324; x=1704817124; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IebUmbVG/k5f+E1VZrJFf2G8VcKT4fPdAVa0LMaN04Y=;
        b=Y3uL6p8X1TWRbdpWoquBs80bmy3p2nKfKHVAjDZicI7i3U7B9BmvqshV33Td4YmT7l
         Qlh7cXz/lVrfKt1wSd0K7S3Bqt00/mcvT3eq1A5DGUH9ORUj8e/ABh7VJsLLn2sQnMgQ
         hVJsYUdT/YU6nW/nWLPN75yeeoDoZScEt5dg9OBW+GJ49wyWoRdBGy6iFW/xz0kzb7JO
         sjp/vyOa3hTc7DAD9VV/BatChf1G02iD5N9X+W6EpTT4WOlWogNSQOzBdLotgbeUceWB
         f1eneaohTX6/7W0yVUQrfoedHFq1ftUuPQIgGCNXlXubALeXqx73ibn3wDa+sJY9cQYi
         ZejA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704212324; x=1704817124;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IebUmbVG/k5f+E1VZrJFf2G8VcKT4fPdAVa0LMaN04Y=;
        b=mOMFlFPZ8GJFQZNUnzrm8lVEADANgJQfGIytXS1uoHiekhVxFWsQfm52W/xtqEAfYm
         PjT0dyMcLZPytvieTg2boD94po45RonEmPfMMdsvEd7qal/dW0YVvPKR4HDMyJKp9+t6
         GGV1lZ1DaF5dMTz4FGLvwfVdB6i05K4tG/7BIzLBEp3wJnwlA5KuFDrh1W/RjF8tcbnk
         yanPUFJMYD3BwDiqFwZoJL7E9LvX61CIhnZxyyUeiPhaVD3zJfHTkvnbB+fIPwHCL35M
         ODXYITMRbzVWPyajB/RIkTG7DdKFnItsMAfIVvXn+Ww9Zjeaqkd7Y2ktOlIulhgmcnq5
         M5+A==
X-Gm-Message-State: AOJu0Yy0BjRJmgtzH6Gbmo35IllH51aM7KFSHIzNiaTUGVpRLLN2Lowe
	Q59j1AYA1eZthyL6z94z+PuT4XCsev6Hcw==
X-Google-Smtp-Source: AGHT+IGuz+pvMnmNqi5iphXcTF7cDrb5NUR/Xn0jpNBfwhlN16DczT5kLZptWqVyrvcyO8VyJEVHpA==
X-Received: by 2002:a50:d74f:0:b0:54c:6fc0:483a with SMTP id i15-20020a50d74f000000b0054c6fc0483amr20387335edj.2.1704212324140;
        Tue, 02 Jan 2024 08:18:44 -0800 (PST)
Received: from fraxinus.easyland ([77.109.191.117])
        by smtp.gmail.com with ESMTPSA id h12-20020a0564020e0c00b005561a8c2badsm3969191edh.83.2024.01.02.08.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 08:18:43 -0800 (PST)
From: ezra@easyb.ch
X-Google-Original-From: ezra.buehler@husqvarna.com
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Cc: Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Michael Zimmermann <michael.zimmermann@grandcentrix.net>,
	devicetree@vger.kernel.org,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v1 2/2] ARM: dts: at91: gardena-smart-gateway: Use DMA for USART3
Date: Tue,  2 Jan 2024 17:18:39 +0100
Message-Id: <20240102161839.702625-3-ezra.buehler@husqvarna.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240102161839.702625-1-ezra.buehler@husqvarna.com>
References: <20240102161839.702625-1-ezra.buehler@husqvarna.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

The AT91SAM9G25-based GARDENA smart Gateway uses USART3 (ttyS1) to
communicate (over PPP, at 115200 baud) with the radio module.

We have been experiencing packet loss and seeing errors on the ppp0
interface. Enabling DMA for the serial interface resolves the issues.

Co-Developed-by: Michael Zimmermann <michael.zimmermann@grandcentrix.net>
Signed-off-by: Michael Zimmermann <michael.zimmermann@grandcentrix.net>
Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
---
 .../boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts b/arch/arm/boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts
index 92f2c05c873f..af70eb8a3a02 100644
--- a/arch/arm/boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts
+++ b/arch/arm/boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts
@@ -121,6 +121,8 @@ &usart2 {
 };
 
 &usart3 {
+	atmel,use-dma-rx;
+	atmel,use-dma-tx;
 	status = "okay";
 
 	pinctrl-0 = <&pinctrl_usart3
-- 
2.39.2


