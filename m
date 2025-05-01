Return-Path: <devicetree+bounces-172737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF739AA6255
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 19:34:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A57743B79BA
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 17:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7D052144D2;
	Thu,  1 May 2025 17:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IJOATLMN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD84A1A38E3
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 17:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746120864; cv=none; b=kDzNVcLgQ5VcztJmfzV3Gfpq3kyTBM9Nrn6gkFcHH18oUWHt4hO0eny3VfWI1eJSwRP8B3RPyvZO4t7XwQ3jNKILsLDP7IzTehUpzTAefE1p5JvmfiNlMANVkQZmMf+Bgn8QjWeNNuskLeCWn+dRqbf6P14rv1XpAj3MVa5w0/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746120864; c=relaxed/simple;
	bh=2gUZzAGI9l/7uoNMIsn/D/u9hWshHKzGh9TMse0LW1g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=c4nSgecQlbG2YEKgs4wPEcl67pomh5DDdeaFIpw4ggTwoemrk6x1wBz/VmDMvn4KODQiUUOcdJXf0Cw73TON7uzgRmBgG1qz9m+Sb4L+TF5vmlOYhJ1vSE3JwrdQbwKDivviJrKY8bnEhpgOxe2HWbUu7ocoejXHQD9REkLpbhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IJOATLMN; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cf861f936so2188705e9.3
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 10:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746120861; x=1746725661; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8StV9iuTddu5B1f6HK3JsWIBowtp7A8CxnimQASxOOQ=;
        b=IJOATLMNWa/xwZrPSyFsjEhYB7KcVFYCvM5xTHO8GdxustMOZU3hlPTOBF8m8Q2+Js
         Lq2xXdOF8Dy0IYL5cPuqh+jecnd1d0Tqcsxn+wrYzq7vBJSENfU8eUghbTTh2259RgeM
         7Idxh1gdCGpJGkGoiYAf5/RC7zLtviz2/Adr5vOj3VyxBCU23P1zJ05ayDQvaD8xxZ20
         QaSh0wrUmInHC0SvI1g0YIxtD/yXZZn27ITb1NLHqVEnzy1XPL+dl3lYt/5ZEFx5/wp9
         99wWYQOrP49lXSQ1dCuAh4yndJkU5K9UNUP0tUAWD6QoTN/EEV9VNQaogEzs8H+Ugl7j
         ubsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746120861; x=1746725661;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8StV9iuTddu5B1f6HK3JsWIBowtp7A8CxnimQASxOOQ=;
        b=GcIXqmW8mw1f8QGG+MHIwTeYO6aMocOTgJ++N8Vhln9oAgth77M+ZBk+xECf7Gi/ZN
         F0VDqRjj9mI4apM/iwVcHrLUv0QofXuNgBxNfuTnzTg04KaQkuJ+qBkMr6hGHjp7IJtx
         pGuFX55gU0qSgbb0fuQwRO+bI+UNz0cCJTEx6ywYy4IuxC6kf3Ji0rYhG1KZVOOs5qbG
         hbOUPt9c5AVHshivQ1lIL2Qtqo9e0jeYFyZV2KkQTi7YOkEUO+yTco2C3wSOyXvcvvZm
         4REvcpIgUWxKQuFebOFb+C9qMAk7zRNLYadz9GB5BWEITwr64ZtaF+oHioMgAoMudV7a
         UZKg==
X-Forwarded-Encrypted: i=1; AJvYcCUrTUhINDDrp2fdcfB8mirr6K3N0Cj+6cTNM/MAaID9tvghY+7PaUKhg7c7JHCHt5zUUJ+HEajCU8qZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzOmsfIjqYDV9nBNZAC5olUKX5wZQcM/u+bzeydLsUmixLgNqQT
	YqTIJQ6Uqfmt+8J3WNg/TcAIC2X7B4nhRWCLQ1CfWzD/qF2qZhi9ASTPPbyr3jg=
