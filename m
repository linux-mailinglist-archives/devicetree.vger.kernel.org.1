Return-Path: <devicetree+bounces-239385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F1CC644E8
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:14:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B939F368741
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:02:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6C3232D444;
	Mon, 17 Nov 2025 13:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="QztuZrCB"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8776D1A7;
	Mon, 17 Nov 2025 13:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763384531; cv=none; b=NuLI8yLGn1PmI6sBNbQQMPwvl32UPFbj5qobfwFjQ10Qe7B0O2a0KqCJJ10FpuoOxu/f1xxXuy2Rt1p/3cMWJYfqJGiIb+Mcsw7y82gNSVhVaVXEWfYj4zhmg+hzcmFNv4ByP2YUB+fmIqG5lQtXGr7i59X1UpfVJ7fYnWW9eBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763384531; c=relaxed/simple;
	bh=iyt5FrNViiDTxs8hANwrQy+GhySDoTf5XEItkyhr++U=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bsMqtJJP5Ttzo7jYlLIsN/y2nKxz8yua7XuXmCUKGaOqe6Uxsn0Mar2Qvb51nQWOzi989JGIwSTyGIGqKcFBKm0QOLJnd+/2ZKR6ca/JLhq1aDzuRWQOwS5W29BvhncPxx8xCp/+y+/SgrQnTncIMf2tmvOl/50bo/b58plDCiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=QztuZrCB; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1763384529; x=1794920529;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=iyt5FrNViiDTxs8hANwrQy+GhySDoTf5XEItkyhr++U=;
  b=QztuZrCB9T3o06M+/Gd9jm7Ek2sIIq2+OQLMzft9DjGzwfP3Qk7EX8Y6
   KU0nEIckAUwzTI3KqA0NWlnpnGfhqmI1CRTBquUFM8uCfSJHUmRY+PCjn
   xhxfIiTgghdKebldLGml3GZH4d0xF4uyvOk5ojHT6tEtaQusSBHhPznft
   PKwTZOcSDqp0uZVo6YuevDOYAj0S7xpYV7Bhor26qRFKD+FUOFVU+P9dG
   SS8Ey1fvcdXcDJU1IrNgLXm9ngqevNLV3sepoIMHSlxYqpFjFZwgrCd3F
   VAMgUfLib8mtCpPJXqrEGpBYxAUVVuwcUTXtxgiR4gzahsmxC0TXh46wS
   Q==;
X-CSE-ConnectionGUID: 7lVwW72ASwODMHoO4OS9jA==
X-CSE-MsgGUID: HGJKc3lcQp+KwA73g7oDJA==
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; 
   d="scan'208";a="48599210"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2025 06:02:08 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex1.mchp-main.com (10.10.87.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Mon, 17 Nov 2025 06:01:45 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 17 Nov 2025 06:01:43 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <wsa+renesas@sang-engineering.com>,
	<romain.sioen@microchip.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH 1/2] dt-bindings: arm: at91: add lan966 pcb8385 board
Date: Mon, 17 Nov 2025 13:57:08 +0100
Message-ID: <20251117125709.102013-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117125709.102013-1-horatiu.vultur@microchip.com>
References: <20251117125709.102013-1-horatiu.vultur@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add documentation for Microchip LAN9668 PCB8385

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


