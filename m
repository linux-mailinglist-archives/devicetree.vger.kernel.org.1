Return-Path: <devicetree+bounces-147606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C454A38BED
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 20:06:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49BE83B0537
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 19:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4EBE23643E;
	Mon, 17 Feb 2025 19:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="gEabBLK4"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F9A235C03
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 19:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739819183; cv=none; b=kdbif7U5w/WcJb5O4V8XpOMYWvBN8dGxwrQF9G6U3xvHjTBRCFBtXt1QPrKuiHPoZJTFX+PAWttOdw3yklCmKIc1wMiIYLFWQsVLRLzSzjO4TsGIfKTfrzM8Kfbjynq/sa6eHVYhRwC6T8S9bULJEYSFWe7bXUr4SLQGyPEiSaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739819183; c=relaxed/simple;
	bh=ExVaCUBzcNC+wkHRkApsOynmUd07dvbz0C9qAwKk5Qg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dV/y4U6+nbpQ27IYE2OXZ912xz2qooBnjSbeQdGdUgmvAbDnnUrjtUMPviD6cbn8cpEr9P5aHi9nLIQ8dOKcgf/SbF7qwuOp72MRReDcbHfFLvKV8e5SRifKxEa3LRjjzGN24IfrkUiuoW7N1ki3MbD7Kidvv9djYsngshVWoSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=gEabBLK4; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=gEabBLK4/OW9lEl+1Pr1HTKx6Hj3IzZhsCCbDu3V6Y6hfw9uvxvbexfvobOgE8xgDizX9/PfVRefb5BN5HCS7P5u9eHT/zFz3JMpCVm1MLOg1xjWqvFROWo4wjM7fXeFJd+9VW39qF6DCqeovJrcA4FHdXqYvG8hIbcvy3oPnZR4K3LmXA75xw4o4V6ts5aGp/FjhiHCLQQF5vmmrZjc78Zzy6JT+hC9tU+bu8LJY2y7Zww5uvVJHY0UnnyWBCNTGo/G4aLWRDMSFbCLMfXs78evUtYpzREZo8Um0Z+htB8xxix4CFqMQS54pCHFa2z2a4cQLbksX+STb8V3d+hM+w==; s=purelymail3; d=purelymail.com; v=1; bh=ExVaCUBzcNC+wkHRkApsOynmUd07dvbz0C9qAwKk5Qg=; h=Feedback-ID:Received:From:Date:Subject:To;
Feedback-ID: 68247:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id -1350358103;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Mon, 17 Feb 2025 19:05:53 +0000 (UTC)
From: Igor Belwon <igor.belwon@mentallysanemainliners.org>
Date: Mon, 17 Feb 2025 20:05:19 +0100
Subject: [PATCH 1/2] dt-bindings: watchdog: samsung-wdt: Add exynos990-wdt
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-exynos990-wdt-v1-1-9b49df5256b0@mentallysanemainliners.org>
References: <20250217-exynos990-wdt-v1-0-9b49df5256b0@mentallysanemainliners.org>
In-Reply-To: <20250217-exynos990-wdt-v1-0-9b49df5256b0@mentallysanemainliners.org>
To: Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-watchdog@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739819149; l=2481;
 i=igor.belwon@mentallysanemainliners.org; s=20241206;
 h=from:subject:message-id; bh=ExVaCUBzcNC+wkHRkApsOynmUd07dvbz0C9qAwKk5Qg=;
 b=mRkJpujMaWtYA215YBhSum3Q3+AFasnoTKmdWZixH/WWoYNb5mwvZeJo5hqxbqv0/xSMMiEtf
 M+WhVBsl/ZqDEKKLNTpStdiPv6c9fwSWBzXeGvHQ1sQaSV2zg9nPTvY
X-Developer-Key: i=igor.belwon@mentallysanemainliners.org; a=ed25519;
 pk=qKAuSTWKTaGQM0vwBxV0p6hPKMN4vh0CwZ+bozrG5lY=

Add a dt-binding compatible for the Exynos990 Watchdog timer.
This watchdog is compatible with the GS101/Exynos850 design, as
such it requires the cluster-index and syscon-phandle properties
to be present.

Signed-off-by: Igor Belwon <igor.belwon@mentallysanemainliners.org>
---
 Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
index d175ae9683366d33b1f9d9d820501d1e7c5964bd..e36f87830ea8a185a1543e62fdeebd97fb9a8abb 100644
--- a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
@@ -25,6 +25,7 @@ properties:
           - samsung,exynos5420-wdt                # for Exynos5420
           - samsung,exynos7-wdt                   # for Exynos7
           - samsung,exynos850-wdt                 # for Exynos850
+          - samsung,exynos990-wdt                 # for Exynos990
           - samsung,exynosautov9-wdt              # for Exynosautov9
           - samsung,exynosautov920-wdt            # for Exynosautov920
       - items:
@@ -49,14 +50,14 @@ properties:
   samsung,cluster-index:
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
-      Index of CPU cluster on which watchdog is running (in case of Exynos850
-      or Google gs101).
+      Index of CPU cluster on which watchdog is running (in case of Exynos850,
+      Exynos990 or Google gs101).
 
   samsung,syscon-phandle:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
       Phandle to the PMU system controller node (in case of Exynos5250,
-      Exynos5420, Exynos7, Exynos850 and gs101).
+      Exynos5420, Exynos7, Exynos850, Exynos990 and gs101).
 
 required:
   - compatible
@@ -77,6 +78,7 @@ allOf:
               - samsung,exynos5420-wdt
               - samsung,exynos7-wdt
               - samsung,exynos850-wdt
+              - samsung,exynos990-wdt
               - samsung,exynosautov9-wdt
               - samsung,exynosautov920-wdt
     then:
@@ -89,6 +91,7 @@ allOf:
             enum:
               - google,gs101-wdt
               - samsung,exynos850-wdt
+              - samsung,exynos990-wdt
               - samsung,exynosautov9-wdt
               - samsung,exynosautov920-wdt
     then:

-- 
2.47.2


