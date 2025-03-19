Return-Path: <devicetree+bounces-159068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A0ED9A69892
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 20:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C32D3AB566
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 19:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFF8F211710;
	Wed, 19 Mar 2025 19:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="AP8bLxhB"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F8C1F4C97
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 19:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742410978; cv=none; b=aEmhaCb1kQLCnRadeo7Cpu61MF9MRz7XS8dhBQVeI+iOtNpqCyRV+FnIL1Geky86xrSMiYYz1ATanvloQzdVuq1O7O6m6vwYjC6Bj5+snFMdc/6x1dlB6OBNFWSgLa3bbvuCKEPvtX4EjWGnh00Ix0c7ZydYKNUImG2R5M/7EVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742410978; c=relaxed/simple;
	bh=oyIUksq31O9w2geeE+TDaMoZeKCsaKQi+XSJrFFkOig=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n5TR7XaRu6ySywisGCc+oKEqu5d9xw6E7vMzt17B5RL9w5idCfSLBobVkCem5e/v2yK4p67SkkodmS/JdSKVzGXbjFpPEOznAATueca8ar2L5b1rtZCedFSnYw2s+KoxjaotdRh5HI8YdGwq1v5x6YBLFbjW82ro26+bptreykI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=AP8bLxhB; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1742410974;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gOquvHq7vUiDA9+btgFRSbLwtUiOZgg8rxZoyn8ZjIs=;
	b=AP8bLxhBgvV1qmOPOpfrUpzeHR7mfTT5HGIeikyXN1xs0k3+evd8tTTEkPIm6KXZeezU4c
	Ybx9U4iFUH1I5w8G5Ii2RimRY5KeP2T0kB0IOvAZ/ORCF8E9RWNDBxi+xAqGEy/Bxfa6Lp
	PpX+glmiI9P3ZkEXxrhazcw8mQqDZZKHJfHdxN0QifdmkpCeczId1zFzOTjeknu2ND0YQh
	Ra+arKkSKUo/YkqjK+nq2YJRZ4J0nSNaGxXOG+cMxksiSoDujlPX8LHdyKEvkJYtNQSnCo
	VSRJ1uRIXxkrQY5wl7d7CYD2lJr/waGSJQ4iU2biOP9AtnixNgJrWy151JlYEg==
From: Ferass El Hafidi <funderscore@postmarketos.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	funderscore@postmarketos.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Artur Weber <aweber.kernel@gmail.com>,
	Karl Chan <exxxxkc@getgoogleoff.me>,
	Christian Hewitt <christianshewitt@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/2] dt-bindings: arm: amlogic: add S805Y and Mi TV Stick
Date: Wed, 19 Mar 2025 19:01:49 +0000
Message-ID: <20250319190150.31529-3-funderscore@postmarketos.org>
In-Reply-To: <20250319190150.31529-2-funderscore@postmarketos.org>
References: <20250319190150.31529-2-funderscore@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Add support for the Amlogic S805Y SoC and the Xiaomi Mi TV Stick (aka.
xiaomi-aquaman).  The S805Y is very similar to the S805X, with just a
few minor differences.

Signed-off-by: Ferass El Hafidi <funderscore@postmarketos.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 0647851ae..3403362e0 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -73,6 +73,13 @@ properties:
           - const: amlogic,s805x
           - const: amlogic,meson-gxl
 
+      - description: Boards with the Amlogic Meson GXL S805Y SoC
+        items:
+          - enum:
+              - xiaomi,aquaman
+          - const: amlogic,s805y
+          - const: amlogic,meson-gxl
+
       - description: Boards with the Amlogic Meson GXL S905W SoC
         items:
           - enum:
-- 
2.47.1


