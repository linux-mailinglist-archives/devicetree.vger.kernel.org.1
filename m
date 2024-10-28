Return-Path: <devicetree+bounces-116639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D15D19B37E3
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 18:40:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4ED8E2829B6
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 17:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7758F1DF988;
	Mon, 28 Oct 2024 17:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GjDbp/tZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7D81DF73A
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 17:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730137225; cv=none; b=HdjKBhbY9zeifDh9L/y+NtgwuxEUNrAnQ7NdK8I6R6eMr66UvHG6s/VDP1iX2TccNi1INLX0RPbGcSDvudGhousq26SeAlSl8iLeK5P/OxniJw9dXFCixLH5LI168gakSO1r5bqQZd0OnN6PgVIkPsZ67b17+aZZB62SA1h0g9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730137225; c=relaxed/simple;
	bh=UPDN5Sq6sr7oOOH4G9BvBLb/9GgPBe4IrDFtGwTay8A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MPV2kYemR1WforO/71DhAWz+RxnGYppRsq5JkqGQ5BzYrBKw3S/u4ggWnfwW1C6WTGqVMdeeIdfxxreuOoFhGSMQk11mNJNVWzMGzvJc7r4eTqCwlDyX1C0u1tfqmVLTmpC60JtwLwGyN3XA9kPQlplwtuiiDargTYIt/khlJyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GjDbp/tZ; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-37d518f9abcso3434073f8f.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 10:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730137221; x=1730742021; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=saDUfDEJR0b1bnX4tkk4rHbVAroR4qkyv+y1+fjCTpM=;
        b=GjDbp/tZKjS01p76CB0CxClrVSLuKa3svB5sex6VRIjnUJrmwWr/DoygGa9NaHiIud
         N3b6H86qW6E+oEyNZ8ndpAZXnQalZfT0Vh4XIce9lSxc3Zvut/D2V58wQxguQ7vstjfm
         DrMENPfGJZX8YRtayBHJbWTzvqoadgZ0gBqTK1hWnxoUdQ6xWoI9GWH65apEmpHx38Y6
         3rnibnAEYqLwdHKJO51eMHEXOxm5bVR7ifhYi+0xc6wjHhWFpVeDL7ZmDnu+hGFxmnnB
         tOOhkrr4U49I1RybKV7YnfeOYcFGuumY8Xp8xHRCvQDhq6S+TpNmz+2QTBlScde1rTWv
         wdww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730137221; x=1730742021;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=saDUfDEJR0b1bnX4tkk4rHbVAroR4qkyv+y1+fjCTpM=;
        b=YePIcEwhqqJwTm7gnM7u34CjxzuBwLDV46m/wN+HlF6aBBexip0D+ZUfPfR7m8OTR4
         G65UeUsre0+5aqqmfJOePghdbXbCRcUjjKkjhlZZGJQ3a4vB/Z5v2Kz+L2UuWJ2QQTbi
         EDyJZi8XRxZODEqCQhldHW/GqyPAekYDhI8WQ4pRVDcoJYAYiDF1bFkb4wEixaB+Cx0r
         w6rWfzYy6EIDujwYpYxqNYW0yd3M0QDMcQkIDfSTTrpu1qXWpTWg9r0zMT/VkZ08o3PT
         77aO/fsujmuF5BXq+TXdOLLXSS334zVuNNuGTUVfbg5LloEsWS4w++P16VlOf+WZo0Zx
         r9Hg==
X-Forwarded-Encrypted: i=1; AJvYcCX+pukLFFMwPTO8SDQsLYdSLFTLfd5uyiSHePg1Gwa/RqZ/bmcBnE0Y7+COP27gqerf/zpDNS6U0yIL@vger.kernel.org
X-Gm-Message-State: AOJu0YwdI2d0RkUYY1ZU+gJwF7q8IPQXIZJu/Z01ro8jzpWGxFkcyZdp
	A+ZCiPYvkVqGdh4wsFpaJLtEVvQI+1MZxbERQI3G4QB+qYODfmL1dxtMXYRf1WU=
X-Google-Smtp-Source: AGHT+IEFgqPvKk7zPEVSc8W/hIxxgLdyl05U2omshsXFU5gMdwFKyPVKfHosWtNHQDrxWACBCsN4Kw==
X-Received: by 2002:adf:ea43:0:b0:37d:633a:b361 with SMTP id ffacd0b85a97d-38061206c0cmr7014723f8f.51.1730137221379;
        Mon, 28 Oct 2024 10:40:21 -0700 (PDT)
Received: from localhost ([2001:4091:a245:81f4:340d:1a9d:1fa6:531f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b479ffsm10101137f8f.49.2024.10.28.10.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 10:40:20 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Mon, 28 Oct 2024 18:38:08 +0100
Subject: [PATCH v5 2/9] dt-bindings: can: m_can: Add vio-supply
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-topic-mcan-wakeup-source-v6-12-v5-2-33edc0aba629@baylibre.com>
References: <20241028-topic-mcan-wakeup-source-v6-12-v5-0-33edc0aba629@baylibre.com>
In-Reply-To: <20241028-topic-mcan-wakeup-source-v6-12-v5-0-33edc0aba629@baylibre.com>
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
 Dhruva Gole <d-gole@ti.com>, Simon Horman <horms@kernel.org>, 
 Vincent MAILHOL <mailhol.vincent@wanadoo.fr>, 
 Markus Schneider-Pargmann <msp@baylibre.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1211; i=msp@baylibre.com;
 h=from:subject:message-id; bh=UPDN5Sq6sr7oOOH4G9BvBLb/9GgPBe4IrDFtGwTay8A=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNLlz4Run/jwReX7GwrBXQwK7SZ2pn9mW29ZJKfoziIyX
 +yHmcGLjlIWBjEOBlkxRZa7Hxa+q5O7viBi3SNHmDmsTCBDGLg4BWAiqVkMf7jENx4SjstJted9
 xanLYlMR9vmuZ992XZeNc/9d45LmPsvI0Nh9nXNu+tu+R2vOqZ7Zc/Hysj/vT72qXLlL2fDqW/4
 3U9gA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

The m_can unit can be integrated in different ways. For AM62 the unit is
integrated in different parts of the system (MCU or Main domain) and can
be powered by different external power sources. For example on am62-lp-sk
mcu_mcan0 and mcu_mcan1 are powered through VDDSHV_CANUART by an
external regulator. To be able to describe these relationships, add a
vio-supply property to this binding.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 Documentation/devicetree/bindings/net/can/bosch,m_can.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
index 0c1f9fa7371897d45539ead49c9d290fb4966f30..aac2add319e240f4f561b755f41bf267b807ebcd 100644
--- a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
+++ b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
@@ -140,6 +140,10 @@ properties:
 
   wakeup-source: true
 
+  vio-supply:
+    description:
+      Reference to the main power supply of the unit.
+
 required:
   - compatible
   - reg

-- 
2.45.2


