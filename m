Return-Path: <devicetree+bounces-11615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D427D63DF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:47:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57F7E1C20DB3
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9A831A5B3;
	Wed, 25 Oct 2023 07:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WWbb09Q8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531791773A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:47:53 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A1021FCC
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:47:50 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-507a29c7eefso7988182e87.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698220069; x=1698824869; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vxyI9U3WR02fQeUKBIyEzZWTap999iKoTwOR3ADXuho=;
        b=WWbb09Q8UisS9hAEN0owiET1KjkpUkPEeQr84jb7kmWi8bOUtyutXEg+iSCYhG4bdb
         kQJymOiDT13075LcKR5Pj7EH9klVk5Bs2BNXiS9+KJMjMzKh9dGfv+jWXtaIePhlK5pA
         U+ZV2uy4/NlwEeNi1yeak6YSAbgc/6ieeBhQViaz9Mp9bEbPGvr/FEFpmNwx8vg+AcZD
         0fKwy+2UAjAolh+Is1mDDidW+gxRv25lwLgu69QFBP3flkqCnBKpmqfpuMDDYDqGv082
         NGMHC9vnrUwGNLEy7nswSgy0bD0sx46MIxayKeYcVSbV91wXFracWrcD7a1YWq9tvL3I
         FqtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698220069; x=1698824869;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vxyI9U3WR02fQeUKBIyEzZWTap999iKoTwOR3ADXuho=;
        b=ZIhA5KIgQP4xX4KRzV6MWJHxyrxOojfR5nD9wACgR8Qu2eZmwhPIYxPlzxLJNgTzdb
         uODkkDHYDCwFr9hZNj8OiJbA8xfuHmu9e4qC3QeGw8bfiBU9DHF2hBx9aiG4spuOrmSk
         6Ih5zXYoG09zQhCCTYmbK9cl2+vy0LbJH1kePzsPQr2zD5B2jsoI9dwyvdlZFoE4elLR
         RL3VKox0zErJtPyYfeBSL/HrBa/sxIKZUdiK/aEH3usNQ4dlOPTr0XFnPBvbKxfSUgr7
         sTOiFaBpERAJzlTYTW6ZzEXgaPfmeBIBLEis7ZUrB6lz+d9wQfQL6LabjTcRanetdz2D
         9LPA==
X-Gm-Message-State: AOJu0Yw4JuAvUrpqChb38uVl9zY6c5NzIgDTjybZjtqzS9lwiRRHymNO
	KW9XeQUqSLjF5G1S1+QET/U56g==
X-Google-Smtp-Source: AGHT+IHyFi7r1LDPib8SpYfKruYp8nfnVQkvS1q2zjYbJGWKBVH79lsgOREFjdZuA7yCRj1aYZiDfA==
X-Received: by 2002:a05:6512:48d6:b0:500:7c51:4684 with SMTP id er22-20020a05651248d600b005007c514684mr9684535lfb.56.1698220068657;
        Wed, 25 Oct 2023 00:47:48 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id p5-20020a05600c358500b004053a6b8c41sm13900970wmq.12.2023.10.25.00.47.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:47:48 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:47:41 +0200
Subject: [PATCH RFC 1/8] dt-bindings: arm: qcom: document SM8650 and the
 reference boards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-dt-v1-1-a821712af62f@linaro.org>
References: <20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1020;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=K8r8UVBd7sE1H7blMVAT4uM/6tI0fE/WKgrcPwIcvvQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMgfrmP/8wDsehZGgruxBV7jrneXTSmT7kCmqqz+
 7lPFGT+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjIHwAKCRB33NvayMhJ0TfJEA
 C53cTi3ZA5edaEiQ0Y1TKP7KMPdb3NJ/qWkZYD5WZ0O6RV99evpv70OfOyQQUK2zT2kiwUvdT20tEj
 aDF+S+1OaeXMOL+hWJAajjVIDNOml2q89qhnkfuDlrqh/wNvqlMG3qfUGNqnDdikOIls3kloRPqUcB
 ygqdCyvUCNoVzmVeVotUN1qWuPJI2Opy2YeO8sEdZqZ683/S1hl1En5+JB6aMY4xIgD8qgSUMsVy3Z
 QFFJhhnwX6rDnL/T26oYHFG4RFvzmPJwGqE1Dt2qYmQpZ89VcDKIoPBV30w+xWNy6xPo6qvxc6rFKL
 Hxq5NMLvgWxoZGRde6UwpidX5vlvAVIeasQ6TQftOitXH/7MXni652MRpJOwMGF6Jf+/V7Wxt1+bg4
 DE7BPsacrvQk7TwQRnCtO3z4efHuK67dd1YC2JXCsWuNcRq4xBTi9GoGNnpiSfi3rNLAXdmoIFgd4l
 ELiQFSdlf+Ljtid2qWmRKgQvNeegjWiCCi2GN8x0hIVJK/2ZQCK/gtMMGddRjgEWeooxaYdhV1YxmV
 1zf98jHEvw6M5XLJDhOcu57aHt9x411+XxRb9C4J9qDZfWuP7H3kVKfPvV6HQ8SZWj29EaMVL9ZTcu
 +KBS2W2H+nF6t6NaAheMhhxzCJbkx1bxqhoiHn037PrBR/GxbMrUjRUpM2Ig==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the SM8650 SoC and based MTP (Mobile Test Platforms) and QRD
(Qualcomm Reference Device) boards.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 88b84035e7b1..c5b6518973d8 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -87,6 +87,7 @@ description: |
         sm8350
         sm8450
         sm8550
+        sm8650
 
   The 'board' element must be one of the following strings:
 
@@ -1044,6 +1045,12 @@ properties:
               - qcom,sm8550-qrd
           - const: qcom,sm8550
 
+      - items:
+          - enum:
+              - qcom,sm8650-mtp
+              - qcom,sm8650-qrd
+          - const: qcom,sm8650
+
   # Board compatibles go above
 
   qcom,msm-id:

-- 
2.34.1


