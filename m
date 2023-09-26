Return-Path: <devicetree+bounces-3486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6153A7AF10A
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:44:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 19D17281BB5
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:44:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 703BD30CEF;
	Tue, 26 Sep 2023 16:44:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613251FA1
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 16:44:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0549C433C7;
	Tue, 26 Sep 2023 16:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695746692;
	bh=wzH7s8yJ+PPGQfNK0z9FUL496ECuBns4yWKve8giPsw=;
	h=From:To:Cc:Subject:Date:From;
	b=vAXayQmr1uRxFuP7LC5taokFTQwH+M5Au2lRNnRrNiHnHNtYFO0FwUZDENedPI/hy
	 dZg1vLUenEXqILI46nHfgyULQOQHeqqCujwQYD8ihL1cAe20sVjKOyRSzLMcLDi2aG
	 JiXuejuxR4LESVEr/TcH2sChSVWrLc/amPC3Sf1IRDt/KnJivC2ZDUt7MGltJRWDEg
	 JV9yWuHdPwdJQRu9Zjgd6Oa3TT4pMu5AVc8FEJCKevmL6wYbY7KCCTQNwkB32TRAPS
	 O0HO+2JD21Ctq+0IKx8ieUF8AbMIu7pAKKciGs+JMDfOkc915K26hQdHnDCguIK/2j
	 GmkL9l6sKPUMA==
Received: (nullmailer pid 101563 invoked by uid 1000);
	Tue, 26 Sep 2023 16:44:50 -0000
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sre@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: power/supply: sbs-manager: Add missing unevaluatedProperties on child node schemas
Date: Tue, 26 Sep 2023 11:44:42 -0500
Message-Id: <20230926164446.101327-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Just as unevaluatedProperties or additionalProperties are required at
the top level of schemas, they should (and will) also be required for
child node schemas. That ensures only documented properties are
present for any node.

Add unevaluatedProperties as needed, and then add any missing properties
flagged by the addition.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/power/supply/sbs,sbs-manager.yaml   | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/sbs,sbs-manager.yaml b/Documentation/devicetree/bindings/power/supply/sbs,sbs-manager.yaml
index f255f3858d08..2e21846463ba 100644
--- a/Documentation/devicetree/bindings/power/supply/sbs,sbs-manager.yaml
+++ b/Documentation/devicetree/bindings/power/supply/sbs,sbs-manager.yaml
@@ -47,6 +47,12 @@ patternProperties:
   "^i2c@[1-4]$":
     type: object
     $ref: /schemas/i2c/i2c-controller.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        minimum: 1
+        maximum: 4
 
 examples:
   - |
-- 
2.40.1


