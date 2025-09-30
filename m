Return-Path: <devicetree+bounces-222678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0C4BABDAA
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 09:40:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 592B73B486A
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01602BE65F;
	Tue, 30 Sep 2025 07:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gwKX/Q5m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C757627AC3D
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759217996; cv=none; b=JwpzHf8TvLKIueZjCh0kFLY2FtCTH6sOSBrpkD9jum+HltmBWD9pFT9tva9+Iair5MwV7SaTWppG/p5USY05FB+WGmxah0/yoIwUgOnGURKtayurKazw+Ttn8BDi6yp+7/05jXSQVE9JxICF/ZSwjUQYJhfUWwLch69wDC5e+ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759217996; c=relaxed/simple;
	bh=FkhxJ0co19Kqoym1h5+3BxapnZugQIYyqqBK98X5Rdk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vg03vxRL2iNontaMMHkJvattKx2zhjV3+10+O/HDvQ6pjHbh9BcYxHUNevw60xtv5Fnr1JSDq66BdQgVxaYBLea6kWSSzRDWRX4zTicnPb+SOcKjYErXjfD1B5KlRyV7BnVyYMHchgXnFcpHfFf12NCGl49rNmfS1kTwMjYAafA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gwKX/Q5m; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3fa528f127fso4340510f8f.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759217993; x=1759822793; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bevp5VT/TRtlfJiqdXPbMhIkDrQAiY44tOo/FEhYED4=;
        b=gwKX/Q5m31b4l2pfBxAZFo90uJ2Xk8S2d96JHa8f2pEa6z94j9tbKrVEz/UC9dCwmL
         2U47+yv1/in5Zo3J7pakW15ZwrBR+LdngD0n+F+L3fnUu9X/iOfu/iKEwlwTb8dGjZwl
         n0DKpIXlMtcE65Jik4KaV5GqAWlpuw+0aGrAnDc0HE5JXNXS0ME8I+SkPSQuGzAeran7
         WjZkLFtpzHJTgAWZcJAfi0KbKVW9KwO1r38M2cQA6KtFfOu2xPc214Z3LOBJVTf8+0qi
         r1jdbnQLbUEQ/YWiFu4mMxRHBIbML1M6IDv/e1NmkAds40bB/bDuuG2xOFs5JtBsttGh
         9Oqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759217993; x=1759822793;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bevp5VT/TRtlfJiqdXPbMhIkDrQAiY44tOo/FEhYED4=;
        b=mC082vIdm5nvjuam14bF2GhEJkh75hoHGlvu56rx0RQ+zbJi0DF3zXfNgoMBXrtTxb
         Fgq9MEm5RR8Hhg2e8twMsIhHzvFp/E3eVF95XeE8x2wRR/KzonQiW6pK9L1NEmnQWIKz
         4HKe5LAcF/QuJU9SE7AZBiDidX+lOhJMTI4eHNLA6fCFmBpfm7okGHVPlSdPdTSV/p2o
         IvYXHBU5rmx0g8I/c1fTe3o9737Wetgj9R1/vqRTRfT1R3k9alPcWAdXxs1PCO/sJQwK
         +pZfUBSErMizyEuWUWLAlcfr0U5dP5TkAqjYFCv/FaVgoXKO3uQTmkXWSZwWn0wifyz5
         lYxg==
X-Forwarded-Encrypted: i=1; AJvYcCWx1CObcR4BbDpZY4k9Ifa6bYVJG+ilOi8mnX7Nk6FJpIeMbRokRGaPYFJi2uVjzqQGWFGnVcZbvs9E@vger.kernel.org
X-Gm-Message-State: AOJu0YwVUMUYLXgi09WDpt4tB1BAq1/XT55dqj13Nz4vQ6sm/mk8Zte9
	3X8DsHXl0iSoDmhGL9mpwYNJ6S6BlMLSGS0o2Ixui8g3fqFCu5dCbRjzEIcY8t+1S0o=
X-Gm-Gg: ASbGncvJDhL6bl8fPY+eCGTcewOvG9hJw/AOr0gChgGh7/oevNgIQOCRw7SznhrXfBd
	8UrgP5WV7O2oTxNPfVSnD2WU9EecKz0arwnGFRk+0xxwKr3GieeWib7ajXTGrjI4lb7m5jgRB3w
	rBhCTMTLzPHiUE3yF9olYj3KElYFcNxycwvztw2yghW5ZQObW81M5vjOgQqDdH2K/NfUHOru3jt
	+QKsImtXmlJB1ir2E0ozYnEbSLxfS6E3R6I1cNYujpNFFc5mQrxWykx/3kBE5sAzvlaUDW8FS5m
	UkN658ofRBhlkEZddtB0SkU8iSdKzcOpHmWCk6pB4UBJdueHsM/u7+vGvg4CvanMyitv8QSzH+R
	HG2Dd+O656LC0XidygzsoPkfgYjw4u0aZ1C+rOaBlzDqwV0U6IASSksVEG4MLj/HNlUQ=
