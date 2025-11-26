Return-Path: <devicetree+bounces-242319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BF1C892B1
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:02:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 852503AF408
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C94C2FB96A;
	Wed, 26 Nov 2025 10:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="LE8O2Z1w"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972A92F83A3;
	Wed, 26 Nov 2025 10:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764151357; cv=none; b=ZSiVXFjxLyr7dF6MRNdvttm2eL/L3YZ6lSzAxKFeXJELnwKfsI6LhjPZ2UgvrF6Xf/rrF5r98s5vYhBAD1MZaKfkKPn9mMf1qUoZvqekim7P3JZnlaOXx9OMiKc6hBQWhHJfgNCehsmgaRUOIR+V65Wq62DsoJ9S6MsJLvWf+1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764151357; c=relaxed/simple;
	bh=o3e/QN+XEBfcjrx9MO89hAG618jyoE25s87Z0l8Xktk=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DKXcmGaFkvNICD9oc9EAYn5bC0ReWCxr6YorQ8Rjy/u8S6ubj8AxbJQTGysXMR9Uk85+tw12XAbst/6I0MQHNjYkhe0oTVCkxCpJN93fXrHYOsnEoiLnhb4Qmc5nmZmtm0a8dbYBkfeVi0XS99VLeMwA3lpaRkH89bADp2tJraE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=LE8O2Z1w; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1764151355; x=1795687355;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=o3e/QN+XEBfcjrx9MO89hAG618jyoE25s87Z0l8Xktk=;
  b=LE8O2Z1wPUcyiJ247Z2Z4NmueFH9DfXAOYPXGLvSC0/Pvd6TbbZ2cH+F
   gChAim91fYQNaSkyYAcIJrTzB1D3mvla1eb1m+eYmTvsIyUy2kecgi/+t
   LT8RDnZqnpBW9GTsnO0dnWdeBXoD1yXIq6ktjgrmQri8i97Blb7qFzas6
   SM4sS78LCFLspeaaUsHoufartsVRPntvGQIJcYUrJC6LEXRuewIg5PxcN
   e+9wavsfDvIAY7gYSYEVvGF+z87J+vFDkElljvlNw4vQat038i+EZX8XZ
   mE0Riox+3uR4FeoNstQBgjPdkdEVlRW6Dr3GAxA8PANQubkIkZamNq9+k
   w==;
X-CSE-ConnectionGUID: uVR4L6JwQOarTsqRLnuBMw==
X-CSE-MsgGUID: RZjGXGP5QouiygR1Kh9g8A==
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; 
   d="scan'208";a="49045664"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov 2025 03:02:28 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex1.mchp-main.com (10.10.87.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Wed, 26 Nov 2025 03:02:03 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Wed, 26 Nov 2025 03:02:01 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <wsa+renesas@sang-engineering.com>,
	<Ryan.Wanner@microchip.com>, <romain.sioen@microchip.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: at91: add lan966 pcb8385 board
Date: Wed, 26 Nov 2025 11:01:50 +0100
Message-ID: <20251126100151.1559590-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251126100151.1559590-1-horatiu.vultur@microchip.com>
References: <20251126100151.1559590-1-horatiu.vultur@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add documentation for Microchip LAN9668 PCB8385

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 Documentation/devicetree/bindings/arm/atmel-at91.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index 3a34b7a2e8d4e..68d306d17c2a1 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -235,9 +235,11 @@ properties:
           - const: microchip,lan9662
           - const: microchip,lan966
 
-      - description: Microchip LAN9668 PCB8290 Evaluation Board.
+      - description: Microchip LAN9668 Evaluation Board.
         items:
-          - const: microchip,lan9668-pcb8290
+          - enum:
+              - microchip,lan9668-pcb8290
+              - microchip,lan9668-pcb8385
           - const: microchip,lan9668
           - const: microchip,lan966
 
-- 
2.34.1


