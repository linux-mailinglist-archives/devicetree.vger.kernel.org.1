Return-Path: <devicetree+bounces-11765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDF87D68B8
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:34:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 162E628195D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:34:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D407266DD;
	Wed, 25 Oct 2023 10:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="0Z1BfXWg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0A9266D5
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:34:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C4AC433AD;
	Wed, 25 Oct 2023 10:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.dev; s=korg;
	t=1698230089; bh=2UlV2SAeLThisZx2CDUzVQIsXFCsdphm0WX5MqF/paA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=0Z1BfXWgfx5rvEQovfZHR5PrOerqx9mtKj0gvUKkZkvLL/uGDjnqG7M8qQEBqsGWE
	 FBRvTxMCS6UaSA6UX29G/K9+PczmVEOaeELWTjn0aGlf2dtH/1OKCeP6tTf+4GlS95
	 +t0vUgeDr1AUmkRnqwma+kPTgNod/r0EHNBtZFRs=
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 599C7C25B6F;
	Wed, 25 Oct 2023 10:34:49 +0000 (UTC)
From: Richard Leitner <richard.leitner@linux.dev>
Date: Wed, 25 Oct 2023 10:34:14 +0000
Subject: [PATCH 4/4] dt-bindings: hwmon: ti,ina238: add ti,ina237
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-ina237-v1-4-a0196119720c@linux.dev>
References: <20231025-ina237-v1-0-a0196119720c@linux.dev>
In-Reply-To: <20231025-ina237-v1-0-a0196119720c@linux.dev>
To: Guenter Roeck <linux@roeck-us.net>, Jean Delvare <jdelvare@suse.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 devicetree@vger.kernel.org, Richard Leitner <richard.leitner@linux.dev>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698230088; l=666;
 i=richard.leitner@linux.dev; s=20231025; h=from:subject:message-id;
 bh=2UlV2SAeLThisZx2CDUzVQIsXFCsdphm0WX5MqF/paA=; =?utf-8?q?b=3DqVMEmSxVR/Bx?=
 =?utf-8?q?f6+PrpumfMpyFJL40+yFqvVmuDr8yuDujWEFxZ2CGxoNMGcrHJR8tHp9Rf4n02pU?=
 YDhZzYxyBzu4oeagPUqVG4mczsszD7wqGMgouzCpDI++hLYnLHSe
X-Developer-Key: i=richard.leitner@linux.dev; a=ed25519;
 pk=ZYa5+0m9RFYtnNU6DLet7sHyPehnVHa0ucJlYiAu2NU=
X-Endpoint-Received:
 by B4 Relay for richard.leitner@linux.dev/20231025 with auth_id=90

Add ti,ina237 binding to ti,ina238 as they share the same driver.

Signed-off-by: Richard Leitner <richard.leitner@linux.dev>
---
 Documentation/devicetree/bindings/hwmon/ti,ina238.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml b/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml
index aba89e5f34b3..17408076696c 100644
--- a/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml
+++ b/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml
@@ -22,6 +22,7 @@ description: |
 properties:
   compatible:
     enum:
+      - ti,ina237
       - ti,ina238
 
   reg:

-- 
2.40.1


