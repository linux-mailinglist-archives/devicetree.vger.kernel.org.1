Return-Path: <devicetree+bounces-251310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5C8CF13E1
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 20:15:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9545A3008FB8
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 19:15:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E752E8B66;
	Sun,  4 Jan 2026 19:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="o4Y87TTh"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181F823C4FA;
	Sun,  4 Jan 2026 19:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767554112; cv=none; b=H6NqMmlixmDaC6ph+mrsNkJfxjAc2cdH2yy//9CRsSX5Jl8jJF+fgSaKBvt8g06ioxVgWc12uqngEjQaSnewSUv0F9tfttKX1Wwega87Nf3PL5el4pFOPTg/HZEXxFV/iDUlY0Hr+QeZxKri+E7TVJCyBFa12K0dSACPBQzs9mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767554112; c=relaxed/simple;
	bh=axSuozYbjyUDhCZ0jEyJ6KpdNE+PSR+/LjKs6SCQirs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ftfHs5efOqkJK4BZGB9ZOUXnAZP/9GUBv4lKk2l7/oP5LFMjlKjCmeHS26y7UZj6JRE0sOmNAgqeDRjeniz0ab0sqVWQNaeDgTRYicpmg6M3X6PvGJBknVTNbFQ6OwaAHV/HtBly1elaO+LC20VP3hRjKJ+vd9sRO9/PYr57Foo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=o4Y87TTh; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=krUEwvQtFBfxhDWJO7NHKWidgy0n/k7HYBmF9kBHcZE=; b=o4Y87TThVKhJGNENMgptNDzxC9
	0Bos1zVLGBH7Y/NT4m5kd2ah+v+0u97/rug+/6f1SmNQsoN0W+LfyBCSr55sQkWVm9aHZKXsiLv8D
	fWB3amjeQh7UdMj6/+qOyH845mWSVirpS66Ea5ZAwK6wAv4JEJFEB41463xXWjqTlGm7jVe58zLkE
	72kavU9ayuFFVbCvOmZByoo1yumfkPD0pbBdpO6tZgU6gjWFIU+73cQCrjWOpr9TrMInvtJ8ToykK
	ES9WycngaP0ViBhok1b361V8kjVanRxHTIuKQEmTANX54fQj3LjEFfFVdwvPuy8aJqBznzvQKZ/vb
	bCZMcOcw==;
Received: from i53875ac4.versanet.de ([83.135.90.196] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vcTZB-0012Mf-IS; Sun, 04 Jan 2026 20:15:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	uwe@kleine-koenig.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] dt-bindings: arm: rockchip: add TS133 to RK356x-based QNAP NAS devices
Date: Sun,  4 Jan 2026 20:14:47 +0100
Message-ID: <20260104191448.2693309-5-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260104191448.2693309-1-heiko@sntech.de>
References: <20260104191448.2693309-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

QNAP builds a number of variants of the RK356x-based NAS design.

Add the 1-bay TS133 variant.

This one is a tiny bit special as it is based around the RK3566 variant
of the mostly similar RK3566/RK3568 SoCs.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../devicetree/bindings/arm/rockchip.yaml          | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..2a5105be3d34 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -894,11 +894,15 @@ properties:
           - const: rockchip,rk3568
 
       - description: QNAP TS-x33 NAS devices
-        items:
-          - enum:
-              - qnap,ts233
-              - qnap,ts433
-          - const: rockchip,rk3568
+        oneOf:
+          - items:
+              - const: qnap,ts133
+              - const: rockchip,rk3566
+          - items:
+              - enum:
+                  - qnap,ts233
+                  - qnap,ts433
+              - const: rockchip,rk3568
 
       - description: Radxa Compute Module 3 (CM3)
         items:
-- 
2.47.2


