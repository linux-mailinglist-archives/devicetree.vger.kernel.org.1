Return-Path: <devicetree+bounces-11552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A11BF7D62A1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:29:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CC7E281C5A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07023171D0;
	Wed, 25 Oct 2023 07:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NrMKbWbZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFB72D60B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:29:00 +0000 (UTC)
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AEF1DD
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:28:58 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c509d5ab43so81358521fa.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698218936; x=1698823736; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rj2UZ1DerP02Kvz7nBD2BYMRhHfwgHO4B0bw4IzavzA=;
        b=NrMKbWbZ77nT0GpvdIZxI+bqV6A0VHTl1ZuebjmNh/R2v5Cu66kGy2PPgOTbJ5vcDC
         VVJLmPjcG0GrGV0cuMIGAyWfOTYulLx1TuGDg3yN3FXtnbNwu4qqyIHGAP/8i/zFXTJ3
         QyW4OPYj+YSCgB7jY0oPWN+vePCTeaukpGWqOGQ1Ql8joEs00BrbUongeCKqIsbZbki9
         8CvZng5Ga1Yn4yiPULCPKV8J5RzgEuSEj09R4+pOwLTimHC58Vnh2N68SAJZ5AKpFkPg
         5Kqf2SQUFNrqJVjqcO5rfoj8GRQnSAbO9KHknmfFTcCfH153tMLQVAOrQuZxr8BpYYg2
         +XQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698218936; x=1698823736;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rj2UZ1DerP02Kvz7nBD2BYMRhHfwgHO4B0bw4IzavzA=;
        b=NUiso39ZgbZ9zegJmM4GTJ44u37Ucx3rfJbZFofLhk2MNfeIE6CvAB5yOTBwJchSki
         SrG3ho1buBSKN0LfWTD45Yvuh/c+07XeHHdUE0HGZyOAspjdQxLNKgsvdUEwn6OgnkqY
         zBKeNULuCdp5CeEup3LpJi/WNO/WAEUjzmJ9Jmq0QIxSTCKUaNLisJaHxT5L2Zz6PNwN
         9nZFEBNF826EhFYCe8Psai4wRZcPKpJFOg5MZlCQL6Ek/ZEMAWRxnOEiAzrHgkfKbNGQ
         n2FXpL89oZw+imk5SwpZcAbDcEzAQ0vNWKUOCDIcgRG8J4Xqq3UG1e/zxmmK3MmaN6MO
         v4Ig==
X-Gm-Message-State: AOJu0YyP50mQe4Up0i6AG7CSlGkClnbN7Bu5iMfC8m+cbl1XkGddJp9a
	rZlDfeq5FbS44/aTuMUTo7uqyw==
X-Google-Smtp-Source: AGHT+IGC4jpkT6X4I1gXb80yuzb3uOWZzg6EozqrJLlPAkboFymFgdbdJQS1JFZR4oDSSUu3HDhldg==
X-Received: by 2002:a05:651c:1991:b0:2c5:13e8:e6dc with SMTP id bx17-20020a05651c199100b002c513e8e6dcmr12371522ljb.31.1698218936533;
        Wed, 25 Oct 2023 00:28:56 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id h15-20020a05600c350f00b003fe1fe56202sm13947883wmq.33.2023.10.25.00.28.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:28:56 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:28:54 +0200
Subject: [PATCH] dt-bindings: crypto: qcom,prng: document SM8650
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-rng-v1-1-6b6a020e3441@linaro.org>
X-B4-Tracking: v=1; b=H4sIALXDOGUC/x3NwQrCMAyA4VcZORtoNyzOVxEPtYk1h2UlmSKMv
 bvF43f5/x2cTdjhOuxg/BGXVTviaYDyyloZhbphDOMUQ0y4rU0K+nJJ54Dv5ptxXvAhSqLV0bT
 iTDNNnHLhSNBDzfgp3//kdj+OH1/iT5l0AAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1135;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Vaz65RGdAS7lWIJwTzD14uUdUy5+Qch7iLWH1bBWhzU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMO3yaX+HJC0OAoNGGynPnC3QQcA2q5+EUpiaLLQ
 e2wfBEeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjDtwAKCRB33NvayMhJ0W5bD/
 9kTl2IIbKewGtplayNMtMqODqcn6mAZuefSBY+38pZAA2SDf1CLtXvTFnK9C4d30nd/Y/+fjXqY/4V
 eJS/wzFJtaWtsFSY8xvJXJ0JZsFWT64aE8ZI3UuOzjbqnEmQ6MZ/+bBJBOxHJicSm0cyQya1J9iRO7
 iEPyLAmjJjc8pxBr5cf7RHwfv9IZGs7I/CPub/EHwgBrydrWD20aMUisXjDEWQYsYLzPXnlFStULit
 OM7sXOsnjusXKADU7hhX8Bm54H2fPKZXdTdWyR0q6dQ8hyXQvWzR18QVJCY1386zUZG8RvvQ8YpSGd
 Begg25ebmhUjQlk230yil3Y2EktpDNwyPBGVwJITQDHz3n+vYTh2+rIGbOvaa7eNBF72XlyY3Dx7HT
 jZ8voZKmNkY/skFj8CPcd3qVB/dZxw0VF1z60rAGyhUyivl/LXoRxeKE0anRS45NrnCmX0iZ6w6HfK
 lOVDk6LsgIPrF4ioq75byU2o6UgHrAsAiMEzL6XOQRHT6gzH/JuYhr24Omq4c9h5LNJpbCwOP/SMkO
 4jOgXjam7BdFWukJA2AHjr9JkZSWjpXWdU1BXT27jM33ukAaHcVU0zjG7sdymbXH3MlBoxxXTrfrlV
 Hyd06i3Rex8kxgWo8jRxjfnjwi0f1/Kv7oypA9k3ObE2CCj9612tPuoCFb/A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document SM8650 compatible for the True Random Number Generator.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
 Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
index 633993f801c6..fdfa61a508d2 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
@@ -19,6 +19,7 @@ properties:
           - enum:
               - qcom,sm8450-trng
               - qcom,sm8550-trng
+              - qcom,sm8650-trng
           - const: qcom,trng
 
   reg:

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-rng-9d9d3e6ace1d

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


