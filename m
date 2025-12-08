Return-Path: <devicetree+bounces-245134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D15C4CAC85C
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 09:39:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D2E23037519
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 08:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C6442C08BC;
	Mon,  8 Dec 2025 08:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="sQYdBCX6"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C181E5B64;
	Mon,  8 Dec 2025 08:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765183136; cv=none; b=dWnVxhGnCMJXuYGwuWoFEGVAWU79wb8SnhynALPCQlZUOzyDQv01+kFxAAstQv9hLiyDPI5zqPAwnP+yRSY2mhqN0YbHN3lWVwkz1L5eM8douw2KuCgw4MJRdhz563FvnlHod9tc1XUSDs94SW6rR3vseJHugfryMsh/1iilCeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765183136; c=relaxed/simple;
	bh=5dVHO7Xv11b5SW8lDY+p04NIEuAra+ohyYQqq5i0Kmc=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hgjMeUPBoiglFRb9WYeCNBhvdK1o7G0feoxiQRZzd8C6cYjCGgoHYQGumsIB/NdaLiBQdLacSFSogHUBlLkKzBzcogtcgsWrK9YAXesyVrE19mZkWWD3lWojwyf+o6pkXyKE9oQW6/9MnWvs2dw1isFIwkZNF7HFurqszIlbUpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=sQYdBCX6; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1765183134; x=1796719134;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=5dVHO7Xv11b5SW8lDY+p04NIEuAra+ohyYQqq5i0Kmc=;
  b=sQYdBCX6OZ1U7U+56XpSKs+tnvDF3YqZwL+KaYtca6+AV/A5LMnlgBb1
   +Li27SWgae2+Zr1J75grUzbKpAV91uuPwyNpRzmEAGpqWRgPrF/ZP/AV2
   WLp+qAJeeYFzovtVP+rB8RDuJcHOi2K4qhChBrjy+yjyEE2EkwRRHb8l4
   a5WzQwo0W0iDplht/aeX8pBhAedgzUm4AklF7CZii5yzM5V28Zl7tT1Ij
   GvpAQvUUbI/+nO8W66hlZcGS3AcxrR+M9vIo/tmHx7Kkba6aUqR56b7wJ
   EKb9xwabF5JneMsCOebrIcAzas2WMrEm9XHyY1ndw3/zRKyd2FydUwudR
   Q==;
X-CSE-ConnectionGUID: FfguEtJUTS2+5AIunoTqvA==
X-CSE-MsgGUID: KxEn+DHpRmmkk11zJg3g7Q==
X-IronPort-AV: E=Sophos;i="6.20,258,1758610800"; 
   d="scan'208";a="217523968"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Dec 2025 01:37:45 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex1.mchp-main.com (10.10.87.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Mon, 8 Dec 2025 01:37:07 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 8 Dec 2025 01:37:05 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <wsa+renesas@sang-engineering.com>,
	<romain.sioen@microchip.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v5 1/2] dt-bindings: arm: at91: add lan966 pcb8385 board
Date: Mon, 8 Dec 2025 09:35:44 +0100
Message-ID: <20251208083545.3642168-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251208083545.3642168-1-horatiu.vultur@microchip.com>
References: <20251208083545.3642168-1-horatiu.vultur@microchip.com>
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
Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
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


