Return-Path: <devicetree+bounces-246802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9048CBFF25
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 22:34:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B9073059AF4
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60E4F337119;
	Mon, 15 Dec 2025 21:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaxHSqtE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369E731E0EB;
	Mon, 15 Dec 2025 21:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765834169; cv=none; b=ZtPtV3o5o8hZrKZjvTsxtjNC/XRagsZ7Db8zWEBiwSN7W/n6wGUSGICKfodSTWV+N4w2aGaY3Pm2EUBkN0q0y/FKr5lJslM7AuefdL0VTxVAyCEESa2ngPRuyQggjdWn/h9lwyV40vsF3bqAUhfME3ol3UyHyKHH4GYQWdW9W2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765834169; c=relaxed/simple;
	bh=HlJaDgmgggM9C2+Omdle529eY/0vP7j79g++4G803eo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mzOVGhB39cnuBmyJhZhLgO82KdRokxWXiCLGIj02zjADd0hMlw6hpK+IA9lhUAXvSwvFBUrrKimCqgBsVGqjAQ4l/wck2JiQxcpHlugU+1cKZtJdwgtRHNnrL7wV2563TEqb1je9gb26S5lAropUsiLMaWzzWt33CjRn60KnM00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaxHSqtE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99AC3C4CEF5;
	Mon, 15 Dec 2025 21:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765834168;
	bh=HlJaDgmgggM9C2+Omdle529eY/0vP7j79g++4G803eo=;
	h=From:To:Cc:Subject:Date:From;
	b=IaxHSqtEAEaDbVFX1GzfynMD7hppI+wgYKwTgLy8deVGFR1Y1UWg36lp+kIppsrZM
	 WeRpShAhd07hvc9dJHA5e54BYeHpt4NesAOr33+SboG9v3GExJnmEmc7cE1rWhiykj
	 1aC6iE1fnNBp0e6prJluLOACvyQtwZxMmk+VxJc6FS/odfDaWkvjU1WjMyPeWLi1gi
	 rxvVTXdE49d8Qw78ah/x8JdqoXsOSwR7uYKC2QPOju5Zf+PZkxPOlB66OiUF6pQfOC
	 SLsvfzy35JA5bqnyxPv1+ujZ5GpVqrd/BulYnzvcERSHWrQgiqi5tRkkj9nEGsxCr0
	 tx4nvo68wzahg==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Andre Przywara <andre.przywara@arm.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: vexpress-config: Update clock and regulator node names
Date: Mon, 15 Dec 2025 15:29:14 -0600
Message-ID: <20251215212914.3323741-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The clock and regulator node names were updated to use standard node names,
but the binding wasn't updated.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/vexpress-config.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/vexpress-config.yaml b/Documentation/devicetree/bindings/arm/vexpress-config.yaml
index b74380da3198..41c53e3acc12 100644
--- a/Documentation/devicetree/bindings/arm/vexpress-config.yaml
+++ b/Documentation/devicetree/bindings/arm/vexpress-config.yaml
@@ -103,7 +103,7 @@ required:
   - arm,vexpress,config-bridge
 
 patternProperties:
-  'clk[0-9]*$':
+  '^clock-controller.*$':
     type: object
     description:
       clocks
@@ -137,7 +137,7 @@ patternProperties:
       - arm,vexpress-sysreg,func
       - "#clock-cells"
 
-  "^volt-.+$":
+  "^regulator-.+$":
     $ref: /schemas/regulator/regulator.yaml#
     properties:
       compatible:
@@ -272,7 +272,7 @@ examples:
         compatible = "arm,vexpress,config-bus";
         arm,vexpress,config-bridge = <&v2m_sysreg>;
 
-        clk0 {
+        clock-controller {
             compatible = "arm,vexpress-osc";
             arm,vexpress-sysreg,func = <1 0>;
             #clock-cells = <0>;
-- 
2.51.0


