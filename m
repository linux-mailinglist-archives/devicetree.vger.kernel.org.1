Return-Path: <devicetree+bounces-23890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 447AB80C9D3
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 13:31:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EBD411F217A1
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 12:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C82B63B7B2;
	Mon, 11 Dec 2023 12:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vxupRBh7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D007CD
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 04:31:12 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40c317723a8so34849545e9.3
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 04:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702297871; x=1702902671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RN91HNt5gkaIzgOq9vwezVCDXB7gy5tWKyJ+X5HCihA=;
        b=vxupRBh7oWaVum5aI/uqEZr806fwfYVCJbKUZO/I3zPkWBWDAmzKDb4uTtVXlNpI7X
         J1AMwupmvG8qoxCn6xN9FX41zbmSbeR8b1n3V1T6+Nr6Zpiu0quObzAi3YrEFH2aDB81
         gc1EYa0zcGArRzZgm+EaL7f3ZKPo4QOWYMHHXv1w3rWLGzUEk6Gix+0UtEk/60U7m8oW
         3iBK/UUBhrDbj6tHFlcWoNczROKI/EgVdTgrGP79j+sPc1x5Kc72f7IBN1ATrcxScmJU
         8FNGSFGkRsDOlfOKkXYAe4/9xjvLf6iBfnR4RNigN4xnUU2lyhLnpR1fw72YqTjjoxrs
         PIyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702297871; x=1702902671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RN91HNt5gkaIzgOq9vwezVCDXB7gy5tWKyJ+X5HCihA=;
        b=iprT+0q57TcAEaTjBPZTk7GD1j5tVtetBbaS7i8F1tfgM64dnE6PByFv1Mai/64lbl
         QH3Zkjg092hrrgyoU/AYrm8TrCzq47kA2Pu9cVTCeljWu3I35U96IQ4NDhyFEgFyCd68
         89vlUuZEjJu4GktmSAIEuXkSLpS4IXiToaJgIGl5IeKu9y4WV230gM6quWj6fZbR4iOD
         gVvPbedwlx5bY06Bo69pAflRNSPsU/Zu4qopp0KPm6JEwHolTutnQNynKLWc9BF7X1lg
         3ffE99rwxb2s84g96FpRZjjoQgTW+Ki4aXROvk3OPP2lc9z1YVkQuFyOZ3RXMwirfBCP
         znLQ==
X-Gm-Message-State: AOJu0Yx2QlLCzFfQaF42z2pVNQaeejtD996TN8SS9J2kkTpKBp+zt+ut
	fijFPEF/PXVjBMzNokFmsR6cmA==
X-Google-Smtp-Source: AGHT+IGe0TsF6kU3cIp8ndlWh7qt+klx3I1j7J1zNAl229HSG1N5Cw5CH8QU9alImW7ATLvT821E1g==
X-Received: by 2002:a7b:c389:0:b0:40c:3820:f004 with SMTP id s9-20020a7bc389000000b0040c3820f004mr2353363wmj.132.1702297870759;
        Mon, 11 Dec 2023 04:31:10 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id s5-20020a05600c384500b0040b632f31d2sm12932313wmr.5.2023.12.11.04.31.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 04:31:10 -0800 (PST)
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
Subject: [PATCH 2/4] ASoC: dt-bindings: qcom,lpass-rx-macro: Add X1E80100 LPASS TX
Date: Mon, 11 Dec 2023 13:31:02 +0100
Message-Id: <20231211123104.72963-2-krzysztof.kozlowski@linaro.org>
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
TX macro codec, which looks like compatible with earlier SM8550.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/sound/qcom,lpass-tx-macro.yaml        | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
index cee79ac42a33..3e2ae16c6aba 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
@@ -20,7 +20,9 @@ properties:
           - qcom,sm8550-lpass-tx-macro
           - qcom,sc8280xp-lpass-tx-macro
       - items:
-          - const: qcom,sm8650-lpass-tx-macro
+          - enum:
+              - qcom,sm8650-lpass-tx-macro
+              - qcom,x1e80100-lpass-tx-macro
           - const: qcom,sm8550-lpass-tx-macro
 
   reg:
-- 
2.34.1


