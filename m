Return-Path: <devicetree+bounces-69382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6F88CFBF1
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 10:45:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 061321C2157B
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 08:45:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF5BC13C8E9;
	Mon, 27 May 2024 08:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LB2c4iVM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21741304A3
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716799374; cv=none; b=QhEbz9JZlQtpII2mNnd0yVyqgbpbThuHQZ2Ubqk3x2TeYoaA78tLeSHlBHAg9tdbxYJI2yd5r7d5Ka1lda/pZ2Awc0FCVNCPpoEw6ui8bMF5U+lqJVXmuIUgLGZxh4jWicwNbxpXwmZuhFABnslEvZahHcZrgV1nJvbHX8SUch4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716799374; c=relaxed/simple;
	bh=FSjR/z57MPpK+sFVQN3f9Y5HY3fXrry6aEHjLvU6BMI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s0bdGbHPyBii3Gswjl8UtYbHMlvFqtYa4blalD4LL/dhsdwZ8LAatJVq94axKmwzKGR7YDKHaD7jJIl8rGtBwxQaguU1EdaoGpHsP2Z4soXkwbiXFQz2YlqhRaeI1m23k/GwNI9zlfzR2NaZQjch34MSDe/NTfvWPZsW0pCIQR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LB2c4iVM; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e9684e0288so25236491fa.1
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 01:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716799371; x=1717404171; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wYVqqrufrlU4tP6uYGCro4lra2OX39FvNlNmisAjzCU=;
        b=LB2c4iVMcY9aHTJYd8pZdfPV8YAN6VGeYFnNbkiBZ/E1UVaBUTOrifbS76OBw5sPdH
         uW/qMX6O6yV6PCO3vZUROG3TW/QbN+pRuL4z+JMUW0IxCrH8lLtx/F1u09M/xnRRbD4C
         nCyW2VFSuBhP6/xj9g8Hk4fuRVgBulDLH7VryA+p+0xkbzlXRuZmhpNjNS8JzNfGY5Aj
         TqzREb0jinbULsEC0H8nHA6lZZ8eMD1TZGGVE74WftdopXCkbPNB6Hf+sOjmHMzawSs4
         MOpm8moIN/UCss2pXOi++4L4tSiq3f/lxNPOEjYxwCf8IM8b6dCYjoPJtoP8XAq82fWf
         ENUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799371; x=1717404171;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wYVqqrufrlU4tP6uYGCro4lra2OX39FvNlNmisAjzCU=;
        b=Z+d11Xgto1LZYRKzTJrfLgABIMH24Gs9JKZ6UTzF4xhWpHSlQ+CepXSk9aMV8ccK5M
         XIYMYKYVKE8mQMyngZLiPCTol8cYYfzP5yb0sAeoKu7hZ5FyDQ1AW8iY6JmN6KkVB337
         93riiom3u7zyfpc+97uWb6gUufiglaqcl7fpahN9Y2oOhlmnUolt/FryZn/BDBD+mLOn
         IbfstGb+MXUglajek05t9+JP9olKbVGhrN+F+yd2BkhKrzxmlMhzf62D6HL+oHoZ3PFY
         ISHSkkyPTH1Jq8A0zAXWK0EdkZYwx+tVgKHMw1u+hyQ9D534+zoUjLDfm67W75AEQ+2m
         F+xg==
X-Forwarded-Encrypted: i=1; AJvYcCXSsmE0S0tAa6yl2VCAkE+dPAU2V7e7kACDyEBbVS844tF46/e9Tzw/tWgEw/ivkWVVxflWxz3nUvdZKLKyGveGQoWxAxmrRCXZLQ==
X-Gm-Message-State: AOJu0YwyXX6s84IkYmnLtfSyGdw1ofsyIXW9o+X6e+gGmLfBERdpSr8z
	JH9jpIcek5XhkxuyhGI61ELDIqOymJIvirmrxthpjmUN58C9Ale7mti7ngjDbIukC4v9OocPziA
	w8/Y=
X-Google-Smtp-Source: AGHT+IGqVjhmpV6P5dYKIK4bQm7p4J/a/8bHzzCxS0JX9QjuVHpgXeL4JdCcI+kWd/pi8uJ22Nc/vQ==
X-Received: by 2002:a05:651c:1992:b0:2e7:1e4a:31d3 with SMTP id 38308e7fff4ca-2e95b097761mr98346481fa.16.1716799362952;
        Mon, 27 May 2024 01:42:42 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3558889fb57sm8447292f8f.114.2024.05.27.01.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:42:42 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 27 May 2024 10:42:33 +0200
Subject: [PATCH v2 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp:
 Reference usb-switch.yaml to allow mode-switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-1-a03e68d7b8fc@linaro.org>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1520;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=FSjR/z57MPpK+sFVQN3f9Y5HY3fXrry6aEHjLvU6BMI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmVEd8GmfhAqkq4Fqoj88/8nK66iClT54YKRfYfb0P
 0PAPK7+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZlRHfAAKCRB33NvayMhJ0Q0nD/
 kBMcULAeJSxBGlLBsUcLneHOfYhQd3mHi+3AO40RXHfYiJ/HadsPEmSIK6u5QxD+p9eKXY6IBqfE+L
 IP1psTwbYV59r9PQclAq+evAa0bpzxtlHXIt9tH/hncy6Lj5fSYImp5GvMFdLZy3hgPcZtNfxmgDc+
 obFtz6z9+9R/5OaKbFf/gofv+/Djfw1H0V1zX8r1gzws1fTQGUnPqXQcuV704oKNT8k3Lcbbhnm72A
 SJgbW/jT7H98OM42FjJQn26g6MOdrL4bvCVj9htpoNZIEgv1l6U5wEWx9VhnfTnJjJKUO85mOXqGeo
 GT55odHIc+yy6nyZtlk8sCEVWb5Tc2hY9akaeF1HL6iYkT8OUGOETN4YqEs5F6B1h8xEUZf11F0lNI
 +KbxRgq9nb27IapqLzD2RGKRl6E4JJGG+63A2jxZ7mhp1HHddOTTGXnCqsvRQuY+jyhCLIx/XqpNz4
 MsA6SocfppaHs2Vse1Om19Xsbvl/yXqmw5PlOPcp7UO0IxWywKVhZp/9EgJVI8WdwRpps4fkDgDBtu
 MJ/leX8S5QAiwCCJxz/sekNnBmYC07ILgdMkmMLhgrHoZAwmoAbo/HaA65JV6Dk2LHyMtk4aYbfOJX
 jO3weNYZlRKf/xhplQ5j13g5oi/kTsfRzIpOO3HztKCljQIj2ssFvsNPWRzA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The QMP USB3/DP Combo PHY can work in 3 modes:
- DisplayPort Only
- USB3 Only
- USB3 + DisplayPort Combo mode

In order to switch between those modes, the PHY needs to receive
Type-C events, allow marking to the phy with the mode-switch
property in order to allow the PHY to Type-C events.

Reference usb-switch.yaml as a simpler way to allow the mode-switch
property instead of duplicating the property definition.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml     | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 2d0d7e9e6431..5358d3a6fde3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -71,10 +71,8 @@ properties:
     description:
       See include/dt-bindings/phy/phy-qcom-qmp.h
 
-  orientation-switch:
-    description:
-      Flag the PHY as possible handler of USB Type-C orientation switching
-    type: boolean
+  mode-switch: true
+  orientation-switch: true
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -104,6 +102,7 @@ required:
   - "#phy-cells"
 
 allOf:
+  - $ref: /schemas/usb/usb-switch.yaml#
   - if:
       properties:
         compatible:

-- 
2.34.1


