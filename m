Return-Path: <devicetree+bounces-147621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C9BA38CD6
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 20:58:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B86318815D0
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 19:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F07E9237709;
	Mon, 17 Feb 2025 19:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="Dw5kxt+H"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE1722B5A3
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 19:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739822307; cv=none; b=OBpdQMHlzdONtCjcuq2gTwZXXHLCk/zNMvEwj6BSA8EYA57sOGDFJ7R+dT8q+asM7yU1G5qy9TT5rWSI7mbq3AHOj6iDKo1hOFY+6Nveqfdxoj7cuo2YpkF2K9yS4gG+/rUHJ80nHkZkx4JrEKUTPFRYttkdgFQ1m5LIOAabEqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739822307; c=relaxed/simple;
	bh=SPdcceQIrWy9e+q/WCXMdXaf03a7PKveE0Jmb4TEZcI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DvMjj6JCfk2BjxY9mWNNKeuj5Em+BXXlFwj+vumaKPem40bHaZEQ9Vnz839EXgOddxkD7uCBd2FOYRO+a7IyMAQY1GRih2okDHTI5WznKtfZNYY96rV3ok1J646cYL/SCBfKsSWpi4phxlySmfmym164gGsXJkg7m5/HG9FeroA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=Dw5kxt+H; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=Dw5kxt+HYYhcmvrjdOPCKyk43WTAUhyq2XDem4bo9okxTeWIhYPMqpMCAT1D+KxP6zQgWLfNX2HdFFS71GanVGEI3XN0ggxss0/GHWRBeG2Dy0qV7yS6tdsCUNWOwSliPP69iErIAjiGr4VjR1lcAPr6Wcx+T/9PYfl1BHeO4tLw6P6cQIcLllARUDjDyGEBBbYduES0QSYfberDIIOLxg+AFCrczBFLSQ6oIXX0aU2m3JAuxSRQmo2oqdzr7iUcwPEz8fPkUfYeWJA7jELFGXpgJQjmX3ZTEE1sj6jnDBhYFbfSHSRj7efZagJF3TjF58+SRjpb9IrLlU6FeoLGoA==; s=purelymail3; d=purelymail.com; v=1; bh=SPdcceQIrWy9e+q/WCXMdXaf03a7PKveE0Jmb4TEZcI=; h=Feedback-ID:Received:From:Date:Subject:To;
Feedback-ID: 68247:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 234657940;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Mon, 17 Feb 2025 19:58:18 +0000 (UTC)
From: Igor Belwon <igor.belwon@mentallysanemainliners.org>
Date: Mon, 17 Feb 2025 20:57:38 +0100
Subject: [PATCH v2 1/2] dt-bindings: watchdog: samsung-wdt: Add
 exynos990-wdt compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-exynos990-wdt-v2-1-3eb4fbc113f4@mentallysanemainliners.org>
References: <20250217-exynos990-wdt-v2-0-3eb4fbc113f4@mentallysanemainliners.org>
In-Reply-To: <20250217-exynos990-wdt-v2-0-3eb4fbc113f4@mentallysanemainliners.org>
To: Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-watchdog@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739822294; l=2817;
 i=igor.belwon@mentallysanemainliners.org; s=20241206;
 h=from:subject:message-id; bh=SPdcceQIrWy9e+q/WCXMdXaf03a7PKveE0Jmb4TEZcI=;
 b=6zHp7CPANnkBjbzBYEOe3e20TGfEEKu7Vfl9+SRJzL+5xXnS8kfEe4vZ/2WSfgJotlrPRU5rw
 C8WBkMB4FrOD2NG+bcQTUwEQ3LnrAyHVyFz+6n5qqBe1jibMPxpeSxT
X-Developer-Key: i=igor.belwon@mentallysanemainliners.org; a=ed25519;
 pk=qKAuSTWKTaGQM0vwBxV0p6hPKMN4vh0CwZ+bozrG5lY=

Add a dt-binding compatible for the Exynos990 Watchdog timer.
This watchdog is compatible with the GS101/Exynos850 design, as
such it requires the cluster-index and syscon-phandle properties
to be present. It also contains a cl2 cluster, as such the
cluster-index property has been expanded.

Signed-off-by: Igor Belwon <igor.belwon@mentallysanemainliners.org>
---
 Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
index d175ae9683366d33b1f9d9d820501d1e7c5964bd..53fc64f5b56d33f910395d32b35e0905b8b9aa53 100644
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
@@ -102,7 +105,7 @@ allOf:
             - const: watchdog
             - const: watchdog_src
         samsung,cluster-index:
-          enum: [0, 1]
+          enum: [0, 1, 2]
       required:
         - samsung,cluster-index
     else:

-- 
2.47.2


