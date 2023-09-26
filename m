Return-Path: <devicetree+bounces-3490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E75697AF118
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:46:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 206CE1C20839
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C12CD339A9;
	Tue, 26 Sep 2023 16:46:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD19A28DDF
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 16:46:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0994DC433C7;
	Tue, 26 Sep 2023 16:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695746760;
	bh=0M5UOaMPiWsCHJJxpEzVJNXDt/gjIIbRZQm2M8yq3Pc=;
	h=From:To:Cc:Subject:Date:From;
	b=lzNc0KZG6oPTgue2S7gWMo0xFppK8G9rNF4csG+AFWEid6oCTctiTFW4vHiLQPxEo
	 x6W/TwCV2gOELnXth4ZqrIqUyPmDQa5epypDhvr3mAPWvSXJ9CwbnlGNQNWWXNWjAx
	 7PhcBXgKnDxPmDoessj92cPG/XAbzdfyPeLSqeV3b9iCFcQQjQMB8NIbmeEPVBOjAE
	 t7DK8NWaJxxmFCy4dMtq+9gZBj2boTME2Qn0fx2FNN4GgzEoId3KD1GtsjWJ82MXUN
	 kBQ0c2nJEyAPIWS8NyXRomW7Dmya80/lug7SrOIhXboNcI7w2BGngcT60natzuFt0R
	 sobKSJj4l+Fww==
Received: (nullmailer pid 103271 invoked by uid 1000);
	Tue, 26 Sep 2023 16:45:58 -0000
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: arm,psci: Add missing unevaluatedProperties on child node schemas
Date: Tue, 26 Sep 2023 11:45:44 -0500
Message-Id: <20230926164553.102914-1-robh@kernel.org>
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

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/psci.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 0c5381e081bd..cbb012e217ab 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -101,6 +101,7 @@ properties:
 patternProperties:
   "^power-domain-":
     $ref: /schemas/power/power-domain.yaml#
+    unevaluatedProperties: false
 
     type: object
     description: |
-- 
2.40.1


