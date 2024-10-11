Return-Path: <devicetree+bounces-110388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B961C99A4B9
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 15:18:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 460CB1F23462
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 13:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B557A2194B8;
	Fri, 11 Oct 2024 13:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="itZiZ01h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5C5218D68
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 13:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728652684; cv=none; b=dS6c/H38kaE7mBaeLnoKljhwAsHIjJZdznfj7LjEYQDjnImNmXBiotMfiPQGGhdunXyhauG0O9EBT5FnV0aWDPo0KK9VZ+68uO85K3ot+RrSTkNh7AtcSpgyZqowE5uVcS+ojReMesgx/mOXoqJFIwhgAra6cO+KM5LR0DnbUcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728652684; c=relaxed/simple;
	bh=+BpLo7wO0S5E5+RxGEZ0j27kNVjU0GbulquXMEn7V2A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MzW+2WxY5INZBpuEfJrOCjQ34cFRTBnMHYQhRT7jIg5X06GtIGx4cRYJOIxxS524eZ1RLQl7L68Xc0JRHsRJnuaIlmFwF1keJJB1sDZpLS9CBeJtE5EbTOyVxCjO01ORO9PCIolblmsGdxm9Nc164jVUys+rkWPk2A5CyZK3TvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=itZiZ01h; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5c5cf26b95aso2577054a12.3
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 06:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728652681; x=1729257481; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rYLiNkzm3f/4BMefMWOVmVXnSoOdYUIxdGSU/9EXCP8=;
        b=itZiZ01h6nh8DDf59DLxPnYIxCrRFIbT0Yecz0ZyGqk+fuXSrEsX+zMt95FQoDsJ8L
         2cTcu6sFqvbK4D3Ye6RMinA+KM3AFgRtekZBR17dZwJa/bQOquN18Wu+CN0oJ4927Tmd
         zfTM9s33PG1NInqbKaEmNXPRb1VjciqASZnIgLsm93B4krj0IrIaIkYxYv+22smY8wD9
         mO0V+Ne9v30i82hTGpaDidYKlNdzMQOOxg0RMCtSN58M4DlaHqQznYHwh9/9e4bpseBP
         Zi0mX7uTk7UrqFY8vmnoQwNqxzZ6PiyIjy5kwRwvor7bbxMYC0EL13NV5iFUitQEJi71
         DcQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728652681; x=1729257481;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rYLiNkzm3f/4BMefMWOVmVXnSoOdYUIxdGSU/9EXCP8=;
        b=gHkb+gzKvFvB8M/n8bDLIf3WxD0XAJ11HmUeTR+kei25Qt9kkLWR4wmpsCXmcDUWW/
         HJ48oOp+jaZluFIk82vQW8eyBI5mXOjaFEWmy2Qi9UhCuf7O2/7PTu2f3mSCi9AYnL25
         2DbiIXkVteKDUyAFLE23fqUF5vYZIyZZ2nxXw7X7+0S0vJllG9LL4ENPhJOCNZiSqo8O
         QVKOB1DFHy0v0LuzSv2fxxEcDFz9mO5VRS87N1my/dkBYEYya9hp/xR2Bi1ldW3dNltX
         Hal/iW5D4ZJb0QejW3pGXgTFGDqdaWSxRRa4KvqJipP5YbWTW7V4Koh9v8d9iNQgf6NX
         lz9g==
X-Forwarded-Encrypted: i=1; AJvYcCXX4AmGFG7tjX8e1HWG0I/aQ0FTB6fQR31QRKg5MUA23nUNu6Y10d6JSDHumEx8DclLuzyVUxac9iWs@vger.kernel.org
X-Gm-Message-State: AOJu0YxID+wlKlqzoEtcO9uGZb7gOP3mmZvo4GtertWgg2LATcrIF/GL
	aLputfTB6wDC4qZ7CQDrVJElQoqVsPlIfuHZzWk/zoJ0g6BZw4wZ2Fbemxpbyzc=
X-Google-Smtp-Source: AGHT+IGzTUXpGaNSMoJpRdsaE2RSr/sAt5ivnKoRilAioDMPmlzspWzWozWfrZen0Wv+N6H4WJW0mA==
X-Received: by 2002:a17:907:d845:b0:a7a:9447:3e8c with SMTP id a640c23a62f3a-a99b943b764mr201860366b.3.1728652681030;
        Fri, 11 Oct 2024 06:18:01 -0700 (PDT)
Received: from localhost ([2001:4090:a244:83ae:2517:2666:43c9:d0d3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a80c061csm212753966b.99.2024.10.11.06.18.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 06:18:00 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Fri, 11 Oct 2024 15:16:39 +0200
Subject: [PATCH v3 2/9] dt-bindings: can: m_can: Add vio-supply
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241011-topic-mcan-wakeup-source-v6-12-v3-2-9752c714ad12@baylibre.com>
References: <20241011-topic-mcan-wakeup-source-v6-12-v3-0-9752c714ad12@baylibre.com>
In-Reply-To: <20241011-topic-mcan-wakeup-source-v6-12-v3-0-9752c714ad12@baylibre.com>
To: Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, 
 Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1148; i=msp@baylibre.com;
 h=from:subject:message-id; bh=+BpLo7wO0S5E5+RxGEZ0j27kNVjU0GbulquXMEn7V2A=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNI5VaPfv0rMDCj35jqYOOX+pUXRjzfveSu9XsH652TrD
 QG3mvgqOkpZGMQ4GGTFFFnuflj4rk7u+oKIdY8cYeawMoEMYeDiFICJGCsyMny/Y/zx87tK8/z6
 Z5v+r4nZ33GMY0H80QmnFfTbd2+49libkaHNdBLD86wqz55JHt5Z87Yc7BGYI/HgwHTbJDeuJR4
 b/3MCAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

The m_can unit can be integrated in different ways. For AM62 the unit is
integrated in different parts of the system (MCU or Main domain) and can
be powered by different external power sources. For examle on am62-lp-sk
mcu_mcan0 and mcu_mcan1 are powered through VDDSHV_CANUART by an
external regulator. To be able to describe these relationships, add a
vio-supply property to this binding.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 Documentation/devicetree/bindings/net/can/bosch,m_can.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
index 0c1f9fa7371897d45539ead49c9d290fb4966f30..e35cabce92c658c1b548cbac0940e16f7c2504ee 100644
--- a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
+++ b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
@@ -140,6 +140,10 @@ properties:
 
   wakeup-source: true
 
+  vio-supply:
+    description: |
+      Reference to the main power supply of the unit.
+
 required:
   - compatible
   - reg

-- 
2.45.2


