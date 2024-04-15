Return-Path: <devicetree+bounces-59424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A0D8A55EC
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 17:04:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C51D82828B2
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 15:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70DAE757E5;
	Mon, 15 Apr 2024 15:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="eIK1Sm5C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D21874E11
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 15:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713193466; cv=none; b=rsPlCT10a3TxyEmw/dH35y5DilKb2syy7JeBgplIracOozz2Z0XHgVCDOnBvRpH5mIZdVBqgBZmCyTW9yE8+JkcpAOXYmGuGR0ukkesEcpsxNGI7lVmVswJYixu8OlksPkAN+Zf3+8ELyzrL+f95sfuzubnPBQRj3FQSVhnzgBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713193466; c=relaxed/simple;
	bh=m5RS2ptdjvUqdXoEWpLJN1ClndpPjatpiiqMigQQkGg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k3zIeuQzun+NesJaZkNVWhbYX0kBMX+H4usVM/bY/5SMeo0Um+ua+OkCK8hrO+JgV13fWvaXQ0znI6/R9MOrCI6dhfjIq7TPplC4soJd+Uq0dGQwpAum7lerrUicLxtkaU74zOTJSK5Dfe5Jbdb/dWfG+qeXIZBlK1RozXrbZAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=eIK1Sm5C; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1713193454; bh=Br1cPb612nXVCftZVJlVuBeRaWk4BxyFB/Atx/U13WQ=;
 b=eIK1Sm5ClMgXjK+b+HhMIoudcQd/O2ozoDcWV61cSBWjzCwbnNZpG4smbOBHMbbBr4JOjSqKI
 xdlY6gXi+xP63HPNyqVw59XxiJSHjfyuLMam6OGALKfyqt0ETkeviqegLK7KddTgpbkKxd8NL/W
 ZyYscjuFiN+TctcnKr3i0J7KT9fU+ybjgiJld+vQplthvGpoC1xhWzkyy5P+yDojmxblcqG6Yu3
 Mmia+kveaYr8veqhRzM/HPZXg4mMVHBoKfJuZjsKWBA45xb9wlisenieT/9WopR5Tq5CohssL1j
 oxhNi7rodvbF9SbUWEYlR2UAWkA78UomiAKrVX513N2A==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
Date: Mon, 15 Apr 2024 15:03:43 +0000
Message-ID: <20240415150349.2207075-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240415150349.2207075-1-jonas@kwiboo.se>
References: <20240415150349.2207075-1-jonas@kwiboo.se>
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
 149.28.215.223
X-ForwardEmail-ID: 661d41eefc656ac01cb4646c

Add devicetree binding documentation for Radxa ZERO 3W/3E boards.

The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
computer based on the Rockchip RK3566, with a compact form factor and
rich interfaces.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v2: Collect acked-by tag
v3: Fix devicetree spelling
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 4bd033adeee4..2d43729bebab 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -804,6 +804,13 @@ properties:
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


