Return-Path: <devicetree+bounces-253099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 31924D0765B
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 07:35:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7A06300F8A4
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 06:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 154A02D73AE;
	Fri,  9 Jan 2026 06:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="beS2t433"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93EBE24887E;
	Fri,  9 Jan 2026 06:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767940535; cv=none; b=Zf+PASAp8Xu7TSS0E0LlgG7mo3qOoz/btd2r4y9QVK2opRF3KFqAoAKs7PO2B57Si0taQZRZCxOyfYs52K2Ywar5GFJVVOQ6xWGCZfWIx7gVOr/bphYq97X3JB4XPT/6fbq1TbZvAmhbYI896nHBTB4cBxtcQsnaCg1JHFUAcCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767940535; c=relaxed/simple;
	bh=eMYnWSUnwiVeYyI7m3DzK7cnJMsmhC3xsEMdpOFSKf0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=jT+JTm0EIY71l9Idr38xXFHV8ag6WiTyDZe9MTOdq/t2jd052brNH/apzkYdsRnuu9j+6fz3ZqWd2I3Rh/z7/WVt30vPHTIfDPAH+1HrZHHhunegIkSj039DWT9uk39jZSsELm56RtM5I9zfB8PxVhx+OSlaELcDVqSHetq/q+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=beS2t433; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1767940531;
	bh=eiZT9sXBg4HL79BKEk2OPu5rQrW7DOHG5+KhdLse1nM=;
	h=From:Date:Subject:To:Cc;
	b=beS2t433FJ6u6bIljM3aTHPk6T49f9Toc1y6B8godI9KhHF6D/lmHoIogkf36Iqyf
	 YMG5T18VIity3jOkFohkmYR6an3bP08DqZcAbTsTQwV7T8epMUYpGPvIUCGmHC7pxD
	 oe2D7QNlcYRP5uCa5Fby4FUbBKjA1CzAxSHw/WX7IPj7ck/QQjIdMnxB3+W/mXwA4B
	 QDiF2qdinPXMhiUXAsZdfAEtxnw5cWw/4BSJ9EMDKmgGm2XBtor/qn98V4PLrL6tLQ
	 sEugBUA7pg7ws0cSduUJQNSvLgnYVYGW/fpyjMV5j0Wm/roL21s1BqXzGeHNX3wZ7n
	 ACMQsT7TfWZbw==
Received: from [127.0.1.1] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 5CBB97C834;
	Fri,  9 Jan 2026 14:35:30 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
Date: Fri, 09 Jan 2026 17:05:18 +1030
Subject: [PATCH] dt-bindings: mfd: Document smp-memram subnode for
 aspeed,ast2x00-scu
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260109-dev-dt-warnings-mfd-v1-1-1aabe37e9a14@codeconstruct.com.au>
X-B4-Tracking: v=1; b=H4sIAKWhYGkC/x3MPQqAMAxA4atIZgNtwd+riIOatGawSisqFO9uc
 fyG9xJEDsIR+iJB4Eui7D5DlwUs6+Qdo1A2GGVqpVWHxBfSifcUvHgXcbOEc9Ww4s7SYlvI5RH
 YyvNfh/F9P4+sds5lAAAA
X-Change-ID: 20260109-dev-dt-warnings-mfd-b57e0e9fdcf8
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>
Cc: Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, Andrew Jeffery <andrew@codeconstruct.com.au>
X-Mailer: b4 0.14.3

The platform initialisation code for the AST2600 implements the custom
SMP bringup protocol, and searches for the relevant compatible. As a
consequence, define the requisite node and the compatible string, which
in-turn tidies up the dtb check results.

Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
---
Hello,

This change was original part of an RFC series tidying up the AST2600
EVB devicetree at [1]. Many of those ended up being merged directly, so
I'm splitting out what remains into separate, smaller series.

Please review.

Changes since RFC:
- Address the warning from Rob's bot
- Tidy a description line that was dropped unnecessarily
- Remove RFC label

Link: https://lore.kernel.org/all/20251211-dev-dt-warnings-all-v1-16-21b18b9ada77@codeconstruct.com.au/ [1]
---
 .../devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml     | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml b/Documentation/devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml
index da1887d7a8fe..a87f31fce019 100644
--- a/Documentation/devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml
+++ b/Documentation/devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml
@@ -130,6 +130,23 @@ patternProperties:
           - description: silicon id information registers
           - description: unique chip id registers
 
+  '^smp-memram@[0-9a-f]+$':
+    description: Memory region used for the AST2600's custom SMP bringup protocol
+    type: object
+    additionalProperties: false
+
+    properties:
+      compatible:
+        const: aspeed,ast2600-smpmem
+
+      reg:
+        description: The SMP memory region
+        maxItems: 1
+
+    required:
+      - compatible
+      - reg
+
 required:
   - compatible
   - reg

---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20260109-dev-dt-warnings-mfd-b57e0e9fdcf8

Best regards,
-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


