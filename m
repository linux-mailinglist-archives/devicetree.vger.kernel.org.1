Return-Path: <devicetree+bounces-243266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F361C96219
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 09:29:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 673543422FD
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 08:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F55C2F532F;
	Mon,  1 Dec 2025 08:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="kbLq7i2t"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197342E62A9;
	Mon,  1 Dec 2025 08:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764577774; cv=none; b=MmEmHP2A5cb4ONAGWQUJfyMwTzLJHyQP56FAxQi/sw9BdsTinEM8VzGbCQESRencAU/zekInvT+/xnHO2xmDWHDg+UZWkwPuupwfWBjU9qGr/MQfyYzrOhIrbbtB4giWlUPVLy0/hiLzPwCITti1KNI8jSHFolnD4vKo7wvtD7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764577774; c=relaxed/simple;
	bh=o3e/QN+XEBfcjrx9MO89hAG618jyoE25s87Z0l8Xktk=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eDTTypViDIJDnpAAoGAO4elFzoVWLdhvAp6+1E5H+AVr21gAQXVfhwCnFYsG9jc9ulGlapiw1b1kRAKTl+kwYa+tFZmnzmvjhKVGWvKp0hSJvtO4lfk+PbX1Iv+MW5YKeHjCUwb2gLIoB3FsecLvt9pqdoiom3aBkLSpveASx1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=kbLq7i2t; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1764577772; x=1796113772;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=o3e/QN+XEBfcjrx9MO89hAG618jyoE25s87Z0l8Xktk=;
  b=kbLq7i2t6Hpnly8kz864YHnC0gezbkZeRwOzM6dzQhMaDuwdsIgh6J08
   HuAphM2/EbS/8pHDfEQgrDSmOZgNVVy0BCjtDZlC8/Wn+9Kh+bjGR5T/j
   jKs5bDdV+mKJRV/pMbl/d7NHyLZlJMNkRsGFgwNWx+yfpectmjkOp5who
   9qzxPQkFVr5wTasJAnimzGGKhUvmBT4+p3ZEZsg6bQ5CaLWQ3aSjUT86F
   EfjsNjjEtCMmZnVMmGHHgsQ73BuumFgQIKIynBC45ES6Fh8nvhqvNDoRs
   JDOmYwEj2xAZMErm8brdOL6rUhypWLlsWEmyaNzOZLOXAUwKa2y9H9w61
   g==;
X-CSE-ConnectionGUID: Jt19qymKQxqm5dx5AqyGaw==
X-CSE-MsgGUID: gTG2EAd0QeKIAZ1snGKokA==
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; 
   d="scan'208";a="56483966"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 01 Dec 2025 01:29:25 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Mon, 1 Dec 2025 01:29:21 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 1 Dec 2025 01:29:19 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <wsa+renesas@sang-engineering.com>,
	<romain.sioen@microchip.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: at91: add lan966 pcb8385 board
Date: Mon, 1 Dec 2025 09:26:28 +0100
Message-ID: <20251201082629.2326339-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251201082629.2326339-1-horatiu.vultur@microchip.com>
References: <20251201082629.2326339-1-horatiu.vultur@microchip.com>
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


