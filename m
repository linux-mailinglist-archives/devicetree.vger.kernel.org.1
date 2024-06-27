Return-Path: <devicetree+bounces-81029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D58E91B161
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 23:18:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DC9D1C2132A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 21:18:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61F1D1A2C1B;
	Thu, 27 Jun 2024 21:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="TKT++Wof"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [167.172.40.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787BE1A2540
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 21:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.172.40.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719523083; cv=none; b=ZfoIwnN4nh7K6GRwjbrj1TycsNO8SC9HBqYKkeKPAI0SxwJ3VqIZQYf+/vg5jx2ToRx4IRz87/qWNNGQB4n6hcrz+3VuGvUa+tz+Gx6SDGJyJ+rYuD+x1qZk4MWtqs6uOtM+Dv3AbbMvYezWjGWKbh6sKW8bQeTvAmzGahZgFzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719523083; c=relaxed/simple;
	bh=cJ+f7UMmg6eywNKGDN+DpL4ht9s3lxJ/xEhjHaqkof0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FpHZg6QP5d6B45UCfltH3oJVltGBPN9tNdRAPfccnVIjnAb4qGvDTjQ7m1ZrNQLhWPXJzdcpHWPp84FTNQq98qalAbtDjo9kB15YMXCasqgx9+OTQTN9ucpzVbn8izqxXw7y5nR/Y1ZbGbVolSZzY65Z1SUF7h5kBpF0QKfs2yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=TKT++Wof; arc=none smtp.client-ip=167.172.40.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1719523070; bh=0BtZMq8zO5HEvZyObBXvIv2npwPnM6su7k47D0xt2CA=;
 b=TKT++WofO43b2TL0yjALZDTpYUwJpbOLpHP0HRM21ABpLMVniQDFwdx3kIkNUdP/kxwRxPlau
 1wWoKoMzhB0gG6uCzQl7BqxnuWGUZgMGy8Yht3isOzvthcnA8stbI2qbHx/PDJAYQgf2avv89yT
 47QKbhVlGKrh/R5FMONNHk3Z72umj8MEc7qxE6p9R5Ypm9TSdPEQ75SSCrBtWFPJr0oW/rj6eYd
 MeN7X/rrcBLQUZx4gu8d3mtwtorpPVxDeKy8Hf2WarjDViYurkAlLDEtxTYSiYsTwZ6CJNRgCT5
 V7O8n7Ig/hrDVnEAjE3S293FrIrkdFZZvdRspsP+B/MA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, Krzysztof
 Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Radxa ROCK 3B
Date: Thu, 27 Jun 2024 21:17:30 +0000
Message-ID: <20240627211737.1985549-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240627211737.1985549-1-jonas@kwiboo.se>
References: <20240627211737.1985549-1-jonas@kwiboo.se>
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
X-ForwardEmail-ID: 667dd6fb392543b4ce9ac5ef

Add devicetree binding documentation for the Radxa ROCK 3B board.

The Radxa ROCK 3B is a single-board computer based on the Pico-ITX form
factor (100mm x 75mm). Two versions of the ROCK 3B exists, a community
version based on the RK3568 SoC and an industrial version based on the
RK3568J SoC.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v3: no change
v2: Collect a-b tag
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d2e887415d5d..bbb2d7c217fc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -811,6 +811,11 @@ properties:
           - const: radxa,rock3a
           - const: rockchip,rk3568
 
+      - description: Radxa ROCK 3B
+        items:
+          - const: radxa,rock-3b
+          - const: rockchip,rk3568
+
       - description: Radxa ROCK 3C
         items:
           - const: radxa,rock-3c
-- 
2.45.2


