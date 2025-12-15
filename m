Return-Path: <devicetree+bounces-246709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 878F5CBF2D6
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 18:13:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D5B833043045
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:08:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F89333BBD9;
	Mon, 15 Dec 2025 16:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="VZQWF0V2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3954633A036
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 16:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765816754; cv=none; b=Z8dS0sMV345QjevJLJ29v01jrp5T1+g7kcb7If0/EcS2cn5Y706/uNt40y4rT1PeHVdEGuBIeCacwa63SwPIx6KFgB6Oj1fpKBYtFhPzdWS+VWcCtxO9KzmsW2WtioBuA2tfV9AWypCQMebcEPVD+LgMVHPST0EYfmZZcU/VgJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765816754; c=relaxed/simple;
	bh=VPVs4jF75VJXH8mdDS9PaTAypaYoWoEKaAjTQEnezGY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HsXWIhkPlR0gRxmb52D89pXBJbjjEpARayk2Xu2gk5NyWxr3swd4ls0GEO2LuYloJPcPut01cSkYLB7VbgV1+V1bok6jhSN9VmfTj8oLr85zKgHdY30BsIcFMYyRffgDGsjteYQEnaJT2A1YZqWy4lgZtgVrCwOGD2jnz2wUz5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=VZQWF0V2; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477aa218f20so24303445e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:39:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1765816742; x=1766421542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s0OEssTGK11BYSFNM6Q5GJFG0lDY4xg8K+duT0eXTMo=;
        b=VZQWF0V29r1IgpfaJxCInv8zUo3+O4jzEdgE4tPFejZmplpHFTHeqVt5D6cXNZ3Ukk
         L6AEFF6RG8SFASe5M2a4eiD/KbzxAgbQH36T3jjYKngJbqaWT/TPp/q/OpyhBY1sXQhj
         yIpYTxkVaUCjXyiqskr0VF/Bhig7ipzAFn37azEXrBmSHDP73kWveQSfb1/oJyoZhBqz
         rtPZItei02rqsC3yEHu6GAV6lTw9A7IUX0CoC7l23pFlwdi9C53Jyfagb4uKlZFcbfRm
         cI5aKxlYdr7G1ZK6jgWC4oGsmO+YoJznPt4a0HmkcFxhQfZfAJomZynzewNj9NqRqbRN
         jstg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765816742; x=1766421542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s0OEssTGK11BYSFNM6Q5GJFG0lDY4xg8K+duT0eXTMo=;
        b=EGt96fcgCWhXV7n6W0FUKxRjY+CdqjWgid35/bGZXeuc5P4lWccZ5zVLH1FnES6UFO
         AIUcpU5O81Pdv3/ecDP5XlQA2fToD7qUbQli1zSPwr8jZ+DPaCcoio1Am2vIi83ZAvbS
         ByLhSI666M7dGuOwGD9xgGHDYSXN6ytIvncPmtrZfJ0r8o+8m1u4hZ8ODBs3CF2uufMP
         jOLSXV9CfH1heBhEcjjqYrCkQ/891YhRPfihGoolHVgxHb40Ts42en6InTTRREyCIP3U
         UaOIF6IMqCPKiBFwpSfWRCWDFN6T/VaLPfZrDDiCEs9IWzNlHwa6byQYBRr0PQydM8Hz
         a0RA==
X-Forwarded-Encrypted: i=1; AJvYcCVtkxTWNSLQINF6tqbGo45gxavnqvNNGdWhIlTdubbS+vcrTSRXnx2cXrmwnWAiDsT517SAqQqaosPh@vger.kernel.org
X-Gm-Message-State: AOJu0Yzeppk8ja3obnAw/9k3rHOhETbKIFv5NlJEWKAAwTkpR8DwmlPv
	vOsRvbVKZbR+YTSvW0FscXPRYm5eqWwy+1g3MV1iYNIs6PbZIp10O2HSbZbXyHVKnfs=
X-Gm-Gg: AY/fxX4OAS/w1loTL7xeMdNG0cOxzapKg8hS5o95+jp7GASVuG2cICjRNOK3j7B0IVE
	uPDG2pvKrox4q9J77e6POGkL1tM6fh6noCFnbWQyt+O54oosWpwnGazvf4tsiuobx0REgcDwKCl
	d7SWX81vH+Os6PGpRtQU77qwotLbsUAUHJVIRZV6ywspY5/kCZ/xnSIXAQxpO3gLIQS03biuJLb
	jKgOv2PLyTq7Qs748Or/Q9AHKY6GBwx6BdPt9jkqYQf9gHLLgGWCdbgb9pGxtSdQs1hOl6n+3He
	bdPqPbzQEJQy+PjrNIXgqoEYi3UtN9/DoTKgWgfNO1QezHWPxE9QajDkVK6uBUmoh2RVk8v4w9B
	qljkIZnmuBTGbuFSfG/5QzvTy9J0R0fpXzDIorvtxMRgHzqaNEu0Hc3t9J8/ARvotlEd/tiVM6R
	IdsPtE5dw1INpQdngUe8eFPVL/HWqXSiv043NEufiSvQr7
X-Google-Smtp-Source: AGHT+IGZRk0nLa6XE7JBLcVbJ2etCXd7oowIPMfnZx4Z6qSPahCqU8A7b4zUyWiscDsHFjn+GrD1MQ==
X-Received: by 2002:a05:600c:8b16:b0:477:7c7d:d9b7 with SMTP id 5b1f17b1804b1-47a8f915711mr129583515e9.33.1765816742452;
        Mon, 15 Dec 2025 08:39:02 -0800 (PST)
Received: from fedora (cpezg-94-253-146-254-cbl.xnet.hr. [94.253.146.254])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47a8f74b44csm192209725e9.3.2025.12.15.08.39.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 08:39:02 -0800 (PST)
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
Subject: [PATCH v2 15/19] dt-bindings: hwmon: sparx5: add microchip,lan9691-temp
Date: Mon, 15 Dec 2025 17:35:32 +0100
Message-ID: <20251215163820.1584926-15-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251215163820.1584926-1-robert.marko@sartura.hr>
References: <20251215163820.1584926-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document LAN969x hwmon temperature sensor compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 .../devicetree/bindings/hwmon/microchip,sparx5-temp.yaml  | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml b/Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml
index 51e8619dbf3c..611fcadb1e77 100644
--- a/Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml
+++ b/Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml
@@ -14,8 +14,12 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - microchip,sparx5-temp
+    oneOf:
+      - const: microchip,sparx5-temp
+      - items:
+          - enum:
+              - microchip,lan9691-temp
+          - const: microchip,sparx5-temp
 
   reg:
     maxItems: 1
-- 
2.52.0


