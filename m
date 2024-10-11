Return-Path: <devicetree+bounces-110387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A85099A4B2
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 15:18:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 039C81F246B4
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 13:18:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D138218D85;
	Fri, 11 Oct 2024 13:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="scQn7Wxp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0E121859A
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 13:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728652683; cv=none; b=L50PSsYlAu3ROcx8jLpGNZDV+7Hi9pgEyW8w9sZFnBxN3lhMEV0KNEvmsPj72Itqx2MLuZSnP6WA3DOCITZaBmHG9vkiITuZjjRuY48b3UsHpTGOUnPZE6ZNaGWkXzkXjSFGzTR0O8frmn93ATDIIDNRPivh7Q9qKzWwBTU2Vwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728652683; c=relaxed/simple;
	bh=tIux4Jo7N8fDpXOCI+Zhs5OWS+myGS4fEvh1G5nNm0s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aWSyqxDy+/ERqxB3yGBOm0UI7oalfFdG21dcdzHqfiUABW/54h2ED5So1R3xglpeOkPZ2ziFnz18/I0c4bh0L39cUDaTPLqzuBgMFLa8PwHdwDwts2K2unr44NJLfzp/j0tZcOBDz5C2Lee70x74bLf7WmozM0DaqwTq+KOPvz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=scQn7Wxp; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a9943897c07so281692566b.3
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 06:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728652679; x=1729257479; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wUS9O8RaGfXiOh/gcBh0g4YfEW2SakpMupOR/Is8Hqk=;
        b=scQn7WxpS8KXqCDKDwZqzrUt3Gilwfdqiz1KFkqfVLA5bQy4qB+h9T4ke6UeO5j/o4
         HouUMR+1mJMAarLw+s/Ie4P9Cxxeutsi3J9dSyUlIQkBtl79nsfB24bBfIMaDgmm1hD9
         DsVdzVJOyrbsf/SHhG5PakSanlqkzoviVsEK06j79d9GP5ANyzZI9d0hSADbEIQLjYBj
         89he5RggejuFfGe8EAOzl0YZalUoRELc0I3KBuUW7WxjOT2CMT3sKsyjrndmoUE6O6Ba
         fJE0Vb1S2eT+BfX+tnxmStNUF35UYGe7KxtYWrLzU4KQBJMn/FvctM8q/WIQp5Y/eTuA
         06zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728652679; x=1729257479;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wUS9O8RaGfXiOh/gcBh0g4YfEW2SakpMupOR/Is8Hqk=;
        b=Ld7bDtgg1ZpGeoqbj1SL+7lyT4W1PooL9if9fH+Dr5syewdwFk72ZkeUKNBWoq74AR
         d3+hanTCvILCk0TqCFzN5uP2IGPpyPeWESW/vmKnDTBIYrVYUXBc5jHrX0Cz5OuZ1Nfk
         7LIz5h7cKC/RHSkT9PrycAonj9gfTU+fumYtXdJy/DuHAFK5Z+m5UuYlQiDSeO51MieC
         75WpEMBYePb7HGZzjJVZbKu3hImanInQJMPwb7VkBP8dyS72XmMrX3ryl4YU+8faoGgs
         VymdS5DPd++GNMTrJvolRrNNsPCmCPyAMOa/yaW4siKYMhsgSCWHDO4gkM6VrJt/0WQo
         ts1w==
X-Forwarded-Encrypted: i=1; AJvYcCVxwJsU6FmCeVxHT7S6ycYtcec3h62Q43m8abA7ftL6z33AowE1N2TMyJnYNCrp7i5jG3u8RojlTisY@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb9AzOyMTZkOESe+nQ5iQV365kgBSjUMHKcfdN1h56mml3qc7M
	hXAoQ1t4bM8x6i8HmKyyzMVL2XrPSIfW+vrVkMmox7YPPCuxLM7EwPqyu/ZqD2E=
X-Google-Smtp-Source: AGHT+IFaEMX81GzZ+jATV7DgoLYhKfYvMArkBn856asWysPwWg8p+jz511s/+c59x94ZEJ1yMprBUA==
X-Received: by 2002:a17:907:d599:b0:a99:5773:3612 with SMTP id a640c23a62f3a-a99b93d4235mr213477566b.36.1728652679342;
        Fri, 11 Oct 2024 06:17:59 -0700 (PDT)
Received: from localhost ([2001:4090:a244:83ae:2517:2666:43c9:d0d3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a80c0238sm211617866b.115.2024.10.11.06.17.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 06:17:58 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Fri, 11 Oct 2024 15:16:38 +0200
Subject: [PATCH v3 1/9] dt-bindings: can: m_can: Add wakeup properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241011-topic-mcan-wakeup-source-v6-12-v3-1-9752c714ad12@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1807; i=msp@baylibre.com;
 h=from:subject:message-id; bh=tIux4Jo7N8fDpXOCI+Zhs5OWS+myGS4fEvh1G5nNm0s=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNI5VcO2MRvcyOZZsrPXyEn2YvyrzEj2zJUvwvbwc3xYn
 uCv/f9+RykLgxgHg6yYIsvdDwvf1cldXxCx7pEjzBxWJpAhDFycAjCRt26MDAtfdl4NX5h96fz3
 EN9Fii2yh+6X1bTPYCqY+ah5scTEOysYGa5c/5j59nth/JbUqWyTDVm59losurRorprvb/ZX524
 tWckGAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

m_can can be a wakeup source on some devices. Especially on some of the
am62* SoCs pins, connected to m_can in the mcu, can be used to wakeup
the SoC.

The wakeup-source property defines on which devices m_can can be used
for wakeup.

The pins associated with m_can have to have a special configuration to
be able to wakeup the SoC. This configuration is described in the wakeup
pinctrl state while the default state describes the default
configuration.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 .../devicetree/bindings/net/can/bosch,m_can.yaml       | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
index c4887522e8fe97c3947357b4dbd4ecf20ee8100a..0c1f9fa7371897d45539ead49c9d290fb4966f30 100644
--- a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
+++ b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
@@ -106,6 +106,22 @@ properties:
         maximum: 32
     minItems: 1
 
+  pinctrl-0:
+    description: Default pinctrl state
+
+  pinctrl-1:
+    description: Wakeup pinctrl state
+
+  pinctrl-names:
+    description:
+      When present should contain at least "default" describing the default pin
+      states. The second state called "wakeup" describes the pins in their
+      wakeup configuration required to exit sleep states.
+    minItems: 1
+    items:
+      - const: default
+      - const: wakeup
+
   power-domains:
     description:
       Power domain provider node and an args specifier containing
@@ -122,6 +138,8 @@ properties:
     minItems: 1
     maxItems: 2
 
+  wakeup-source: true
+
 required:
   - compatible
   - reg

-- 
2.45.2


