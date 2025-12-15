Return-Path: <devicetree+bounces-246803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F297FCBFEE2
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 22:29:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 196B13018260
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DE34338F26;
	Mon, 15 Dec 2025 21:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcjvkXoo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED883376A7;
	Mon, 15 Dec 2025 21:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765834178; cv=none; b=gKo3KLLNB7p7MGEjIPrEy8/ZyWmkByFg2FUOGkzneVSJoRe424wZr6eteiGw4WJwpWnkLUWwCyO+3eMUYhsgazg+6kbCoNu8yPJoKecHvrKvYnRnCWWzNYj6tS1pUijxTySfT7jbtM5878j4V1zvb1t9LbgTFezeQW/0rfT15Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765834178; c=relaxed/simple;
	bh=f66aDebDMOyvBBG4UY1pel21ioLx+nJ9RAjyW465PKQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=N4It5pj0c9X2XGBa6phGrFUj5/OmNLynvRPbvljQ0vfacY9t13v261nfyWOHbMIeq+STQ7eK6vjvjFXTMYNCbFyf09ks9k4q+H0RSfycJGkwoMhffUESCVeRmDgcW27r1nmK/DlaKCXRDrxhe80ilhUlDA8EThlWbcmjf6Bk+fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcjvkXoo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EE40C4CEF5;
	Mon, 15 Dec 2025 21:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765834178;
	bh=f66aDebDMOyvBBG4UY1pel21ioLx+nJ9RAjyW465PKQ=;
	h=From:To:Cc:Subject:Date:From;
	b=rcjvkXoofAITZ2X5CjahrM642ACtDytwJ/UcGupJaWyw1eFCZrQuJcJbIHq54Y+cd
	 ynrVRLBK0wJ4Z+LcUqrdfTxsGfubIhd0pARtdBgL6uD5hISpf2EMzumLgXl2qcnHln
	 BEyk6k7uC0AKox7Ecs8tlfWZSyWZ1zMX3hLwKe7s15sl3ZVlRL7YnCjEc8y0fxxaUW
	 DmtMA+059xR7GemypXNll6+n78M32q4Q8Ufh0hmd/33tR+jUX49zWXKlmAezbvbgEx
	 xfOp/YjeohlVGsTIBAyQedFr7vufU+Q7Q7ugUayHIUpWKelueMkC1I9oVEbnsYIqos
	 F0eDrbROyQSPA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Linus Walleij <linusw@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: arm,vexpress-juno: Allow interrupt-map properties in bus node
Date: Mon, 15 Dec 2025 15:29:32 -0600
Message-ID: <20251215212932.3324144-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Allow interrupt-map properties which are already used in the bus node.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/arm/arm,vexpress-juno.yaml          | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
index 4cdca5320544..eae558c2758b 100644
--- a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
@@ -157,6 +157,12 @@ patternProperties:
               - const: simple-bus
           - const: simple-bus
 
+      "#interrupt-cells":
+        const: 1
+
+      interrupt-map: true
+      interrupt-map-mask: true
+
     patternProperties:
       '^motherboard-bus@':
         type: object
-- 
2.51.0


