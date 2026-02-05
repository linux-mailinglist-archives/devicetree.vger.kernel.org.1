Return-Path: <devicetree+bounces-263167-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OyACIcJhWmj7gMAu9opvQ
	(envelope-from <devicetree+bounces-263167-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:20:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EC1F78EE
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:20:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F1A6E301CCCA
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 21:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C9B8330B07;
	Thu,  5 Feb 2026 21:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="cDljldwE"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1240D32ED57;
	Thu,  5 Feb 2026 21:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770326397; cv=none; b=smO3cZhzG+S4EaW1YOpu8GBY1L1C6WtJ2BRlYctA+TtQGYy6dNGY4aLlhW0UK6y1tzghABs/hXnVq8gcLLwPPsecgjhNthCsp51DRjbzIZQn9Fq1kKySsTFRTCCem0xbTWBjpPcJmMijFEE8p4beqpos7mFrO9Y6kF5bVArfsO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770326397; c=relaxed/simple;
	bh=8OeT9eHj0dWGbvvDTZ/e2zs/YOpVtRAkmF3C3fpnwWI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mVWPveSR3/+7fe62l9Wigdg9yOXZbsTmKLijp7f2ubf/LAOrngsKoVXXz6apNsnvb0eVf8Eg889AKzThlWhEO7zO0ABMe2rZbZdsZQgWcz6jQ6CKQObct3OD/2JSkS+mq5eKasOQCTBS1tyc4j9I7mCqon14urFRZIj1davtH78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=cDljldwE; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=1U5hhK+rQlR00/k3EtSMrklWPqzzU+7KvzJRyjKH+Zg=; b=cDljldwEFYTs2Gusti/WLTPfYX
	xY3TJrU6MsZA2uo/gMKOJ7dMtHRuqxMOH1XwindDtM7V/VN3j5YUdiF4fbDyxTEA2X8DXMRa91L6u
	emicl+h30laRj2WDwa6se9v3U41ZRwtR1ekc0ogO9jNiRAJIKiA3mpCiu6W5Q64o9YCoQBE4+GcWL
	L8CzdlBPiXi612hrn+vOEV8U2rwq80WimyPNSjyXsYnIQFIunQGSfLzUH3rVuiiqTO6zuhwKTuzLz
	SAuDXC/x88a55OxR5fDzgwo9qguKel0PExUiiaPtEwwl3xrO8wB7gbP58ThYnALYQXHZfjZLp6hmV
	NTivuDiA==;
Received: from i53875afe.versanet.de ([83.135.90.254] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vo6lO-007GGK-7W; Thu, 05 Feb 2026 22:19:46 +0100
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
Subject: [PATCH v4 2/6] dt-bindings: nvmem: rockchip,otp: Add compatible for RK3528
Date: Thu,  5 Feb 2026 22:18:57 +0100
Message-ID: <20260205211901.490181-3-heiko@sntech.de>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-263167-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sntech.de:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:email,sntech.de:dkim,sntech.de:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B3EC1F78EE
X-Rspamd-Action: no action

From: Jonas Karlman <jonas@kwiboo.se>

Add compatible string for the OTP controller in RK3528. Compared to the
RK3562 and RK3568 the OTP in RK3528 does not have a phy clock or reset.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/nvmem/rockchip,otp.yaml          | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
index e90136f7dcfb..7e4d5e1c4ced 100644
--- a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
+++ b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
@@ -14,6 +14,7 @@ properties:
     enum:
       - rockchip,px30-otp
       - rockchip,rk3308-otp
+      - rockchip,rk3528-otp
       - rockchip,rk3562-otp
       - rockchip,rk3568-otp
       - rockchip,rk3576-otp
@@ -72,6 +73,30 @@ allOf:
           items:
             - const: phy
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3528-otp
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: otp
+            - const: apb_pclk
+            - const: sbpi
+        resets:
+          minItems: 3
+          maxItems: 3
+        reset-names:
+          items:
+            - const: otp
+            - const: apb
+            - const: sbpi
+
   - if:
       properties:
         compatible:
-- 
2.47.2


