Return-Path: <devicetree+bounces-255566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B4398D24482
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:47:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BAA3B3006733
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5112737C0FD;
	Thu, 15 Jan 2026 11:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="zqtLJLd5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f68.google.com (mail-dl1-f68.google.com [74.125.82.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C3737FF73
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768477316; cv=none; b=rv1DmfFHchfTd8YlrxpJPsijho7iAGXYyCsRF2d2G3TieQJ76kTg0Hl4WunRmBJ0+9TGJS9HQ/xFT9B5NeoUj+6poSAUTSS+G4dLoEqxDXlu8aFU3EDKXsImwVS/phYIaZzrT9k17yqlPra8aABXFGk8TFMM4DB8NPvIgUCgnY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768477316; c=relaxed/simple;
	bh=Wp32ITHx7s2+X+835Jbu4gJ7F+S1PggViopmVDWASsE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q46djO63ADFqOQdoL94flHEtZsGwemNMqTxG/lfTunI062IWKtAWwemVQSK3tQeDHanl8f+X90gNnk8kVt9EA6x6mGa1IofSDE5BKp+1lMbyDFu40S49TQU2WHTivbQ6dgszy3XSSIhbb7nlQ3Y3XgYuUFe4rfVMcQJEy2B4+qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=zqtLJLd5; arc=none smtp.client-ip=74.125.82.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-dl1-f68.google.com with SMTP id a92af1059eb24-1233b953bebso1973040c88.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 03:41:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1768477310; x=1769082110; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z6BNeAKcW11oL+iAABviMYbNNLfmxyGYsliVava+u3M=;
        b=zqtLJLd52zChUvs4oYWUJHIMhxUAmPvrUA/0RxveUEHPvgdR011hU/GyGExJrIAUtw
         ovZapknkgFlI5/Zy7PYrplN8lb0nEvwlrB2bitjgOHP/9PAg1nrZA9Fj3UIvooQSj2Eb
         aOmSZy9AaiWsrmQA8A5g+8gR30/6QW10C906so7KV/BSfppbdAkUBExMMWuejC1oyg8a
         hS1eVLAVKZ6isDD7pGVC/rjV+tM4j3B2ep3BO5FIQk93c4p82HoWhGA3oGp1gXkRV+Fx
         7lVupRmwIN+TVrcbFZYu3fb4M/QxwuuB4FgD5JB2r/pXEiPUEbhi6FRsYlGJffrqypV0
         R7Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768477310; x=1769082110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=z6BNeAKcW11oL+iAABviMYbNNLfmxyGYsliVava+u3M=;
        b=RHru/Q17QTBRXP0EkZSSS/N3BE/egbC0+8nZfHt+Lh1rruqZo/Xsmj9fAd2vJpPJyD
         BGgS1QLSg2JttI2H+eIqooicVcosifYIQ39IKZvqVdvJiJKOZg9CljyrGGp5looAhlUP
         01rpLHJo/PX6I19+3xaby6Qu9mWdldqoT+wWJtNonaM+mvhoxGYJbgLaFeQnF9WXb+fl
         /f0nHcEte/rdndpCyn18jDEMZw2beL4iifdRWo2G3P+iocr4Bht2qH2oHBr1gP6NDmPI
         rYwmb9P5zcYpvW32yPSHK8vFqApp+y7dYk0Km3bnXqPdOK04YwHeQuMl7EtrLtqEGUDQ
         tPcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVeYflgUrAMfbkJjjoHVV7uiZlNKdhI27ibaPkOZh/14QeFnlF6RAXTR/Ve3qRPCD0f+BdlsrlQM5FQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyjzQXROLaEiuHLVF5VAeI9bBKE6SOFNjY3BACf9sghVm0BZuNo
	wGOB+61HO4Dm2NJcqM3eDspLoNqvfiqViHy2nauP0H/mREoJpqbeE60tujo/ITC3YJA=
X-Gm-Gg: AY/fxX4+YyhTFsVL52UqNrR4CgMhXpRC2l9pLnFlmedvrvCdlwc09YSLJJJ/aCAntal
	0+5ga3qzr4OGtdQfm/1Zp3h3bBuduShSjzUS0Gxkg0gvf84L74zj+u0wGJrss6Im9NHRyhkMgTo
	TRUiyTABnMhLWrScq0BRDBqaa6mzswi0P1egYIHJhJVQtO0cOZAhKns5NqMcx/2yZZgdudlaU6N
	YsoqFFky2h2Khntwc78Q8A83wywd0GnLbJhpeKde5mEPlnmQJqbOPA4qNA3t4rlMBtjKwTybZ6E
	MIsUS9DEV3z5R8YwHvjXq3fnP+W/VZ8OF43bBPGZ3qq4ZnhX4Vdh1T+ag+o/Gx8OK+pvaL2vNH+
	UMfLDhq7S3CSDJ9e57ArRReQJJ7gQubkYEELrIL3IsSFSfh4dWeTzcU7ld23ZWqspYK1Kfg59i4
	c7Rg8JUxWRDEfPOag4qeatLwSNJ00Ou6DwzXPklZ22NCnQCygGaHV5sXJeZgjbvLxMZDHDBoox5
	bX+FaZK
X-Received: by 2002:a05:701b:2715:b0:123:3461:99be with SMTP id a92af1059eb24-12336a38feemr6814416c88.21.1768477309977;
        Thu, 15 Jan 2026 03:41:49 -0800 (PST)
Received: from fedora (dh207-14-52.xnet.hr. [88.207.14.52])
        by smtp.googlemail.com with ESMTPSA id a92af1059eb24-123370a051esm4875347c88.15.2026.01.15.03.41.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 03:41:49 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev,
	herbert@gondor.apana.org.au,
	davem@davemloft.net,
	lee@kernel.org,
	andrew+netdev@lunn.ch,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	Steen.Hegelund@microchip.com,
	daniel.machon@microchip.com,
	UNGLinuxDriver@microchip.com,
	linusw@kernel.org,
	olivia@selenic.com,
	richard.genoud@bootlin.com,
	radu_nicolae.pirea@upb.ro,
	gregkh@linuxfoundation.org,
	richardcochran@gmail.com,
	horatiu.vultur@microchip.com,
	Ryan.Wanner@microchip.com,
	tudor.ambarus@linaro.org,
	kavyasree.kotagiri@microchip.com,
	lars.povlsen@microchip.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-serial@vger.kernel.org
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 09/11] dt-bindings: arm: AT91: document EV23X71A board
Date: Thu, 15 Jan 2026 12:37:34 +0100
Message-ID: <20260115114021.111324-10-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260115114021.111324-1-robert.marko@sartura.hr>
References: <20260115114021.111324-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Microchip EV23X71A board is an LAN9696 based evaluation board.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
---
Changes in v5:
* Pick Acked-by from Conor
* Pick Reviewed-by from Claudiu

 Documentation/devicetree/bindings/arm/atmel-at91.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index 68d306d17c2a..bf161e0950ea 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -243,6 +243,12 @@ properties:
           - const: microchip,lan9668
           - const: microchip,lan966
 
+      - description: Microchip LAN9696 EV23X71A Evaluation Board
+        items:
+          - const: microchip,ev23x71a
+          - const: microchip,lan9696
+          - const: microchip,lan9691
+
       - description: Kontron KSwitch D10 MMT series
         items:
           - enum:
-- 
2.52.0


