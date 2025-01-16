Return-Path: <devicetree+bounces-138987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8634A13868
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 11:59:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2AE9A3A75CF
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 10:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 623A61DE2C0;
	Thu, 16 Jan 2025 10:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="UnelgxJ0"
X-Original-To: devicetree@vger.kernel.org
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B9A1DE3A3;
	Thu, 16 Jan 2025 10:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737025173; cv=none; b=h/lHjG1G9rX1dgncWYiF0PF5jwtWgE30RghuODEjIieCIzxu89paR3oXRUBwa1+6+hagV+qr60uZzOE3AASN6tJZHMdXhfiJbjsdGWq018z2jdxWnPQ5+YU4K5hMgvF960XbdwIKydAUq8NA0QoSG81jzN5KEkMrBpqrrD6hKzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737025173; c=relaxed/simple;
	bh=eoV6lxlvqojTH5I8IK+bRgUIfzC8TKqdHbpitLaZsbc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Cecsd2tPbW90iewnHblcfFIF7yz7hir+7hv/+vo56WsTg+lp6pYjGFduW1+SSKRT/8eVEMA4grmhvOYYaCWhrbuB0Jfdb5ISpwp0aNxrErTrOjg8EiGpRyVVd9SnWxFsppv7UM86zrqo8QkIYLo05plWVJuIU/mKN40TPOw9wzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=UnelgxJ0; arc=none smtp.client-ip=217.70.183.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 75622C0008;
	Thu, 16 Jan 2025 10:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1737025169;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zCAZNOipVi7ghlFkXkXZ6lZoGOE8/OrsAqyo1CTDsBU=;
	b=UnelgxJ0/2eFcGdgIXFcx0qCgTFrqMO/p1G/jpWygXnIL9UQ8Iazn2a6pH3LfDcpUI4Zq+
	dJ4biQXXr7YAY4UN6QNIbA1wNGmtBoM5+CIgTuhdP2cp8YdMFAGAil5DLvT2ZvWNou+5lA
	jlOzgr1LLF/ztERUPGXPp9/G++u5+4ZxawU/uFegYZIW2zfuMnpXuuFd9xnLx2jVwjSyX5
	xqOcmpiglaEKFlRwSVtHKrV+NWKNN9lLa9mtgGnPpCWerNNj7E/nQW1T8Ot7w2M65OVRKF
	jwEjqL+uBEVlgILuhAjm2A5AAcQxNDpzxRpn8dG1P5nO2W7N1cih16Y8AlAO7A==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Thu, 16 Jan 2025 11:59:19 +0100
Subject: [PATCH v2 1/5] dt-bindings: mips: Document mti,mips-cm
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250116-cluster-hci-broken-v2-1-fc52cfb7a19e@bootlin.com>
References: <20250116-cluster-hci-broken-v2-0-fc52cfb7a19e@bootlin.com>
In-Reply-To: <20250116-cluster-hci-broken-v2-0-fc52cfb7a19e@bootlin.com>
To: Aleksandar Rikalo <arikalo@gmail.com>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-mips@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Gregory CLEMENT <gregory.clement@bootlin.com>
X-Mailer: b4 0.14.2
X-GND-Sasl: gregory.clement@bootlin.com

From: Jiaxun Yang <jiaxun.yang@flygoat.com>

Add devicetree binding documentation for MIPS Coherence Manager.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 .../devicetree/bindings/mips/mti,mips-cm.yaml      | 38 ++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/mips/mti,mips-cm.yaml b/Documentation/devicetree/bindings/mips/mti,mips-cm.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..9f500804737d23e19f50a9326168686c05d3a54e
--- /dev/null
+++ b/Documentation/devicetree/bindings/mips/mti,mips-cm.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mips/mti,mips-cm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MIPS Coherence Manager
+
+description: |
+  Defines a location of the MIPS Coherence Manager registers.
+
+maintainers:
+  - Jiaxun Yang <jiaxun.yang@flygoat.com>
+
+properties:
+  compatible:
+    const: mti,mips-cm
+
+  reg:
+    description:
+      Base address and size of an unoccupied region in system's MMIO address
+      space, which will be used to map the MIPS CM global control registers
+      block. It is conventionally decided by the system integrator.
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    coherency-manager@1fbf8000 {
+      compatible = "mti,mips-cm";
+      reg = <0x1bde8000 0x8000>;
+    };
+...

-- 
2.45.2