X-Google-Smtp-Source: AGHT+IE7hIk0wvVkAHlNIuDFtcjEsBPWJOnmAhnOqI3tMojyJ8Y37GTaD7IqC3smkjWIgPnmjHUK2Q==
X-Received: by 2002:a05:6000:200e:b0:3ec:dfe5:17e8 with SMTP id ffacd0b85a97d-4240f261a60mr2762483f8f.6.1759217993068;
        Tue, 30 Sep 2025 00:39:53 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5707c1e7sm44021125e9.21.2025.09.30.00.39.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:39:52 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 30 Sep 2025 09:39:47 +0200
Subject: [PATCH v4 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-topic-x1e80100-hdmi-v4-1-86a14e8a34ac@linaro.org>
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4284;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=FkhxJ0co19Kqoym1h5+3BxapnZugQIYyqqBK98X5Rdk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo24lGLsSZyGGb5W8YJGfg2/QqMxhY23dJb2LoEJ1e
 w2+0S1WJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaNuJRgAKCRB33NvayMhJ0cBFEA
 CPjn5+pwXIaZ9w2EM5eYffs0aL8n2Kk2kmge3sdfDzpy8mcRX7rE8T23AZiLAudCVDLIKxoZ7SsGtg
 FOAU78mvgSA4M7wtED4zVKZTu9Ytj2w0bbB+0ti+mcX8e/TJcPuitJ5ryzFEE00pB9rc+2zGaDhzOc
 Ce06/GOp4aDIo5zLu3rr9yjkH5ok9D+LSPX6i4i0lX55LN0BqO43Tq+d8WOaxRhDzzEUneUsZG9SJP
 T2LXBddf6ut3MFJzrTHjNyOnQ9bUaOjt0Ctp+X22ytlEG5RFWU4W0inBm1D9vDVBhdMuZA69mSWAWN
 JI0/r4lpWYXZDqgN4AstVC5F0mQV5HmJFi1ussMP040phXUOtaiMVzO+QQpSLnZN0aHqQwGKPyMy0l
 8onKaypSr6wxGGmhNdizB9/p34ir6q+8AiHeEt5/BixB//hr5/DeYhhUWVtwoHZUs5tU5jJ/STY1pg
 kJ3O+DYD70TXUePPZ7iLoFyxceB6bL5w+Xt1MMdovI2USqDe3GpYOFSXBLAyWXwDDq2BnKL8OVQDtt
 xZfqr744C94O3MZDzUz+z0Kl4ThhPgAZAYYpvRBqqxOpubOFokhhfDhRSyvfSVdbcwxlM70NYtuQXU
 518xOIlrKcIvYlBRsvVt+mJwvn0jUEkPSX7KCSMhXsjn949ot2DGQdxGYr4g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
of a combo glue to route either lanes to the 4 shared physical lanes.

The routing of the lanes can be:
- 2 DP + 2 USB3
- 4 DP
- 2 USB3

The layout of the lanes was designed to be mapped and swapped
related to the USB-C Power Delivery negociation, so it supports
a finite set of mappings inherited by the USB-C Altmode layouts.

Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
connector, DP->HDMI bridge, USB3 A Connector, etc... without
an USB-C connector and no PD events.

Document the data-lanes on numbered port@0 out endpoints,
allowing us to document the lanes mapping to DisplayPort
and/or USB3 connectors/peripherals.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 67 +++++++++++++++++++++-
 1 file changed, 66 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 5005514d7c3a1e4a8893883497fd204bc04e12be..ac9a307675bc4e86f7693ba260c75b7b88d992ec 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -81,10 +81,75 @@ properties:
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
+
     properties:
       port@0:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
         description: Output endpoint of the PHY
+        unevaluatedProperties: false
+
+        properties:
+          endpoint:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            unevaluatedProperties: false
+
+          endpoint@0:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            description: Display Port Output lanes of the PHY when used with static mapping,
+			 The entry index is the DP lanes index, and the number is the PHY
+			 signal in the order RX0, TX0, TX1, RX1.
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                $ref: /schemas/types.yaml#/definitions/uint32-array
+                minItems: 2
+                maxItems: 4
+                oneOf:
+                  - items: # DisplayPort 1 lane, normal orientation
+                      - const: 3
+                  - items: # DisplayPort 1 lane, flipped orientation
+                      - const: 0
+                  - items: # DisplayPort 2 lanes, normal orientation
+                      - const: 3
+                      - const: 2
+                  - items: # DisplayPort 2 lanes, flipped orientation
+                      - const: 0
+                      - const: 1
+                  - items: # DisplayPort 4 lanes, normal orientation
+                      - const: 3
+                      - const: 2
+                      - const: 1
+                      - const: 0
+                  - items: # DisplayPort 4 lanes, flipped orientation
+                      - const: 0
+                      - const: 1
+                      - const: 2
+                      - const: 3
+            required:
+              - data-lanes
+
+          endpoint@1:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            description: USB Output lanes of the PHY when used with static mapping.
+			 The entry index is the USB3 lane in the order TX then RX, and the
+			 number is the PHY signal in the order RX0, TX0, TX1, RX1.
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                $ref: /schemas/types.yaml#/definitions/uint32-array
+                minItems: 2
+                oneOf:
+                  - items: # USB3, normal orientation
+                      - const: 1
+                      - const: 0
+                  - items: # USB3, flipped orientation
+                      - const: 2
+                      - const: 3
+
+            required:
+              - data-lanes
 
       port@1:
         $ref: /schemas/graph.yaml#/properties/port

-- 
2.34.1


