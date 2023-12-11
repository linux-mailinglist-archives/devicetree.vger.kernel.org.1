Return-Path: <devicetree+bounces-23891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C5980C9D8
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 13:31:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20128281E79
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 12:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5340A3B7BC;
	Mon, 11 Dec 2023 12:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IIejYrFl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24ACDA9
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 04:31:14 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c2db2ee28so45249755e9.2
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 04:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702297872; x=1702902672; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+fHF1MoshH1NMiiExL+9DYVxymX7ra4O3Ex0Iu1m030=;
        b=IIejYrFlFrmVT3QZWhYH3XRkWGNe0UaJSHRVTFMTr/gQEjO+bxmP/8NIW4+ydnc/MI
         +WQ1jOkhKlhasY7LfBQRBBMwE07x2+/R1gQnsbqhrT1qdzhk+qyZZvDla6IrMDY+8s74
         +NZ+tkqoPO2PKLufFsbzjHwfJFy9/baBLFob2paodWnkjForSZqhaF0LFEMzUcBfolG5
         7b2ESMFnRs1hOHsd5C2re/N4Q8mI7qfml5CGNlsU9L4qqS9v1v25iaXl/nVSf/7TxNNh
         oTv0FDwa/f/2sxkPdzdtiP9V7FuNEanNE/NAElA/89QHEN8AoOZY2RmHjb64p8H+cWSP
         7PmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702297872; x=1702902672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+fHF1MoshH1NMiiExL+9DYVxymX7ra4O3Ex0Iu1m030=;
        b=h8cBe1C5T+C9lFaAAOQg6Cx9sWEGHb/Bf0dMTAB1ilg39g6CzNSx7m+xznaua+CaBY
         SHEEK/KjEWE4FWdwZCec5t1vKGXOo+vVIYvDZqqYhZnjIuE9aZnYsC8yEQ5TzTQx13+k
         ZYzg8Q5zZIXw4bNeEjXdzKcsy1cIgMO0K4jBRstMZ8szisyxFCz0ViZ0BeT5hsi3ThnP
         /haDvuJ3GEuDLypmDKF4PfJHEJDMxPWnOi1u3QkEapVLyo+bfpuz20N6KGDND+yPVfdM
         NfMt4hLxS0UsziLVCQNmUpCZ3JYmWojYsSEOV7YSDgnRC+kv8BS+njCFh4gOO1rQCPt8
         d9hA==
X-Gm-Message-State: AOJu0YzOVmGt0yag5kxb9g871YftDbtKrD0KTL+0FROj9BXrxU0zMblk
	el8pa577NMQM9agwT83aeAZsnw==
X-Google-Smtp-Source: AGHT+IFhLh+o2/YSAv/NSFuu3qqjkPLbe6RTQxxI5s75iK6leejwAde+aW5OIximFnGDWjYIaPxR7w==
X-Received: by 2002:a05:600c:1f1a:b0:40c:16ee:3219 with SMTP id bd26-20020a05600c1f1a00b0040c16ee3219mr2528379wmb.165.1702297872668;
        Mon, 11 Dec 2023 04:31:12 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id s5-20020a05600c384500b0040b632f31d2sm12932313wmr.5.2023.12.11.04.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 04:31:12 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] ASoC: dt-bindings: qcom,lpass-rx-macro: Add X1E80100 LPASS VA
Date: Mon, 11 Dec 2023 13:31:03 +0100
Message-Id: <20231211123104.72963-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211123104.72963-1-krzysztof.kozlowski@linaro.org>
References: <20231211123104.72963-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bindings for Qualcomm X1E80100 SoC Low Power Audio SubSystem (LPASS)
VA macro codec, which looks like compatible with earlier SM8550.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/sound/qcom,lpass-va-macro.yaml        | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
index ca6b07d5826d..c03ff9472a85 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
@@ -19,7 +19,9 @@ properties:
           - qcom,sm8550-lpass-va-macro
           - qcom,sc8280xp-lpass-va-macro
       - items:
-          - const: qcom,sm8650-lpass-va-macro
+          - enum:
+              - qcom,sm8650-lpass-va-macro
+              - qcom,x1e80100-lpass-va-macro
           - const: qcom,sm8550-lpass-va-macro
 
   reg:
-- 
2.34.1


