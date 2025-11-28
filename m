Return-Path: <devicetree+bounces-242927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E58C915EE
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 10:11:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BFF7B34A0C4
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 09:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32D7930147D;
	Fri, 28 Nov 2025 09:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="FSIVYTTX"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EF72FFF8C;
	Fri, 28 Nov 2025 09:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764321085; cv=none; b=pE25x2W1m/Msw4W8fSwKQmmLk1Rd6aRns+puiOwSEGgbrQpEpdcyP5VZ4/tKEA2vTe/M5Vmky/vSZi7vNjVnDu8ITuAzJFueW++Lpetx01aA1SUP4g3qzCHm3bBdHYTxUDK67DgJ4MNFWGOUETJEtMsRkIycwLL3MturwF0yX3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764321085; c=relaxed/simple;
	bh=HQGZQ1Ff1XjRBXRJSLuuqqLE7nDRF6HZXIJxBGaTJPc=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=izQnJ8DqXhaueMcepjv6e2Uw3KZrDLTsnehpNXpoNvd/rcCXNpbtM62sZTTM/t//g3sM55OxyVHY3ZIQBKnDHqy1E/gO+dmFVKKLt5jrmTulqFOJXLTTdvUOTzEhinQcGCS/H4bKgo3lCzLNKrtjzafP2c2O2qBm6uKc02VDiUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=FSIVYTTX; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AS98QKW0394707, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1764320906; bh=l77XOUJUw+siBdLkNkL/6nxwP2TBf85O5sQ3l2Iab84=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:Content-Type;
	b=FSIVYTTX5VBa5n6DsRoqvkKMT6aOLDYjjYtnEclDlv0q9MOvyGKVeOIFKGQykZfar
	 XroW8Er1LVuCzWhwOU+ffBfXIzt5wJQLJUgcb2u8EW5T+R5kpADB18CP+lv0EOp98Y
	 l+qHmF2JthzJR3m4XKdG2+2k9Mx0nMTMduEuppvMnzY/yWhijTEH70Od3UgK6hpeOo
	 5TN2wsJYeyDR5Mp7t1nrTtmFZOSibo9RDtE+5MO1N6nYYb82mv6ktwlPe0cFWLGse1
	 dd48+iR8DmxZrY3iWwlcOdW+5U7UxoviHs79uVC/iMVY9Br4S8jh/98KjWJPTtaZVu
	 UjGzrx+S2y5Cw==
Received: from mail.realtek.com (rtkexhmbs04.realtek.com.tw[10.21.1.54])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AS98QKW0394707
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 28 Nov 2025 17:08:26 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS04.realtek.com.tw (10.21.1.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Fri, 28 Nov 2025 17:08:26 +0800
Received: from RTKEXHMBS04.realtek.com.tw (10.21.1.54) by
 RTKEXHMBS06.realtek.com.tw (10.21.1.56) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Fri, 28 Nov 2025 17:08:26 +0800
Received: from cn1dhc-k02 (172.21.252.101) by RTKEXHMBS04.realtek.com.tw
 (10.21.1.54) with Microsoft SMTP Server id 15.2.1544.27 via Frontend
 Transport; Fri, 28 Nov 2025 17:08:26 +0800
From: Yu-Chun Lin <eleanor.lin@realtek.com>
To: <afaerber@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <lee@kernel.org>, <james.tai@realtek.com>
CC: <linux-arm-kernel@lists.infradead.org>,
        <linux-realtek-soc@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <cy.huang@realtek.com>,
        <stanley_chang@realtek.com>, <eleanor.lin@realtek.com>,
        Conor Dooley
	<conor.dooley@microchip.com>
Subject: [PATCH v3 1/2 RESEND] dt-bindings: arm: realtek: Add Kent Soc family compatibles
Date: Fri, 28 Nov 2025 17:08:24 +0800
Message-ID: <20251128090825.27365-2-eleanor.lin@realtek.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251128090825.27365-1-eleanor.lin@realtek.com>
References: <20251128090825.27365-1-eleanor.lin@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Define compatible strings for Realtek RTD1501s, RTD1861b and RTD1920s.

Additionally, convert legacy DTS-style comments to YAML description
properties, following the pattern from the ARM bindings conversion series
[1].

[1] https://lore.kernel.org/lkml/20200622125527.24207-2-afaerber@suse.de/

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Yu-Chun Lin <eleanor.lin@realtek.com>
---
 .../devicetree/bindings/arm/realtek.yaml      | 42 +++++++++++++------
 1 file changed, 30 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/realtek.yaml b/Documentation/devicetree/bindings/arm/realtek.yaml
index ddd9a85099e9..be529490640c 100644
--- a/Documentation/devicetree/bindings/arm/realtek.yaml
+++ b/Documentation/devicetree/bindings/arm/realtek.yaml
@@ -14,21 +14,21 @@ properties:
     const: '/'
   compatible:
     oneOf:
-      # RTD1195 SoC based boards
-      - items:
+      - description: RTD1195 SoC based boards
+        items:
           - enum:
               - mele,x1000 # MeLE X1000
               - realtek,horseradish # Realtek Horseradish EVB
           - const: realtek,rtd1195
 
-      # RTD1293 SoC based boards
-      - items:
+      - description: RTD1293 SoC based boards
+        items:
           - enum:
               - synology,ds418j # Synology DiskStation DS418j
           - const: realtek,rtd1293
 
-      # RTD1295 SoC based boards
-      - items:
+      - description: RTD1295 SoC based boards
+        items:
           - enum:
               - mele,v9 # MeLE V9
               - probox2,ava # ProBox2 AVA
@@ -36,25 +36,43 @@ properties:
               - zidoo,x9s # Zidoo X9S
           - const: realtek,rtd1295
 
-      # RTD1296 SoC based boards
-      - items:
+      - description: RTD1296 SoC based boards
+        items:
           - enum:
               - synology,ds418 # Synology DiskStation DS418
           - const: realtek,rtd1296
 
-      # RTD1395 SoC based boards
-      - items:
+      - description: RTD1395 SoC based boards
+        items:
           - enum:
               - bananapi,bpi-m4 # Banana Pi BPI-M4
               - realtek,lion-skin # Realtek Lion Skin EVB
           - const: realtek,rtd1395
 
-      # RTD1619 SoC based boards
-      - items:
+      - description: RTD1501s SoC based boards
+        items:
+          - enum:
+              - realtek,phantom # Realtek Phantom EVB (8GB)
+          - const: realtek,rtd1501s
+
+      - description: RTD1619 SoC based boards
+        items:
           - enum:
               - realtek,mjolnir # Realtek Mjolnir EVB
           - const: realtek,rtd1619
 
+      - description: RTD1861b SoC based boards
+        items:
+          - enum:
+              - realtek,krypton # Realtek Krypton EVB (8GB)
+          - const: realtek,rtd1861b
+
+      - description: RTD1920s SoC based boards
+        items:
+          - enum:
+              - realtek,smallville # Realtek Smallville EVB (4GB)
+          - const: realtek,rtd1920s
+
 additionalProperties: true
 
 ...
-- 
2.34.1


