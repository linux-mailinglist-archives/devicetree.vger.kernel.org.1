Return-Path: <devicetree+bounces-23354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D0D80AF1F
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 22:56:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FA631F2141B
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 21:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B678C58AAC;
	Fri,  8 Dec 2023 21:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FYRj91d6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D4AB199F
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 13:55:57 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c2a444311so24124705e9.2
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 13:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702072556; x=1702677356; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a6LTNwuggOVu+lap2ETuWiVhYhZt32Ct7VN+rbmpRFk=;
        b=FYRj91d6mKvLUMYcHr1YnMzQMfdLDexOC1gI2Eo+vCHmcUbfbMVhRWmPfRo5HbjlZd
         j6D4+axb8PaD4UOwPKO67N4xtP6X0KcNke3ih8+b3NJEPQ5XDR9t4CDngIh1S61O2Mfw
         F7+Kf73tNw9qZNSKX/IrUKJOD+Wwv/EXW6t5CjptraUd7lFBs5wpz3Do22u/JQVuLD/b
         VTcpX+wYc4Xr+JB7mOv5lGtBjoxC4DzK/TXITMYdgIyPfHT2K8+bipVyTrQNyI4pf30D
         i2yjtly0Z3qiOFVTUcCoNdfhyFMtFS1bTZp8uHrrF4T9gABh1dmE3GFS3bg82WbnglVT
         TSDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702072556; x=1702677356;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a6LTNwuggOVu+lap2ETuWiVhYhZt32Ct7VN+rbmpRFk=;
        b=RNbazro8MtmMIY0qLAOWpY95USMZmNzmfXJ+fDhcSfRXZnkvv26FZxAoJfZQ71Q/2Y
         MbqNlnW0f8JnlupmRwDAotG82Br1vOURUy7mgihUUNk3ZOI2pLDtWF124APrvxqmDLdj
         ftYouq3R5zOLDTJkI9Rn35640vd8eb2FzrDIYCXm+zRg7edsqYsCxUOOlFNgjunECJch
         W0XdUegj2oTU80332VKVHUyWN7wZ+F1Pk5zqhjXW15IP29RTUpsePYEE28xJxb5KP7wI
         xhdsgCKSNpapLlkZWiGSDYlR+iTdMGOx2LPAeiI48AkG2ir/ULyJ7cMNY+/iLcUyHuYT
         68tQ==
X-Gm-Message-State: AOJu0YxsLie5UL2uFmt910Gg3LzT70GuZmR2xW3DIWnN8aW5o5dB97HN
	8aSub4xdpRGDL+hYOgBMRo5afQ==
X-Google-Smtp-Source: AGHT+IEWfQLi04KhsOKfk1C7Xg7hp8O1Yu6kutUmlWu1o5Q8+ki5ONIPzOECHLhbr+eLPm1DSCf9bQ==
X-Received: by 2002:a05:600c:21c7:b0:40c:2878:7adb with SMTP id x7-20020a05600c21c700b0040c28787adbmr165191wmj.58.1702072555791;
        Fri, 08 Dec 2023 13:55:55 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id r20-20020a05600c459400b0040b349c91acsm6321789wmo.16.2023.12.08.13.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 13:55:55 -0800 (PST)
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
Subject: [PATCH 07/10] dt-bindings: pinctrl: qcom,x1e80100-tlmm: restrict number of interrupts
Date: Fri,  8 Dec 2023 22:55:31 +0100
Message-Id: <20231208215534.195854-7-krzysztof.kozlowski@linaro.org>
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

X1E80100 TLMM pin controller comes with only one interrupt, so narrow
the number of interrupts previously defined in common TLMM bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pinctrl/qcom,x1e80100-tlmm.yaml       | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,x1e80100-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,x1e80100-tlmm.yaml
index 2bde8845a31e..3249c63a29cf 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,x1e80100-tlmm.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,x1e80100-tlmm.yaml
@@ -22,7 +22,9 @@ properties:
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


