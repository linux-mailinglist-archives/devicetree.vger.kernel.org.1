Return-Path: <devicetree+bounces-94408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E32BC9556DC
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 11:46:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13EA11C20E3F
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 09:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 132B814884D;
	Sat, 17 Aug 2024 09:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y0QvydZZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC21F1386C6
	for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 09:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723887973; cv=none; b=P/xXRPNEfpe9Tsxw1y4mO2ktSMr5y+anXrus4wfrNnGdvmAt3aQKhz9Lv98T0b6LSG+fuIwsh7Nb4GDWN1xGiRcB0T6kfNxhi7UTVMOHom367bfB1x8+dzryDadMo4URktMHBX77a+tqmaMll+oAoRZCJb/1tHI38muRS08WyDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723887973; c=relaxed/simple;
	bh=CWHFcYPRtRY+Qq7QGzuma85hGAjlXR6aFEhWCuiLKXU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jVmAuMeViu3v3VfPTzmkN6d9W1CK1B50lX7dM4cJZEq3fqI2FbuuI/ULByMLfdIsnOJuzboUL5it11AgbkiwmBaR3nUunExMr6flU407jubPo0Y9ZcxysNx7P9V3KHj65+zZHRHEh65ewqfgfNOk0kiPbj2YeqnwRNWlyCN0fWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y0QvydZZ; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52efd855adbso3513760e87.2
        for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 02:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723887969; x=1724492769; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wog6RxrWQdPYSZMlgcH4rB8QP2t+UaAUqZpSk10hqww=;
        b=y0QvydZZyYEJmwRen460TbOhaTGX6Ajqn+cRjUu9IcwMNxirts+7W+XKZVjppPYPL/
         lXQtMtqaGi+FuGZJ0FyM1Y4Q30hMehvxH0Bfi74tOO/Z1Z1RdcGiJDTYb0aPhxuRZfgm
         dThgnP9f3SVrQZRm95mJKjyPCkNKzcQJ0MiWKvfIdf/xJouluGhwQqiWynqfA3OLtyHk
         rGUYbHdMwYbbyU66sXU8wWtCha+WAkP/6FcNKaT6JHV6mfniGrjl6ynqMiq2UO+IkK8L
         EMzPsZ16JGTrNzmtAlCA8tqT68zT9SxkF9iwe0jMIimDycoVRkt6m77WhyJvlS4PYLdk
         VzYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723887969; x=1724492769;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wog6RxrWQdPYSZMlgcH4rB8QP2t+UaAUqZpSk10hqww=;
        b=bc/2iBRGvgITTWof6uQpiqDZhxBLjfkOBXEjH3UG4g1klngkGXREm4tyiPDfvfujrJ
         vmiu6aGw5zkWrjFfO2NG8cLT6JQLHaaG9oiTd0UjosZa8HdgZ6Fj1PD13Aw8OV3L2KY1
         wKNzycCnemWYFcRc/9NiFSJA4spUjLl5OEiuEIY98aV3cp2Nabt1WXRbo2bH5ikTK5aS
         is8ndAnySt2KcF1UWuELNwTbUKKw9/F5dWMaHXCBOiIxfw/+mo9NBu936TCcJgRZHg0i
         fxmODvSY9fi4J5lYrdQRcJ75pLXaaY3VQ/3skQcyNm+ijCUNkat1lWE+dLfVotvLpdgY
         76Uw==
X-Forwarded-Encrypted: i=1; AJvYcCUf+9wRKiskSwHvCwmVfI6fEgT/ThcNfmZJ8AhIK7ISKm1XMlphAUJMyeajR5B6/SNzyizqnjCc5cpLEKHP1U0/HX2c6J+MNG+hhQ==
X-Gm-Message-State: AOJu0YygsMiFJmlueMdavcgvm0fLWJeMCGJjWD+zQ10uZYbIUDVEF2bm
	BFd4YcR0XbHXJJS7p9tEfY/rWHfiZINmFNalxGI9dtONqLY859xL/l+e0Kbyh0eEAz9tQ54D6/i
	3
X-Google-Smtp-Source: AGHT+IERuJuUpU+XHOnVB6Mjkl8vgEL7ssVayE3dityP1pBDzL5Rj6MmNxvhvWaQNNpOeGGcTqhoWw==
X-Received: by 2002:a05:6512:3188:b0:52d:259d:bd91 with SMTP id 2adb3069b0e04-5331c6a2764mr3473051e87.18.1723887968567;
        Sat, 17 Aug 2024 02:46:08 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded2931asm97641815e9.17.2024.08.17.02.46.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2024 02:46:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Taniya Das <quic_tdas@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: clock: qcom,sc7280-lpasscorecc: order properties to match convention
Date: Sat, 17 Aug 2024 11:46:04 +0200
Message-ID: <20240817094605.27185-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

By convention we expect first "compatible", then "reg" and then rest.
Order properties to match convention and what is in "required:" block.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Taniya Das <quic_tdas@quicinc.com>
---
 .../clock/qcom,sc7280-lpasscorecc.yaml        | 21 ++++++++++---------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yaml b/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yaml
index deee5423d66e..5e6737c39897 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yaml
@@ -18,12 +18,6 @@ description: |
     include/dt-bindings/clock/qcom,lpassaudiocc-sc7280.h
 
 properties:
-  clocks: true
-
-  clock-names: true
-
-  reg: true
-
   compatible:
     enum:
       - qcom,sc7280-lpassaoncc
@@ -31,12 +25,18 @@ properties:
       - qcom,sc7280-lpasscorecc
       - qcom,sc7280-lpasshm
 
-  power-domains:
-    maxItems: 1
+  reg: true
+
+  clocks: true
+
+  clock-names: true
 
   '#clock-cells':
     const: 1
 
+  power-domains:
+    maxItems: 1
+
   '#power-domain-cells':
     const: 1
 
@@ -57,8 +57,6 @@ required:
   - '#clock-cells'
   - '#power-domain-cells'
 
-additionalProperties: false
-
 allOf:
   - if:
       properties:
@@ -125,6 +123,9 @@ allOf:
 
         reg:
           maxItems: 1
+
+additionalProperties: false
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,rpmh.h>
-- 
2.43.0


