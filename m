Return-Path: <devicetree+bounces-241895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8E2C83F1B
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 09:18:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C70AF34EDD2
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 08:17:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CCD3288C25;
	Tue, 25 Nov 2025 08:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="oq233bPG"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C6D16A395;
	Tue, 25 Nov 2025 08:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764058647; cv=none; b=lbLktSD/3Dtl7jXyHLe7XclqyN80QwjBg8F+g9fWpjI37MidK0+pfyVBtj3t6W0XSiLLG2lHkRpgLx++08JgJl3g4PURJyDpOjsFkcZLMVieagu1j7qJAv12fkdZGuNY8JUyU6R0ArAZELy4t25dQ2guzT25m9s1eqTbabV4wg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764058647; c=relaxed/simple;
	bh=o3e/QN+XEBfcjrx9MO89hAG618jyoE25s87Z0l8Xktk=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=X5OmAjvk11InIsuxQ5WGy6joyNOEl5KCBKVmVkQ/zNm0axesfCS6sCyyJamBNOAf3Sxq3O+4kBAHJ9NrGDX7GqlpQYR0nxHmw6fNqJqhuGzESAtwO8QU2Bi3S80fLijhibtcbz+SEEeC0uEpohWtzHjY9rTdkfhJktpG4w8E/i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=oq233bPG; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1764058644; x=1795594644;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=o3e/QN+XEBfcjrx9MO89hAG618jyoE25s87Z0l8Xktk=;
  b=oq233bPG53FngbW2l/rOJMapTco5ssJZfhkqpq/5Q1JPtxtzFDw+0q8S
   un5ey3FewAW/F+XyN+JJX4KX+MYoo0l2uNN+SvkQFYV6AbuRhrMD8dKXW
   CUshXQHr3O4jpaal4lh1lxZjyywolRFvrvnnolpEKkbsRBEF7t8icLCP1
   OlUAovw5vSIBhqCC7XLUYR6+is2HUEFTzvZcPGaJnNyo9Yu4dwQymmPuc
   fcjo/ZkzZja2gKxSY7X52IEUVOsbpgcT9ndrOUTk/5tIeOBOP7fqlKGz0
   6cQ7jx2Om5DsGwqY1q5/u7yPB3qijLWL3OrKQh2WlqB26HtgTNqO5vEiO
   Q==;
X-CSE-ConnectionGUID: IOm3dB9ZQcuJUUeoNzT1ww==
X-CSE-MsgGUID: KLQ7DqJjQ82DYZXE5pnfWA==
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; 
   d="scan'208";a="216971704"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Nov 2025 01:17:23 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex1.mchp-main.com (10.10.87.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Tue, 25 Nov 2025 01:16:59 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Tue, 25 Nov 2025 01:16:57 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <wsa+renesas@sang-engineering.com>,
	<romain.sioen@microchip.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: at91: add lan966 pcb8385 board
Date: Tue, 25 Nov 2025 09:15:50 +0100
Message-ID: <20251125081551.1390820-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125081551.1390820-1-horatiu.vultur@microchip.com>
References: <20251125081551.1390820-1-horatiu.vultur@microchip.com>
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


