Return-Path: <devicetree+bounces-23355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E8680AF22
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 22:56:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 386621F21228
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 21:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81B645915A;
	Fri,  8 Dec 2023 21:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O/jVzTeo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2239619B5
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 13:56:00 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3333131e08dso3016338f8f.2
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 13:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702072558; x=1702677358; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1FNNr06IKR2wHvvjMWyMyZa7PkCEwhAg0OAea5b5CEQ=;
        b=O/jVzTeoRcIBQO2m4uErlRzKiWx/bIWtxdIHNXG3oE1PgQD4uTRiopC5M3VyxSvYKH
         sLiK4ZmJDmiFbFYygbrE09x69V6vA3RBeKXmnSNUhqGJVTnjx9QUJmiTiczlUYImsllX
         sQH7ypnOlvNUdUdHJiIfY1Odj6+rgV1i0IRqeORlQAVGez44ldW+eZKlsr8zt7/XUydg
         13aQk7mDKQqseGNIGLFgf43BlRsbBrv4a7VusGnRpL9layJDbkqOmUrDc1zUx9R0kZd9
         WaAWuPHJxnXrihX0ihQvdZirOQlFjkDozeL+ieXDrSQ2Fdoc1pilV7uHnmTKhp9u2wIU
         k0YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702072558; x=1702677358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1FNNr06IKR2wHvvjMWyMyZa7PkCEwhAg0OAea5b5CEQ=;
        b=tQrtQNJTI/oSrBIYnihyP1hphV3dwVaPh6z60ZDPWZhfOq9/6JOiNEDs8bhxpnTj8S
         pap16ukgWO+tTfeNV/VATydBaMHKbH1bW6oj3THVIIN5kLbTCwLjJVcm7yC3pbqXuBSn
         o5SX17rOjeLXgIS8oAK2KSdTRE1rGW0vG9ftkDz0b+5k7a3iu6mupXhlF+FnxmZxv2gV
         7tV2QgkRj4PPif0adx60XokA/3AM/0DQrHj8nQE7UClUnlZrbzkknhgozmyRHXZ5OMni
         2pQpwzrWRNwpO1/Ks6mQrwPF0tdPcMUVHjwddC8/j0THLJsRuqp/DIkm3kIERZU4g10h
         +qpg==
X-Gm-Message-State: AOJu0YwalFiv3rGl5iLBvMAPaMzlKFVksHq4njG3SlLETl91w4K/IQ/7
	ikqxIPY0iCCBeaT8UA1YR0MZwg==
X-Google-Smtp-Source: AGHT+IGvRUidIL2hN6C1Wbor5BHgOmcp4VS76izN4wM3n0g1hdRblNGvOAF3034RNG3Ruc3nPJfLZg==
X-Received: by 2002:a1c:4b10:0:b0:40c:2cab:3571 with SMTP id y16-20020a1c4b10000000b0040c2cab3571mr294915wma.180.1702072558287;
        Fri, 08 Dec 2023 13:55:58 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id r20-20020a05600c459400b0040b349c91acsm6321789wmo.16.2023.12.08.13.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 13:55:57 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Stephan Gerhold <stephan@gerhold.net>,
	Shawn Guo <shawn.guo@linaro.org>,
	Melody Olvera <quic_molvera@quicinc.com>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Richard Acayan <mailingradian@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	krishna Lanka <quic_vamslank@quicinc.com>,
	Rohit Agarwal <quic_rohiagar@quicinc.com>,
	Iskren Chernev <me@iskren.info>,
	Martin Botka <martin.botka@somainline.org>,
	Danila Tikhonov <danila@jiaxyga.com>,
	Abel Vesa <abel.vesa@linaro.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 08/10] dt-bindings: pinctrl: qcom,ipq5018-tlmm: use common TLMM bindings
Date: Fri,  8 Dec 2023 22:55:32 +0100
Message-Id: <20231208215534.195854-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231208215534.195854-1-krzysztof.kozlowski@linaro.org>
References: <20231208215534.195854-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reference common Qualcomm SoC TLMM bindings to drop commonly used
properties and also bring other schemas for common definitions.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/pinctrl/qcom,ipq5018-tlmm.yaml          | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,ipq5018-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,ipq5018-tlmm.yaml
index fad0118fd521..23300606547c 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,ipq5018-tlmm.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,ipq5018-tlmm.yaml
@@ -23,13 +23,6 @@ properties:
   interrupts:
     maxItems: 1
 
-  interrupt-controller: true
-  "#interrupt-cells": true
-  gpio-controller: true
-  "#gpio-cells": true
-  gpio-ranges: true
-  wakeup-parent: true
-
   gpio-reserved-ranges:
     minItems: 1
     maxItems: 24
@@ -95,7 +88,10 @@ required:
   - compatible
   - reg
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.34.1


