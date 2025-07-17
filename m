Return-Path: <devicetree+bounces-197276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 50ED4B08AEA
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:39:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E75A2A63780
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 10:38:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62E7229B790;
	Thu, 17 Jul 2025 10:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="YjUwodTc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9BA029290A
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 10:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752748684; cv=none; b=Bp3zMb8HUWFT9lJw/Y6Vc7hf30PjN+VoTjY2yn7t47PQh5+PDKpOz3WjapgLWf86YcxWJ8AgPjg4t3CV9EBZsK8KSzM48c7eLLMI5kcH7HEJDtkFjCSsPy3Ki+KuCbPM3TRmMvku4ik6un6nIZnbx5meO391j7pCeFqWk1/cGs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752748684; c=relaxed/simple;
	bh=662KHiIUQ31wzJBD2XKShR8YstdvK6ZN0fV8y2HLooo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=R/0yYGQIWJ2LPh3zeeXGluRMsllXbgLDIUAx7FMYXh0uLeLMN5teFgxE1NKIxIGIz7VZBsBMfPiyO37PVVFVjLfLoCsXGtgFn0DTlM0QRWxHz7o4QzJ1Y27TBF3bJKLIsaqXskBt2g8OT3VlFMAWsfA/2GzxHd8VQbgDIjUAM6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=YjUwodTc; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1752748675; bh=k7+9NHA8uHKcSqN4ck0qSZ7hO6Im2rYR1f73RFBsaas=;
 b=YjUwodTcSzvR3Kkew3IIEn9XnEKhcSCgJ8rxBxSBM0QTXwTPFp+nP/g61fBPir73WI/snhCuI
 OHUm/nxz1SnF86jIW/GJWY5q4VIjtwew8jj9DBgpDkQ1m2/HSTQk3FhORMmIHIO8sRsYdoPXp3z
 QZmd9YRF6tW0V2v5AcvnUbjennqgEMU8tS8HM5BfaNRhKzntJsQsARnH/huNEwXMXQKXqasSiJj
 SsYd+Zq9oPbWVi6oWLM0ejOkWommB4EMw6RxDs9pOTPYhfDK5UeeTZDwu6a/rUQV3Vs07JuSltd
 KB0yovbgPvUJwGisJzsU32uEElvEozmcJ7TtFrgQkTWw==
X-Forward-Email-ID: 6878d27c5e51505848fe6067
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 5/6] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi Zero2
Date: Thu, 17 Jul 2025 10:37:07 +0000
Message-ID: <20250717103720.2853031-6-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250717103720.2853031-1-jonas@kwiboo.se>
References: <20250717103720.2853031-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NanoPi Zero2 is small single board computer developed by
FriendlyElec, based on the Rockchip RK3528A SoC.

Add devicetree binding documentation for the FriendlyElec NanoPi Zero2
board.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v4: No change
v3: Collect a-b tag
v2: No change
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 43f6403ecad6..e3d3d483de4a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -325,6 +325,11 @@ properties:
               - friendlyarm,nanopi-r6s
           - const: rockchip,rk3588s
 
+      - description: FriendlyElec NanoPi Zero2
+        items:
+          - const: friendlyarm,nanopi-zero2
+          - const: rockchip,rk3528
+
       - description: FriendlyElec NanoPC T6 series boards
         items:
           - enum:
-- 
2.50.1


