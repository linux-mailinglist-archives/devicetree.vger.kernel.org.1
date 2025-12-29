Return-Path: <devicetree+bounces-250270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BDBCE7E11
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 19:44:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 90183306435E
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 18:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4616C33A6E7;
	Mon, 29 Dec 2025 18:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="u7HmGPkA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6264133A9EE
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 18:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767033635; cv=none; b=gE4yAl+U+N8YyYBmW5yyJ0BgyP63CMWNhxzJ+W99BfYut3sOPdqfx2pYSysiOZFllD61wVoe4i/1Nn9K93rM0jEeUyaZ9skVLtGnMcutudJKMx7XtAKWMwhZ0Siddk6ttmnhgjCTbgdYpqcj1tbO6N+jiCzzB2nIdPcJIlFIqno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767033635; c=relaxed/simple;
	bh=7jtkvldmPSo6tJBxZSibRZu5hmUTyLaiO8iQq/Sa4wg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VTc/sWWn2dDTl/IYHPtH35888XFGbBogJaBT3eclqQjHpxvm2Aze35bg1eUMJqbVytP4p8Yi2yXkfOTvIf/bT5mnC8qjU1wYws2BcOsBcjLU2W6CPMssK2gReE4iBx08my9XF1vJ92RogKLVFsn4gHzKKgbQK6vVubiQIkOvGRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=u7HmGPkA; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-477563e28a3so57267995e9.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 10:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1767033630; x=1767638430; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZY5t/vT8/2JoNFBpsoZEjWJnrTyKVma3HFBR0NVkIKs=;
        b=u7HmGPkAkdP3R7rcUekjuNxY1rqjuIdNyca9I/XGM9QnG+kfzr1RniY05coFnav3Ng
         RYHUu+lqU0wDiflHit52ZG0t1bmh/XBC+sQTV348FEuYagsi0eLdDABPMr2PVkaD7inJ
         smarDUYRZ7OjWsdOyQ7pkBVYoLoQKrRfREcBHdttYvdam13AsICcjYpaIixihY848NF0
         4+AVUcKCS1vvv6tkvlnLJv5CroC9pr3VorsPqY0IGKUkVt2HWY+/PhFxoJpOM5MxrRZR
         rn0bKm0ktUYeG/Ov+a8MT9JGcL8LG7NbpQ5e7zQAkwYV+aLTTb3hvAKTdGWO/w9MZ01Q
         gN2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767033630; x=1767638430;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZY5t/vT8/2JoNFBpsoZEjWJnrTyKVma3HFBR0NVkIKs=;
        b=iCpKbmWL+eq1LMhpzeMfTSF9w6VeHbU/6RY9efLEBj9FHGXp2ZxfhcQP0dIEGKWyYF
         drNVM7Rkb1UbWN1oCsw7z+RmTJrKQ95ZlFIE4FKFz3iVv3q+eMIF4mEUCb0J7TJtF5mj
         ch4KxXswmp9QNwDL9ajLYF5+5OW64GsxaPiE6YRyj4VQ6OzbHquwusKwbQyxkBK36G65
         XeBsRwwdAPpEkSRtIEInZOhFKEbV0uJ8MDVS7iMhFc3ZxI/NqSiE0adxps1bsHm+Yqe4
         BuBNlloJFwPTq5uyiSjYmgzNz1Pg4dFaAwknQj11xoMzRiFKC02f5ocmouziZSjMBa1M
         fzIw==
X-Forwarded-Encrypted: i=1; AJvYcCWpijF27cgflQjVnsnZiL/Gaaon15vrcUF33bCRrNJPJGT3R6NZT7/D6vqWxVzHWUaIQCkf6ygge3sp@vger.kernel.org
X-Gm-Message-State: AOJu0YwyVV/bjGCDDEQcGVgqKXh8MINMqt1A8tu4bpiT8iBCbrPV3PHz
	RzDT527PClfx92frTgPmC8MOfgQSmc8cyMP/eWUnWr+mJQSpysLN4ocXvK9NnPP7W5E=
X-Gm-Gg: AY/fxX4Bn0/BB9IBzEkMSU5dlIeZnKRIFxbUIAZna7rnTD45euGfsrSnHvznXqc9bmn
	roNjHpLu6KtDyQg69noUGsXTkZAH3Xp7Gk68qPZ+trXF9/Z2LJYCT3rtWDVyCn1ufeGPuvit4px
	cdwWhk9/FDZCqIYR8jR/JVFRDsZJmrXoJWQwJcM/6aT3djiOI8zr/QzV/Su7mANp91mDUosmAgm
	0TgKZ4rl5XLPJTWtPh1YgnJn3EUN/fcqwEE9Rvljt28Ch6hngcVqmZWNn6Dh7H7+JfCtKpDDKYC
	hDQIbZEooEgx2DXJYMQi6unpwOm0G5yyRowlCPuEhi/zWiulOGDF1iYz4Jwgyv7Remmw07CJxs5
	HghXa+hjy0A1dhzPowIKWK8oFO323caWFPp22hzPFQwqktVP396QAScm5QbNcmOM99wpTYJBkoP
	vkYiEXDPUpcp1ISwuxOnoIK5D68ZMGAYhXf7Npt2kkyyvIhF0KKIB2hO3rv7mUeuW7gl5wRgNUo
	zg/Oi6owO/1mdH4u65KCD85aC6r
X-Google-Smtp-Source: AGHT+IHU5TUgf1GXiZLlNhFvhk9NZs5LXOVfATsL4H0x67DGWgTd0xHPjLFDLe/wLhfc9aOjmrDYdA==
X-Received: by 2002:a05:600c:8b11:b0:479:13e9:3d64 with SMTP id 5b1f17b1804b1-47d2d273999mr360424715e9.15.1767033630467;
        Mon, 29 Dec 2025 10:40:30 -0800 (PST)
Received: from fedora (cpezg-94-253-146-116-cbl.xnet.hr. [94.253.146.116])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47be27b28a7sm604907455e9.12.2025.12.29.10.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 10:40:30 -0800 (PST)
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
	linux-usb@vger.kernel.org
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v4 09/15] dt-bindings: dma: atmel: add microchip,lan9691-dma
Date: Mon, 29 Dec 2025 19:37:50 +0100
Message-ID: <20251229184004.571837-10-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251229184004.571837-1-robert.marko@sartura.hr>
References: <20251229184004.571837-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document Microchip LAN969x DMA compatible which is compatible to SAMA7G5.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v3:
* Merged with microchip,sama7d65-dma since that also falls back to
microchip,sama7g5-dma

 Documentation/devicetree/bindings/dma/atmel,sama5d4-dma.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/dma/atmel,sama5d4-dma.yaml b/Documentation/devicetree/bindings/dma/atmel,sama5d4-dma.yaml
index 73fc13b902b3..197efb19b07a 100644
--- a/Documentation/devicetree/bindings/dma/atmel,sama5d4-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/atmel,sama5d4-dma.yaml
@@ -33,7 +33,9 @@ properties:
               - microchip,sam9x7-dma
           - const: atmel,sama5d4-dma
       - items:
-          - const: microchip,sama7d65-dma
+          - enum:
+              - microchip,lan9691-dma
+              - microchip,sama7d65-dma
           - const: microchip,sama7g5-dma
 
   "#dma-cells":
-- 
2.52.0


