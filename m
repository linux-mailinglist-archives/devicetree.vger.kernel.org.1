Return-Path: <devicetree+bounces-20493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F2A7FF86B
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 18:37:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D99941C20EB5
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 17:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B079E58104;
	Thu, 30 Nov 2023 17:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mchUzyVH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9380256773
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 17:37:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30C8CC433C7;
	Thu, 30 Nov 2023 17:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701365851;
	bh=WN/J7jFY+bfKMs/N2amMY0Qy46obkUkAx7OxDaTojL4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mchUzyVHazWPFjPM4KZSLxJ2wRspUREmAg/Kbx9mjJvBEE8L0BzgExztXgf+gEZok
	 +KcoL6SLLmcyfP7mBIXdEflu3xXp0SFDOTtYgfXbDmFaKnp+lbzlQfCIXGGYocGejv
	 dNnEqhTe2mjEbMgw1rMRO75UdaHVXJ/h//JcubhdmPzShAOUPHmeP2gviMjaBcitra
	 RSWjK3BBFnm/PjTllc2VeBuMY8RJx8Tawme738MoETdgEU4hpfBG9rajE+Tpx6IsUU
	 3uJtTWtSDOsvLJwI+SVnCuJhoYHZIXoaNHRlCW9vGuWFo00n0sUY3er3HtTnLSPrvV
	 YCnHHhCbe3CsQ==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1r8kzE-0003O8-2t;
	Thu, 30 Nov 2023 18:38:04 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 1/2] dt-bindings: spmi: hisilicon,hisi-spmi-controller: fix binding references
Date: Thu, 30 Nov 2023 18:37:56 +0100
Message-ID: <20231130173757.13011-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231130173757.13011-1-johan+linaro@kernel.org>
References: <20231130173757.13011-1-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix up the free text binding references which were not updated when
moving the bindings out of staging and which had a leading current
directory component, respectively.

Fixes: 9bd9e0de1cf5 ("mfd: hi6421-spmi-pmic: move driver from staging")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/spmi/hisilicon,hisi-spmi-controller.yaml         | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml b/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
index f882903769f9..eee7c8d4cf4a 100644
--- a/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
+++ b/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
@@ -14,7 +14,7 @@ description: |
   It is a MIPI System Power Management (SPMI) controller.
 
   The PMIC part is provided by
-  ./Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml.
+  Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml.
 
 allOf:
   - $ref: spmi.yaml#
@@ -48,7 +48,7 @@ patternProperties:
       PMIC properties, which are specific to the used SPMI PMIC device(s).
       When used in combination with HiSilicon 6421v600, the properties
       are documented at
-      drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml.
+      Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
 
 unevaluatedProperties: false
 
-- 
2.41.0


