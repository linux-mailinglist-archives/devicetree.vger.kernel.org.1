Return-Path: <devicetree+bounces-249286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EACCDA7D9
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 21:24:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 492FC304280E
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2188434D390;
	Tue, 23 Dec 2025 20:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="mknI3aHD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E34A31A046
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766521217; cv=none; b=edT97ZAoPRBWCjN6ps/GzipJ+6AxkOY34fkYqYmOxUff0Yij3bj1Y7B6AsJxpaOypLo/DuvnVfr2ScM91Twrk9W+URhyTKIqdtdj8YbE6skg+aLVN2nNS4QjNn/CrAyzTZGoLrRzJZvYBOc+pe2YKF7pg+xUNWkNf7zRW6wBgdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766521217; c=relaxed/simple;
	bh=GSmfufS+BjcFXAR7DhKTmRXgeyl65npdKjntCPPDfHY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aqGXUqw8b5DwWwlJiE9V+cSHX6WgC6mquOjKMmoQbJhMCgSOT8n0yHlUpR8xrDQk5Gca/A3no47zeS68gRaFNWQZBoVX4PwGcarPOj27jzksNzYCTiRx1lQAZWdbDG9r1jcrZQaQh86dscbyvM4We6+QEQZCms2y22TRs+jU7+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=mknI3aHD; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7ade456b6abso4458414b3a.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1766521215; x=1767126015; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m2FSF4N3N2MYzlByPoECc2cAz8v8tXyMKGpnQtUm3aY=;
        b=mknI3aHDk/xx6E1DXCAkhUtT53KYTa8H/fy7ZqYi5lMAYZ2pnjDOEBbpIn+PxzsEih
         Wi8gHCcxw6toR6SqJxa0bt8CxPRFrw2FGeuOBXtyqNd/OiX8LDNzXflhB1fmTCJggOR+
         YGkdiMbAf487Cc3/wOyoWB7V8JvpTpMJwDUOtBr7clyUt5ACpOC3y4DWtOmXN/0bgspv
         S+1LRRlkfT/LfRuRi8mvNfnDrTa7d0Rz3fVOwnNtuYqX9hOvYGnRNM8NwkprFzIiTiGt
         DCBGCog1PbUG/q40amKbvFtSJI3QV2PfA7L1Id37cDtu8ahGqYpYnBl3zRj+quKK05rp
         MSiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766521215; x=1767126015;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m2FSF4N3N2MYzlByPoECc2cAz8v8tXyMKGpnQtUm3aY=;
        b=j5nDIUCRP6+20SjQwcKfynOURbrNzZ6Y5wEvx9nh3iRdzj7X9qZlGON+u1K/m++IPu
         Ci51AYQD2vPq2KGUbLVkYDy9AfU6E/HlKOyCp0KMpGtOY26up/HyPRV/aW5st/7rAFGQ
         iGcLaPh+g7/v+MTiBV8o2NuuqgTVFrZCbUFr35Z6rQtS0gu+NWlT84X1RNApSo20b173
         2G37UBAFtG9rgJqJnaSYwtnAHpxBoqrd/qU0oWJlu87zKyMi75JtyCyTYb+Gdu+lZ5Yo
         /jYkjHZfj3oMEOGlrckIDEWtmFTnk591gjydaUEmOBoT8mhuu+kbaBEzgOmlR5CocC/1
         DuxA==
X-Forwarded-Encrypted: i=1; AJvYcCVTRl6kL1WWqxBdzNiXDHmnB9aBfpvj9J2bcaIOvXmgDDhOW4YL3iBkOfEOEIhzLx2IqwB/3RoaZfNg@vger.kernel.org
X-Gm-Message-State: AOJu0YyWmX2O8YTZROdxfdQtepTHn8eOp5h1y84qM/Q47hOuizL+zTJz
	63lABV5tDL+ds6XvhYPvRpg1pj/poMzl7Qtxj96/wOfGdtDsLRjzV8UJwWsV8Jl/t0s=
X-Gm-Gg: AY/fxX4tCnByPbXWpRucZxqfCpleZmvpLO81E3JiWvwOQOdxm3bD9Ook3JfO5b+9cA2
	zkCByp31KacxfY1In2qCQseyHyTBy6sQMzmBCyd81Yxnaz8/k97QzcIJR7Y0qBURLqK21k0ndiP
	MQzN9g4Oh6Uin8l7chnOu1GaBd0tk65yuIGIf7E0ZiJFtLVWuNyS35CIb/Ohr0tAhAyJR0oLL4c
	rJtQKexxyEQabf9B/+EJ/ZeohZA+bZMALr+TIkvyq6meRvE6Z4pYVS9nvXJKHrdTZcfbtya9J+e
	UrIrp87weCWH6QpQxIJISBm3Wy79pCtY3yraSksVuNk/FoqVHo5Yuhft0RxrrImMWKFnzZ62YS+
	ZdzGp9WnpVbj6ekRO3FAUOSXVQ+CNYu0qcxTLtIcuFzxhfp/oec7cShLoFmgd8yNnSuIO8iKMCq
	xguK/As7JlXagPH9CF1n6MBNpbkW2+P5Wh5aPpEtyLdfyvKWPBN7pGM5K0TPLFull6t49m0b117
	0fK2J6A
X-Google-Smtp-Source: AGHT+IHTipKQ2GYkfIzCrgEkT5HgaT5cetpxH7RTkCWDpkBy3UcCKVeG1Kf0FvBM/eI9Sln/VDayPg==
X-Received: by 2002:a05:6a20:9149:b0:347:67b8:731e with SMTP id adf61e73a8af0-376a77f12e8mr16762772637.14.1766521214766;
        Tue, 23 Dec 2025 12:20:14 -0800 (PST)
Received: from fedora (dh207-15-53.xnet.hr. [88.207.15.53])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-c1e7cbfa619sm12567549a12.36.2025.12.23.12.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 12:20:14 -0800 (PST)
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
Subject: [PATCH v3 04/15] dt-bindings: serial: atmel,at91-usart: add microchip,lan9691-usart
Date: Tue, 23 Dec 2025 21:16:15 +0100
Message-ID: <20251223201921.1332786-5-robert.marko@sartura.hr>
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

Document Microchip LAN969x USART compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
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


