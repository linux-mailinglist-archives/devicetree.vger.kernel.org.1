Return-Path: <devicetree+bounces-65651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2D98BF6BA
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 09:06:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4B43284CB7
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 07:06:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D74F82030B;
	Wed,  8 May 2024 07:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="anzykPHQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [167.172.40.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D7528383
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 07:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.172.40.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715151994; cv=none; b=nhAsjbYi2WrXhHAKFtiI4G5zeirhp4LgKgdpUt5ULOE8ckukduwEF6URpZlVdM75+frPEcmpOaYxpWcJhPdSJYIqls0LnxMdsMxpAnDIDWf4VI07h97kSPIusFZWEawuKf49GeP8tWYPfwpssRLlst1JAe4AQFD/d4/TXhEDrY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715151994; c=relaxed/simple;
	bh=lMxfrhY59K6EPSc1EZXCNl3+Y+Pw8KVhWsV76ArhotI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gxXL/WSS55AyLffoOoYq12qanOdcZ1XqZFvclmsB0T24YbnMHDUHatSfDiQdZjZBV5TomWIUGI5SrNfenEjU5yxh38Ktrl8S8zcZM3SQJEOOSJkAP5j5FHXiNusRDaza2HUg0lAtWHKZ0aEXjvHE0ZfFUJE/Yfj4Ic3+zrebpNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=anzykPHQ; arc=none smtp.client-ip=167.172.40.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1715151984; bh=mVIeb7oUJg1K51CEIumat9UUkWRnHB3Y/jVf7dq3VYQ=;
 b=anzykPHQTMEJl4m4sJJbGk2RdvA7XC6ugV8pnRHTWpCTXi2LXVMA7IrcVBhaHDyu62nhauD2p
 bOr2ZVesN9ptmq+/H5KjXzW+adzlegO2PGJf/LDheEbf6vJKzSRqfzWdvMYihy0deZzBy26uZXe
 Wn441qqe6NwikYndJJix+o8gpEDBolUOchXe3wTstZ2lMkMsGrrjDJOoHz+olsKr/2+rkv/8jHI
 GS1VEfY1Jd9bWDHoCWiTEcHcXAm6KGde1Ffm69/SLL4iyxqyEoE6gH/aqlfwXAP+womgQA+48xn
 oC40pA3B2vNvI9BoDUXklbsC1ncyMNuyj5Nors6ZhjSw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/2] dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
Date: Wed,  8 May 2024 07:06:04 +0000
Message-ID: <20240508070611.4153602-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240508070611.4153602-1-jonas@kwiboo.se>
References: <20240508070611.4153602-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 663b246da86e8ee0e42ddc26

Add devicetree binding documentation for Radxa ZERO 3W/3E boards.

The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
computer based on the Rockchip RK3566, with a compact form factor and
rich interfaces.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v2: Collect acked-by tag
v3: Fix devicetree spelling
v4: No change
v5: No change
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index e04c213a0dee..51cdaabaf0d9 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -814,6 +814,13 @@ properties:
           - const: radxa,rock-5b
           - const: rockchip,rk3588
 
+      - description: Radxa ZERO 3W/3E
+        items:
+          - enum:
+              - radxa,zero-3e
+              - radxa,zero-3w
+          - const: rockchip,rk3566
+
       - description: Rikomagic MK808 v1
         items:
           - const: rikomagic,mk808
-- 
2.43.2


