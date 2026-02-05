Return-Path: <devicetree+bounces-263165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMWzFYEJhWmj7gMAu9opvQ
	(envelope-from <devicetree+bounces-263165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:20:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD722F78D6
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 501B43011BCF
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 21:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D7F9330652;
	Thu,  5 Feb 2026 21:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="FXspVDJk"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C378C32ED54;
	Thu,  5 Feb 2026 21:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770326397; cv=none; b=JurOxqBPSKWwu+cx2fWKTQcfYyZYUXtIR4pGWTM8gIHgo86HgwMAx5kqP+VskHcU6QO2A3U7RWBdCf7aALMSy0IHUihebQtCiP9gjjqnnQh1AnGG0EyyvvJpo34Iy4gJF2XrXfav87ESClI5t6A5S7MC0hdRt5NVkWmnTQjfT44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770326397; c=relaxed/simple;
	bh=b0Ot+wQmDFYhFZ3CCvWtSLAMivCWJBM2Q2zqzd/lqN4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V1J0hbQn2d5xPeCRGgTLUg7q2h7AlSVZVX5Vyo6cR1Ad/Y5/M63mYjYTjau9tP3B11jPW6Ev7Dcpuo4Y7dH8Mid95438fowy8C/GVVYGU30I5FFvNmHeguzQgaLLo1Np6r4LcZsl88NjmB5y7w4boBmvvtpTuiPzilTBXZ+yJCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=FXspVDJk; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=ZSOvELGA2EuKRZ+dcy6xv6vUM0tTuySjHGPM8Fdt7Cg=; b=FXspVDJkdinxtd5OLNoypx0bDB
	/4j7Rr9t5C9Jp+248IwBpFD9XNEYx3ouJptrP92ycZ8be+CE7V80aG7P5rX3GqgWFvrxXdBlkT8UG
	LPG3GgwXZUYX3Nm9cTrn+o1k04+8+rQcTKldsLp9FfXBOw5PIhslcdugNcDt607R6Oss4lX5uSXKE
	yiGsYqTIEaXvcHq48A7UjletnmO9gwl26T5UAJ4+VpGrjOAUI8e/ZF36vMYiVnERMzkssxmQ9/n4L
	9LgpbPk5Z8Rz7e1ZyFraMpQ76/1RbcvOQBCOjKMafvauAnrF8EGyTD0uEBMR5rmnfTcZ7iIAij5Ap
	H56z7jCw==;
Received: from i53875afe.versanet.de ([83.135.90.254] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vo6lN-007GGK-Mb; Thu, 05 Feb 2026 22:19:46 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: srini@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kever.yang@rock-chips.com,
	finley.xiao@rock-chips.com,
	w@1wt.eu,
	jonas@kwiboo.se
Subject: [PATCH v4 1/6] dt-bindings: nvmem: rockchip,otp: Add support for RK3562 and RK3568
Date: Thu,  5 Feb 2026 22:18:56 +0100
Message-ID: <20260205211901.490181-2-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260205211901.490181-1-heiko@sntech.de>
References: <20260205211901.490181-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-263165-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sntech.de:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sntech.de:email,sntech.de:dkim,sntech.de:mid]
X-Rspamd-Queue-Id: AD722F78D6
X-Rspamd-Action: no action

From: Kever Yang <kever.yang@rock-chips.com>

Add compatible entry for the otp controller in RK3562 and RK3568, add
schema for different clock names for new entry.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/nvmem/rockchip,otp.yaml          | 58 +++++++++++++++----
 1 file changed, 48 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
index dc89020b0950..e90136f7dcfb 100644
--- a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
+++ b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
@@ -14,6 +14,8 @@ properties:
     enum:
       - rockchip,px30-otp
       - rockchip,rk3308-otp
+      - rockchip,rk3562-otp
+      - rockchip,rk3568-otp
       - rockchip,rk3576-otp
       - rockchip,rk3588-otp
 
@@ -26,19 +28,15 @@ properties:
 
   clock-names:
     minItems: 3
-    items:
-      - const: otp
-      - const: apb_pclk
-      - const: phy
-      - const: arb
+    maxItems: 4
 
   resets:
     minItems: 1
-    maxItems: 3
+    maxItems: 4
 
   reset-names:
     minItems: 1
-    maxItems: 3
+    maxItems: 4
 
 required:
   - compatible
@@ -64,13 +62,44 @@ allOf:
         clocks:
           maxItems: 3
         clock-names:
-          maxItems: 3
+          items:
+            - const: otp
+            - const: apb_pclk
+            - const: phy
         resets:
           maxItems: 1
         reset-names:
           items:
             - const: phy
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3562-otp
+              - rockchip,rk3568-otp
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 4
+        clock-names:
+          items:
+            - const: otp
+            - const: apb_pclk
+            - const: phy
+            - const: sbpi
+        resets:
+          minItems: 4
+          maxItems: 4
+        reset-names:
+          items:
+            - const: otp
+            - const: apb
+            - const: phy
+            - const: sbpi
+
   - if:
       properties:
         compatible:
@@ -82,7 +111,10 @@ allOf:
         clocks:
           maxItems: 3
         clock-names:
-          maxItems: 3
+          items:
+            - const: otp
+            - const: apb_pclk
+            - const: phy
         resets:
           minItems: 2
           maxItems: 2
@@ -101,10 +133,16 @@ allOf:
       properties:
         clocks:
           minItems: 4
+          maxItems: 4
         clock-names:
-          minItems: 4
+          items:
+            - const: otp
+            - const: apb_pclk
+            - const: phy
+            - const: arb
         resets:
           minItems: 3
+          maxItems: 3
         reset-names:
           items:
             - const: otp
-- 
2.47.2