X-Gm-Gg: ASbGncsPx67EJ065jqxgkhXyaU3hZ5ElDLX8PN0w7J6EpVtNU8YErcRpExUbg0whTlP
	hkvWTi0B/iww7EB8zVguDxjGi5NPmngdc5XZKAKRzaUsaPOfEt0JG5Af8LBekq2Qa0WJQ7BZ1rG
	/7Z9n0cm5ZMFWP/kz18mr/COsG9dCFVfL6UYAG1zjJejtVKuvUUpqu7vLEAvMYm3jMUcA45OrBB
	+er58RbVd0EpSllo+Ih6KizQizh2rO3x/taX5BXCjG58K3df6bamwmJMfsibJl7HRvSFyijtAx4
	ffv7P9DmEc3eIPCVcuzdmHfdcQ8hNVUR4xolivN7vZQ6xRlJlA==
X-Google-Smtp-Source: AGHT+IHdy4tE9zK/W8vJHJJMvw7CoQzsD7xLIoJ0aJrQeQmv4GAFnnHxfWP7eTWalox0noB95p6u2Q==
X-Received: by 2002:a05:6000:420f:b0:39c:1ef4:b0d1 with SMTP id ffacd0b85a97d-3a0941608ecmr836941f8f.10.1746120861106;
        Thu, 01 May 2025 10:34:21 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a095a4650fsm1314481f8f.26.2025.05.01.10.34.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 10:34:20 -0700 (PDT)
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
Subject: [PATCH RESEND v2 1/2] media: dt-bindings: renesas,fcp: add top-level constraints
Date: Thu,  1 May 2025 19:34:12 +0200
Message-ID: <20250501173411.134130-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1811; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=2gUZzAGI9l/7uoNMIsn/D/u9hWshHKzGh9TMse0LW1g=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoE7CT14i4pKggHQ0CINRGpD4iQxqHx5htsnl1p
 S9xOauKPhiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaBOwkwAKCRDBN2bmhouD
 158oD/9LQlgvfK8FFbWxhLyIy1nge4qIfH+NQzSAPFhaCRCiq8A8uRuYRyKiuVZzbLde/KMlT/J
 bzLGaY4T06LxBuB85ZgDik8Oxa8p2eTEnLb/aGON11qSWvmRa0qtWD43boIKoK40DezGRgxEO70
 fhFockcCvmxOK1X+tPqsdArnMV8UUXG0LTjwI/rD47wsSrkI5MplqAofSekxWsenk2J+KkuX3s9
 prD/Uv1bnNOF3sz03DsfI23pF85/8hVPVWltf0HO36B7b8xPz35fEl2RCb8IUQRm+eXcWQlZcUJ
 uzy9lwNKjk0QkqS0tpxN86qzlul6m5fz6DLhEouU9LJjF8dyxgzaaAVQ0/jtxJqNjSfDN9vFRdf
 kiTMaqSr4KtEwwBNb1We0KX/6MxNWWZBH3Bh6P7iTD5YIoBHcKKOxQfBLjcJ9/Og5XIJiR474IF
 /FeWFUd6By1aCRMVhFX9kQh/Lw8f9S/0PfncdmRCSk7CkoEd32niNfIKOa7Wn8AQrjCaRGnJwR2
 2IdpCbRobGWu02Q5iIRaEPeiEhr9ZNSVYCQpQB753u7uTE6DrTIwttterk7l4f0cruUqIq4a1+g
 iOseuIcj8WugZldLSX7U8g8XZqDPsp70ZQkhJRkQ1pt0zxEpetmHEEYQ36WmsgmvZyWU43nQEdp LUy6kc8glQczcDQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Properties with variable number of items per each device are expected to
have widest constraints in top-level "properties:" block and further
customized (narrowed) in "if:then:".  Add missing top-level constraints
for clocks and clock-names.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Resending because for three months these were not picked up by media
(still in "New" state).

Changes in v2:
1. Add tag
2. Move clocks description to top level
---
 .../bindings/media/renesas,fcp.yaml           | 23 ++++++++++---------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/renesas,fcp.yaml b/Documentation/devicetree/bindings/media/renesas,fcp.yaml
index 5ed9427fb757..7bf1266223e8 100644
--- a/Documentation/devicetree/bindings/media/renesas,fcp.yaml
+++ b/Documentation/devicetree/bindings/media/renesas,fcp.yaml
@@ -36,9 +36,18 @@ properties:
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
@@ -71,15 +80,7 @@ allOf:
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
2.45.2


