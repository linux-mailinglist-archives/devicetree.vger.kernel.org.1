Return-Path: <devicetree+bounces-155920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 08739A58939
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 00:27:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C103D188D36D
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 23:27:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F415A221DAC;
	Sun,  9 Mar 2025 23:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="CJsfeSeB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A689221D8F
	for <devicetree@vger.kernel.org>; Sun,  9 Mar 2025 23:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741562803; cv=none; b=jvh34xCGJYdCDgbBbo2W/1HR1CeViiZxtj1jJHjqYN1c26QU39Aex0u/fUA2mrGeZioNdLvLB2LMzqVFG5i0mRciJm7JK47D6Zjn/8TDJzgAp94KUl1tTXH5RFGYOgIP7tDYYjh09Dp1a9u7nMwEoJbYoADwq+aRx600+gJZRuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741562803; c=relaxed/simple;
	bh=QgHqKYOvWVyGVZtvyCcc5NYc2fqYBSJeW421CpGLeBk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Op7iDcCJnZv2YsJb0knR5dCDWg2CnWQIszU2nJ5NJCiJyNZWA2IVJjz9E7F8HK1IcLnQHtHLibNFXABBY8nLW+jt4KYoJ+0BHDhGjDzpSGGae12okNaUOva8zJYH/tbz9uP3vUAHsECIcC2O4EpnRI4NQb4Btj6doa3tT51iK6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=CJsfeSeB; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1741562796; bh=Fvsg997oISgjqp0W2TJFAP7RLXkppIq9T5s0bg5qC1I=;
 b=CJsfeSeBhoF+LbwG4joLkIws7INvvldZH/GyQhk/F9f4d2yWXMAbZLNKOuKtFQnnJYnUi7Y+5
 mjWvPdI8kIisZXuTodNaKZylyMNOfgUY9QJ15Pgylq9921AWXwyFd6xYDv7R4eE0rSRLv0deSDj
 IvGqxaWTq55nzOjKj+r7UsOXQ2RrbSMagbIfoc4wsKHBb1Kh4pscAtOuL1gu4rhTfTjK1e6wtDK
 VgYDXQS+k9B5Z7bR8Sz+6Y7iy/NvctWsEoe/SYsQN9P5oQ3k+rFOQWg/aLeH6shoZQQc2QDrv7Y
 YVwVIi0pNySL1znCSBIAttqIOJZb0lHAkLVuBz+gQGwQ==
X-Forward-Email-ID: 67ce23a95209992d7c670e6e
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Wu <david.wu@rock-chips.com>
Cc: Yao Zi <ziyao@disroot.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 1/5] dt-bindings: net: rockchip-dwmac: Add compatible string for RK3528
Date: Sun,  9 Mar 2025 23:26:11 +0000
Message-ID: <20250309232622.1498084-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250309232622.1498084-1-jonas@kwiboo.se>
References: <20250309232622.1498084-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rockchip RK3528 has two Ethernet controllers based on Synopsys DWC
Ethernet QoS IP.

Add compatible string for the RK3528 variant.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v2:
- Restrict the minItems: 4 change to rockchip,rk3528-gmac

The enum will be extended in a future patch, Pending RK3562 and a future
RK3506 variant also only have 4 clocks.

Because snps,dwmac-4.20a is already listed in snps,dwmac.yaml adding the
rockchip,rk3528-gmac compatible did not seem necessary.
---
 .../devicetree/bindings/net/rockchip-dwmac.yaml  | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 8dd870f0214d..fe417c19b597 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -24,6 +24,7 @@ select:
           - rockchip,rk3366-gmac
           - rockchip,rk3368-gmac
           - rockchip,rk3399-gmac
+          - rockchip,rk3528-gmac
           - rockchip,rk3568-gmac
           - rockchip,rk3576-gmac
           - rockchip,rk3588-gmac
@@ -49,6 +50,7 @@ properties:
               - rockchip,rv1108-gmac
       - items:
           - enum:
+              - rockchip,rk3528-gmac
               - rockchip,rk3568-gmac
               - rockchip,rk3576-gmac
               - rockchip,rk3588-gmac
@@ -56,7 +58,7 @@ properties:
           - const: snps,dwmac-4.20a
 
   clocks:
-    minItems: 5
+    minItems: 4
     maxItems: 8
 
   clock-names:
@@ -130,6 +132,18 @@ allOf:
       properties:
         rockchip,php-grf: false
 
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - rockchip,rk3528-gmac
+    then:
+      properties:
+        clocks:
+          minItems: 5
+
 unevaluatedProperties: false
 
 examples:
-- 
2.48.1


