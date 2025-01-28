Return-Path: <devicetree+bounces-141361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 26599A207B7
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 10:54:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D3A01888E32
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 09:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44C6519C553;
	Tue, 28 Jan 2025 09:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LBIAbyj+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4DC194A53
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738058042; cv=none; b=dfQjjTIJTjR5KItU9b4QoED8FPXtqZffxFVVU5oHpstFDroSfsCCs6d84WIts+BoAcGAcQyNZE6iOGNH7ovdQdwHCsoHKc63wi7Zz7U2MiSNtqXR8/qeExpmeJFcfr7GpAh/kPZ+ZZ3B/ljb4Xb8tbQ3ck6Jz+5CHG+y/vRVV6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738058042; c=relaxed/simple;
	bh=NQ6ugZuFusyIBLTqNAToTvLloxPH1ohbfhkFV/P7xag=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=A3w5oN/YzeZuLPFuPDAsLF3FGZIOFzD5LnHFGi4aAlh6OWUUDb/ogLc/u+OVk1K1IAcmKKO6EySZ1T+b/7tqhdF5ig42kARikRPAvVk8yhE+yJo+CWkqU4D8bTrhdLeRgbJ791SfHmyLxZhWjetylTyFBRM12wPO1PwDng7pKq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LBIAbyj+; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4363299010dso4629175e9.1
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 01:54:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738058039; x=1738662839; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gX3wCMKWuGdO9a8FLqSF+Jru9DaiVGtaRKDUVUUwAh4=;
        b=LBIAbyj+JuYdRwiS/v5efdibieD4f4gR1PzJh7k4gn9dYGIytmB5Gj4391wMcVgOaK
         Z2elCX7SOCJpoQKIvxzAePItzX5VLZrqAdtsD18JryF7DG+6pGESwFmll26QIUN6rRM2
         ZkTCRc3l8vpK5sHku2a0XCK/vNAyboNyBF2j6dgFa89/9ghm7udrwsBwt2OXiFm7sxtW
         XOOSXu0mRfrOZw81cbe0ayTBCsDlQf38BuSzcxpF+TeqzCL74Xb9kxg2Mmps7dBsZfVW
         enmNdTzIZ6WpHOSpt8MStpxqdvCsb7Zf2L5HwHwAnx7hMtkfM8mnfPKhfB2xPo7Eb0Cx
         K6GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738058039; x=1738662839;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gX3wCMKWuGdO9a8FLqSF+Jru9DaiVGtaRKDUVUUwAh4=;
        b=wNtEIqh5pkXi8/pb5wMQHQqX1oPToPRTpFSMu5nEXAAM/oKNHsQnp3zPXKL4mzgWDf
         xUTlkUwwOw9fjSRWB7LxHYLB6Z1AI0crRx+75wKKAKjQK98897giGYO8032+kjhoaeuc
         E0p1fbPxvRltcppK/BpsdD5D3qyCr1BVqFKnQXbe2dwTEt8kd6MJbfLrnP4X6I2ZPf/M
         Qp4d3Zqmn162z5PsJiU3uBRsRP1E3B4A6uy3uie5ix6k94PwiexS6USqRpcDO2NLGGro
         KjEI7iq6I6N6PQ5GYHUcMMb2yMH8PgYWt2G85VT42yPoEApya+JrwBYSt9erY21MBkmB
         EvAg==
X-Forwarded-Encrypted: i=1; AJvYcCWyllU56S8yU9fcsvltUymZHmnc1DY9FxlyAakuznXsPmVLFNFWWn+AVhrmioV3hAvBUCQHFgaXqUp9@vger.kernel.org
X-Gm-Message-State: AOJu0Ywask34LKpaDcFqnALbRjlaiIHaZpUkUmS4coBpPBSM05OGS4jn
	Dccq68bkbv6PPXbFifSJdZB9oA627YlqPJ70uBQ0WiPheSIBliyFooGtldMZJZq9UUJwFkSq4bE
	K
X-Gm-Gg: ASbGnctFMtAcAeJEdtW+A9qv+Ab9ptFAMyjNvx22RCjDLcYJOMNa+d36sDDeiEJTIO7
	najq8jh0rCG89kx1htteAI9F2qg34ulT96WHFL9PzhJqMsS2mvyBmXxEY3HFoPSZFRG5h+3a+tB
	/CVnBwqVWpjxboVIwdlImq+i1FMbHliOzuZOjE/Fx+rCo0uGrdRx01q/0Ge2ehTsQ8fCXGGkUZ5
	cDeE/H8WizyK/bq0zTdS+XvsyjF4PZVvHTY0A83ACEgWRbVKScp5ttqnRbqdSd3cSkkhRR/Bnka
	xy2rdLoaXcYbujOFxeGcWlhS7OIy
X-Google-Smtp-Source: AGHT+IH2lJvke32NprHWtE9+fl3bZUwS8VksN+GlfIiEv0zBLl3ziaJ2HPij7vJA9/GwRDVHWl9vUQ==
X-Received: by 2002:a05:600c:1c23:b0:436:488f:4e4 with SMTP id 5b1f17b1804b1-4389149cc76mr150353635e9.8.1738058038800;
        Tue, 28 Jan 2025 01:53:58 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd48ae56sm163002455e9.21.2025.01.28.01.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 01:53:58 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-media@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/2] media: dt-bindings: renesas,fcp: add top-level constraints
Date: Tue, 28 Jan 2025 10:53:54 +0100
Message-ID: <20250128095355.65766-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Properties with variable number of items per each device are expected to
have widest constraints in top-level "properties:" block and further
customized (narrowed) in "if:then:".  Add missing top-level constraints
for clocks and clock-names.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Add tag
2. Move clocks description to top level
---
 .../bindings/media/renesas,fcp.yaml           | 23 ++++++++++---------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/renesas,fcp.yaml b/Documentation/devicetree/bindings/media/renesas,fcp.yaml
index f94dacd96278..acc08ba7940b 100644
--- a/Documentation/devicetree/bindings/media/renesas,fcp.yaml
+++ b/Documentation/devicetree/bindings/media/renesas,fcp.yaml
@@ -35,9 +35,18 @@ properties:
   reg:
     maxItems: 1
 
-  clocks: true
+  clocks:
+    minItems: 1
+    items:
+      - description: Main clock
+      - description: Register access clock
+      - description: Video clock
 
-  clock-names: true
+  clock-names:
+    items:
+      - const: aclk
+      - const: pclk
+      - const: vclk
 
   iommus:
     maxItems: 1
@@ -69,15 +78,7 @@ allOf:
     then:
       properties:
         clocks:
-          items:
-            - description: Main clock
-            - description: Register access clock
-            - description: Video clock
-        clock-names:
-          items:
-            - const: aclk
-            - const: pclk
-            - const: vclk
+          minItems: 3
       required:
         - clock-names
     else:
-- 
2.43.0


