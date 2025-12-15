Return-Path: <devicetree+bounces-246707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 248C6CBF22E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 18:08:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 82C2930442A6
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0D8B33ADB2;
	Mon, 15 Dec 2025 16:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="wuE/sKde"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4F9337B87
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 16:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765816748; cv=none; b=jl9oHZC9ROrLxGqGbnLWRieH+xx149NDOILr+fgtwe74GidPBsWgs+MersDKNwOL/etVu6k31MzWl7X44mJrg/QIV3G1zJx+ZpwZvazIWqZv/bJgNOdVFgMtkiib4/M/F/d0KZv0c3IvX2FfF8KBcZc39lWYsIl98SWX4Sjx57g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765816748; c=relaxed/simple;
	bh=yzcerxGw6ZEQ5EAWvF/XHa1fvQNZAbIc9+3T/p54DUI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ANw7KZlh7RRakboXgZnvjQ3NgIkVdatmqWc+t6Bu1c4JRZXHEIuwTVc9MI8yQC7F8wgQ44LT7iiUMdj4JO5zV3WnlpD9BTIA1aiJjZ23+InyMUZRdKcxMNUlhHmdZv/kK4ire1CZI+zG9QUBBrJFKM0uf/Y62teT6VntZGxEODo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=wuE/sKde; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso40413515e9.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:39:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1765816740; x=1766421540; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B7uXKaE9ntPCAZ2rjdGBHoMUGCXZvwAT6+sIs1szqdY=;
        b=wuE/sKdeZ1o995m+SXaS8gdLHPqBj9GX4ItZqDHLT/qyQVo6rZb3HQc/BcqB9c7y5T
         WAWKU5zNvBo3ukX5igI9stooGkl2JDOJfHn4J1f4AYJLQrPEKVd2idNvS1PnecZcOAyq
         mFoxp5oktt9oRgiksHv5Z4zX/eFmpFXWKx3IIax7Z8kiRoMB+FT6Ll34iiTLPHD+qAzV
         7re8uKM49/6YD+Lft9crtVxLMzWamLgsxkgI/dyKNTW413QTLQSC3Df6Xs8ax13SyOye
         EEfiPyAgiG/5/DD9prlU8lV/UkYUcRTK6gB78zSOSaMZ1IvI6Ok8OZ10nBaYz4uByJ64
         jtuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765816740; x=1766421540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B7uXKaE9ntPCAZ2rjdGBHoMUGCXZvwAT6+sIs1szqdY=;
        b=HTRqVSiAIhlefKqAlV9swhxr5VqSq/huC7KY/Yi3BRZbhUDsdifqg7U46E+fKXKKkx
         1gcL6M15/5URFiWpTasT36NHPAlGCJKjW6nKmTjdsKJ3QXJPvDt7MsxhXmBMAUNP5vCy
         E6QQO/ILananbulIhM/IggvPMK8L88/igmEeNmIMipFT2JPdFnuBXhvNSFqC9JUMSQjl
         P5RahTIQNwe6sQH0ewXNKZivsGLjCx0AjAf/YUsQnsJbl5WeiXBNxoufg2rh5EmEIgy7
         pHgn5KV6TAM6eZEYqn0I8h26ERQFJsajLcxisDi9RnJdE48JL3u7R9DWW2ED1k9tqmG6
         lZ+A==
X-Forwarded-Encrypted: i=1; AJvYcCVWBZXQkgN4ywrV0x3QCn7sNxMdie87kEO4e2+iiASVMFa0NU7uUWVXI39D1qnXnQJVXAfgYTF7oS5Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1uvjJ6bIOX2nthlBwSFBr7In5j0cLGTwS9IZ9TpnVemY9MKHy
	T90ngtWCOuSSWlJah7S03Qnvo5YfJevIwbQ/0naQcMNGg5RJFtMaZ843G31orIrYH+A=
X-Gm-Gg: AY/fxX5m0UaICOYETSRj8NLwHQB8CgaOwIUiGUboGi8nQ0C10w8xVNN3zS//cFP4U/E
	vm557HeAFtwdHfcye6gX7n8nCW5svq9Dx7072sVYZu/T4EuKefNUAsPyuHym9xv1rg1a+PGWdvX
	jRULJhVZsRGPZOOKk4XK2tq8T2urDq/f28SvV5DXreR09R8rpBxOTnof5DIDmBelNL12myFmK4T
	Gzwf9N8LI08gj/KAosn/QKLQPv7wa6yY2WxQfPm/w/CnfMcGlz7UPk0yAQREtBDOPUrw+DBdlfO
	qvGLngN5fFSXOsjoyc+iBMxQ/tLV+y6PG3IoopNbTxDRP+3lsNY+NwXery3mofrGRcfPr+YPv7n
	pA0qYAxeLBIFMKdGqw6UYHagmFTDEJxxMkf9CgXQiiCG1+kixeWOFqYRZxx5ji76X3JdzSoV08U
	ZUiLZY72t6p1XsRFf6WRuPayKd9M/sSCtHb6nFhRvhfLBU
X-Google-Smtp-Source: AGHT+IE8U04tM1LjVUd6BjLQwQ0IIQCLbUIBLs6wp+cysOg55uq2vnToFSgCzvzZIateLKaG+nb0Ew==
X-Received: by 2002:a05:600c:46c4:b0:46e:59bd:f7d3 with SMTP id 5b1f17b1804b1-47a8f9046fcmr131388855e9.20.1765816740113;
        Mon, 15 Dec 2025 08:39:00 -0800 (PST)
Received: from fedora (cpezg-94-253-146-254-cbl.xnet.hr. [94.253.146.254])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47a8f74b44csm192209725e9.3.2025.12.15.08.38.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 08:38:59 -0800 (PST)
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
Subject: [PATCH v2 14/19] dt-bindings: net: mscc-miim: add microchip,lan9691-miim
Date: Mon, 15 Dec 2025 17:35:31 +0100
Message-ID: <20251215163820.1584926-14-robert.marko@sartura.hr>
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

Document Microchip LAN969x MIIM compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 Documentation/devicetree/bindings/net/mscc,miim.yaml | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/mscc,miim.yaml b/Documentation/devicetree/bindings/net/mscc,miim.yaml
index 792f26b06b06..2207b33aee76 100644
--- a/Documentation/devicetree/bindings/net/mscc,miim.yaml
+++ b/Documentation/devicetree/bindings/net/mscc,miim.yaml
@@ -14,9 +14,14 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - mscc,ocelot-miim
-      - microchip,lan966x-miim
+    oneOf:
+      - enum:
+          - mscc,ocelot-miim
+          - microchip,lan966x-miim
+      - items:
+          - enum:
+              - microchip,lan9691-miim
+          - const: mscc,ocelot-miim
 
   "#address-cells":
     const: 1
-- 
2.52.0


