Return-Path: <devicetree+bounces-20079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B55337FDB70
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 16:31:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E63AF1C2091D
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFFEA38DF1;
	Wed, 29 Nov 2023 15:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="B+04Pvk3"
X-Original-To: devicetree@vger.kernel.org
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::224])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A99B1D48;
	Wed, 29 Nov 2023 07:31:25 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C7635E0004;
	Wed, 29 Nov 2023 15:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1701271884;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QI1TyzlXaMDB+nhKVeoMHOxLQU8QDlDCw/eJpwfHUjI=;
	b=B+04Pvk3bWmTvMKPRwosQPKO0bPMfT8nIYKro4x6w5StmHTn4ntp35qumfbEmEr1iZUFvY
	h5vd2lx1Zu/KXq7I1HA6Svd1D8ClwkQzAwQqywyRs6HtxmBhOuq9HzTD+NKrs44JpoWvuw
	VHRg8plyHlX+LFUItkfkhsHzfg4vpwM8PfCvcrdrTsXreunjIm8cyH+AnsJW1ZwL0MK0KB
	r0EjUi5bX7UQ1s8CqLH9z99bs2+qnDt7eLd45H3/eLWPQ18er8GjsSPAiysHVatAko5t7V
	3TbKN29vILU+zZ12cMiF7FB7eNV+Q1gav41vgI+AS112rPbwCGOV6ckr5sfFiQ==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Wed, 29 Nov 2023 16:31:17 +0100
Subject: [PATCH 1/5] dt-bindings: arm: keystone: add ti,j7200-sci
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231129-j7200-tisci-s2r-v1-1-c1d5964ed574@bootlin.com>
References: <20231129-j7200-tisci-s2r-v1-0-c1d5964ed574@bootlin.com>
In-Reply-To: <20231129-j7200-tisci-s2r-v1-0-c1d5964ed574@bootlin.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com, 
 gregory.clement@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com

On j7200, during suspend to ram the soc is powered-off.
At resume requested irqs shall be restored which is a different behavior
from other platforms.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml b/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
index c24ad0968f3e..53d9c58dcd70 100644
--- a/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
+++ b/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
@@ -40,6 +40,8 @@ properties:
       - description: System controller on TI AM654 SoC
         items:
           - const: ti,am654-sci
+      - description: System controller on TI J7200 SOC
+          - const: ti,j7200-sci
 
   reg-names:
     description: |

-- 
2.39.2


