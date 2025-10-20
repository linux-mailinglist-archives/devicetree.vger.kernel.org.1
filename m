Return-Path: <devicetree+bounces-228546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10909BEF0C7
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 04:08:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A23F3E1E18
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 02:08:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5CF91F8AC8;
	Mon, 20 Oct 2025 02:07:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7D21F2382;
	Mon, 20 Oct 2025 02:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760926069; cv=none; b=e/44B8msNy4bpvIEaKzLD8M/5kjCy+kIp7H7SNriaNrDDxXVLzpypFV1WJUMh/wNh1F49ZbKKAzVq06b0xq0SRGPEv5e7/z2+DIs2GV8PLp9tQ5GtruB1PHJtJGQQsFYheUed/Lcm3iR3EnwgCWhBXBIdQYjYPJj+ftbMlHF39Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760926069; c=relaxed/simple;
	bh=YqQVbDVBfwa5xKrqZ1xjsY+t3Hm8PtGrXRyiSwVn6Fk=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=JaP9XSA1V22PYuL3exyHC5+Y4/gf2qGsiDr77iBWhmXl//un/65N6y7D/98K3JDeskrawWZYexxpHp5RYmHa0h6tHRkNSPgH/akQS/XEFAKVwAZXLadaY0in+8iibXrwpqiqqJgy2nIyY/MMyRlLLoLsvSZ5UMCJI1llTF7n+/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Mon, 20 Oct
 2025 10:07:45 +0800
Received: from twmbx02.aspeed.com (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Mon, 20 Oct 2025 10:07:45 +0800
From: Ryan Chen <ryan_chen@aspeedtech.com>
To: ryan_chen <ryan_chen@aspeedtech.com>, Lee Jones <lee@kernel.org>, "Rob
 Herring" <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery
	<andrew@codeconstruct.com.au>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-aspeed@lists.ozlabs.org>,
	<linux-kernel@vger.kernel.org>
Subject: [PATCH] dt-bindings: mfd: aspeed,ast2x00-scu: allow #size-cells range
Date: Mon, 20 Oct 2025 10:07:45 +0800
Message-ID: <20251020020745.2004916-1-ryan_chen@aspeedtech.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

The #size-cells property in the Aspeed SCU binding is currently
fixed to a constant value of 1. However, newer SoCs (ex. AST2700)
may require two size cells to describe certain subregions or
subdevices.

This patch updates the schema to allow #size-cells values in
the range of 1 to 2. This makes the binding more flexible
while maintaining compatibility with existing platforms.
It also resolves dt-binding validation warnings reported
by `make dt_binding_check`.

Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
---
 Documentation/devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml b/Documentation/devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml
index 5eccd10d95ce..1d3f686577db 100644
--- a/Documentation/devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml
+++ b/Documentation/devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml
@@ -38,7 +38,8 @@ properties:
     maximum: 2
 
   '#size-cells':
-    const: 1
+    minimum: 1
+    maximum: 2
 
   '#clock-cells':
     const: 1
-- 
2.34.1


