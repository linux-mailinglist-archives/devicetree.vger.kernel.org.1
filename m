Return-Path: <devicetree+bounces-246697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 12310CBEF2A
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:39:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3BBBA3018278
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D31E332EB4;
	Mon, 15 Dec 2025 16:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="NsVvFFhS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A9B33121C
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 16:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765816718; cv=none; b=eCu1QcsUpF1mxnVcad+mf21vHtijrD03e3Av2IxuA1em2sqV+0NFMU9e3ZOFixI+sI+hatLj9hlTAjPB/XHsEd0c/7Ta/m98F7wnJhoIYpkRodOKvy74NLVvdNNx714YtJ91cU6Sk6w65zLchqoldFMv6Q2kdp/QFO1/GqeOlPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765816718; c=relaxed/simple;
	bh=QNwkm9U81awz7MWrlZNJ8gv2P0ICIp/KsNuSQyBzV0c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A+NvoFBbtlSeDH+/JqLCXmHtNfusCgl27CR/fGZM4QNWEYgoJ8rIOvgyv3eq/Ubo5m1o3jS6PUdb3U4DpOfgv/2aTnN92AzNs6olYja4kZ6fngQuIDNCfHfWBXPy8cKIr+5poSpIQWzWLBMSArz3ptt+cXDWs0zQZ7zd6PKluwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=NsVvFFhS; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47118259fd8so37291585e9.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1765816714; x=1766421514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BxaNMbhOAlt3TDMVPp5Rm4PIt/K6yh2QHyxLJcGOJ5Y=;
        b=NsVvFFhSrTcmsEq+9aWzF4cCJXY3RNtfTOELWK/X7PK6FcAKCiLKNqtYjY2FMogtrO
         PLt8Wd3BJ2nN7qhu9uLiiubIO820dt42IeB40vKIzDQhYuvBsk2DodCyA3iNPLJG8Pmz
         KGhKAPGRnkY7L2iWfDIL8RhdqfuuBSwBNYa33s/hhufc5wmQ8rjIih/h41yQ9unmNYFW
         HXB0GajUAQJZ/S6eLuOag6yycLOYvqFT3BOCA6pV+RziKUHaUgAy5tRVSj1xOK2iW2LV
         /SJzx0opgUKWAysIRljHP/gNLyBP1exfX27FAnuEng7fgZdfuN5YjJuDd20q495urx7X
         l/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765816714; x=1766421514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BxaNMbhOAlt3TDMVPp5Rm4PIt/K6yh2QHyxLJcGOJ5Y=;
        b=ombbAnK5ad3vtIJ83tsLWZS4JnfrOQ4/sLWKZ/uHosVHKjAOO9K1VdvdkYWpS2X0od
         cP4W5XKHRPQQPjkrzL+XyxV9UGqrM3kQ+BV7J6TKmZmqpWk3zq7p6HjlXrpvV2jFurEK
         FacXiZYocxcBiZt8sILFyYdb0scQNgbZmeNMVA5edJFkWpwaPhyTrTm52GmPkUPFOFqo
         ydSBeDP+Rj0t5sSygNqSf01+GXAK5ICxNRlEnoTcsoriuFfSflf6Sieidw6oJ31/R0bE
         XXHf3YPv8yLkbBzqMbHilrZTv2ggG6J6HOmVCH+ylaUsgw4srZBQBwrddfCpUHFhpNGx
         g1VQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQEb3xurXo9nJejPeiVkUKIvHqEytInRx8ceS92HquPrhTUiIEV3XnB58N+Sw1edznFfRclcifbHuS@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4qBTVeulkp/ZPcg09j6Y85Cne2j0qQAhkOgOVEy5ZuUG9INBr
	ig9sI1H6ChlV++OgAzzoSKOCHK8VmFX35/oQ2Dkc9LuhNs4fUONQEL1cXB671Pz0pcM=
X-Gm-Gg: AY/fxX5ROlQ0/K0r0Y5fD7lb4evTihKX+DZV6Lh10fkDLZsYRliA9RCjGqPvQ3Ml6Nd
	k1HOVA3yG4jElsYR7cdGXlAAXY79OOCPosLl+YQ5KLuq5syXO8dLTYXfiMueuQuhviYfO9I50uQ
	9auJ5sSP6wgLqLBTsWLp2oNa2QjrN2S1/4RtR2oH2PE2/rnSQGAMfIL/R138k0Ch7jwHQVvswXY
	/XQP7KxFrwXLbzK2UlU4k+HpNzEbkzaPLamZyoOPrcPKUDwexKqLUr9fYAbCdSgpkecafueYApm
	KzyR+bYeRbErG4eGlzJDmUGgruJ0UJHqHCchDM0CfUZTsLwh0s+8ZYzBmFu7/1oo0bu1oCnZzRz
	OsSIvbR1YFURm30tG/lkLN4Xi7MqZjkesy2OS81cFr1K0Jy4fo4dwPMaDbCkskPuIO6iVS6kcFN
	4QQC/I5KaHxKh6tSUejyYwOGJLpBZIa7euDAOb+S+XR3Px
X-Google-Smtp-Source: AGHT+IFmd5yjjsN4pJIoEKmwS1dt07aTMkZ4FgJk47aEX+6lFjDEQnmHIR80M20dZsQbY4fZQ9SOEA==
X-Received: by 2002:a05:600d:6443:10b0:477:7b30:a6fc with SMTP id 5b1f17b1804b1-47a8f90f371mr103502135e9.30.1765816714084;
        Mon, 15 Dec 2025 08:38:34 -0800 (PST)
Received: from fedora (cpezg-94-253-146-254-cbl.xnet.hr. [94.253.146.254])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47a8f74b44csm192209725e9.3.2025.12.15.08.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 08:38:33 -0800 (PST)
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
Subject: [PATCH v2 03/19] dt-bindings: arm: AT91: relicense to dual GPL-2.0/BSD-2-Clause
Date: Mon, 15 Dec 2025 17:35:20 +0100
Message-ID: <20251215163820.1584926-3-robert.marko@sartura.hr>
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

As it is preferred to have bindings dual licensed, lets relicense the AT91
bindings from GPL-2.0 only to GPL-2.0/BSD-2 Clause.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 Documentation/devicetree/bindings/arm/atmel-at91.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index 3a34b7a2e8d4..88edca9b84d2 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/arm/atmel-at91.yaml#
-- 
2.52.0


