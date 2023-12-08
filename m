Return-Path: <devicetree+bounces-23349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5805D80AF0B
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 22:55:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 013C81F21381
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 21:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 999F758AC0;
	Fri,  8 Dec 2023 21:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s6AH6aeH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CBA81732
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 13:55:44 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40c39ef63d9so2498595e9.3
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 13:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702072542; x=1702677342; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tf5qCRqNW7wSqrSaZ/MpVTnmBC6rjggpOIt26/5/rF4=;
        b=s6AH6aeHfAx5R2zteupW/ZMaTjJ4/vA7uuIVFDcTrVR6dMMgdX8fKQHXlTYKkp72Ef
         TYGyJzgnMIx1oG137MSVrRhrR50iXJ2j1+WUVGfpMP+d2os2SIQ3gOMP+SuBg1GZ3Io+
         EEfFIFO0477ruX+60jeBNnGQD7WU7Fk4iR0eWKaKA6t9HhaUYx0QgKq6ag2dCdePHpg9
         /i1mWsbiNHOljUWBl+QTJ9eaKeJS9BauQWsMVZMKStMurrqLNZ/eQeA/sVco8TZDAOi7
         exp4aMIeBLi5BXUNuSqFL2jBMW9IqCjx2o7QJQTqX908QgYcJmRoXx36UHpvKs98ee7q
         oxFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702072542; x=1702677342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tf5qCRqNW7wSqrSaZ/MpVTnmBC6rjggpOIt26/5/rF4=;
        b=sDO15lFBNyMrokYvFWw4ld53XmhUA54c2/JWsNH59928nCGgYPHdqFZv0j4ATty8r5
         ED19s1WDVXu37BGWsPeKqYWPtboOiaUrgffdzoSUzqe9WqN4Uom2YQXHWIcu2Jl5PXmA
         xd3n14xEQcUD/ex11qXezN3ydY63FTMB1WP/mG1Uvzwes0FmmWrJXutVi/uXSH+eeSKr
         hRzj7mhOEf+c2ZLsNclbFZgdUemUz3ljoor/PdQ2feCkdhNukG17af46BJ0peE+7YegJ
         i9CO4Ua4HIqaIZGmlZ9BVcFD2U+I8kJ3lQRPIJzAZjZpjwK1YSOZtxKdxpys0mvy1+HQ
         IuiA==
X-Gm-Message-State: AOJu0YxeGOKnB5zVYDnG8PcXO43bqHo0Kbru5drmV1o/TfrxO3MTburX
	PnyAXQs0VDD/nhtkI95jb/n+HQ==
X-Google-Smtp-Source: AGHT+IFWEhci0fEtEukd3igou6Vy0wS1pII1F1A+9TZmAR2o9jtREYIMfQEVFhfnbBdd+2QYw8I/fg==
X-Received: by 2002:a05:600c:8a4:b0:40b:5e59:b7d3 with SMTP id l36-20020a05600c08a400b0040b5e59b7d3mr309002wmp.176.1702072542434;
        Fri, 08 Dec 2023 13:55:42 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id r20-20020a05600c459400b0040b349c91acsm6321789wmo.16.2023.12.08.13.55.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 13:55:42 -0800 (PST)
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
Subject: [PATCH 02/10] dt-bindings: pinctrl: qcom,qdu1000-tlmm: restrict number of interrupts
Date: Fri,  8 Dec 2023 22:55:26 +0100
Message-Id: <20231208215534.195854-2-krzysztof.kozlowski@linaro.org>
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

QDU1000 TLMM pin controller comes with only one interrupt, so narrow
the number of interrupts previously defined in common TLMM bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pinctrl/qcom,qdu1000-tlmm.yaml        | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,qdu1000-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,qdu1000-tlmm.yaml
index 237cac4f6ce1..47363c23f4ea 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,qdu1000-tlmm.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,qdu1000-tlmm.yaml
@@ -23,7 +23,9 @@ properties:
   reg:
     maxItems: 1
 
-  interrupts: true
+  interrupts:
+    maxItems: 1
+
   interrupt-controller: true
   "#interrupt-cells": true
   gpio-controller: true
-- 
2.34.1


