Return-Path: <devicetree+bounces-255559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E27D243C3
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:42:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9017E301FD6A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:41:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0A2637BE68;
	Thu, 15 Jan 2026 11:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="BzmUI76H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f50.google.com (mail-dl1-f50.google.com [74.125.82.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F018D378D7A
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768477256; cv=none; b=XDpxCrDcxgrrZ2R6C9ACUtsZPlSgIcXuL1WwRJsUUqvB6/1eqT0I4oii2Sah79UY9dGKVubOalFlxKGp8kyeGmelJNXpdmskIDhmOlEUoZ7zs5EDXNskpGz000tC4qQUvGNqb4tF7X0pUb4oiAGkbd8qFdUARV9PhVY07sEurno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768477256; c=relaxed/simple;
	bh=b/54xVwD9NWBApT/YlbKlATwkJX1Z2JAQOFmiza0IIE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BhEvq88N08pwZAlfgSeXZNCbeng/6FFJl+IfQad1/D3pghPegFGXIKH1dD5kiSXje8721I917UEmEkS0NvgrC9dXJo/muH/0/o4LtIVHor01eMIt4y7WD8vGjiy6mBwfT667S1Hiz+++zLN7SgtzsJIPr7fbdu1iKG0EzbLb8Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=BzmUI76H; arc=none smtp.client-ip=74.125.82.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-dl1-f50.google.com with SMTP id a92af1059eb24-121a0bcd376so2134445c88.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 03:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1768477254; x=1769082054; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W3+In9zGTnNVCdfWyUqUmvhLH5cDZ41X5IQo0vghvEY=;
        b=BzmUI76HFoIf+H2p1c/j0xVbV4COe063YZKargTzFj/IGBRMeJPYbUTaHaxA3d45xG
         z8lSpJ8fz9wv6JQE09xRzLQTKoktg6GvXS/a8od588oaSVTo+xhBZ4Fqb74NiN6xvQZl
         HtsQUCSb7ngWotCTs5g2GJnkserXtPybEEXO1A2is6tuUeQVQ9jfHuQZVE8uX/IxPmM+
         KVHrgxVVvGxbUYvzt2bh43cxu90LawRwhWUJdAaZRIBmJZl91t5X4KDK98mBFre5IhJh
         k1dZtAE8z0oetFMzXE/+2TxlBijLZAi0Zr0lKGTLzrmxY51ROW2ekXGE3hQheRXpbNd2
         9xaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768477254; x=1769082054;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W3+In9zGTnNVCdfWyUqUmvhLH5cDZ41X5IQo0vghvEY=;
        b=aGgrS26IMyM2YDvRFPyZVCIkHgB9e8rpknFHRcCYM7MGoF99aFZ4HtLm2RhwE7nV5M
         7DN/c+D1VM+Q8AZNL3fn950FCXfLoUUPZf8yNL2xazdIyvcAbj8QQnq8ePhQSE0l6MmG
         3xwKIbD/qYdfx7vd+1aHwRS9pdSwad7HU9JuHFHzgafwRHQAslWUr1KcrYv3uBY7n5Tj
         22exeRVPIMp3uiSk9d6TLMKfGv06WcxH/CemcWERhT4dcWE7MwOSIxxpBo38nlAgq9Oh
         MXpNzGdH2ZqRBAH+0Zc7tuSauf66WelUXcOL1+VRdTh4OxXOjnowedA6v9OzDx4DcY9j
         /p2g==
X-Forwarded-Encrypted: i=1; AJvYcCX/HIHQ7MDVTX3Qrjjfa4C+GlZq0QahBprV3RiXvE2B4Yjp73i3cEkC9/WZi2xlEM+xCV5eWjXux20T@vger.kernel.org
X-Gm-Message-State: AOJu0YwzD7J5p0AkjbmD2pXQ0GykGcvPR7p4eoWOeXEoy6yndB1ZeaKw
	QWC3X/XoO9/0QpouRJR2Id6ujcU3gRecy0ySOEW32JVMs35cCzGhae+sZpqM1UcBVn0=
X-Gm-Gg: AY/fxX6VvYPf5fjubvzqNOWBaK3JWd07jBsy8+u7V+1ub9NX+GBCD4zm2rmJuCwinZ7
	NJIf565zh1zfdD3vdGJnJC9hCXGxiAQ+sPMW/m3roBqgwfQgqE8F5PO/YezrgC+exGE97wdW757
	r+AevS/20eYWTR7twB347Y524OKCp8Sx9tlKPxqnKzTredE3j8J7gs9vUcg4Gh6my1ynOeHG6I6
	NxbH6OupqkKLOFgJ3hcJ4oQvc4Ph9CjtKfQkM3qM9jiuyLhwPZnbQHpjwNQUwMWx1SFz86psbP7
	u4ZraPPUuxg9R5HjUWBF5+EtvVVESx0yLBb29STj4IcSVW9sXUks2DdIJ5vPd4xNOxZndRrCoEi
	fFZ6hxEwZUFx444/Qb4QWsfCckKFWSWg7Ue3zWyLFVPGvecyQCnrMEEMZB3J2x4QYR+uO0kCmXS
	pdMbqJBCP4DoLGlr/Gw5AsSxwClA7ybw8oxlfEObsuuFtpujd6YYex4bFh6unu2AqUuxKQIjcNE
	9jIOd7i
X-Received: by 2002:a05:701b:2715:b0:123:3461:99be with SMTP id a92af1059eb24-12336a38feemr6811395c88.21.1768477254152;
        Thu, 15 Jan 2026 03:40:54 -0800 (PST)
Received: from fedora (dh207-14-52.xnet.hr. [88.207.14.52])
        by smtp.googlemail.com with ESMTPSA id a92af1059eb24-123370a051esm4875347c88.15.2026.01.15.03.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 03:40:53 -0800 (PST)
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
Subject: [PATCH v5 02/11] dt-bindings: serial: atmel,at91-usart: add microchip,lan9691-usart
Date: Thu, 15 Jan 2026 12:37:27 +0100
Message-ID: <20260115114021.111324-3-robert.marko@sartura.hr>
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

Document Microchip LAN969x USART compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
---
Changes in v5:
* Pick Reviewed-by from Claudiu

Changes in v3:
* Pick Acked-by from Conor

 Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml b/Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml
index 087a8926f8b4..375cd50bc5cc 100644
--- a/Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml
+++ b/Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml
@@ -24,6 +24,7 @@ properties:
           - const: atmel,at91sam9260-usart
       - items:
           - enum:
+              - microchip,lan9691-usart
               - microchip,sam9x60-usart
               - microchip,sam9x7-usart
               - microchip,sama7d65-usart
-- 
2.52.0


