Return-Path: <devicetree+bounces-65017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEC58BC099
	for <lists+devicetree@lfdr.de>; Sun,  5 May 2024 15:42:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F7591C20A0B
	for <lists+devicetree@lfdr.de>; Sun,  5 May 2024 13:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E7522C1A3;
	Sun,  5 May 2024 13:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="Prx7wyuj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [167.172.40.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83CF51D54D
	for <devicetree@vger.kernel.org>; Sun,  5 May 2024 13:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.172.40.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714916514; cv=none; b=mU9jN13n8CAaptKmSLOyn+2+9n7042z3bZWRZ2iV8bg1eUicqVz2pPEbPm1MLILj42pdUCW076mljaRPKZJgYgnoiqngCOf+ACFnGGh4r2qxSIYUzd6L/xOy+GoSEn6Ph/KNpUUC64YLhA+5CihGUwPsu5qTAgFlNcwMOjAjd7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714916514; c=relaxed/simple;
	bh=rSpdazmKVKZGXernxlXjdT6V2cdQjzVk1Wuq+W0fhu0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dwfc4UASCu0RTCxipfrc/TqFyT/nOaKEWZb3ek06djK7MZEmo/R+R4GkFSASQ1wwlIjQwzlUGDdh3DHGZH0HwcsJf952otYZkiUolUDOZik+lOvf3mQ9Vrj8qIl2WdCUUTlqEFXit5aOdyGeNcUgvs9NEwP10q60qSoVwKwGclg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=Prx7wyuj; arc=none smtp.client-ip=167.172.40.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1714916498; bh=sC2DBW9DsyOtnzVcYUm2OYE0IAAS+d9fnPjSwTyoSR0=;
 b=Prx7wyujFeTDDNaTbGAU0EwTMH5SWR8fd8YYpjL5Ojfj/1WTjF1KKrsZTUyHxb/PphINHwTzJ
 6EhM1zBBl9WoXFJfl3h0cUxaagGYvfSduB4w7iWjkpfGRpyMnhF0LFzhbymGLSSYzHT9H5ve+iP
 GFLSQF/j6QUw60vjTm/3mVn3sUYX+WSnD2kJSCwKtzNZmsuLAGJjCiT3EG5x4DusDH8VlzBZ+Nv
 7CwTbpEGXdE1ttQ2+RcfEYVcI6W3EUbSAbjg1uTrMrAzQxISJXwFPm8uDFhmQw/F1c0jlNgOlpU
 x5mREPcgQh/KKvEpMkz4VHrrs82Oz3tEr3E3SSy2QyOg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 3/4] dt-bindings: arm: rockchip: Add Radxa ROCK 3B
Date: Sun,  5 May 2024 13:41:13 +0000
Message-ID: <20240505134120.2828885-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240505134120.2828885-1-jonas@kwiboo.se>
References: <20240505134120.2828885-1-jonas@kwiboo.se>
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
X-ForwardEmail-ID: 66378c9157f92010457d68b3

Add devicetree binding documentation for the Radxa ROCK 3B board.

The Radxa ROCK 3B is a single-board computer based on the Pico-ITX form
factor (100mm x 75mm). Two versions of the ROCK 3B exists, a community
version based on the RK3568 SoC and an industrial version based on the
RK3568J SoC.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 51cdaabaf0d9..41f2ab79e612 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -799,6 +799,11 @@ properties:
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
2.43.2


