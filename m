Return-Path: <devicetree+bounces-23743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B61E80C3BC
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:58:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 02E161F20D46
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 08:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F128D210E6;
	Mon, 11 Dec 2023 08:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ki9H31C7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4226A0
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 00:58:34 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40b5155e154so49896425e9.3
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 00:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702285113; x=1702889913; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gMUJTjvA3J26dSdTiEt4TdDVTDH3n4BQkpvTQmQkiVg=;
        b=ki9H31C7X8vN9idXqx1kUJrbMeA8MnKiviO8LYjZ0fJzagZtJCA76b9xZB9K2iAdUG
         +3uJHQHwmBwtzNd3gXx9Ghm83YnQM0Ue0VD6pwOip1rXgJEbxqRmXH4NsPWixenzuiCA
         IsCJHvv7WBHXsvz1Fck5jxcJv0Kt5fu8LN021qGFBe/LweomEFGGQE5fbSwDpQWAYAGe
         nyzCpOoAIkOb4BpX2G6tTuQ42M6PFWxdrqdPT0UDRFl1JB85zta7g8IiCGCT/OzBdbRM
         gNKzLixGoSJuwVnuIq4CjD9EQDs3kUdFH4f0vTwicNfy5YYzQYZ3uB9Sc61wURuC2JlR
         Hidg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702285113; x=1702889913;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gMUJTjvA3J26dSdTiEt4TdDVTDH3n4BQkpvTQmQkiVg=;
        b=oLR12rSbXf4ECvjLVh3kINMEP21LJsPvGF/5ufgr2FQf7aquUq05EOvmQIzUUubyFC
         7Ij7dz0V/66jYVDAa6fiJi16rphT9wX/JovUu9ww0v83wC9YGQSGObVyeUo5Bb1Kg16K
         HTapv2RyG8q4QbYpUpZkOGH+5QCSMBs7ecEzd6NrOY045YQ1Xig5xwW1GlD2Pgt9MqLH
         dNmlMcvpxC3TbSHyMJ2K8RgqU7jf4iJhz+afte5ji8QOBpYBb6BtuLv4BzZJ05zBu6u1
         K1rtzzQHUnZrO1bhuz2GzOM/4NoId48A1azK7UfxfXbMlbaSfERCEfZ+6IabnkTrm3R4
         iTcQ==
X-Gm-Message-State: AOJu0YyryWrr8RfKu7K0OwSW3iyA6pfK6uFIWXc6fMDIJv/7I+TwsBPc
	Lyjk0pFPYsDrjlSZ26zpmG6k4w==
X-Google-Smtp-Source: AGHT+IEdVHw9x75OQSgV0Tjh5ujbDy6v33ypmF+84RpcH9f9bSjyFP0uMPL2YIKrHrKqXdtkfHAc2g==
X-Received: by 2002:a05:600c:2108:b0:40c:24a2:6b0f with SMTP id u8-20020a05600c210800b0040c24a26b0fmr1777549wml.212.1702285113287;
        Mon, 11 Dec 2023 00:58:33 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id fl9-20020a05600c0b8900b0040b43da0bbasm12315067wmb.30.2023.12.11.00.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 00:58:32 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] dt-bindings: mmc: sdhci-msm: document dedicated IPQ4019 and IPQ8074
Date: Mon, 11 Dec 2023 09:58:28 +0100
Message-Id: <20231211085830.25380-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dedicated compatibles for the Qualcomm IPQ4019 and IPQ8074 SoCs,
because usage of generic qcom,sdhci-msm-v4 compatible alone is
deprecated.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 86fae733d9a0..c24c537f62b1 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -22,6 +22,8 @@ properties:
       - items:
           - enum:
               - qcom,apq8084-sdhci
+              - qcom,ipq4019-sdhci
+              - qcom,ipq8074-sdhci
               - qcom,msm8226-sdhci
               - qcom,msm8953-sdhci
               - qcom,msm8974-sdhci
-- 
2.34.1


